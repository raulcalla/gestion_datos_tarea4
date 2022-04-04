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

dbGetQuery(bd, 'SHOW DATABASES')
dbGetQuery(bd, 'USE sqlbolt')

# Describir tablas
dbGetQuery(bd, 'DESCRIBE movies')
dbGetQuery(bd, 'DESCRIBE boxoffice')
dbGetQuery(bd, 'DESCRIBE buildings')
dbGetQuery(bd, 'DESCRIBE north_american_cities')

# -- Encontrar las ciudades y poblacion de Canada
df1 <- dbGetQuery(bd, 'SELECT city, population FROM north_american_cities WHERE country LIKE "Canada"')
head(df1)

# -- Encontrar las ciudades y ubicacion de US
df3 <- dbGetQuery(bd, 'SELECT city, latitude FROM north_american_cities WHERE country LIKE "United States" ORDER BY Latitude DESC')
head(df3)

# -- Encontrar peliculas
df4 <- dbGetQuery(bd, 'SELECT * FROM movies')
head(df4)

# -- Encontrar las ventas domésticas e internacionales para cada película
df5 <- dbGetQuery(bd, 'SELECT title, domestic_sales, international_sales FROM movies INNER JOIN boxoffice ON movies.Id=boxoffice.Movie_Id')
head(df5)

# -- Mostrar las ventas para cada película que fueron mejores a nivel internacional que doméstico
df6 <- dbGetQuery(bd, 'SELECT M.title, B.domestic_sales, B.international_sales FROM movies M INNER JOIN boxoffice B ON M.Id=B.Movie_Id WHERE B.International_sales>B.Domestic_sales')
head(df6)
  
# -- Encontrar la lista de todos los edificios que tienen empleados
df7 <- dbGetQuery(bd, 'SELECT DISTINCT B.Building_name FROM employees E INNER JOIN buildings B ON E.Building=B.Building_name')
head(df7)

# -- Encontrar los nombres de los edificios que no tienen empleados
df8 <- dbGetQuery(bd, 'SELECT B.Building_name FROM buildings B LEFT JOIN employees E ON E.Building=B.Building_name WHERE E.Building IS NULL')
head(df8)