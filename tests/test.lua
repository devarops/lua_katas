-- https://www.codewars.com/kata/search/lua?q=&xids=completed&beta=false&order_by=popularity%20desc
local solution = require("solution")

--[[ Persistent Bugger
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative
persistence, which is the number of times you must multiply the digits in num until you reach a
single digit.

## Example
`Input --> Output`
```
39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
4 --> 0 (because 4 is already a one-digit number)
```
]]

describe("persistence", function()
  it("The function exists", function()
    assert(type(solution.persistence) == "function", "persistence() does not exist!")
  end)
  it("Basic Test Case", function()
    assert.are.same(0, solution.persistence(4))
    assert.are.same(1, solution.persistence(12))
    assert.are.same(2, solution.persistence(25))
    assert.are.same(3, solution.persistence(39))
    assert.are.same(3, solution.persistence(444))
    assert.are.same(4, solution.persistence(999))
  end)
end)

--[[ Remove First and Last Character
It's pretty straightforward. Your goal is to create a function that removes the first and last
characters of a string. You're given one parameter, the original string. You don't have to worry
with strings with less than two characters.
]]

describe("remove_chars", function()
  it("The function exists", function()
    assert(type(solution.remove_chars) == "function", "remove_chars() does not exist!")
  end)
  it("returns a shorter string", function()
    assert.is_true(#solution.remove_chars("hello")==#"hello"-2)
  end)
  it("should be equal to", function()
    assert.are.same('loquen', solution.remove_chars('eloquent'))
    assert.are.same('ountr', solution.remove_chars('country'))
    assert.are.same('erso', solution.remove_chars('person'))
    assert.are.same('lac', solution.remove_chars('place'))
    assert.are.same('', solution.remove_chars('ok'))
  end)
end)

--[[ Take a Ten Minutes Walk
https://www.codewars.com/kata/54da539698b8a2ad76000228/train/lua

You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten
minutes too early to an appointment, so you decided to take the opportunity to go for a short walk.
The city provides its citizens with a Walk Generating App on their phones -- everytime you press the
button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's',
'w', 'e']). You always walk only a single block for each letter (direction) and you know it takes
you one minute to traverse one city block, so create a function that will return true if the walk
the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will,
of course, return you to your starting point. Return false otherwise.

> Note: you will always receive a valid array containing a random assortment of direction letters
('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's
standing still!).
]]

describe("is_valid_walk", function()
  it("The function exists", function()
    assert(type(solution.is_valid_walk) == "function", "is_valid_walk() does not exist!")
  end)
  it("should return true for valid walks", function()
    assert.is_true(solution.is_valid_walk({'n','s','n','s','n','s','n','s','n','s'}))
  end)
  it("should return false for long walks", function()
    assert.is_false(solution.is_valid_walk({'w','e','w','e','w','e','w','e','w','e','w','e'}))
  end)
  it("should return false for short walks", function()
    assert.is_false(solution.is_valid_walk({'w'}))
  end)
  it("should return false for walks which do not bring you back to the start", function()
    assert.is_false(solution.is_valid_walk({'n','n','n','s','n','s','n','s','n','s'}))
  end)
end)
describe("_is_back_to_origin", function()
  it("should return true for a walk that ends at the origin", function()
    assert.is_true(solution._is_back_to_origin({'w', 'e'}))
  end)
end)

--[[ You're a square!
https://www.codewars.com/kata/54c27a33fb7da0db0100040e/train/lua

# A square of squares

You like building blocks. You especially like building blocks that are squares. And what you even
like more, is to arrange them into a square of square building blocks!

However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary
rectangle! Those blasted things! If you just had a way to know, whether you're currently working in
vain… Wait! That's it! You just have to check if your number of building blocks is a perfect square.

## Task

Given an integral number, determine if it's a [square
number](https://en.wikipedia.org/wiki/Square_number):

> In mathematics, a _square number_ or _perfect square_ is an integer that is the square of an
integer; in other words, it is the product of some integer with itself.

The tests will always use some integral number, so don't worry about that in dynamic typed
languages.

## Examples
```
-1  =>  false
 0  =>  true
 3  =>  false
 4  =>  true
25  =>  true
26  =>  false
```
]]

describe("issquare", function()
  it("The function exists", function()
    assert(type(solution.issquare) == "function", "issquare() does not exist!")
  end)
  it("should return true for 0", function()
    assert.are.equal(true, solution.issquare(0))
  end)
  it("should return true for 1", function()
    assert.are.equal(true, solution.issquare(1))
  end)
  it("should return false for 3", function()
    assert.are.equal(false, solution.issquare(3))
  end)
end)

--[[ Bit Counting
https://www.codewars.com/kata/526571aae218b8ee490006f4/train/lua

Write a function that takes an integer as input, and returns the number of bits that are equal to
one in the binary representation of that number. You can guarantee that input is non-negative.

## Example

The binary representation of `1234` is `10011010010`, so the function should return `5` in this case.
]]

