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
    it 'does multi digit, multi part subtraction' do
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
end