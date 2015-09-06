require "datanapper/version"

module DataNapper
  def self.math(string)
  	matches = string.scan(/(\d+)([\+-\/\*])(\d+)/).each_slice(3).inject(0) do |a,b,d|
  		a += b.inject(0) do |a_,b_,d_|
	  		a_+=Integer(b_[0]).send(b_[1], Integer(b_[2]))
	  	end
  	end
  end
end
