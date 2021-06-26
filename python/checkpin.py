
def checkpin(pin):
    import RPi.GPIO as GPIO
    GPIO.setmode(GPIO.BOARD)
    pin = int(pin)
    func = GPIO.gpio_function(pin)
    print func
