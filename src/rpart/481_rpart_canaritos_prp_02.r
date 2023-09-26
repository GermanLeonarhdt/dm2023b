# limpio la memoria
rm(list = ls()) # remove all objects
gc() # garbage collection

require("data.table")
require("rpart")
require("rpart.plot")

setwd("C:/Users/German/Desktop/ITBA/Cursos/Mineria_de_datos/practico") # establezco la carpeta donde voy a trabajar

# cargo el dataset
dataset <- fread("./datasets/dataset_pequeno.csv")

dir.create("./exp/", showWarnings = FALSE)
dir.create("./exp/EA4810/", showWarnings = FALSE)
setwd("./exp/EA4810")

# uso esta semilla para los canaritos
set.seed(700571)

# agrego 30 variables canarito,
#  random distribucion uniforme en el intervalo [0,1]
for (i in 1:30) dataset[, paste0("canarito", i) := runif(nrow(dataset))]


# Primero  veo como quedan mis arboles
modelo <- rpart(
    formula = "clase_ternaria ~ .",
    data = dataset[foto_mes == 202107, ],
    model = TRUE,
    xval = 0,
    cp = -1.5,
    minsplit = 500,
    minbucket = 50,
    maxdepth = 7
)


# Grabo el arbol de canaritos
pdf(file = "./arbol_canaritos.pdf", width = 28, height = 4)
prp(modelo,
    extra = 101, digits = -5,
    branch = 1, type = 4, varlen = 0, faclen = 0
)

dev.off()
