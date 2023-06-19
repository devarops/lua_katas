local kata = {}

function kata.is_valid_walk(walk)
    return #walk == 10 and kata._is_back_to_origin(walk)
end
function kata._is_back_to_origin(walk)
    local x = 0
    local y = 0
    for _, direction in pairs(walk) do
        x = direction == "e" and x + 1 or x
        x = direction == "w" and x - 1 or x
        y = direction == "n" and y + 1 or y
        y = direction == "s" and y - 1 or y
    end
    return x == 0 and y == 0
end

function kata.issquare(n)
    return math.sqrt(n) % 1 == 0
end

function kata.count_bits(n)
    local count = 0
    while n > 0 do
        count = count + (n % 2)
        n = math.floor(n / 2)
    end
    return count
end

function kata.high_and_low(numbers)
    local array_of_numbers = kata._string_to_array(numbers)
    local max = math.max(table.unpack(array_of_numbers))
    local min = math.min(table.unpack(array_of_numbers))
    local max_and_min = {max, min}
    return kata._array_to_string(max_and_min)
end
function kata._string_to_array(string_of_numbers)
    local array_of_numbers = {}
    for string_number in string_of_numbers:gmatch("%S+") do
        table.insert(array_of_numbers, tonumber(string_number))
    end
    return array_of_numbers
end
function kata._array_to_string(array_of_numbers)
    return array_of_numbers[1] .. " " .. array_of_numbers[#array_of_numbers]
end

function kata.create_phone_number(numbers)
    return string.format("(%d%d%d) %d%d%d-%d%d%d%d", table.unpack(numbers))
end

function kata.spin_words(sentence)
    local words = {}
    local spined_word
    for word in sentence:gmatch("%S+") do
        spined_word = #word > 4 and word:reverse() or word
        table.insert(words, spined_word)
    end
    return table.concat(words, " ")
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
