require "datanapper/version"
$c =0
module DataNapper
	OPERATOR_PRECEDENCE = "*/+-"
  def self.math(string)
  	while string.match(/[\+-\/\*]/) do
  		matches = string.scan(/(\d+)([\+-\/\*])(\d+)/)
  		match = matches.pop
  		string.gsub!(match.join, Integer(match[0]).send(match[1], Integer(match[2])).to_s)
  	end
  	string.to_i
  end
end
