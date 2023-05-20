local kata = {}

function kata.spinWords()
    return "Hey"
end

function kata.vowelCount(str)
  local count = 0
  for _ in str:gmatch("[aeiouAEIOU]") do
    count = count + 1
  end
  return count
end

function kata.bool_to_word(boolean)
    return boolean and "Yes" or "No"
end

function kata.positive_sum(arr)
    local sum = 0
    for _, value in pairs(arr) do
        sum = sum + (value >= 0 and value or 0)
    end
    return sum
end

function kata.find(integers)
    local odds = {}
    local evens = {}
    for _, value in pairs(integers) do
        if value % 2 == 0 then
            table.insert(odds, value)
        else
            table.insert(evens, value)
        end
        if #odds > 1 and #evens == 1 then
            return evens[1]
        elseif #evens > 1 and #odds == 1 then
            return odds[1]
        end
    end
end

function kata.accum(s)
    local mumble = {}
    for i = 1, #s do
        local letter = string.sub(s, i, i)
        mumble[i] = string.upper(letter) .. string.rep(string.lower(letter), i - 1)
    end
    return table.concat(mumble, "-")
end

function kata.multiply(a, b)
    return a * b
end

function kata.disemvowel(s)
    return s:gsub("[AEIOUaeiou]", "")
end

function kata.even_or_odd(number)
    return number % 2 == 0 and "Even" or "Odd"
end

function kata.multiples(value)
    local total = 0
    for i = 1, value - 1 do
        if ((i % 3 == 0) or (i % 5 == 0)) then
            total = total + i
        end
    end
    return total
end

return kata
