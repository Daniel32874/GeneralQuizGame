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
	"a) Tropic of Cancer | b) Equator | c) Prime Meridian | d) Arctic Circle"
	"a) City expansion | b) Farming | c) Deforestation | d) Pollution"
	"a) Africa | b) Europe | c) Asia | d) North America"
)

geography_answers=("A" "B" "B" "A" "C")

geography_question=0
for g in "${geography_questions[@]}"; do
	echo "$g"
	echo "${geography_options[$geography_question]}"
	read -p "Answer: " answerg
	answer="${geography_answers[$geography_question]}"
		if [ "${answerg^}" == "$answer" ];then
				echo "You got it right!!"
		else
				echo "You got it wrong!! The correct answer is: $answer"
		fi
		((geography_question++))
done
display_menu_options
}

math_quiz(){
math_questions=(
    "1. What is 12 × 8?"
    "2. Solve for x: 3x + 5 = 20"
    "3. What is the square root of 144?"
    "4. What is 45% of 200?"
    "5. If a triangle has angles of 50° and 60°, what is the third angle?"
)

math_options=(
    "a) 88 | b) 96 | c) 108 | d) 100"
    "a) 3 | b) 4 | c) 5 | d) 6"
    "a) 10 | b) 11 | c) 12 | d) 14"
    "a) 80 | b) 85 | c) 90 | d) 95"
    "a) 60° | b) 70° | c) 80° | d) 90°"
)

math_answers=("B" "C" "C" "C" "B")
math_question=0
for m in "${math_questions[@]}"; do
	echo "$m"
	echo "${math_options[$math_question]}"
	read -p "Answer: " answerm
	answer="${math_answers[$math_question]}"
		if [ "${answerm^}" == "$answer" ];then
				echo "You got it right!!"
		else
				echo "You got it wrong!! The correct answer is: $answer"
		fi
		((math_question++))
done
display_menu_options
}

science_quiz(){
science_questions=(
    "1. What is the chemical symbol for water?"
    "2. What planet is known as the Red Planet?"
    "3. What gas do plants absorb for photosynthesis?"
    "4. What force keeps us on the ground?"
    "5. What is the center of an atom called?"
)

science_options=(
    "a) H2O | b) O2 | c) CO2 | d) H2"
    "a) Venus | b) Mars | c) Jupiter | d) Saturn"
    "a) Oxygen | b) Nitrogen | c) Carbon Dioxide | d) Hydrogen"
    "a) Magnetism | b) Gravity | c) Friction | d) Inertia"
    "a) Electron | b) Proton | c) Nucleus | d) Neutron"
)

science_answers=("A" "B" "C" "B" "C")
science_question=0
for s in "${science_questions[@]}"; do
	echo "$s"
	echo "${science_options[$science_question]}"
	read -p "Answer: " answers
	answer="${science_answers[$science_question]}"
		if [ "${answers^}" == "$answer" ];then
				echo "You got it right!!"
		else
				echo "You got it wrong!! The correct answer is: $answer"
		fi
		((science_question++))
done
display_menu_options
}

basketball_quiz(){
	# Array of basketball questions
basketball_questions=(
    "1. How many players from one team are on the court during a basketball game?"
    "2. How many points is a free throw worth?"
    "3. What is it called when a player scores three baskets in a row?"
    "4. How long is a standard NBA game (not including overtime)?"
    "5. Who is known as the NBA all-time leading scorer?"
)

basketball_options=(
    "a) 4 | b) 5 | c) 6 | d) 7"
    "a) 1 | b) 2 | c) 3 | d) 4"
    "a) Triple | b) Three-peat | c) Hat trick | d) Triple score"
    "a) 36 minutes | b) 40 minutes | c) 48 minutes | d) 60 minutes"
    "a) Michael Jordan | b) Kobe Bryant | c) LeBron James | d) Kareem Abdul-Jabbar"
)

basketball_answers=("B" "A" "B" "C" "C")

basketball_question=0
for b in "${basketball_questions[@]}"; do
	echo "$b"
	echo "${basketball_options[$basketball_question]}"
	read -p "Answer: " answerb
	answer="${basketball_answers[$basketball_question]}"
		if [ "${answerb^}" == "$answer" ];then
				echo "You got it right!!"
		else
				echo "You got it wrong!! The correct answer is: $answer"
		fi
		((basketball_question++))
done
display_menu_options
}

soccer_quiz(){
	# Array of soccer questions
soccer_questions=(
    "1. How many players are on the field for one soccer team?"
    "2. What part of the body cannot touch the ball during play (except the goalkeeper)?"
    "3. How long is a standard professional soccer match?"
    "4. What is it called when a player scores three goals in one game?"
    "5. Which country has won the most FIFA World Cups?"
)

soccer_options=(
    "a) 9 | b) 10 | c) 11 | d) 12"
    "a) Head | b) Chest | c) Arms and hands | d) Legs"
    "a) 60 minutes | b) 70 minutes | c) 80 minutes | d) 90 minutes"
    "a) Triple goal | b) Hat trick | c) Three-peat | d) Goal streak"
    "a) Germany | b) Argentina | c) Italy | d) Brazil"
)

soccer_answers=("C" "C" "D" "B" "D")

soccer_question=0
for s in "${soccer_questions[@]}"; do
	echo "$s"
	echo "${soccer_options[$soccer_question]}"
	read -p "Answer: " answers
	answer="${soccer_answers[$soccer_question]}"
		if [ "${answers^}" == "$answer" ];then
				echo "You got it right!!"
		else
				echo "You got it wrong!! The correct answer is: $answer"
		fi
		((soccer_question++))
done
display_menu_options
}

general_quiz(){
	# Array of general questions
general_questions=(
    "1. What is the largest ocean on Earth?"
    "2. Who wrote the play Romeo and Juliet?"
    "3. What is the capital of Canada?"
    "4. How many continents are there on Earth?"
    "5. What does CPU stand for in computers?"
)

general_options=(
    "a) Atlantic Ocean | b) Indian Ocean | c) Pacific Ocean | d) Arctic Ocean"
    "a) Charles Dickens | b) William Shakespeare | c) Mark Twain | d) Jane Austen"
    "a) Toronto | b) Vancouver | c) Ottawa | d) Montreal"
    "a) 5 | b) 6 | c) 7 | d) 8"
    "a) Central Processing Unit | b) Computer Power Unit | c) Core Processing Utility | d) Central Program Utility"
)

general_answers=("C" "B" "C" "C" "A")

general_question=0
for g in "${general_questions[@]}"; do
	echo "$g"
	echo "${general_options[$general_question]}"
	read -p "Answer: " answere
	answer="${general_answers[$general_question]}"
		if [ "${answere^}" == "$answer" ];then
				echo "You got it right!!"
		else
				echo "You got it wrong!! The correct answer is: $answer"
		fi
		((general_question++))
done
display_menu_options
}

exit_script(){
	exit
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
		exit_script   # Stops the program.
		;;
	*)
		display_menu_options   # If you typed a wrong number, it shows the menu again.
		;;
	esac
	check_user_input
}
check_user_input
