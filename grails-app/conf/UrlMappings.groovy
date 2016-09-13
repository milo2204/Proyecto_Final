class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            action = [GET:"show", POST:"save", PUT:"update", DELETE:"remove"]
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/respuestaActividad/index"(view: "respuestaActividad/index")
        "/login"(view:  "login")
        "500"(view:'/error')
	}
}
