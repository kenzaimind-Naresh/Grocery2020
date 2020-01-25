dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}


hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = true
//    cache.region.factory_class = 'org.hibernate.cache.SingletonEhCacheRegionFactory' // Hibernate 3
	cache.region.factory_class = 'org.hibernate.cache.ehcache.SingletonEhCacheRegionFactory' // Hibernate 4
	singleSession = true // configure OSIV singleSession mode
	flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost:3306/skeletondemotest"
			username = "root"
			password = "ecg123"
		}
	
	}
	test {
		dataSource {
			dbCreate = "create" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost:3306/skeletondemotest"
			username = "root"
			password = "ecg123"
		}
	}
	
	
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:mysql://localhost:3306/skeletondemotest"
			username = "root"
			password = "ecg123"
		}
	}
}