import getopt
import sys

try:
    options, arguments = getopt.getopt(sys.argv[1:], 'x:', ['kill-limit='])
    for option, value in options:
        if option in ('-x', 'kill-limit'):
            print(option)
            print(type(option))
            print(value)
            print(type(value))

except Exception as e:
    print(e)
    
print("done")
