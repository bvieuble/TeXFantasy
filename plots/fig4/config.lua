local config = {}

config.matrix = "1138_bus"
config.title = "1138\\_bus"
config.xsize = .32
config.ysize = .4
config.maxit = 70
config.header = true
config.left = {
  csv = "left/ilu-1.0e-07_cvg.csv",
}
config.right =  {
  csv = "right/ilu-1.0e-07_cvg.csv",
}
config.flexible = {
  csv = "flexible/ilu-1.0e-07_cvg.csv",
}
config.plots = {
    "ddd",
    "dsd",
    "dss",
    "sss",
    "dds",
    "ddb",
}

return config
