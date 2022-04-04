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

# 4. Aplicativo Shiny
library(shiny)
library(tidyverse)


df1 <- dbGetQuery(bd, 'SELECT * FROM movies')
head(df1)
# Interfaz de usuario
ui <- fluidPage(
  
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput(inputId = "grupos",
                         label = "Tiempo de peliculas por Directores",
                         choices = c("Andrew Stanton","John Lasseter","Pete Docter","Brad Bird"),
                         selected = c("Andrew Stanton","John Lasseter","Pete Docter","Brad Bird"))
    ),
    mainPanel( plotOutput("grafico") )
  )
)

# Logica del servidor
server <- function(input, output) {
  output$grafico <- renderPlot({
    plotdf <- filter(df1, director %in% input$grupos)
    ggplot(dat = plotdf,
           aes(x=year, y=length_minutes, color=director)) + geom_point()
  })
}

shinyApp(ui, server)
