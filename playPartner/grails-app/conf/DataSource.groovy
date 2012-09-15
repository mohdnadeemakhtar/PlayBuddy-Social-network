


dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	username = "root"
	password = "root"
//	dialect = org.hibernate.dialect.MySQL5InnoDBDialect
	
	// uncomment the following to see all sql statements on the console
	//logSql = true
}

hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = true
	cache.provider_class = 'org.hibernate.cache.EhCacheProvider'
	cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update"
			url = "jdbc:mysql://127.0.0.1/playpartner"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:mysql://127.0.0.1/playpartner"
			

		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:mysql://127.0.0.1/playpartner"
			pooled = true
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
}
