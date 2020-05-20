function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your guess: "
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Guess is Less then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "Guess is Greater then the true number"
        else
            echo " congratulation,you are right!"
        break;
        fi
    done
}
echo "How many files are there in the current directory!"
guess
