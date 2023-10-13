# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/06/711_CA_reparar_dataset_EF06.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/06/721_DR_corregir_drifting_EF0.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/06/731_FE_historia_EF06.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/06/741_TS_training_strategy_EF06.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/06/751_HT_lightgbm_EF06.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/06/795_ZZ_final_semillerio_EF06.r")
