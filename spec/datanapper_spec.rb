require 'spec_helper'

describe DataNapper do
  describe '#math(5+5)' do
    it 'does simple addition' do
      result = DataNapper.math('5+5')
      expect(result).to eq(10)
    end
  end
  describe '#math(92432+123355)' do
    it 'does multi digit addition' do
      result = DataNapper.math('92432+123355')
      expect(result).to eq(215_787)
    end
  end
  describe '#math(924+32+123+355)' do
    it 'does multi digit, multi part addition' do
      result = DataNapper.math('924+32+123+355')
      expect(result).to eq(1_434)
    end
  end  
  describe '#math(5-5)' do
    it 'does simple subtraction' do
      result = DataNapper.math('5-5')
      expect(result).to eq(0)
    end
  end
  describe '#math(747-73-232)' do
    it 'does multi digit, odd-multi part subtraction' do
      result = DataNapper.math('747-73-232')
      expect(result).to eq(442)
    end
  end  
  describe '#math(92432-13355)' do
    it 'does multi digit subtraction' do
      result = DataNapper.math('92432-13355')
      expect(result).to eq(79_077)
    end
  end
  describe '#math(5*5)' do
    it 'does simple multiplation' do
      result = DataNapper.math('5*5')
      expect(result).to eq(25)
    end
  end
  describe '#math(747*73*232)' do
    it 'does multi digit, odd-multi part multiplation' do
      result = DataNapper.math('747*73*232')
      expect(result).to eq(12_651_192)
    end
  end  
  describe '#math(92432*13355)' do
    it 'does multi digit multiplation' do
      result = DataNapper.math('92432*13355')
      expect(result).to eq(1_234_429_360)
    end
  end
  describe '#math(5/5)' do
    it 'does simple division' do
      result = DataNapper.math('5/5')
      expect(result).to eq(1)
    end
  end
  describe '#math(747/83/3)' do
    it 'does multi digit, odd-multi part 747/83/3' do
      result = DataNapper.math('747/83/3')
      expect(result).to eq(3)
    end
  end  
  describe '#math(92432/53)' do
    it 'does multi digit 92432/53' do
      result = DataNapper.math('92432/53')
      expect(result).to eq(1_744)
    end
  end  
end