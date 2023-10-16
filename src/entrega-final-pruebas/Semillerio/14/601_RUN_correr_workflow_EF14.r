# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/14/711_CA_reparar_dataset_EF14.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/14/721_DR_corregir_drifting_EF14.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/14/731_FE_historia_EF14.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/14/741_TS_training_strategy_EF14.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/14/751_HT_lightgbm_EF14.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/14/795_ZZ_final_semillerio_EF14.r")
