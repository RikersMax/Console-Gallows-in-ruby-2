#
require './main_data.rb'
require './class.rb'
require './show.rb'



secret_word = My_data::Secret_word.new.main_word
list_image = My_data::List_image.new.list_all_image

user_start = Game::User_active.new
good_bad = Game::Good_bad.new
check = Game::Check_letter.new(secret_word)

print_word = My_show::Show_word.new
print_gallows = My_show::Show_image.new

print_gallows.open_image(0, list_image)
print_word.first_call(secret_word)


loop do	
        
	user_start.user_choice
	good_bad.good_and_bad(user_start.user_choice_list, secret_word)
	check.add_letter(user_start.user_choice_list)

	print_gallows.open_image(good_bad.bad.length, list_image)		
	print_word.print_secret_word(good_bad.bad, check.secret_word)
	
	Game.result(good_bad.bad, check.secret_word)
		
end
