#
module Game


def self.result (bad_letters, secret_word)
	if  bad_letters.length == 6
	   	puts ("\nYou Lose!")
		gets
		exit
	end

	if secret_word.include?('_') == false
		puts ("\nYou Won!")
		gets
		exit
	end
end

class User_active
	include Game
	attr_reader :user_choice_list, :attempt_count

	def initialize
		@user_choice_list = []		
	end

	def user_choice 		
		print ("\nEnter the selected letter: ")
		@user_choice_list << gets.chomp.upcase		
	end	        
end

class Good_bad                                  #return good array letters and bad array letters
	attr_reader :good, :bad
	def good_and_bad (list_letter, word)    #list_letter - input user choice letter, word - secret word
		@good = word & list_letter
		@bad = (list_letter.uniq) - @good
	end	
end
	
class Check_letter				#return guessed letters
	attr_reader :secret_word
	def initialize (word)			#input letter_list - good array letters , word - secret word
		@word = word
		@secret_word = Array.new(@word.length, '_')
	end	
	
	def add_letter (good_letters)
		@word.each_with_index do |v, i|
		    	good_letters.each do |lett|
		    	   	if (v == lett) then @secret_word[i] = lett end
			end
		end
	end			
end
end



