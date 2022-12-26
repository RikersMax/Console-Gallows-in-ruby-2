
#current_path = File.dirname(__FILE__) 	
#file_words = File.open(current_path + '/data/words.txt','r')


class Secret_word

	def main_word (file_name)
	begin
		f = File.open(file_name, 'r')
		word = f.read.split(' ').sample						


	rescue
		puts ('File not found')
	end
	   	return word
	end

end   
