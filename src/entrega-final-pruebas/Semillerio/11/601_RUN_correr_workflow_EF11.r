# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/11/711_CA_reparar_dataset_EF11.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/11/721_DR_corregir_drifting_EF11.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/11/731_FE_historia_EF10.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/11/741_TS_training_strategy_EF11.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/11/751_HT_lightgbm_EF11.r")
source("~/dm2023b/src/entrega-final-pruebas/Semillerio/11/795_ZZ_final_semillerio_EF11.r")
