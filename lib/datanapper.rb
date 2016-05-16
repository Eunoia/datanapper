require "datanapper/version"
require 'forwardable'

class LimitedSizedQueue
  extend Forwardable
  def_delegators :@queue, :size, :inspect, :clear, :all, :to_a, :flatten, :empty?
  def_delegators :@queue, :[], :select, :sample, :reject, :map, :select, :collect

  attr_reader :max_size
 
  def initialize(size)
    @queue = Array.new
    @max_size = size
    
  end

  def push(element)
    @queue.shift if @queue.size > @max_size - 1
    @queue.push(element)
  end

end
