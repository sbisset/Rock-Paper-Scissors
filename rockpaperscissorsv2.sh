#!/bin/bash


# Rock paper scissors game

#Input your choice

#Sets the goal to 3 - until loop
wins=0
compwins=0
goal=3

echo "Its the first to 3 wins!"
until [ "$wins" = 3  -o "$compwins" = 3 ]
do





read -p "Rock Paper Scissors.. " userchoice









# Comp choice var 

compchoice=$((1 + RANDOM % 3))



	
# Compares users input with comp choice 

# 1=Rock 2=Paper 3=Scissors
case $userchoice in

	[rR][oO][cC][kK])
			if [[ $userchoice = [rR][oO][cC][kK]  && $compchoice -eq 1 ]]
			
			then 
				echo "You played $userchoice"
				echo "Computer played Rock"
				echo "You both played Rock! Its a tie!"
				
			elif [[ $userchoice = [rR][oO][cC][kK] && $compchoice -eq 2 ]] 
			
				then
					echo "You played $userchoice"
					echo "Computer played Paper"
					echo "You lose!" 
					compwins=$(( $compwins + 1 ))
					
			elif [[ $userchoice = [rR][oO][cC][kK] && $compchoice -eq 3 ]] 
			
				then
					echo "You played $userchoice"
					echo "Computer played Scissors" 
					echo "You win!" 
					wins=$(( $wins + 1 ))
					
			else 
				echo "You played $userchoice but the computer said no ..."
			fi
			;;
	[Ss][cC][Ii][Ss][Ss][Oo][Rr][Ss])
		if [[ $userchoice = [Ss][cC][Ii][Ss][Ss][Oo][Rr][Ss] && $compchoice -eq 3 ]] 
		
			then 
				echo "You played $userchoice"
				echo "Computer played Scissors"
				echo "You both played Scissors! Its a tie!"
			elif [[ $userchoice = [Ss][cC][Ii][Ss][Ss][Oo][Rr][Ss] && $compchoice -eq 2 ]] 
				then 
				echo "You played Scissors"
				echo "Computer played Paper"
				echo "You win!"
				wins=$(( $wins + 1 ))
				
			elif [[ $userchoice = [Ss][cC][Ii][Ss][Ss][Oo][Rr][Ss] && $compchoice -eq 1 ]] 
			then
				echo "You played Scissors"
				echo "Computer played Rock" 
				echo "You lose!"
				compwins=$(( $compwins + 1 ))
				
				
			else
			echo "You played $userchoice but the computer said no ..."
		fi
		;;
	[Pp][Aa][Pp][Ee][Rr] )
		if [[ $userchoice = [Pp][Aa][Pp][Ee][Rr] && $compchoice -eq 2 ]] 
			then
				echo "You played $userchoice"
				echo "Computer played Paper" 
				echo "You both played Paper! Its a tie!"
			
			elif [[ $userchoice = [Pp][Aa][Pp][Ee][Rr] && $compchoice -eq 1 ]]
			then
				echo "You played $userchoice"
				echo "Computer played Rock!"
				echo "You win!"
				wins=$(( $wins + 1 ))
				
			elif [[ $userchoice = [Pp][Aa][Pp][Ee][Rr] && $compchoice -eq 3 ]] 
			then
				echo "You played $userchoice"
				echo "Computer played Scissors"
				echo "You lose!"
				compwins=$(( $compwins + 1 ))
			else 
			echo "You played $userchoice but the computer said no ..."
		fi
			
esac 


echo
echo "User wins: $wins"
echo "Comp wins: $compwins"
echo 

done

if [[ "$wins" -eq 3 ]] 
then 
	echo
	echo " Congratulations you won!" 
	
else 
	echo "The computer won! Better look next time!"
fi
