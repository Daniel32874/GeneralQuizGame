#!/bin/bash

display_menu_options(){
	# This shows all the choices you can pick from and asks you to type one.
	echo -e "
	1. Geography Quiz
	2. Math Quiz
	3. Science Quiz
	4. Basketball Quiz
	5. Soccer Quiz
	6. General Quiz
	7. Exit
	"
	read -p "Choose an option (1-7): " function_choice
	check_user_input
}

check_user_input(){
	# This looks at what number you typed and runs the matching action.
	case  $function_choice in
		1)
			Geography_Quiz
			;;
		2)
			Math_Quiz
			;;
		3)
			Science_Quiz
			;;
		4)
			Basketball_Quiz
			;;
		5)
			Soccer_Quiz
			;;
		6)
			General_Quiz
			;;
		7)
			end_script   # Stops the program.
			;;
		*)
			display_menu_options   # If you typed a wrong number, it shows the menu again.
			;;
	esac	
}