#!/bin/bash
clear
play_game=true
valid_guess=false

current_question=""
quiz_answer=""
user_guess=""
quiz_score=0
total_score=0
#initialize quiestions and answers for quizes
geography_questions=(
	"1. What is the difference between weather and climate?"
	"2. What type of plate boundary causes earthquakes and volcanoes?"
	"3. Which line divides the Earth into the Northern and Southern Hemispheres?"
	"4. What is urbanization?"
	"5. Which continent has the largest population?")
geography_options=(
	"a) Short-term vs long-term | b) Rain vs snow | c) Hot vs cold | d) Wind vs humidity"
	"a) Divergent | b) Convergent | c) Transform | d) Subduction"
	"a) Tropic of Cancer | b) Equator | c) Prime Meridian | d) Arctic Circle"
	"a) City expansion | b) Farming | c) Deforestation | d) Pollution"
	"a) Africa | b) Europe | c) Asia | d) North America")
geography_answers=("A" "B" "B" "A" "C")
math_questions=(
    "1. What is 12 × 8?"
    "2. Solve for x: 3x + 5 = 20"
    "3. What is the square root of 144?"
    "4. What is 45% of 200?"
    "5. If a triangle has angles of 50° and 60°, what is the third angle?")
math_options=(
    "a) 88 | b) 96 | c) 108 | d) 100"
    "a) 3 | b) 4 | c) 5 | d) 6"
    "a) 10 | b) 11 | c) 12 | d) 14"
    "a) 80 | b) 85 | c) 90 | d) 95"
    "a) 60° | b) 70° | c) 80° | d) 90°")
math_answers=("B" "C" "C" "C" "B")
science_questions=(
    "1. What is the chemical symbol for water?"
    "2. What planet is known as the Red Planet?"
    "3. What gas do plants absorb for photosynthesis?"
    "4. What force keeps us on the ground?"
    "5. What is the center of an atom called?")
science_options=(
    "a) H2O | b) O2 | c) CO2 | d) H2"
    "a) Venus | b) Mars | c) Jupiter | d) Saturn"
    "a) Oxygen | b) Nitrogen | c) Carbon Dioxide | d) Hydrogen"
    "a) Magnetism | b) Gravity | c) Friction | d) Inertia"
    "a) Electron | b) Proton | c) Nucleus | d) Neutron")
science_answers=("A" "B" "C" "B" "C")
basketball_questions=(
    "1. How many players from one team are on the court during a basketball game?"
    "2. How many points is a free throw worth?"
    "3. What is it called when a player scores three baskets in a row?"
    "4. How long is a standard NBA game (not including overtime)?"
    "5. Who is known as the NBA all-time leading scorer?")
basketball_options=(
    "a) 4 | b) 5 | c) 6 | d) 7"
    "a) 1 | b) 2 | c) 3 | d) 4"
    "a) Triple | b) Three-peat | c) Hat trick | d) Triple score"
    "a) 36 minutes | b) 40 minutes | c) 48 minutes | d) 60 minutes"
    "a) Michael Jordan | b) Kobe Bryant | c) LeBron James | d) Kareem Abdul-Jabbar")
basketball_answers=("B" "A" "B" "C" "C")
soccer_questions=(
    "1. How many players are on the field for one soccer team?"
    "2. What part of the body cannot touch the ball during play (except the goalkeeper)?"
    "3. How long is a standard professional soccer match?"
    "4. What is it called when a player scores three goals in one game?"
    "5. Which country has won the most FIFA World Cups?")
soccer_options=(
    "a) 9 | b) 10 | c) 11 | d) 12"
    "a) Head | b) Chest | c) Arms and hands | d) Legs"
    "a) 60 minutes | b) 70 minutes | c) 80 minutes | d) 90 minutes"
    "a) Triple goal | b) Hat trick | c) Three-peat | d) Goal streak"
    "a) Germany | b) Argentina | c) Italy | d) Brazil")
soccer_answers=("C" "C" "D" "B" "D")
general_questions=(
    "1. What is the largest ocean on Earth?"
    "2. Who wrote the play Romeo and Juliet?"
    "3. What is the capital of Canada?"
    "4. How many continents are there on Earth?"
    "5. What does CPU stand for in computers?")
general_options=(
    "a) Atlantic Ocean | b) Indian Ocean | c) Pacific Ocean | d) Arctic Ocean"
    "a) Charles Dickens | b) William Shakespeare | c) Mark Twain | d) Jane Austen"
    "a) Toronto | b) Vancouver | c) Ottawa | d) Montreal"
    "a) 5 | b) 6 | c) 7 | d) 8"
    "a) Central Processing Unit | b) Computer Power Unit | c) Core Processing Utility | d) Central Program Utility")
general_answers=("C" "B" "C" "C" "A")


quiz_user_input_checker(){
	case ${user_guess^} in
		A | B | C | D )
			valid_guess=true
			;;
		*)	valid_guess=false
			echo -e "\n\tPlease enter one the options A B C or D.\n"
			;;
	esac
}

quiz_question_retry(){
	if [[ "${user_guess^}" != "${geography_answers[question]}" ]]; then
		correct_guess=false
	else
		correct_guess=true
	fi
}
current_quiz(){

		current_question=0
		score=0
		echo -e "\nTESTING----------\n"
		for (( question=0; question<"${#current_questions[@]}"; question++ )); do
			valid_guess=false
			correct_guess=true
			echo "BEFORE WHILE " $valid_guess
			while [[ $valid_guess == false || current_answers$correct_guess == false ]]; do	
				echo "IN LOOP "$valid_guess		
				echo "${current_questions[question]}"
				echo "${current_options[question]}"
				read -p "Select option: " user_guess
				quiz_user_input_checker
				echo "BEFORE wHILE " $valid_guess
				if [[ $valid_guess == true ]]; then
					echo "IN lOOP "$valid_guess	
					if [[ "${user_guess^}" == "${current_answers[question]}" ]]; then
						echo "You got it right!!"
						((score++))
					fi
				fi

				
			done
		done
		echo "Score = $score"
		echo -e "\nTESTING----------\n"
}




exit_script(){
	play_game=false
}

display_menu_options(){
	# This shows all the choices you can pick from and asks you to type one.
	echo -e " Pick an option below:
	1. Geography Quiz
	2. Math Quiz
	3. General Quiz
	4. Exit
	"
	read -p "Choose an option (1-7): " function_choice
}


check_user_input(){
	# This looks at what number you typed and runs the matching action.
	case  $function_choice in
	1)	current_questions=("${geography_questions[@]}")
		current_options=("${geography_options[@]}")
		current_answers=("${geography_answers[@]}")
		;;
	2)
		current_questions=("${math_questions[@]}")
		current_options=("${math_options[@]}")
		current_answers=("${math_answers[@]}")
		;;
	3)
		current_questions=("${general_questions[@]}")
		current_options=("${general_options[@]}")
		current_answers=("${general_answers[@]}")
		;;
	4)
		play_game=false
		;;
	*)
		echo -e "\n\tPlease enter one of the options above.\n"
		;;
	esac

}



while [[ $play_game == true ]]; do
	display_menu_options
	
	check_user_input
	if [[ $play_game == true ]] 	
		current_quiz
	else
	exit
	fi
done