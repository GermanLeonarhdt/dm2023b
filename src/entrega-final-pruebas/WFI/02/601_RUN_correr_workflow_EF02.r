# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/02/611_CA_reparar_dataset_EF02.r")
source("~/dm2023b/src/entrega-final-pruebas/02/621_DR_corregir_drifting_EF02.r")
source("~/dm2023b/src/entrega-final-pruebas/02/631_FE_historia_EF02.r")
source("~/dm2023b/src/entrega-final-pruebas/02/641_TS_training_strategy_EF02.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/02/651_HT_lightgbm_EF02.r")
source("~/dm2023b/src/entrega-final-pruebas/02/661_ZZ_final_EF02.r")
