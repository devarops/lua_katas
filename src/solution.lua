local kata = {}

function kata.disemvowel(s)
    s = string.gsub(s, "A", "")
    s = string.gsub(s, "a", "")
    s = string.gsub(s, "E", "")
    s = string.gsub(s, "e", "")
    s = string.gsub(s, "I", "")
    s = string.gsub(s, "i", "")
    s = string.gsub(s, "O", "")
    s = string.gsub(s, "o", "")
    s = string.gsub(s, "U", "")
    s = string.gsub(s, "u", "")
    return s
end


function kata.even_or_odd(number)
  return number % 2 == 0 and "Even" or "Odd"
end

function kata.multiples_of_3_or_5(value)
  local total = 0
  for i=1,value-1 do
    if ((i % 3 == 0) or (i % 5 == 0)) then
      total = total + i
    end
  end
  return total
end

return kata
