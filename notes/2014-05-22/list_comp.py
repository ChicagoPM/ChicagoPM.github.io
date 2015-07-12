
foo = [ 1, 2, 3, 4, 5 ]
bar = [ x * 2 
        for x in foo
        if x < 4
    ]
print bar
