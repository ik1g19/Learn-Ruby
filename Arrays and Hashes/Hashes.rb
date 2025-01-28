h1 = {
    'room1' => 'The Treasure Room',
    'room2' => 'The Throne Room',
    'loc1' => 'A Forest Glade',
    'loc2' => 'A Mountain Stream'
}

h1['room1'] = 'You are in a dark room'
p h1
h1.delete('room1')
puts '------------'
p h1
puts '------------'
p h1.has_key?('room1')
p h1.has_key?('room2')
p h1.keys
p h1.values







multihash = {
    'name' => 'Multi-Hash',
    'array' => ['one', 'two', 'three', 'four'],
    'nested array' => 
        ["I",
            ["wandered", "lonely", "as",
                ["a", "cloud"]
            ]
        ],
    'nested hash' => {'a' => 'hi', 'b' => 'goodbye'}
}

p multihash['array']
