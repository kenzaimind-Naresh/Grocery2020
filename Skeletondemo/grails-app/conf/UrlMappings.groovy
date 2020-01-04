class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		"/"(controller:"merchant",action:"location")
       //"/"(view:"/dashboard")
        "500"(view:'/error')
	}
}
