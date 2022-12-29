#
module My_show
	class Show_image
		def initialize (num, list)
			@num = num		#attempt number
			@list = list		#list files
		end
		def open_image
			f = File.open(@list[@num-1], 'r')
			puts f.read
		end		
	end

	class Show_word
		def initialize (letters, word)
			@letters = letters              #letters - insert misspelled letter
			@word  = word			#word - secret word
		end
		def print_secret_word
			print ("Secret word - #{@word.join(' ')}\n")
			print ("Your errors - #{@letters.join(' ').upcase}")			
		end		
	end
end
