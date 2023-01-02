#
module My_show
	class Show_image		
		def open_image (num, list)
			system 'cls'
			f = File.open(list[num], 'r')
			puts f.read
		end		
	end

	class Show_word
		def first_call (word)
			first_word =  Array.new(word.length, '_').join(' ')
			print ("Secret word - #{first_word}\nYour errors - ")
		end		

		def print_secret_word (letters, word)
			print ("Secret word - #{word.join(' ')}\n")
			print ("Your errors - #{letters.join(' ').upcase}")			
		end		
	end
end