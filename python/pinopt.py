def pinopt(pin, direction, whl):
    import RPi.GPIO as GPIO
    GPIO.setmode(GPIO.BOARD)
    pin = int(pin)
    value = ''
    whl_val = ''
    if direction == 'read' or direction == 'READ' or direction == 'R' or direction == 'r':
     GPIO.setup(pin, GPIO.IN)
     value = GPIO.input(pin)

    elif direction == 'write' or direction == 'WRITE' or direction == 'W' or direction == 'w':

     GPIO.setup(pin, GPIO.OUT)
     if whl == 'high' or whl == 'HIGH' or whl == 'h' or whl == 'H' or whl == '1':
      GPIO.output(pin, GPIO.HIGH)
     elif whl == 'low' or whl == 'LOW' or whl == 'l' or whl == 'L' or whl == '0':
      GPIO.output(pin, GPIO.LOW)

    #read back the value after you set it
    value = GPIO.input(pin)
    print value
