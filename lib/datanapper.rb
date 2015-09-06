require "datanapper/version"

module Operators
  MULTI = /(\d+)(\*)(\d+)/
  DIVIS = /(\d+)(\/)(\d+)/
  ADDIT = /(\d+)(\+)(\d+)/
  SUBTR = /(\d+)(\-)(\d+)/
  OPERATOR_PRECEDENCE = [MULTI, DIVIS, ADDIT, SUBTR]
end

module DataNapper
  include Operators
  POSSIBLE_OPERATIONS = /.[\+-\/\*]./
  def self.math(string)
    while string.match(POSSIBLE_OPERATIONS) do
      OPERATOR_PRECEDENCE.each do |operator|
        while string.match(operator) do
          match = string.scan(operator)
          match = match.pop
          a = Integer(match[0])
          b = Integer(match[2])
          string.gsub!(match.join, a.send(match[1], b).to_s)
        end
      end
    end
    string.to_i
  end
end
