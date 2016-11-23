package WebServiceController

import com.google.gson.JsonObject
import grails.converters.JSON
import grails.rest.RestfulController
import grails.web.JSONBuilder
import org.codehaus.groovy.grails.web.json.JSONObject
import proyecto_final.Actividad
import proyecto_final.Estudiante
import proyecto_final.RegistroEstudiantesActividades
import proyecto_final.User

class AccesoController extends RestfulController{

    static responseFormats = ['json','xml']
    static bycryptService;
    def index() { }

    AccesoController(){
        super(User)
    }

    def acceso(String username,String contrasena){
        def user = User.findByUsername(username)
        String key = ""
        String val = ""
        def jsonVal = new JSONObject()
        if(user != null && user.password == contrasena) {
            key = "Success"
            val = "OK"
            jsonVal.put(key,val)

        }else {
            key ="Error"
            val =  "No user found"
            jsonVal.put(key,val)

        }
        if(key != "" && val != ""){
            render jsonVal.toString()
        }

    }

    def obtenerActividades(String username) {
        def est = Estudiante.findByUsername(username)
        def actividades = est.getRegistroEstudianteActividades().actividad
        Date today = new Date()
        def jsonVal = new JSONObject()
        def actList = new ArrayList<Actividad>()
        for (re in actividades) {
            //def act = Actividad.findById(re.actividad.id)
            if ((today.date - re.fechaFin.date) <= 0) {
                actList.add(re)
            }
            print today.date - re.fechaFin.date


        }

        if (!actList.isEmpty()) {
            jsonVal.put("Actividades", actList)

        }
        if (!jsonVal.isEmpty()) {

            render jsonVal as JSON
        }
    }



}
