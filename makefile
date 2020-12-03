all: README.md

README.md:
	touch README.md
	echo "# Yizi Yang Assignment" > README.md
	echo "This file was made at: " >> README.md
	date "+%Y-%m-%d:%H:%M:%S">> README.md
	echo "The number of lines in guessinggame.sh:" >> README.md
	wc -l  guessinggame.sh | egrep -o "[0-9]+" >>README.md