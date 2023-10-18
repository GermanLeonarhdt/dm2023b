# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/12/711_CA_reparar_dataset_EF12.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/12/721_DR_corregir_drifting_EF12.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/12/731_FE_historia_EF12.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/12/741_TS_training_strategy_EF12.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/12/751_HT_lightgbm_EF12.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/12/795_ZZ_final_semillerio_EF12.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/12/795_ZZ_final_semillerio_EF12_2.r")