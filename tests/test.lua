local solution = require("solution")

describe("Mumbling", function()
    local function dotest(s, expect)
        local actual = solution.accum(s)
        assert.are.same(expect, actual)
    end

    it("basic tests", function()
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
    it("disemvowel", function()
        assert.are.same("Ths wbst s fr lsrs LL!", solution.disemvowel("This website is for losers LOL!"))
    end)
end)

describe("Even or Odd", function()
    it("works for fixed tests", function()
        assert.are.equal("Odd", solution.even_or_odd(1))
        assert.are.equal("Even", solution.even_or_odd(2))
        assert.are.equal("Odd", solution.even_or_odd(-1))
        assert.are.equal("Even", solution.even_or_odd(-2))
        assert.are.equal("Even", solution.even_or_odd(0))
    end)
end)

describe("Multiples of 3 or 5", function()
    it("tests", function()
        assert.are.same(23, solution.multiples_of_3_or_5(10))
        assert.are.same(8, solution.multiples_of_3_or_5(6))
    end)
end)
