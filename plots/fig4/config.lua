local config_ = {}

config_.cvg_sparse = {
  matrix = "1138_bus",
  title = "1138\\_bus",
  xsize = .32,
  ysize = .4,
  maxit = 70,
  header = true,
  left = {
    dircsv = "left",
    csv = "ilu-1.0e-07_cvg",
    plots = {
      "ddd",
      "dsd",
      "dss",
      "sss",
      "dds",
      "ddb",
    },
  },
  right =  {
    dircsv = "right",
    csv = "ilu-1.0e-07_cvg",
    plots = {
      "ddd",
      "dsd",
      "dss",
      "sss",
      "dds",
      "ddb",
    },
  },
  flexible = {
    dircsv = "flexible",
    csv = "ilu-1.0e-07_cvg",
    plots = {
      "ddd",
      "dsd",
      "dss",
      "sss",
      "dds",
      "ddb",
    },
  },
}

return config_
