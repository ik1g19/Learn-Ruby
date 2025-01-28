


########## while ##########





puts("starting 1st while loop" )
i = 0
while i < 10 do
  puts i
  i += 1
end
puts("1st while loop ended" )

i = 0


puts("\nstarting 2nd while loop" )
begin
  puts i
  i += 1
end while i < 10
puts("2nd while loop ended" )




########## until ##########




i = 10
# one line until
puts("until 1")
until i == 10 do puts (i) end # never executes


#multiple-line until where the do keyword is optional
puts("\nuntil 2")
until i == 10 # do # never executes
  puts(i)
  i += 1
end


# one line until modifier
puts("\nuntil 3")
puts(i) until i == 10 # never executes


#multi-line until modifier, executes 1 or more times
puts("\nuntil 4")
begin # executes once
  puts(i)
end until i == 10





########## loop ##########





arr = ['one', 'two', 'three', 'four']


# loop
puts("\nloop (do..end)")
i=0
loop do
  puts(arr[i])
  i+=1
  if (i == arr.length) then
    break
  end
end


puts("\nloop (curly braces)" )
i=0
loop {
  puts(arr[i])
  i+=1
  if (i == arr.length) then
    break
  end
}