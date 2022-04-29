=begin

Exercise: Create some classes or modules following:

BbcNews:

With attributes: id, title, content and category.
With class methods:
new(id, title, content, category): create new a BBC news
update(bbc_news, title, content): update title or content for bbc_news.
delete(bbc_news): remove the bbc_news.

CnnNews:

With attributes: id, title, content and publication_date.
With class methods:
new(id, title, content, publication_date): create new a CNN news
update(cnn_news, title, content): update title or content for cnn_news.
delete(cnn_news): remove the cnn_news.

Examples:

bbc_news_01 = BbcNews.new(01, "BBC first news", "Hello world from BBC", "Say hello")
bbc_news_02 = BbcNews.new(02, "BBC second news", "Hello Ruby from BBC", "Say hello")
bbc_news_03 = BbcNews.new(02, "BBC third news", "Hello AsianTech from BBC", "Say hello")

cnn_news_01 = CnnNews.new(01, "CNN first news", "Hello world from CNN", "06/07/2018")
cnn_news_02 = CnnNews.new(02, "CNN second news", "Hello Ruby from CNN", "06/07/2018")
cnn_news_03 = CnnNews.new(02, "CNN third news", "Hello AsianTech from CNN", "06/07/2018")

BbcNews.update(bbc_news_02, "BBC second news!", "Hello Ruby from Asiantech")
BbcNews.delete(bbc_news_01)

CnnNews.update(cnn_news_02, "CNN second news!", "Hello Ruby from Asiantech")
CnnNews.delete(cnn_news_03)

=end

require "pry"

class News
  attr_accessor :id
  attr_accessor :title
  attr_accessor :content
  @@news = []

  def self.add_new(new_obj)
    @@news.push(new_obj)
  end

  def self.get_news
    @@news
  end

  def self.update_new(new_obj, title, content)
    return unless @@news.include?(new_obj)

    index = @@news.index(new_obj)
    @@news[index].title = title
    @@news[index].content = content
  end

  def self.delete_new(new_obj)
    return unless @@news.include?(new_obj)

    @@news.delete(new_obj)
  end
end

class BbcNews < News
  attr_accessor :category
  
  def initialize(id, title, content, category)
    @id = id
    @title = title
    @content = content
    @category = category
  end
end

bbc_news_01 = BbcNews.new(01, "BBC first news", "Hello world from BBC", "Say hello")
bbc_news_02 = BbcNews.new(02, "BBC second news", "Hello Ruby from BBC", "Say hello")
bbc_news_03 = BbcNews.new(03, "BBC third news", "Hello AsianTech from BBC", "Say hello")
BbcNews.add_new(bbc_news_01)
BbcNews.add_new(bbc_news_02)
BbcNews.add_new(bbc_news_03)
# p BbcNews.get_news
BbcNews.update_new(bbc_news_02, "BBC second news!", "Hello Ruby from Asiantech")
# p BbcNews.get_news
BbcNews.delete_new(bbc_news_01)
# p BbcNews.get_news

class CnnNews < News
  attr_accessor :publication_date

  def initialize(id, title, content, publication_date)
    @id = id
    @title = title
    @content = content
    @publication_date = publication_date
  end
end

cnn_news_01 = CnnNews.new(01, "CNN first news", "Hello world from CNN", "06/07/2018")
cnn_news_02 = CnnNews.new(02, "CNN second news", "Hello Ruby from CNN", "06/07/2018")
cnn_news_03 = CnnNews.new(03, "CNN third news", "Hello AsianTech from CNN", "06/07/2018")
CnnNews.add_new(cnn_news_01)
CnnNews.add_new(cnn_news_02)
CnnNews.add_new(cnn_news_03)
# p CnnNews.get_news
CnnNews.update_new(cnn_news_02, "CNN second news!", "Hello Ruby from Asiantech")
# p CnnNews.get_news
BbcNews.delete_new(cnn_news_03)
# p CnnNews.get_news

=begin

User:
With attributes: id, name, friends, messages.
With methods:
subscribe(organisation): Subscribe a news organisation.
unsubscribe(organisation): Unsubscribe that organisation.
subscription_list: Show list of organisations were subscribed.
show_news(organisation): Show 10 newest news from the organisation if subscribed already.
add_friend(user): Add a user as friend, note: if user A add_friend user B or user B add_friend user A then user A and user B are friend each other.
unfriend(user): Unfriend with that user.
friends: Show list friend names of user if has many friends with same name, add more friend ids after their names with format "friend_name(id)".
send_message(friend, message): Send a message to friend, note: Only for friend.
conversation(friend): Show conversation between user and that friend, note: Latest message on the top and newest message at the bottom of conversation 
  dialog. Format of conversation dialog: "name" => "message" or "name(id)" => "message" if they are same name.

Examples:

first_user = User.new(01, "Bob")
second_user = User.new(02, "Smith")
third_user = User.new(03, "Bob")
	
first_user.subscribe(BbcNews)
second_user.subscribe(CnnNews)
third_user.subscribe(CnnNews)
third_user.subscribe(BbcNews)

second_user.unsubscribe(CnnNews)

first_user.subscription_list # [BbcNews]
second_user.subscription_list # []
third_user.subscription_list # [CnnNews, BbcNews]

