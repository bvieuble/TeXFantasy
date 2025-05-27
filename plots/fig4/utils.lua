local utils_ = {}

utils_.plotstyle = {
  lines = {"solid", "loosely dashed", "dotted"},
  marks = {"o", "square", "triangle", "diamond", "pentagon", "star"},
  colors = {"blue", "green", "red", "purple", "orange", "yellow"},
  call_count = 0,
}

function utils_.get_style()
  utils_.plotstyle.call_count = utils_.plotstyle.call_count + 1
  local i = utils_.plotstyle.call_count

  local nb_l = #utils_.plotstyle.lines
  local line = utils_.plotstyle.lines[i % nb_l + 1]
  local nb_m = #utils_.plotstyle.marks
  local mark = utils_.plotstyle.marks[i % nb_m + 1]
  local nb_c = #utils_.plotstyle.colors
  local color = utils_.plotstyle.colors[i % nb_c + 1]

  return line, mark, color
end

function utils_.get_grid_cvg_sparse(matname, xsize, ysize)
  local grid = {}
  local coordx, coordy = {}, {}
  local ytick, yticklabel, ylabel = {}, {}, {}
  local xlabel = {}
  local title = {"Left", "Right", "Flexible"}
  local sepx   = xsize / 8
  local legendx, legendy = 0, 0

  for i = 1, 3, 1
  do
    if i == 1 then
      ytick[i],  yticklabel[i], ylabel[i] = "{1e0, 1e-8, 1e-16}", "{$10^{0}$,$10^{-8}$,$10^{-16}$}", "{Ferr}"
    else
      ytick[i],  yticklabel[i], ylabel[i] = "{}", "{}", "{}"
    end
    if i == 2 then
      xlabel[i] = matname
    else
      xlabel[i] = "{}"
    end

    local col = tostring((i - 1) * (xsize + sepx))

    coordx[i] = col .. "\\linewidth"
    coordy[i] = "0.\\linewidth"
  end

  legendx = (3 * (xsize + sepx) - sepx) / 2
  legendy = ysize + 0.25 * ysize

  grid.title = title
  grid.coordx, grid.coordy = coordx, coordy
  grid.ytick, grid.yticklabel, grid.ylabel  = ytick, yticklabel, ylabel
  grid.xlabel = xlabel
  grid.legendx, grid.legendy = legendx, legendy
  return grid
end

return utils_
