def codepoints(string)
	encrypted_array = string.codepoints.to_a
	print encrypted_array
	
	#encrypted_array.each do |x|
		#encrypted_array[x] = encrypted_array + 3
	#end
	
	#print encrypted_array
end

class Encrypt
	
	def initialize(code, string)
		@code = code
		@string = string
		@encrypted = []
		@default = []
	end

	def default_value
		@string.each_byte do |c|
			@default.push(c)
		end
		print @default
	end	

	def to_byte
		@string.each_byte do |c|
			@encrypted.push(c + @code)
		end
		print @encrypted
	end 

	def to_chr
		n = @encrypted.length
		#n.times do |i|
			#@encrypted.push(i.chr)
		#end
		print @encrypted[0].chr

		#@encrypted.each do |x|
			#@encrypted.push(x.chr)
		#end
		#print @encrypted
	end
	
end

goop = Encrypt.new(2, "hello")
goop.to_chr