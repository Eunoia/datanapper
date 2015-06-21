require "datanapper/version"

module DataNapper
  def self.nap(seconds=1, micronap=false)
  	time = micronap ? seconds/1000 : seconds
  	sleep time
  end
end
