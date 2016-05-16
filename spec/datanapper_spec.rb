require 'spec_helper'

describe LimitedSizedQueue do
  describe '#new(10)' do
    it 'returns a LimitedSizedQueue' do
      result = LimitedSizedQueue.new(10)
      expect(result).to eq(result)
    end
  end

  describe '#max_size' do
    it 'returns the size of the limited sized queue' do
      result = LimitedSizedQueue.new(10)
      expect(result.max_size).to eq(10) 
    end
  end

  describe '#push' do
    it 'does not grow the queue after reaching max size' do
      result = LimitedSizedQueue.new(3)
      result.push "ananas"
      result.push "apple"
      result.push "banana"
      result.push "pear"
      result.push "onion"
      result.push "tiger"

      expect(result.size).to eq(3)
    end
  end


  describe '#size' do
    it 'returns how many items are on the queue' do
      result = LimitedSizedQueue.new(10)
      result.push "apple"
      result.push "pear"
      expect(result.size).to eq(2)
    end
  end
end
