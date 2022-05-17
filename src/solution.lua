local kata = {}

function kata.accum(s)
    local mumble = ""
    for i = 1, #s do
        for j = 1, i do
            local letter = string.sub(s, i, i)
            if j == 1 then
                letter = string.upper(letter)
            else
                letter = string.lower(letter)
            end
            mumble = mumble .. letter
        end
        if i < #s then
            mumble = mumble .. "-"
        end
    end
    return mumble
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

function kata.multiples_of_3_or_5(value)
    local total = 0
    for i = 1, value - 1 do
        if ((i % 3 == 0) or (i % 5 == 0)) then
            total = total + i
        end
    end
    return total
end

return kata
