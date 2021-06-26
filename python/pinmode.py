
def pinmode(pin, modeset):
    import RPi.GPIO as GPIO
    GPIO.setmode(GPIO.BOARD)
    GPIO.setwarnings(False)
    pin = int(pin)
    if modeset == 'in' or modeset == 'IN':
        GPIO.setup(pin, GPIO.IN)
    elif modeset == 'out' or modeset == 'out':
	GPIO.setup(pin, GPIO.OUT)
    else:
        return


    func = GPIO.gpio_function(pin)
    print func
