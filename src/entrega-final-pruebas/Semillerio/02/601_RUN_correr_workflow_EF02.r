# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/02/711_CA_reparar_dataset_EF02.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/02/721_DR_corregir_drifting_EF02.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/02/731_FE_historia_EF02.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/02/741_TS_training_strategy_EF02.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/02/751_HT_lightgbm_EF02.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/02/795_ZZ_final_semillerio_EF02.r")
