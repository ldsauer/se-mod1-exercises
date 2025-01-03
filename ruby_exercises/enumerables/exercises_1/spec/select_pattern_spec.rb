RSpec.describe 'select pattern' do

  it 'picks even numbers' do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    evens = []
    numbers.each do |number|
      evens << number if number.even?
    end
    expect(evens).to eq([2, 4, 6, 8, 10])
  end

  it 'picks odd numbers' do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    odds = []
    numbers.each do |number|
      # Your code goes here
      odds << number if number.odd?
    end
    expect(odds).to eq([1, 3, 5, 7, 9])
  end

  it 'words with three letters' do
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    selected = []
    # Your code goes here
    words.each do |word|
      selected << word if word.length == 3
    end
    
    expect(selected).to eq(["bad", "cat", "dog", "red"])
  end

  it 'words with more than three letters' do
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    # Your code goes here
    selected = []

    words.each do |word|
      selected << word if word.length > 3
    end

    expect(selected).to eq(["pill", "finger", "blue", "table"])
  end

  it 'words ending in e' do
    words = ["are", "you", "strike", "thinking", "belt", "piece", "warble", "sing", "pipe"]
    # Your code goes here
    selected = []

    words.each do |word|
      selected << word if word.end_with?("e")
    end

    expect(selected).to eq(["are", "strike", "piece", "warble", "pipe"])
  end

  it 'words ending in ing' do
    words = ["bring", "finger", "drought", "singing", "bingo", "purposeful"]
    # Your code goes here
    selected = []

    words.each do |word|
      selected << word if word.end_with?("ing")
    end

    expect(selected).to eq(["bring", "singing"])
  end

  it 'words containing e' do
    words = ["four", "red", "five", "blue", "pizza", "purple"]
    # Your code goes here
    selected = []

    words.each do |word|
      selected << word if word.include?("e")
    end

    expect(selected).to eq(["red", "five", "blue", "purple"])
  end

  xit 'dinosaurs' do
    animals = ["tyrannosaurus", "narwhal", "eel", "achillesaurus", "qingxiusaurus"]
    # Your code goes here
    dinosaurs = []

    # animals.each do |dino|
    #   dinosaurs << dino if dino.end_with?("saurus")
    # end

    expect(dinosaurs).to eq(["tyrannosaurus", "achillesaurus", "qingxiusaurus"])
  end

  xit 'floats' do
    numbers = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    # Your code goes here
    expect(floats).to eq([1.4, 3.5, 4.9, 9.1, 8.0])
  end

  xit 'arrays' do
    elements = ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]
    # Your code goes here
    expect(arrays).to eq([["dog"], [56, 3, 8]])
  end

  xit 'hashes' do
    elements = ["cat", {:dog=>"fido"}, 23, {:stuff=>"things"}, "aimless", 43]
    # Your code goes here
    expect(hashes).to eq([{:dog=>"fido"}, {:stuff=>"things"}])
  end
end
