s1 = "Hello world\n"
s2 = "Helow world"

# Chomp won't remove the final character unless it is \n
# Chop will remove the last character no matter what it is
p s1.chop
p s1.chomp

p s2.chop
p s2.chomp