def ftoc(far_temp)
  (5.00 / 9.00) * (far_temp - 32).to_f
end

def ctof(cel_temp)
  (cel_temp * (9.00 / 5.00)) + 32.00
end
