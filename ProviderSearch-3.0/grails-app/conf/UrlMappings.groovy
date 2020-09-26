class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
"/"(controller:"user",action:"providerSearch")
      //"/"(view:"/index")

		"404" (controller: "user", action: "notFoundpage")
		
		"500" (controller: "user", action: "errorpage")
	}
}
