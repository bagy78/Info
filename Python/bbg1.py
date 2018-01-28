def hallo(x):
	print("ich bin eine Funktion " + x)

def sum_of_numbers():
	n=100
	x=0
	i=1
	while i<=n:
		x+=i
		i+=1
	result = "Die Summe von 1 bis 100 ist: " + str(x)
	print(result)
	
def read_stdin():
	import sys
	text=""
	while 1:
		c=sys.stdin.read(1)
		print(c)
		text+=c
		if c=='\t':
			break
	print("Eingabe: %s" % text)

	

#hallo("Hallo")
#sum_of_numbers()
read_stdin()