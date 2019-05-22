#!/bin/bash


compwins=0
userwins=0
goal=5

RPSarray=("1" "2" "3")
function computer {

	compans=${RPSarray[$RANDOM % ${#RPSarray[@]} ]}
	echo 

}

function player {
    echo =========================================
    echo "              ---Menu---                "
    echo =========================================
    echo "          First to five RPS               "
    echo 
    echo "1 = Rock "
	echo "2 = Paper "
	echo "3 = Scissors"
	read -p "Select your choice:  " playerans
	echo "========================================="
}

function results {
    if [[ $playerans -eq $compans ]]
        then 
        echo "Its a tie"

    elif [[ $playerans -eq 1 ]] && [[ $compans -eq 2 ]]
    then 
        echo 
        echo "You played Rock!"
        echo "Computer played Paper!"
        echo "You lose!"
        compwins=$(( $compwins + 1))
    
    elif [[ $playerans -eq 1 ]] && [[ $compans -eq 3 ]]
    then 
        echo 
        echo "You played Rock!"
        echo "Computer played Scissors!"
        echo "You Win!"
        userwins=$(( $userwins + 1 ))
    elif [[ $playerans -eq 2 ]] && [[ $compans -eq 1 ]]
    then 
        echo 
        echo "You played Paper!"
        echo "Computer played Rock!"
        echo "You Win!"
        userwins=$(( $userwins + 1 ))
    elif [[ $playerans -eq 2 ]] && [[ $compans -eq 3 ]]
    then 
        echo 
        echo "You played Paper!"
        echo "Computer played Scissors!"
        echo "You Lose!"
        compwins=$(( $compwins + 1))
    elif [[ $playerans -eq 3 ]] && [[ $compans -eq 1 ]]
    then 
        echo 
        echo "You played Scissors!"
        echo "Computer played Rock!"
        echo "You Lose!"
        compwins=$(( $compwins + 1))
    elif [[ $playerans -eq 3 ]] && [[ $compans -eq 2 ]]
    then 
        echo 
        echo "You played Scissors!"
        echo "Computer played Paper!"
        echo "You Win!"
        userwins=$(( $userwins +1 ))
fi 

}

function main {
    computer    
    player
    results
echo " Computer wins: ${compwins}"
echo " User wins: ${userwins}"
echo 
}

until [[ "$userwins" -eq "$goal" ]] || [[ "$compwins" -eq "$goal" ]]
do
main 

done 


if [[ $userwins -eq $goal ]]
then
    echo "Congratulations you beat the computer!"
    echo " Thanks for playing Rock , Paper, Scissors."
    echo "========================================="
    echo "              By Sam Bisset                                    "
    echo "========================================="
else 
    echo "You'll get him next time"
    echo "Thanks for playing Rock , Paper, Scissors."
    echo "========================================="
    echo "              By Sam Bisset                                    "
    echo "========================================="
fi
