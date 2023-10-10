# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/03/611_CA_reparar_dataset_EF03.r")
source("~/dm2023b/src/entrega-final-pruebas/03/621_DR_corregir_drifting_EF03.r")
source("~/dm2023b/src/entrega-final-pruebas/03/631_FE_historia_EF03.r")
source("~/dm2023b/src/entrega-final-pruebas/03/641_TS_training_strategy_EF03.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/03/651_HT_lightgbm_EF03.r")
source("~/dm2023b/src/entrega-final-pruebas/03/661_ZZ_final_EF03.r")
