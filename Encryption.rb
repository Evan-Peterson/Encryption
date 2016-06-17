=begin
class Encrypt
	
	def initialize(code, string)
		@code = code
		@string = string
		@encrypted = []
		@default = []
		@message = ""
	end

	def default_value
		@string.each_byte do |c|
			@default.push(c)
		end
	end	

	def to_byte
		@string.each_byte do |c|
			@encrypted.push(c + @code)
		end
	end 

	def to_chr
		to_byte if @encrypted.empty?

		message = @encrypted.map(&:chr)
		message.join
	end
	
	def join
		@message.join
	end
end
=end


def Encrypt(code, string)
	array = []
	
	# Converts the string to byte values and pushes to array
	string.each_byte do |c|
		array.push(c + code)
	end

	encrypted_message = array.map(&:chr)
	encrypted_message.join
end

def Decrypt(code, string)
	array = []

	string.each_byte do |c|
		array.push(c - code)
	end
	decrypted_message = array.map(&:chr)
	decrypted_message.join
end

#print Encrypt(2, "hello, world! My name is Evan Peterson and this is my encryption algorithm")
print Decrypt(2, 'jgnnq."yqtnf#"O{"pcog"ku"Gxcp"Rgvgtuqp"cpf"vjku"ku"o{"gpet{rvkqp"cniqtkvjo')