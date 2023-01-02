module My_data

@@data_path = File.dirname(__FILE__) + '/data/'

class Secret_word
	include My_data
	def main_word 
	begin
		f = File.open(@@data_path + 'words.txt', 'r')
		word = f.read.split(' ').sample.upcase
		return word.split('')
	rescue (SystemCallError)
		puts ('File not found')
	end
	   	
	end
end   

class List_image
	include My_data
	def list_all_image
	   	@image_arr = Dir.glob(@@data_path + '/image/*')
	end	
end
end    
