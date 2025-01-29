puts('File.foreach...')
File.foreach("testfile.txt") {|line| print( line )}

puts("\n\nFile.readlines...")
lines = File.readlines("testfile.txt")
lines.each{|line| print(line)}
puts("\n\nEnd")