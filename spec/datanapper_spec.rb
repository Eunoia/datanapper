require 'spec_helper'

describe DataNapper do
  describe '#nap(5)' do
    it 'takes a 5 second nap' do
      nap_time = 5

      start_time = Time.now
      DataNapper.nap(nap_time)
      end_time = Time.now

      run_time = (end_time - start_time).round
      expect(run_time).to eq(nap_time)
    end
  end
  describe '#nap' do
    it 'with no params a 1 second nap' do
      nap_time = 1

      start_time = Time.now
      DataNapper.nap
      end_time = Time.now

      run_time = (end_time - start_time).round
      expect(run_time).to eq(nap_time)
    end
  end
end