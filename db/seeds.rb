# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

user1 = User.new
user1.name = "Martin Cervantes"
user1.username = "mcervantes"
user1.password = "123456"
user1.save

user2 = User.new
user2.name = "Lorena Palomo"
user2.username = 'lpalomo'
user2.password = 123456
user2.save

user3 = User.new
user3.name = "David Muniz"
user3.username = "dmuniz"
user3.password = 123456
user3.save

user4 = User.new
user4.name = "Eulalio Lopez"
user4.username = "elopez"
user4.password = 123456
user4.save

user5 = User.new
user5.name = "Anacleta Marquez"
user5.username = "amarquez"
user5.password = 123456
user5.save

user1 = User.find(1)
user2 = User.find(2)
user3 = User.find(3)
user4 = User.find(4)
user5 = User.find(5)

##############################################################

cat1 = Category.new
cat1.category_name = "Sports"
cat1.priority = 1
cat1.save

cat2 = Category.new
cat2.category_name = "Fashion"
cat2.priority = 4
cat2.save

cat3 = Category.new
cat3.category_name = "Entertainment"
cat3.priority = 2
cat3.save

cat4 = Category.new
cat4.category_name = "Business"
cat4.priority = 3
cat4.save

cat1 = Category.find(1)
cat2 = Category.find(2)
cat3 = Category.find(3)
cat4 = Category.find(4)

##############################################################

art1 = user1.articles.build
art1.title = "Lorem ipsum dolor sit 1"
art1.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis pariatur aliquid, maxime quas tempora aperiam tempore exercitationem recusandae provident fuga."
art1.image = "https://www.gannett-cdn.com/presto/2020/07/14/USAT/9622f981-c0b8-4505-87a2-18cd74ce153c-espn.jpg?crop=2077,1168,x475,y437&width=660&height=370&format=pjpg&auto=webp"
art1.category_id = 1
art1.save

art2 = user2.articles.build
art2.title = "ipsum dolor sit Lorem 2"
art2.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis pariatur aliquid, maxime quas tempora aperiam tempore exercitationem recusandae provident fuga."
art2.image = "https://thestore-berlin.com/wp-content/uploads/2020/01/vegan-plant-based-news-vegan-fashion-week-livekindly.jpg"
art2.category_id = 2
art2.save

art3 = user3.articles.build
art3.title = "dolor sit Lorem ipsum 3"
art3.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis pariatur aliquid, maxime quas tempora aperiam tempore exercitationem recusandae provident fuga."
art3.image = "https://alltips.in/wp-content/uploads/2019/11/Entertainment.jpg"
art3.category_id = 3
art3.save

art4 = user1.articles.build
art4.title = "Lorem ipsum dolor sit 4"
art4.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis pariatur aliquid, maxime quas tempora aperiam tempore exercitationem recusandae provident fuga."
art4.image = "https://www.lacity.org/sites/g/files/wph1221/f/labusinessportal.jpg"
art4.category_id = 4
art4.save

art5 = user2.articles.build
art5.title = "ipsum dolor sit Lorem 5"
art5.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis pariatur aliquid, maxime quas tempora aperiam tempore exercitationem recusandae provident fuga."
art5.image = "https://dispatcheseurope.com/wp-content/uploads/2016/08/3028600-poster-p-fashion.jpg"
art5.category_id = 2
art5.save

art6 = user3.articles.build
art6.title = "dolor sit Lorem ipsum 6"
art6.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis pariatur aliquid, maxime quas tempora aperiam tempore exercitationem recusandae provident fuga."
art6.image = "https://cinematalkies.net/wp-content/uploads/2020/03/entertainment.png"
art6.category_id = 3
art6.save

art7 = user1.articles.build
art7.title = "Lorem ipsum dolor sit 7"
art7.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis pariatur aliquid, maxime quas tempora aperiam tempore exercitationem recusandae provident fuga."
art7.image = "https://image.shutterstock.com/image-vector/color-sport-background-football-basketball-260nw-1315841180.jpg"
art7.category_id = 1
art7.save

art8 = user2.articles.build
art8.title = "ipsum dolor sit Lorem 8"
art8.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis pariatur aliquid, maxime quas tempora aperiam tempore exercitationem recusandae provident fuga."
art8.image = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT0YWqfFWMkU5sWNRHWYtbi2vtn705LhpPLaQ&usqp=CAU"
art8.category_id = 4
art8.save

art9 = user3.articles.build
art9.title = "dolor sit Lorem ipsum 9"
art9.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis pariatur aliquid, maxime quas tempora aperiam tempore exercitationem recusandae provident fuga."
art9.image = "https://www.manatt.com/Manatt/media/Media/Images/Jumbotron/TV_Screens.jpg?ext=.jpg"
art9.category_id = 3
art9.save

art10 = user1.articles.build
art10.title = "dolor sit Lorem ipsum 10"
art10.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis pariatur aliquid, maxime quas tempora aperiam tempore exercitationem recusandae provident fuga."
art10.image = "https://oregonsportsnews.com/wp-content/uploads/2020/06/Sports.jpg"
art10.category_id = 1
art10.save

art1 = Article.find(1)
art2 = Article.find(2)
art3 = Article.find(3)
art4 = Article.find(4)
art5 = Article.find(5)
art6 = Article.find(6)
art7 = Article.find(7)
art8 = Article.find(8)
art9 = Article.find(9)
art10 = Article.find(10)

##############################################################

vote1 = user1.votes.build
vote1.article_id = 1
vote1.save

vote2 = user2.votes.build
vote2.article_id = 1
vote2.save

vote3 = user3.votes.build
vote3.article_id = 1
vote3.save

vote4 = user4.votes.build
vote4.article_id = 1
vote4.save

vote5 = user5.votes.build
vote5.article_id = 1
vote5.save


User.count
Article.count
Vote.count
Category.count
