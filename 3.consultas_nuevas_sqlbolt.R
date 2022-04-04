library(DBI)

# ==============================================================================
#  USO DE MYSQL EN AWS RDS
# ==============================================================================

bd <- DBI::dbConnect(RMySQL::MySQL(),
                      dbname = "",
                      host = "database-1.c13awkf6pbfs.us-east-1.rds.amazonaws.com",
                      user="admin",
                      password = rstudioapi::askForPassword("Database password"),
                      Port     = 3306)

#Obtetenos las peliculas que tengan año mayor a 2009
df_movies<-dbGetQuery(bd, 'SELECT * FROM movies where year>2009')
head(df_movies)

#Obtetenos la cantidad de peliculas que tengan un rating mayor a 8
df_boxoffice <- dbGetQuery(bd, 'SELECT count(*) FROM boxoffice where rating>8')
head(df_boxoffice)


#Obtetenos los building que tengan capacity mayor a 20
df_buildings <- dbGetQuery(bd, 'SELECT * FROM buildings where capacity>20')
head(df_buildings)

#Obtetenos los empleados que tienen laborando mas de 6 años en la empresa
df_employees <- dbGetQuery(bd, 'SELECT * FROM employees where years_employed>6')
head(df_employees)

#Obtenemos las ciudades que tengan poblacion mayor a 3 millones de habitantes
df_north_american_cities <- dbGetQuery(bd, 'SELECT city FROM north_american_cities Where population>3000000')
head(df_north_american_cities)
  
  
  
  
  
  
  
  
  
  
  



