#
module My_show
	class Show_image		
		def open_image (num, list)
			f = File.open(list[num-1], 'r')
			puts f.read
		end		
	end

	class Show_word
		def print_secret_word (letters, word)
			print ("Secret word - #{word.join(' ')}\n")
			print ("Your errors - #{letters.join(' ').upcase}")			
		end		
	end
end