describe("count_bits", function()
  it("The function exists", function()
    assert(type(solution.count_bits) == "function", "count_bits() does not exist!")
  end)
  it("should return 0 for 0", function()
    assert.are.same(solution.count_bits(0), 0)
  end)
  it("should return 1 for 1", function()
    assert.are.same(solution.count_bits(1), 1)
  end)
  it("should return 1 for 2", function()
    assert.are.same(solution.count_bits(2), 1)
  end)
  local input = {0,4,7,9,10,26,77231418,12525589,3811,392902058,1044,10030245,183337941,20478766,103021,287,115370965,31,417862,626031,89,674259}
  local expected = {0,1,3,2,2,3,14,11,8,17,3,10,16,14,9,6,15,5,7,12,4,10}
  for i = 1, #input do
    it("Basic test " .. i, function() assert.are.same(expected[i], solution.count_bits(input[i])) end)
  end
end)

--[[ Highest and Lowest
https://www.codewars.com/kata/554b4ac871d6813a03000035/train/lua

In this little assignment you are given a string of space separated numbers, and have to return the
highest and lowest number.

## Examples:

```
high_and_low "1 2 3 4 5"   --> return "5 1"
high_and_low "1 2 -3 4 5"  --> return "5 -3"
high_and_low "1 9 3 4 -5"  --> return "9 -5"
```

## Notes:

- All numbers are valid Int32, no need to validate them.
- There will always be at least one number in the input string.
- Output string must be two numbers separated by a single space, and highest number is first.
]]

describe("high_and_low", function()
  it("The function exists", function()
    assert(type(solution.high_and_low) == "function", "high_and_low() does not exist!")
  end)
  it("should return the same number for single number", function()
    assert.are.same(solution.high_and_low("1"), "1 1")
  end)
  it("should return the highest and lowest number", function()
    assert.are.same(solution.high_and_low("1 2 3 4 5"), "5 1")
  end)
end)
describe("helper functions", function()
  it("_string_to_array() should transform a string into an array", function()
    assert.are.same(solution._string_to_array("1 2"), {1, 2})
  end)
  it("_array_to_string() should transform an array into a string", function()
    assert.are.same(solution._array_to_string({1, 2}), "1 2")
  end)
end)

--[[ Create Phone number
https://www.codewars.com/kata/525f50e3b73515a6db000b83/train/lua

Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of
those numbers in the form of a phone number.

Example

```
create_phone_number({ 1,2,3,4,5,6,7,8,9,0 }) -- => returns "(123) 456-7890"
```

The returned format must be correct in order to complete this challenge.

Don't forget the space after the closing parentheses!
]]

describe("create_phone_number", function()
  it("The function exists", function()
    assert(type(solution.create_phone_number) == "function", "create_phone_number() does not exist!")
  end)
  it("returns a string in a phone number format", function()
    assert.are.same(solution.create_phone_number({ 1,2,3,4,5,6,7,8,9,0 }), "(123) 456-7890")
  end)
end)

--[[ Stop gninnipS My sdroW!
https://www.codewars.com/kata/5264d2b162488dc400000001/train/lua

Write a function that takes in a string of one or more words, and returns the same string, but with
all five or more letter words reversed (Just like the name of this Kata). Strings passed in will
consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples:

```
spin_words( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
spin_words( "This is a test") => returns "This is a test"
spin_words( "This is another test" )=> returns "This is rehtona test"
```
]]

describe("spin_words", function()
  it("The function exists", function()
    assert(type(solution.spin_words) == "function", "spin_words() does not exist!")
  end)
  it("should return the same word for single word with less than 5 letters", function()
    assert.are.same(solution.spin_words("One"), "One")
    assert.are.same(solution.spin_words("Two"), "Two")
  end)
  it("should return the reversed word for single word with 5 letters or more", function()
      assert.are.same(solution.spin_words("Three"), "eerhT")
      assert.are.same(solution.spin_words("Evaristo"), "otsiravE")
  end)
  it("should return the same sentence for sentences with only words with less than 5 letters", function()
      assert.are.same(solution.spin_words("One Two"), "One Two")
  end)
  it("🥇 Gold", function()
      assert.are.same(solution.spin_words("Hey fellow warriors"), "Hey wollef sroirraw")
      assert.are.same(solution.spin_words("This is a test"), "This is a test")
      assert.are.same(solution.spin_words("This is another test"), "This is rehtona test")
  end)
end)

--[[ Vowel Count
https://www.codewars.com/kata/54ff3102c1bad923760001f3/train/lua

Return the number (count) of vowels in the given string.
We will consider a, e, i, o, u as vowels for this Kata (but not y).
The input string will only consist of lower case letters and/or spaces.
]]

