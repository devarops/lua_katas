local solution = {}

function solution.even_or_odd(number)
  return number % 2 == 0 and "Even" or "Odd"
end

function solution.multiples_of_3_or_5(value)
  local total = 0
  for i=1,value-1 do
    if ((i % 3 == 0) or (i % 5 == 0)) then
      total = total + i
    end
  end
  return total
end

return solution
