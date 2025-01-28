
puts("\nfor..in..end (range)" )
for s in 1..3
  puts s
end


puts("\neach..do..end (range)" )
(1..3).each do |s|
  puts(s)
end






# create an array with two sub-arrays - i.e. 2 'rows' each with 4 elements
multiarr = [['one', 'two', 'three', 'four'],  # multiarr[0]
            [1, 2, 3, 4]]                     # multiarr[1]


multiarr.each do |a,b,c,d|
  print("a=#{a}, b=#{b}, c=#{c}, d=#{d}\n")
end


multiarr.each{ |a,b,c,d|
  print("a=#{a}, b=#{b}, c=#{c}, d=#{d}\n")
}