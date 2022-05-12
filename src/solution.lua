local solution = {}

function solution.solution(value)
  local total = 0
  for i=1,value-1 do
    if ((i % 3 == 0) or (i % 5 == 0)) then
      total = total + i
    end
  end
  return total
end

return solution
