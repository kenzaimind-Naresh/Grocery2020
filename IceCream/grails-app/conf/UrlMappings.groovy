class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		"/"(controller:"user",action:"userlogin")
       // "/"(view:"/index")
        "500"(view:'/error')
	}
}
