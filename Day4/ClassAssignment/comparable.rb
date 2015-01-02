class Server
attr_reader :name, :no_processors, :memory_gb  # we must provide readers to this attributes
include Comparable                             # because we are comparing the other Server with self
def initialize(name, no_processors, memory_gb)
  @name = name
  @no_processors = no_processors
  @memory_gb = memory_gb
end
# def inspect
#   "/Server: #{@name}: #{@no_processors} procs, #{@memory_gb} GiB mem/"
# end
def <=>(other)
  if self.no_processors == other.no_processors  # if there is the same number of procs
    self.memory_gb <=> other.memory_gb          # comparing memory
  else
    self.no_processors <=> other.no_processors  # otherwise comparing the number of processors
  end
end
end

server1=Server.new "Server1 ",64, 128

server2=Server.new "Server2",32,30

puts (server1<=>server2)


