# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/15/711_CA_reparar_dataset_EF15.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/15/721_DR_corregir_drifting_EF15.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/15/731_FE_historia_EF15.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/15/741_TS_training_strategy_EF15.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/15/751_HT_lightgbm_EF15.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/15/795_ZZ_final_semillerio_EF15.r")
