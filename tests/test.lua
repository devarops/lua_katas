local solution = require 'solution'

describe("Disemvowel Trolls", function()
  it("test1", function()
    assert.are.same("Ths wbst s fr lsrs LL!", solution.disemvowel("This website is for losers LOL!"))
  end)
end)

describe('Even or Odd', function()
  it('works for fixed tests', function()
    assert.are.equal('Odd', solution.even_or_odd(1))
    assert.are.equal('Even', solution.even_or_odd(2))
    assert.are.equal('Odd', solution.even_or_odd(-1))
    assert.are.equal('Even', solution.even_or_odd(-2))
    assert.are.equal('Even', solution.even_or_odd(0))
  end)
end)

describe("Multiples of 3 or 5", function()
  it("tests", function()
    assert.are.same(23, solution.multiples_of_3_or_5(10))
    assert.are.same(8, solution.multiples_of_3_or_5(6))
  end)
end)

