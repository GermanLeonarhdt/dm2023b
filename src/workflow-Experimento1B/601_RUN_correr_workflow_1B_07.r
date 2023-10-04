# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-Experimento1B/611_CA_reparar_dataset_1B_07.r")
source("~/dm2023b/src/workflow-Experimento1B/621_DR_corregir_drifting_1B_07.r")
source("~/dm2023b/src/workflow-Experimento1B/631_FE_historia_1B_07.r")
source("~/dm2023b/src/workflow-Experimento1B/641_TS_training_strategy_1B_07.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-Experimento1B/651_HT_lightgbm_1B_07.r")
source("~/dm2023b/src/workflow-Experimento1B/661_ZZ_final_1B_07.r")