describe("vowelCount", function()
  it("The function exists", function()
    assert(type(solution.vowelCount) == "function", "vowelCount() does not exist!")
  end)
  it("should count a as one vowel", function()
    assert.are.same(solution.vowelCount("a"), 1)
  end)
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

--[[ Convert boolean values to strings 'Yes' or 'No'.
https://www.codewars.com/kata/53369039d7ab3ac506000467/train/lua

Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string
for false.
]]

describe("bool_to_word", function()
  it("retuns 'Yes' for true and 'No' for false", function()
        assert.are.same("Yes", solution.bool_to_word(true))
        assert.are.same("No", solution.bool_to_word(false))
  end)
end)

--[[ Sum of positive
https://www.codewars.com/kata/5715eaedb436cf5606000381/train/lua

You get an array of numbers, return the sum of all of the positives ones.

## Example

```
[1,-4,7,12] => 1 + 7 + 12 = 20
```

## Note

- if there is nothing to sum, the sum is default to 0.
]]

describe("positive_sum", function()
    it("returns the sum of all positive numbers", function()
        assert.are.same(15, solution.positive_sum({ 1, 2, 3, 4, 5 }))
        assert.are.same(13, solution.positive_sum({ 1, -2, 3, 4, 5 }))
        assert.are.same(9, solution.positive_sum({ -1, 2, 3, 4, -5 }))
    end)
    it("returns 0 when the array is empty", function()
        assert.are.same(0, solution.positive_sum({}))
    end)
    it("returns 0 when all numbers are negative", function()
        assert.are.same(0, solution.positive_sum({ -1, -2, -3, -4, -5 }))
    end)
end)

--[[ Find The Parity outlier
https://www.codewars.com/kata/5526fc09a1bbd946250002dc/train/lua

You are given an array (which will have a length of at least 3, but could be very large) containing
integers. The array is either entirely comprised of odd integers or entirely comprised of even
integers except for a single integer N. Write a method that takes the array as an argument and
returns this "outlier" N.

## Examples
```
[2, 4, 0, 100, 4, 11, 2602, 36]
-- Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
-- Should return: 160 (the only even number)
```
]]

describe("find", function()
    it("should return the outlier", function()
        assert.are.same(3, solution.find({ 2, 6, 8, -10, 3 }))
        assert.are.same(206847684, solution.find({ 206847684, 1056521, 7, 17, 1901, 21104421, 7, 1, 35521, 1, 7781 }))
        assert.are.same(0, solution.find({ 2147483647, 0, 1 }))
    end)
end)

--[[ Mumbling
https://www.codewars.com/kata/5667e8f4e3f572a8f2000039/train/lua

This time no story, no theory. The examples below show you how to write function accum:

## Examples

```
accum("abcd") -> "A-Bb-Ccc-Dddd"
accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt") -> "C-Ww-Aaa-Tttt"
```

The parameter of accum is a string which includes only letters from a..z and A..Z.
]]

describe("accum", function()
    local function dotest(s, expect)
        local actual = solution.accum(s)
        assert.are.same(expect, actual)
    end
    it("should handle basic cases", function()
        dotest("ZpglnRxqenU", "Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu")
        dotest("NyffsGeyylB", "N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb")
        dotest("MjtkuBovqrU", "M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu")
        dotest("EvidjUnokmM", "E-Vv-Iii-Dddd-Jjjjj-Uuuuuu-Nnnnnnn-Oooooooo-Kkkkkkkkk-Mmmmmmmmmm-Mmmmmmmmmmm")
    end)
end)

--[[ Multiply
https://www.codewars.com/kata/50654ddff44f800200000004/train/lua

This code does not execute properly. Try to figure out why.
]]

describe("multiply", function()
    it("should return 0 for (0, 0)", function()
        assert.are.same(0, solution.multiply(0, 0))
    end)
    it("should return 100 for (10, 10)", function()
        assert.are.same(100, solution.multiply(10, 10))
    end)
end)

--[[ Disemvowel Trolls
https://www.codewars.com/kata/52fba66badcd10859f00097e/train/lua

Trolls are attacking your comment section!

A common way to deal with this situation is to remove all of the vowels from the trolls' comments,
neutralizing the threat.

Your task is to write a function that takes a string and return a new string with all vowels
removed.

For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

Note: for this kata y isn't considered a vowel.
]]

describe("disemvowel", function()
    it("should remove all vowels from a string", function()
        assert.are.same("Ths wbst s fr lsrs LL!", solution.disemvowel("This website is for losers LOL!"))
    end)
end)

--[[ Even or Odd
https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/lua

Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd"
for odd numbers.
]]

describe("even_or_odd", function()
    it("should return 'Even' for even numbers and 'Odd' for odd numbers", function()
        assert.are.equal("Odd", solution.even_or_odd(1))
        assert.are.equal("Even", solution.even_or_odd(2))
        assert.are.equal("Odd", solution.even_or_odd(-1))
        assert.are.equal("Even", solution.even_or_odd(-2))
        assert.are.equal("Even", solution.even_or_odd(0))
    end)
end)

--[[ Multiples of 3 or 5
https://www.codewars.com/kata/514b92a657cdc65150000006/train/lua

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The
sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number
passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

Note: If the number is a multiple of both 3 and 5, only count it once.

Courtesy of projecteuler.net ([Problem 1](https://projecteuler.net/problem=1))
]]

describe("multiples", function()
    it("should return the sum of all multiples of 3 or 5 below the number passed in", function()
        assert.are.same(23, solution.multiples(10))
        assert.are.same(8, solution.multiples(6))
    end)
end)
