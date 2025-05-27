local utils = {}

function utils.get_grid(nbelt, nbcols, relativesize)
  -- nbelt: number of heatmaps to plot.
  -- nbcols: maximum number of column in the grid.
  -- relativesize: the size of each heatmap in the grid is computed as relativesize x \linewidth 

  -- Variables declaration
  local grid = {}
  local coordx, coordy = {}, {}
  local xtick, xticklabel, xlabel = {}, {}, {}
  local ytick, yticklabel, ylabel = {}, {}, {}
  local sepx   = relativesize / 5
  local sepy   = relativesize / 5
  local cbarx, cbary, cbarsizeh, cbarsizew = 0, 0, 0, 0

  -- For each heatmap, compute its position in the grid and decide to display 
  -- or not the x- and/or y-axis labels.
  for i = 1, nbelt, 1
  do
    xtick[i],  xticklabel[i], xlabel[i] = "{}", 0, "{}"
    ytick[i],  yticklabel[i], ylabel[i] = "{}", 0, "{}"
    local row = tostring(((i-1) // nbcols) * (relativesize + sepy))
    local tmp = i % nbcols
    if nbcols == 1 then
      tmp = 1
    end
    local col = tostring((tmp - 1) * (relativesize + sepx))
    if tmp == 0 then
      col = tostring((nbcols - 1) * (relativesize + sepx))
    elseif tmp == 1 then
      yticklabel[i] = 1
      ylabel[i] = "{$\\kappa(M)$}"
    end

    -- Choose the tick labels density. If the size of the heatmap is small we
    -- display less tick labels, if this is big we display more.
    if relativesize < 0.3 then
      xtick[i] = "{1,9,17}"
      ytick[i] = "{1,9,17}"
    elseif relativesize < .7 then
      xtick[i] = "{1,5,9,13,17}"
      ytick[i] = "{1,5,9,13,17}"
    elseif relativesize < 1. then
      xtick[i] = "{1,3,5,7,9,11,13,15,17}"
      ytick[i] = "{1,3,5,7,9,11,13,15,17}"
    else
      xtick[i] = "{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17}"
      ytick[i] = "{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17}"
    end

    coordx[i] = col .. "\\linewidth"
    coordy[i] = row .. "\\linewidth"
  end

  for i = 1, nbcols, 1
  do
    xticklabel[i] = 1
    xlabel[i] = "{$\\kappa(A)$}"
  end

  -- Compute the location and the size of the colorbar. The colorbar is located 
  -- at the top of the grid.
  cbarx = (nbcols * (relativesize + sepx) - sepx) / 2
  if (nbelt % nbcols) ~= 0 then
    cbary = (nbelt // nbcols + 1) * (relativesize + sepy) - sepy + 0.35 * relativesize
  else
    cbary = (nbelt // nbcols) * (relativesize + sepy) - sepy + 0.35 * relativesize
  end
  cbarsizew = (nbcols * (relativesize + sepx) - sepx) * 0.7
  cbarsizeh = relativesize * 0.065

  -- Put the variables in a structure grid for convenience.
  grid.coordx, grid.coordy = coordx, coordy
  grid.xtick, grid.xticklabel, grid.xlabel  = xtick, xticklabel, xlabel
  grid.ytick, grid.yticklabel, grid.ylabel  = ytick, yticklabel, ylabel
  grid.cbarx, grid.cbary = cbarx, cbary
  grid.cbarsizew, grid.cbarsizeh = cbarsizew, cbarsizeh
  return grid
end

return utils
