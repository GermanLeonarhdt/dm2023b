# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/18/711_CA_reparar_dataset_EF18.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/18/721_DR_corregir_drifting_EF18.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/18/731_FE_historia_EF18.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/18/741_TS_training_strategy_EF18.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/18/751_HT_lightgbm_EF18.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/18/795_ZZ_final_semillerio_EF18.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/18/795_ZZ_final_semillerio_EF18_2.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/18/795_ZZ_final_semillerio_EF18_3.r")
