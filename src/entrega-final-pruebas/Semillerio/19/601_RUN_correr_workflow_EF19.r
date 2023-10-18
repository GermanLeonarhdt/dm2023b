# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/19/711_CA_reparar_dataset_EF19.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/19/721_DR_corregir_drifting_EF19.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/19/731_FE_historia_EF19.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/19/741_TS_training_strategy_EF19.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/19/751_HT_lightgbm_EF19.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/19/795_ZZ_final_semillerio_EF19.r")
