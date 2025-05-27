local config_ = {}

config_.left_err_matvec = {
  gridcols = 4,
  xsize = .25,
  ysize = .15,
  plots = {
    {"kA4-kM4",  "$\\kappa(A) = 10^4$"},
    {"kA8-kM4",  "$\\kappa(A) = 10^8$"},
    {"kA12-kM4", "$\\kappa(A) = 10^{12}$"},
    {"kA16-kM4", "$\\kappa(A) = 10^{16}$"},
    {"kA16-kM4",  "$\\kappa(M_L) = 10^4$"},
    {"kA16-kM8",  "$\\kappa(M_L) = 10^8$"},
    {"kA16-kM12", "$\\kappa(M_L) = 10^{12}$"},
    {"kA16-kM16", "$\\kappa(M_L) = 10^{16}$"},
  },
}

return config_
