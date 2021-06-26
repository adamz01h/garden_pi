import RPi.GPIO as GPIO

def setboard():
	# use P1 header pin numbering convention
	GPIO.setmode(GPIO.BOARD)
