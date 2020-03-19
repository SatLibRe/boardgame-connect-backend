# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Boardgame.destroy_all
Comment.destroy_all

u1 = User.create(name: "Miles", password:"123", img_url:"https://images.foxtv.com/static.fox5dc.com/www.fox5dc.com/content/uploads/2019/10/932/524/Tommy-Lee-Jenkins.jpg?ve=1&tl=1")

b1 = Boardgame.create( 
    api_id: 1,
    name: "Sorry!",
    year_published: 1995,
    min_players: 3,
    max_players: 4,
    min_playtime: 45,
    description: "fun",
    description_preview: "fun",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559258096678-51Eiofu9mqL.jpg",
    thumb_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559258096678-51Eiofu9mqL.jpg")

r1 = Room.create(name:"Ass suckers", host_id: 1, zoom_url:"hhhshhs")

ubg1 = UserBoardGame.create(user_id: User.first.id, boardgame_id: Boardgame.first.id)

c1 = Comment.create(boardgame_id: Boardgame.first.id, content: "rails fucking sucks ass")

ur1 = UserRoom.create(user_id: User.first.id, room_id: Room.first.id)
