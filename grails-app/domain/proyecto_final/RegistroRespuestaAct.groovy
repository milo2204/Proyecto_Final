package proyecto_final

import WebService.RespuestaActividad
import grails.gorm.DetachedCriteria
import groovy.transform.ToString
import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class RegistroRespuestaAct implements Serializable {

	private static final long serialVersionUID = 1

	Actividad act
	RespuestaActividad resp

	RegistroRespuestaAct(Actividad u, RespuestaActividad r) {
		this()
		act = u
		resp = r
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof RegistroRespuestaAct)) {
			return false
		}

		other.actId?.id == act?.id && other.resp?.id == resp?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (act) builder.append(act.id)
		if (resp) builder.append(resp.id)
		builder.toHashCode()
	}

	static RegistroRespuestaAct get(long actId, long respId) {
		criteriaFor(actId, respId).get()
	}

	static boolean exists(long actId, long respId) {
		criteriaFor(actId, respId).count()
	}

	private static DetachedCriteria criteriaFor(long actId, long respId) {
		RegistroRespuestaAct.where {
			act == Actividad.load(actId) &&
			resp == RespuestaActividad.load(respId)
		}
	}

	static RegistroRespuestaAct create(Actividad act, RespuestaActividad resp, boolean flush = false) {
		def instance = new RegistroRespuestaAct(act: act, resp: resp)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Actividad a, RespuestaActividad r, boolean flush = false) {
		if (a == null || r == null) return false

		int rowCount = RegistroRespuestaAct.where { act == a && resp == r }.deleteAll()

		if (flush) { RegistroRespuestaAct.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(Actividad a, boolean flush = false) {
		if (a == null) return

		RegistroRespuestaAct.where { act == a }.deleteAll()

		if (flush) { RegistroRespuestaAct.withSession { it.flush() } }
	}

	static void removeAll(RespuestaActividad r, boolean flush = false) {
		if (r == null) return

		RegistroRespuestaAct.where { resp == r }.deleteAll()

		if (flush) { RegistroRespuestaAct.withSession { it.flush() } }
	}

	static constraints = {
		resp validator: { RespuestaActividad r, RegistroRespuestaAct ur ->
			if (ur.act == null || ur.act.id == null) return
			boolean existing = false
			RegistroRespuestaAct.withNewSession {
				existing = RegistroRespuestaAct.exists(ur.act.id, r.id)
			}
			if (existing) {
				return 'resgistroRespuetaAct.exists'
			}
		}
	}

	static mapping = {
		table("REGISTRORESPUSTAACTIVIDAD")
		id composite: ['act', 'resp']
		version false
	}
}
