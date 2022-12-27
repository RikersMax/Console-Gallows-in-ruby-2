module My_data

class Secret_word
	def main_word (file_name)
	begin
		f = File.open(file_name, 'r')
		word = f.read.split(' ').sample.upcase
		return word.split('')
	rescue
		puts ('File not found')
	end
	   	
	end
end   

class List_image
        def initialize
		@data_path = File.dirname(__FILE__) + '/image/'		
		@image_arr = []
	end
	def list_all_image
	   	@image_arr = Dir.glob(@data_path.to_s + '*')
	end	
end
end



