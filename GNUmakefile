SHELL := /bin/bash

FramesPerMove := 20

all: 5-stones

%-stones:
	povray declare=NumStones=$* +KFF$$(( (2**$* - 1) * $(FramesPerMove) )) \
	  declare=FramesPerMove=$(FramesPerMove) hanoi.ini

clean:
	rm -f *.png *.mp4 *.pov-state alltext.out
