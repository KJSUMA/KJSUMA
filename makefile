README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "Date and Time of make: $$(date)" >> README.md
	echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: clean
clean:
	rm README.md

make
