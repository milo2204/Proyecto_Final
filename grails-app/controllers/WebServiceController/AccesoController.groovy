package WebServiceController

import com.google.gson.JsonObject
import grails.rest.RestfulController
import grails.web.JSONBuilder
import org.codehaus.groovy.grails.web.json.JSONObject
import proyecto_final.Actividad
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
        if(user.password == contrasena) {
            key = "Success"
            val = "OK"
            jsonVal.put(key,val)

        }else {
            key ="Error"
            val =  "No user found"
            jsonVal.put(key,val)
4
        }
        if(key != "" && val != ""){
            render jsonVal.toString()
        }

    }



}
