=begin

Bài tập 1: Viết daily report

Tạo 1 phương thức trong đó thực hiện các việc nhập từ bàn phím tên, tuổi, và nội dung ngày này đã học và in ra màn hình output theo format sau:
   "Daily Report {time}" # với time là thời điểm hiên tại
   "Tên: {name}"
   "Tuổi: {age}"
   "Nội dung: {content}"

=end

def daily_report 
    p "Enter name please:"
    name = gets.chomp
    p "Enter age please:"
    age = gets.chomp
    p "Enter the content learned today"
    content = gets.chomp
    p "Daily Report #{Time.now}" 
    p "Tên: #{name}"
    p "Tuổi: #{age}"
    p "Nội dung: #{content}"
end

daily_report
