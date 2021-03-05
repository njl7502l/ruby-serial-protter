require 'serialport'

sp = SerialPort.new('/dev/cu.usbserial-01F971EF', 115_200, 8, 1, 0) # 9600bps, 8bit, stopbit 1, parity none

loop do
  line = sp.gets # read
  p "echo:#{line}" # write
end
