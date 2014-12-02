require "rspec"
require "./exercises.rb"



describe Exercises do

  it "returns strings times three or nope" do

    ans = Exercises.ex0("str")
    expect(ans).to eq "strstrstr"
    ans = Exercises.ex0("wishes")
    expect(ans).to eq "nope"

  end

  it "return items in array" do

    ans = Exercises.ex1([0,5,6,7,8])
    expect(ans).to eq 5
    ans = Exercises.ex1([])
    expect(ans).to eq 0

  end

  it "return second item in array" do

    ans = Exercises.ex2([0,5,6,7,8])
    expect(ans).to eq 5
    ans = Exercises.ex2([])
    expect(ans).to eq 'No Second Element'

  end

  it "return second item in array" do

    ans = Exercises.ex3([0,5,6,7,8])
    expect(ans).to eq 26
    ans = Exercises.ex3([])
    expect(ans).to eq 0

  end

  it "return max in array" do

    ans = Exercises.ex4([0,5,6,7,8])
    expect(ans).to eq 8
    ans = Exercises.ex4([])
    expect(ans).to eq nil

  end
  
  it "puts print items in array" do

    expect(STDOUT).to receive(:puts).and_return('a')
    expect(STDOUT).to receive(:puts).and_return('b')
    expect(STDOUT).to receive(:puts).and_return('c')
    Exercises.ex5(['a','b','c'])

  end

  it "last is panda or GODZILLA" do

    arry = ['a', 'b', 'c']
    Exercises.ex6(arry)
    expect(arry[arry.count-1]).to eq 'panda'
    Exercises.ex6(arry)
    expect(arry[arry.count-1]).to eq 'GODZILLA'

  end

  it "push string to end if exists" do

    arry = ['alpha', 'beta', 'gamma']
    Exercises.ex7(arry, 'omega')
    expect(arry[2]).to eq 'gamma'
    Exercises.ex7(arry, 'beta')
    expect(arry[arry.count-1]).to eq 'beta'

  end

end