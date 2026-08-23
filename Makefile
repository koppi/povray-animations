all:
	povray hanoi.ini

7-stones:
	povray Declare=NumStones=7 +KFF2540 hanoi.ini

clean:
	rm -f *.png alltext.out
