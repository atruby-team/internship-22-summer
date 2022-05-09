=begin

Tạo database có những bảng sau:

users: có id, name [tên, danh, thanh danh, danh giá, tên của tuồng hát, danh tánh, tên của vật gì, danh tiếng, tiếng tăm] , address
posts: có content, user_id, comment_count
comments: có content, post_id
Tạo dữ liệu mẫu trước để thực hiện query: 10 users, 30 posts, 60 comments

Viết query sau:

Lấy ra các bài post theo page, mỗi page có 10 bài post
Lấy ra tất cả user và số lượng bài post của user đó.
Lấy ra user không có bài post nào
Lấy ra 3 user có nhiều bài post nhất.
Tạo bài post
Sửa nội dung bài post- xoá bài post, yêu cầu sau khi xoá thì xoá cả comment
Tạo comment cho bài post, yêu cầu là sau khi tạo thì comment_count của bài post tăng lên 1
Xoá comment, yêu cầu là sau khi tạo thì comment_count của bài post giảm 1

=end

require 'pg'

# conn = PG.connect
conn = PG.connect(
  hostaddr: '127.0.0.1',
  port: 5432,
  user: 'postgres',
  password: 'Trumgame9xqn98.'
)

conn.exec("
DROP DATABASE IF EXISTS demo;
")

conn.exec("
CREATE DATABASE demo;
")

conn.exec("
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id 	int ,
	name	 varchar,
	address 	varchar
);
")

conn.exec("
INSERT INTO users 
VALUES 
(1 , 'An',  'Viet Nam'),
(2 , 'Peter',  'USA'),
(3 , 'Miki',  'Japan'),
(4  , 'Koh',  'Russia'),
(5 , 'Lee',  'Korea'),
(6 , 'Xiao',  'China'),
(7  , 'Lisa',  'Thailand'),
(8  , 'Maria',  'England'),
(9  , 'Modric',  'Croatia'),
(10  , 'Vila',  'France');
")

conn.exec("
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
	id 	int,
	content 	 varchar,
	user_id	int ,
	comment_count	int  
);
")

conn.exec("
INSERT INTO posts 
VALUES 
(1, 'Hello ', 5  ,   2 ),
(2, 'What are yot doing?',  2 , 10 ),
(3, 'How are you?' , 3 , 3 ),
(4 ,'How do you feel? '  , 1 ,  11 ),
(5, 'Who are the best?' , 10 ,  15 ),
(6, 'What would you like?' , 6 , 5 ),
(7 ,'What a nice day!'  , 7 , 8 ),
(8, 'Wake up !' , 4 , 9 ),
(9, 'The one!', 8 ,  8 ),
(10, 'Doctor strange ' ,9 ,  4 ),
(11, 'Hello ', 5  ,   2 ),
(12, 'What are yot doing?',  2 , 10 ),
(13, 'How are you?' , 3 , 3 ),
(14, 'How do you feel? '  , 1 ,  11 ),
(15,'Who are the best?' , 10 ,  15 ),
(16, 'What would you like?' , 6 , 5 ),
(17, 'What a nice day!'  , 7 , 8 ),
(18, 'Wake up !' , 4 , 9 ),
(19 , 'The one!', 8 ,  8 ),
(20, 'Doctor strange ' ,9 ,  4 ),
(21, 'Hello ', 5  ,   2 ),
(22, 'What are yot doing?',  2 , 10 ),
(23, 'How are you?' , 3 , 3 ),
(24, 'How do you feel? '  , 1 ,  11 ),
(25, 'Who are the best?' , 10 ,  15 ),
(26, 'What would you like?' , 6 , 5 ),
(27, 'What a nice day!'  , 7 , 8 ),
(28, 'Wake up !' , 4 , 9 ),
(29, 'The one!', 8 ,  8 ),
(30, 'Doctor strange ' ,9 ,  4 );
")
conn.exec("
UPDATE  posts 
SET  user_id = 7
WHERE user_id = 5
")

conn.exec("
DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
	id 	int ,
	content 	 varchar,
	post_id 	int  
)
")

conn.exec("
INSERT INTO comments 
VALUES 
(1, 'Hello ', 5 ),
(2 , 'Good  ', 2  ),
(3 , 'Shit  ', 3  ),
(4,  'God  ', 10 ),
(5 , 'Awesome!  ', 7  ),
(6 , 'Sad  ', 1  ),
(7 , 'Angry  ', 8 ),
(8 , 'Funny  ', 4  ),
(9 , 'So silly  ', 9 ),
(10 , 'Hello ', 6  ),
(11 , 'Hello ', 13  ),
(12 , 'Good  ', 12  ),
(13 , 'Shit  ', 14  ),
(14,  'God  ', 16),
(15 , 'Awesome! ', 17  ),
(16 , 'Sad ', 19  ),
(17 , 'Angry ', 11 ),
(18 , 'Funny  ', 20 ),
(19 , 'So silly  ', 15 ),
(20 , 'Hello ', 18  ),
(21 , 'FU ', 22  ),
(22 , 'Stupid ', 25  ),
(23 , 'Ha ha  ', 23),
(24, 'Rish ', 28  ),
(25 , 'Morning ', 26  ),
(26 , 'Hello ', 21  ),
(27 , 'Little  ', 29  ),
(28, 'Delicius', 30 ),
(29 , 'Hi ', 24 ),
(30 , 'Go ', 27  ),
(31, 'Hello ', 5 ),
(32 , 'Good  ', 2  ),
(33 , 'Shit  ', 3  ),
(34,  'God  ', 10 ),
(35 , 'Awesome!  ', 7  ),
(36 , 'Sad  ', 1  ),
(37 , 'Angry  ', 8 ),
(38 , 'Funny  ', 4  ),
(39 , 'So silly  ', 9 ),
(40 , 'Hello ', 6  ),
(41 , 'Hello ', 13  ),
(42 , 'Good  ', 12  ),
(43 , 'Shit  ', 14  ),
(44,  'God  ', 16),
(45 , 'Awesome!  ', 17  ),
(46 , 'Sad  ', 19  ),
(47 , 'Angry  ', 11 ),
(48 , 'Funny  ', 20 ),
(49 , 'So silly  ', 15 ),
(50 , 'Hello ', 18  ),
(51 , 'FU ', 22  ),
(52 , 'Stupid ', 25  ),
(53 , 'Ha ha  ', 23),
(54, 'Rish ', 28  ),
(55 , 'Morning ', 26  ),
(56 , 'Hello ', 21  ),
(57 , 'Little  ', 29  ),
(58, 'Delicius', 30 ),
(59 , 'Hi ', 24 ),
(60 , 'Go ', 27  );
")


def post_per_page(page)
  conn = PG.connect( dbname: 'demo' )
  conn.exec( "SELECT * FROM posts LIMIT 10 OFFSET #{(page - 1) * 10}" ) do |result|
    puts "     Id | Content                   | User Id          | Comment Count"
    result.each do |row|
      puts " %6d | %-25s | %-16s | %s " %
        row.values_at('id', 'content', 'user_id', 'comment_count')
    end
  end
end

post_per_page(1)

def take_all_users_and_number_of_post
  conn = PG.connect( dbname: 'demo' )
  conn.exec("SELECT  users.name, COUNT(posts.id) as post_count FROM posts JOIN users ON posts.user_id = users.id GROUP BY users.name") do |result|
    puts " Name                      | Post Count"
    result.each do |row|
      puts " %-25s | %s " %
        row.values_at('name', 'post_count')
    end 
  end
end

# take_all_users_and_number_of_post

def take_users_no_post
  conn = PG.connect( dbname: 'demo' )
  conn.exec( "SELECT  users.name, COUNT(posts.id) as post_count FROM posts RIGHT JOIN users ON posts.user_id = users.id GROUP BY users.name HAVING COUNT(posts.id) = 0") do |result|
    puts " Name "
    result.each do |row|
      puts " %-25s" %
        row.values_at('name')
    end 
  end
end

# take_users_no_post
