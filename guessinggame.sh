function corr
{
	echo "Guess how many files are there in directory "
	read guess
	ans=$( ls -l | grep "^-" | wc -l)
	while [[ $guess -ne $ans ]]
	do
		if [[ $guess -lt $ans ]]
		then
			echo "Files are more than your guess"
		else
			echo  'Files are less than your guess'
		fi
		echo 'Take another guess'
		read guess
	done
	echo "Your answer is correct, current dir. has "$ans" files"
	echo 'You won the game!!!'
}
corr
