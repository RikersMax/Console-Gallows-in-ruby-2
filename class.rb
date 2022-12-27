#

class User_active
	attr_reader :user_choice_list

	def initialize
		@user_choice_list = []
	end
		
	def user_choice 
		print ('Enter the selected letter: ')
		@user_choice_list << gets.chomp.upcase
	end
end

class Good_bad                                #return good array letters and bad array letters
	attr_reader :good, :bad
	def initialize (list_letter, word)    #list_letter - input user choice letter, word - secret word
		@good = word & list_letter
		@bad = list_letter - @good
	end	
end
	
class Check_letter				#return guessed letters
	attr_reader :secret_word
	def initialize (letter_list, word)	#input letter_list - good array letters , word - secret word
		@letter_list = letter_list
		@word = word
		@secret_word = []
	end	
	
	def add_letter
	@secret_word = Array.new(@word.length, '_')	
	other = @letter_list & @word

	other.each do |letter|
	   	@secret_word[@word.index(letter)] = letter	   	   	
	end
	end			
end

class Image_num 		#must return number image

end

















=begin

	test	

x = User_active.new
x.user_choice
x.user_choice
#print x.user_choice_list
g = Good_bad.new(x.user_choice_list, ['A', 'S', 'D', 'W'])
#print g.good
#print g.bad

y = Check_letter.new(g.good, ['A', 'S', 'D'])
y.add_letter
print y.secret_word
=end