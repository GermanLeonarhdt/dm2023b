# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/04/611_CA_reparar_dataset_EF04.r")
source("~/dm2023b/src/entrega-final-pruebas/04/621_DR_corregir_drifting_EF04.r")
source("~/dm2023b/src/entrega-final-pruebas/04/631_FE_historia_EF04.r")
source("~/dm2023b/src/entrega-final-pruebas/04/641_TS_training_strategy_EF04.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/04/651_HT_lightgbm_EF04.r")
source("~/dm2023b/src/entrega-final-pruebas/04/661_ZZ_final_EF04.r")
