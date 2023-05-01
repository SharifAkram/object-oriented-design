def gear_inches
  # tire goes around rim twice for diameter
  ratio * (rim + (tire * 2))
end
