require('rspec')
require('numtoword')
require('pry')

describe('Float#numwords') do

  it("This will convert a number between 1 & 19 into a string version of itself") do
    expect((18.0).numwords()).to(eq("eighteen"))
  end

  it("This will convert a number between 19 & 99 into a string version of itself") do
    expect((38.0).numwords()).to(eq("thirty eight"))
  end

  it("This will convert a number between 100 & 999 into a string version of itself") do
    expect((3087.0).numwords()).to(eq("three hundred eighty seven"))
  end
end