first_user.show_news(BbcNews) 
# [{title: "BBC second news!", content: "Hello Ruby from Asiantech", category: "Say hello"},
#  {title: "BBC third news", content: "Hello AsianTech from BBC", category: "Say hello"}]
first_user.show_news(CnnNews) # []
third_user.show_news(CnnNews) 
# [{ title: "CNN first news", content: "Hello world from CNN", publication_date: "06/07/2018" },
#  { title: "CNN second news!", content: "Hello Ruby from Asiantech", publication_date: "06/07/2018" }]

first_user.add_friend(second_user)
first_user.add_friend(third_user)
second_user.add_friend(third_user)

third_user.unfriend(first_user)

first_user.friends # ["Smith"]
second_user.friends # ["Bob(01)", "Bob(03)"]
third_user.friends # ["Smith"]

first_user.send_message(second_user, "Hello!")
second_user.send_message(first_user, "Hi! what"s up?")
first_user.send_message(second_user, "I just came to say hello.")
second_user.send_message(first_user, "...")

second_user.conversation(first_user)
# [{ "Bob" => "Hello!" },
#  { "Smith" => "Hi! what"s up?" },
#  { "Bob" => "I just came to say hello."}
#  { "Smith" => "..." }]
	
first_user.send_message(third_user, "Hello!")
first_user.send_message(third_user, "I just came to say hello.")
	
first_user.conversation(third_user) # []
third_user.conversation(first_user) # []

=end

class User 
  attr_accessor :id
  attr_accessor :name
  attr_accessor :organisations
  attr_accessor :friends
  attr_accessor :messages

  def initialize(id, name)
    @id = id
    @name = name
    @organisations = []
    @friends = []
    @messages = []
  end

  def subscribe(organisation)
    return if @organisations.include?(organisation)

    @organisations.push(organisation)
  end

  def unsubscribe(organisation)
    return unless @organisations.include?(organisation)

    @organisations.delete(organisation)
  end

  def subscription_list
    return if @organisations.empty?

    @organisations
  end

  def show_news(organisation)
    return unless @organisations.include?(organisation)

    index = @organisations.find_index(organisation)
    news = @organisations[index].get_news.last(10)
    news.map do |x| 
      if x.class == BbcNews
        { title: x.title, content: x.content, category: x.category } 
      else
        { title: x.title, content: x.content, pubication_date: x.publication_date }
      end
    end
  end

  def add_friend(user)
    return if @friends.include?(user)

    @friends.push(user)
    user.add_friend(self)
  end

  def unfriend(user)
    return unless @friends.include?(user)
    
    @friends.delete(user)
    user.unfriend(self)
  end

  def friends
    display_name
  end

  def send_message(friend, message)
    return unless @friends.include?(friend)

    result = display_name
    index = @friends.index(friend)
    @messages.push({"Me to #{result[index]}" => message})
    friend.receive_message(self, message)
  end

  def conversation(friend)
    return [] unless @friends.include?(friend)

    array = display_name
    index = @friends.index(friend)
    @messages.keep_if do |x|
      (["Me to #{array[index]}", array[index]] & x.keys).any?
    end
  end

  def receive_message(friend, message)
    return unless @friends.include?(friend)

    result = display_name
    index = @friends.index(friend)
    @messages.push({result[index] => message})
  end

  private

  def display_name
    array = @friends.map { |x| x.name }
    @friends.map do |x|
      if array.count(x.name) > 1
        "#{x.name}(#{x.id})" 
      else
        x.name
      end
    end
  end
end

  first_user = User.new(01, "Bob")
  second_user = User.new(02, "Smith")
  third_user = User.new(03, "Bob")
    
  first_user.subscribe(BbcNews)
  second_user.subscribe(CnnNews)
  third_user.subscribe(CnnNews)
  third_user.subscribe(BbcNews)
  
  second_user.unsubscribe(CnnNews)

  # p first_user.organisations # [BbcNews]
  # p second_user.organisations # []
  # p third_user.organisations # [CnnNews, BbcNews]
  # p first_user.show_news(BbcNews) 
  # [{title: "BBC second news!", content: "Hello Ruby from Asiantech", category: "Say hello"},
  #  {title: "BBC third news", content: "Hello AsianTech from BBC", category: "Say hello"}]
  # first_user.show_news(CnnNews) # []
  # third_user.show_news(CnnNews) 
  # [{ title: "CNN first news", content: "Hello world from CNN", publication_date: "06/07/2018" },
  #  { title: "CNN second news!", content: "Hello Ruby from Asiantech", publication_date: "06/07/2018" }]
  
  first_user.add_friend(second_user)
  first_user.add_friend(third_user)
  second_user.add_friend(third_user)
  
  # third_user.unfriend(first_user)
  
  # p first_user.friends # ["Smith"]
  # p second_user.friends # ["Bob(01)", "Bob(03)"]
  # p third_user.friends # ["Smith"]
  
  first_user.send_message(second_user, "Hello!")
  second_user.send_message(first_user, "Hi! what's up?")
  first_user.send_message(second_user, "I just came to say hello.")
  second_user.send_message(first_user, "...")
  
  p second_user.conversation(first_user)
  # [{ "Bob" => "Hello!" },
  #  { "Smith" => "Hi! what"s up?" },
  #  { "Bob" => "I just came to say hello."}
  #  { "Smith" => "..." }]
    
  first_user.send_message(third_user, "Hello!")
  first_user.send_message(third_user, "I just came to say hello.")
    
  # p first_user.messages
  p first_user.conversation(third_user) # []
  # p third_user.conversation(first_user) # []
