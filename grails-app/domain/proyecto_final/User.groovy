package proyecto_final

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

	private static final long serialVersionUID = 1

	transient springSecurityService

	String username
	String password
	String email
	String nombre
	String apellido
	String telefono
	Date fechaNacimiento
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired


	User(String username, String password, String email, String nombre, String apellido, String telefono, Date fechaNacimiento ,String verificarContrasena) {
		this()
		this.username = username
		this.password = password
		this.email = email
		this.nombre = nombre
		this.apellido = apellido
		this.telefono = telefono
		this.fechaNacimiento = fechaNacimiento

	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this)*.role
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
		email email: true, blank: false, unique: true
		telefono blank: true
		nombre blank: false
		apellido blank: false

	}

	static mapping = {
		password column: 'password'
	}
}
