#!/bin/bash



geography_quiz(){
	# Array of geography questions
geography_questions=(
	"1. What is the difference between weather and climate?"
	"2. What type of plate boundary causes earthquakes and volcanoes?"
	"3. Which line divides the Earth into the Northern and Southern Hemispheres?"
	"4. What is urbanization?"
	"5. Which continent has the largest population?"
)

# Array of options for each question
geography_options=(
	"a) Short-term vs long-term | b) Rain vs snow | c) Hot vs cold | d) Wind vs humidity"
	"a) Divergent | b) Convergent | c) Transform | d) Subduction"
	"a) Tropic of Cancer | b) Etubinquator | c) Prime Meridian | d) Arctic Circle"
	"a) City expansion | b) Farming | c) Deforestation | d) Pollution"
	"a) Africa | b) Europe | c) Asia | d) North America"
)

geography_answers=("a" "b" "b" "a" "c")

question=0
for q in "${geography_questions[@]}"; do
	echo "$q"
	echo "${geography_options[$question]}"
	read -p "Answer: " answerg
	answer="${geography_answers[$question]}"
		if [ "$answerg" == "$answer" ];then
				echo "You got it right!!"
		else
				echo "You got it wrong!! The correct answer is: $answer"
		fi
		((question++))
done

}

display_menu_options(){
	# This shows all the choices you can pick from and asks you to type one.
	echo -e " Pick an option below:
	1. Geography Quiz
	2. Math Quiz
	3. Science Quiz
	4. Basketball Quiz
	5. Soccer Quiz
	6. General Quiz
	7. Exit
	"
	read -p "Choose an option (1-7): " function_choice
}
display_menu_options
check_user_input(){
	# This looks at what number you typed and runs the matching action.
	case  $function_choice in
	1)
		geography_quiz
		;;
	2)
		math_quiz
		;;
	3)
		science_quiz
		;;
	4)
		basketball_quiz
		;;
	5)
		soccer_quiz
		;;
	6)
		general_quiz
		;;
	7)
		end_script   # Stops the program.
		;;
	*)
		display_menu_options   # If you typed a wrong number, it shows the menu again.
		;;
	esac	
}
check_user_input
