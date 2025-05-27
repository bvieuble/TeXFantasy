local utils_ = {}

utils_.plotstyle = {
  lines = {"solid", "loosely dashed"},
  colors = {"purple", "green"},
  call_count = 0,
}

function utils_.get_grid(nbelt, nbcols, xsize, ysize)
  local grid = {}
  local coordx, coordy = {}, {}
  local xlabel = {}
  local ytick, yticklabel, ylabel = {}, {}, {}
  local sepx   = xsize / 6
  local sepy   = ysize / 2.5
  local legendx, legendy = 0, 0

  for i = 1, nbelt, 1
  do
    xlabel[i] = "{}"
    ytick[i],  yticklabel[i], ylabel[i] = "{1e0, 1e-16}", "{}", "{}"
    local row = tostring(((i-1) // nbcols) * (ysize + sepy))
    local tmp = i % nbcols
    local col = tostring((tmp - 1) * (xsize + sepx))
    if tmp == 0 then
      col = tostring((nbcols - 1) * (xsize + sepx))
    elseif tmp == 1 then
      yticklabel[i] = "{$10^{0}$,$10^{-16}$}"
      ylabel[i] = "{$\\kappa(M)$}"
    end

    coordx[i] = col .. "\\linewidth"
    coordy[i] = row .. "\\linewidth"
  end

  for i = 1, nbcols, 1
  do
    xlabel[i] = "{\\#it}"
  end

  legendx = (nbcols * (xsize + sepx) - sepx) / 2
  if (nbelt % nbcols) ~= 0 then
    legendy = (nbelt // nbcols + 1) * (ysize + sepy) - sepy + 0.6 * ysize
  else
    legendy = (nbelt // nbcols) * (ysize + sepy) - sepy + 0.6 * ysize
  end

  grid.coordx, grid.coordy = coordx, coordy
  grid.xlabel = xlabel
  grid.ytick, grid.yticklabel, grid.ylabel  = ytick, yticklabel, ylabel
  grid.legendx, grid.legendy = legendx, legendy
  return grid
end

return utils_
