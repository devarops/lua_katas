local solution = require 'solution'

describe("Sample Test Cases", function()
  it("tests", function()
    assert.are.same(23, solution.solution(10))
    assert.are.same(8, solution.solution(6))
  end)
end)

