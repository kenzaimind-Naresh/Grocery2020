class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		"/"(controller:"merchant",action:"location1")
       //"/"(view:"/dashboard")
       
		"404" (controller: "user", action: "notFoundpage")
		
		"500" (controller: "user", action: "errorpage")
	}
}
