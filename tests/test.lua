-- https://www.codewars.com/kata/search/lua?q=&xids=completed&beta=false&order_by=popularity%20desc
local solution = require("solution")

--[[ Stop gninnipS My sdroW!
https://www.codewars.com/kata/5264d2b162488dc400000001/train/lua

Write a function that takes in a string of one or more words, and returns the same string, but with
all five or more letter words reversed (Just like the name of this Kata). Strings passed in will
consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples:

```
spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
spinWords( "This is a test") => returns "This is a test"
spinWords( "This is another test" )=> returns "This is rehtona test"
```
]]

describe("TDD:", function()
  it("The function exists", function()
    assert(type(solution.spinWords) == "function", "spinWords() does not exist!")
  end)
  it("should return the same word for single word with less than 5 letters", function()
    assert.are.same(solution.spinWords("One"), "One")
    assert.are.same(solution.spinWords("Two"), "Two")
  end)
end)

--[[ Vowel Count
https://www.codewars.com/kata/54ff3102c1bad923760001f3/train/lua

Return the number (count) of vowels in the given string.
We will consider a, e, i, o, u as vowels for this Kata (but not y).
The input string will only consist of lower case letters and/or spaces.
]]

describe("TDD:", function()
  it("The function exists", function()
    assert(type(solution.vowelCount) == "function", "vowelCount() does not exist!")
  end)
  it("should count a as one vowel", function()
    assert.are.same(solution.vowelCount("a"), 1)
  end)
end)
describe("sample tests", function()
  it("should count all vowels", function()
    assert.are.same(solution.vowelCount("aeiou"), 5)
  end)

  it("should not count 'y'", function()
    assert.are.same(solution.vowelCount("y"), 0)
  end)

  it("should return 0 when no vowels", function()
    assert.are.same(solution.vowelCount("bcdfghjklmnpqrstvwxz y"), 0)
  end)

  it("should return 0 for empty string", function()
    assert.are.same(solution.vowelCount(""), 0)
  end)

  it("should return 5 for 'abracadabra'", function()
    assert.are.same(solution.vowelCount("abracadabra"), 5)
  end)
end)

describe("Fixed Tests", function()
    it([[Complete the method that takes a boolean value and return a "Yes" string for true, or a
    "No" string for false.]], function()
        assert.are.same("Yes", solution.bool_to_word(true))
        assert.are.same("No", solution.bool_to_word(false))
    end)
end)

describe("positive_sum", function()
    -- You get an array of numbers, return the sum of all of the positives ones.
    it("works for some examples", function()
        assert.are.same(15, solution.positive_sum({ 1, 2, 3, 4, 5 }))
        assert.are.same(13, solution.positive_sum({ 1, -2, 3, 4, 5 }))
        assert.are.same(9, solution.positive_sum({ -1, 2, 3, 4, -5 }))
    end)
    it("returns 0 when array is empty", function()
        assert.are.same(0, solution.positive_sum({}))
    end)
    it("returns 0 when all elements are negative", function()
        assert.are.same(0, solution.positive_sum({ -1, -2, -3, -4, -5 }))
    end)
end)

describe("Find The Parity Outlier", function()
    it([[You are given an array (which will have a length of at least 3, but could be very large)
    containing integers. The array is either entirely comprised of odd integers or entirely
    comprised of even integers except for a single integer N. Write a method that takes the array
    as any argument and returns this "outlier" N.]], function()
        assert.are.same(3, solution.find({ 2, 6, 8, -10, 3 }))
        assert.are.same(206847684, solution.find({ 206847684, 1056521, 7, 17, 1901, 21104421, 7, 1, 35521, 1, 7781 }))
        assert.are.same(0, solution.find({ 2147483647, 0, 1 }))
    end)
end)

describe("Mumbling", function()
    local function dotest(s, expect)
        local actual = solution.accum(s)
        assert.are.same(expect, actual)
    end

    it([[The parameter of accum is a string which includes only letters from a..z and A..Z.
    ]], function()
        dotest("ZpglnRxqenU", "Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu")
        dotest("NyffsGeyylB", "N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb")
        dotest("MjtkuBovqrU", "M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu")
        dotest("EvidjUnokmM", "E-Vv-Iii-Dddd-Jjjjj-Uuuuuu-Nnnnnnn-Oooooooo-Kkkkkkkkk-Mmmmmmmmmm-Mmmmmmmmmmm")
    end)
end)

describe("Multiply", function()
    it("should return 0 for (0, 0)", function()
        assert.are.same(0, solution.multiply(0, 0))
    end)
    it("should return 100 for (10, 10)", function()
        assert.are.same(100, solution.multiply(10, 10))
    end)
end)

describe("Disemvowel Trolls", function()
    it([[Trolls are attacking your comment section! A common way to deal with this situation is to
    remove all of the vowels from the trolls' comments, neutralizing the threat. Your task is to
    write a function that takes a string and return a new string with all vowels removed. For
    example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
    ]], function()
        assert.are.same("Ths wbst s fr lsrs LL!", solution.disemvowel("This website is for losers LOL!"))
    end)
end)

describe("Even or Odd", function()
    it([[Create a function that takes an integer as an argument and returns "Even" for even numbers
    or "Odd" for odd numbers.]], function()
        assert.are.equal("Odd", solution.even_or_odd(1))
        assert.are.equal("Even", solution.even_or_odd(2))
        assert.are.equal("Odd", solution.even_or_odd(-1))
        assert.are.equal("Even", solution.even_or_odd(-2))
        assert.are.equal("Even", solution.even_or_odd(0))
    end)
end)

describe("Multiples of 3 or 5", function()
    it([[If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6
    and 9. The sum of these multiples is 23. Finish the solution so that it returns the sum of all
    the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative,
    return 0 (for languages that do have them).
    Note: If the number is a multiple of both 3 and 5, only count it once.]], function()
        assert.are.same(23, solution.multiples(10))
        assert.are.same(8, solution.multiples(6))
    end)
end)
