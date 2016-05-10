dataSource {
   pooled = true
   driverClassName = "org.postgresql.Driver"
   username = "sa"
    password = ""
			
			
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
  //  singleSession = true // configure OSIV singleSession mode
  //  flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
        dataSource {
         dbCreate = "update"
            uri = new URI(System.env.DATABASE_URL?:"postgres://uwrvwseuziutcb:0GBqIYEX5Na3gJv3FRMpRayLV5@ec2-79-125-126-192.eu-west-1.compute.amazonaws.com:5432/d2hihhahjgavoi")
            url = "jdbc:postgresql://" + uri.host + ":" + uri.port + uri.path +"?ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory"
			username = uri.userInfo.split(":")[0]
			password = uri.userInfo.split(":")[1]
		

        }
    }
    test {
        dataSource {
            dbCreate = "update"
			uri = new URI(System.env.DATABASE_URL?:"postgres://uwrvwseuziutcb:0GBqIYEX5Na3gJv3FRMpRayLV5@ec2-79-125-126-192.eu-west-1.compute.amazonaws.com:5432/d2hihhahjgavoi")
            url = "jdbc:postgresql://" + uri.host + ":" + uri.port + uri.path+"?ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory"
			username = uri.userInfo.split(":")[0]
			password = uri.userInfo.split(":")[1]
			properties {
				maxActive = -1
				minEvictableIdleTimeMillis=1800000
				timeBetweenEvictionRunsMillis=1800000
				numTestsPerEvictionRun=3
				testOnBorrow=true
				testWhileIdle=true
				testOnReturn=true
				validationQuery="SELECT 1"
			 }
        }
    }
    production {
        dataSource {
            dbCreate = "update"
			driverClassName = "org.postgresql.Driver"
			dialect = org.hibernate.dialect.PostgreSQL9Dialect
			uri = new URI(System.env.DATABASE_URL?:"postgres://uwrvwseuziutcb:0GBqIYEX5Na3gJv3FRMpRayLV5@ec2-79-125-126-192.eu-west-1.compute.amazonaws.com:5432/d2hihhahjgavoi")
            url = "jdbc:postgresql://" + uri.host + ":" + uri.port + uri.path
			username = uri.userInfo.split(":")[0]
			password = uri.userInfo.split(":")[1]
			
			
            
        }
    }
}
