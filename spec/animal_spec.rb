require_relative '../lib/animal.rb'

describe "An instance of", Animal do

  before :each do
    @animal = Animal.new
    @another_animal = Animal.new
    @dragon = Dragon.new
    @unicorn = Unicorn.new
    @trex = Trex.new
    @wearwolf = Wearwolf.new
  end

  it "should be properly initialized" do
    expect(@animal).to be_a(Animal)
  end

  context "when new" do
    it "its name is animal" do
      expect(@animal.name).to eq('Animal')
    end
  end

  context "it battles" do
    it "Animals that battle other Animals always lose" do
      expect(@animal.battle(@another_animal)).to eq(false)
    end
    it "Unicorns beat Wearwolves and T-Rex's" do
      expect(@unicorn.battle(@wearwolf)).to eq(true)
      expect(@unicorn.battle(@trex)).to eq(true)
    end
    it "Wearwolves beat Dragons" do
      expect(@wearwolf.battle(@dragon)).to eq(true)
    end
    it "Dragons beat everything except wearwolves" do
      expect(@dragon.battle(@unicorn)).to eq(true)
      expect(@dragon.battle(@trex)).to eq(true)
      expect(@dragon.battle(@animal)).to eq(true)
      expect(@dragon.battle(@wearwolf)).to eq(false)
    end
    it "Trex only beat wearwolves" do
      expect(@trex.battle(@unicorn)).to eq(false)
      expect(@trex.battle(@dragon)).to eq(false)
      expect(@trex.battle(@animal)).to eq(false)
      expect(@trex.battle(@wearwolf)).to eq(true)
    end
  end

end
