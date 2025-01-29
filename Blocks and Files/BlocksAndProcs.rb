# blocks are sections of unnamed code
# parameters are passed in with | | - they are called block variables

puts('Block 1')
c1 = [1,2,3].collect{|x| x*2}
p c1







a = Proc.new{|x| x = x*10; puts(x)}
b = lambda{|x| x = x*10; puts(x)}
c = proc{|x| x.capitalize}

puts(a.class)
puts(b.class)
puts(c.class)

a.call(100)
b.call(60)
p c.call("hello world")






# blocks will be passed to a method when the block is to the right of a method call
# (but not passed as a normal parameter)

def aMethod
  puts('--- In aMethod ---')
  yield
end

# method      block
aMethod{ puts("Good Morning") }


def caps(anarg)
  puts('--- In caps method ---')
  yield(anarg)   # execution of block, given the method parameter
end

#          method                     block
caps("a lowercase string"){ |x| x.upcase! ; puts(x) }








# when the last parameter in a method has a &, it is considered a proc object


def abc(a, b, c)
  puts('---abc---')
  a.call
  b.call
  c.call
  yield
end

def abc2(&d)
  puts('---abc2---')
  d.call  # can be called with .call rather than yield
          # but can also be called with yield still
end



a = lambda{ puts "one" }
b = lambda{ puts "two" }
c = proc{ puts "three" }

abc(a, b, c){puts "four"}
abc2{ puts "four" }











###### checking if a block has been given ######




def foo( s )
  puts("---in foo---")
  if block_given?                       # used to verify a block has been provided before calling yield
    puts("Block passed to foo")
    yield(s)
  else
    puts("No block passed to foo")
  end
end


foo("hello"){ |s| s.upcase!
  puts (s)
}

foo("goodbye")