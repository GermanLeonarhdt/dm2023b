# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/01/711_CA_reparar_dataset_EF01.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/01/721_DR_corregir_drifting_EF01.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/01/731_FE_historia_EF01.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/01/741_TS_training_strategy_EF01.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/01/751_HT_lightgbm_EF01.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/01/795_ZZ_final_semillerio_EF01.r")
