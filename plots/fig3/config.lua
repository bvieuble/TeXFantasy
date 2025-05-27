local config = {}

config.gridcols = 4
config.xsize = .25
config.ysize = .15
config.plots = {
  {"kA4-kM4",  "$\\kappa(A) = 10^4$"},
  {"kA8-kM4",  "$\\kappa(A) = 10^8$"},
  {"kA12-kM4", "$\\kappa(A) = 10^{12}$"},
  {"kA16-kM4", "$\\kappa(A) = 10^{16}$"},
  {"kA16-kM4",  "$\\kappa(M_L) = 10^4$"},
  {"kA16-kM8",  "$\\kappa(M_L) = 10^8$"},
  {"kA16-kM12", "$\\kappa(M_L) = 10^{12}$"},
  {"kA16-kM16", "$\\kappa(M_L) = 10^{16}$"},
}

return config
