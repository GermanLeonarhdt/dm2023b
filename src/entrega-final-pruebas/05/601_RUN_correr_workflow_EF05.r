# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/05/611_CA_reparar_dataset_EF05.r")
source("~/dm2023b/src/entrega-final-pruebas/05/621_DR_corregir_drifting_EF05.r")
source("~/dm2023b/src/entrega-final-pruebas/05/631_FE_historia_EF05.r")
source("~/dm2023b/src/entrega-final-pruebas/05/641_TS_training_strategy_EF05.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/05/651_HT_lightgbm_EF05.r")
source("~/dm2023b/src/entrega-final-pruebas/05/661_ZZ_final_EF05.r")
