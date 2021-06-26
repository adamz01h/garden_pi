import sys, getopt
from pinopt import pinopt
from pinmode import pinmode

def main(argv):
   pin = '00'
   direction = '00'
   mode = '00'
   write_high_low = '00'
   usage = 'pin.py --pin <pin number> --operation <read/write> --write <high/low> --mode <in/out>'
   try:
      opts, args = getopt.getopt(argv,"hp:dw:m",["pin=","operation=","write_high_low=","mode="])
   except getopt.GetoptError:
      print usage
      sys.exit(2)
   for opt, arg in opts:
      if opt in ('-h',"--help"):
         print usage
         sys.exit()
      elif opt in ("-p", "--pin"):
         pin = arg
      elif opt in ("-o", "--operation"):
         direction = arg
      elif opt in ("-m", "--mode"):
         mode = arg
      elif opt in ("-w", "--write"):
         write_high_low = arg

   if mode != ' ':
    pinmode(pin, mode)
   else:
    print "mode not set"

   if direction !=' ' and write_high_low != ' ':
    pinopt(pin, direction, write_high_low)


if __name__ == "__main__":
   main(sys.argv[1:])
