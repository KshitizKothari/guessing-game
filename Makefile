all:README.md

README.md:guessinggame.sh
	touch README.md
	echo '#Guessinggame' > README.md
	echo $$(date) >> README.md
	echo "\n" >>README.md
	echo cat guessinggame.sh | wc -l >> README.md

clean:
	
