class W1D1E2_bt1
	def initialize(*args)
	end
	def _input(*args)
		_name = gets.chomp
		_age = gets.chomp
		_content = gets.chomp
		_infor=[_name,_age,_content]
		p "Daily Report: #{Time.now}"
		p "Tên: #{_name}"
		p "Tuổi: #{_age}"
		p "Nội dung: #{_content}"
		return _infor
	end
end

class W1D1E2_bt2
	def initialize(args)
		
	end
	
	
end

information = W1D1E2_bt1.new._input()