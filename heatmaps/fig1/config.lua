local config = {}

config.gridcols = 3
config.relativesize = .31
config.dircsv = "./data"
config.plots = {
  {"left_sbs", "\\textsc{l-sbs}"},
  {"right_sbs", "\\textsc{r-sbs}"},
  {"flexible_sbs", "\\textsc{f-sbs}"},
  {"left_dbd", "\\textsc{l-dbd}"},
  {"right_dbd", "\\textsc{r-dbd}"},
  {"flexible_dbd", "\\textsc{f-dbd}"},
  {"left_dsd", "\\textsc{l-dsd}"},
  {"right_dsd", "\\textsc{r-dsd}"},
  {"flexible_dsd", "\\textsc{f-dsd}"},
}

return config
