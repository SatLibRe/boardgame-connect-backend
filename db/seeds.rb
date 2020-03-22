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
Room.destroy_all

u1 = User.create(name: "Miles", password:"123", img_url:"https://images.foxtv.com/static.fox5dc.com/www.fox5dc.com/content/uploads/2019/10/932/524/Tommy-Lee-Jenkins.jpg?ve=1&tl=1")
u2 = User.create(name: "Jimmy", password:"123", img_url:"https://images.foxtv.com/static.fox5dc.com/www.fox5dc.com/content/uploads/2019/10/932/524/Tommy-Lee-Jenkins.jpg?ve=1&tl=1")

b1 = Boardgame.create( 
    api_id: 1,
    name: "Catan",
    year_published: 1995,
    min_players: 3,
    max_players: 4,
    min_playtime: 45,
    description: "fun",
    description_preview: "fun",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559258096678-51Eiofu9mqL.jpg",
    thumb_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559258096678-51Eiofu9mqL.jpg")

b2 = Boardgame.create( 
    api_id: 1,
    name: "Monopoly",
    year_published: 1995,
    min_players: 3,
    max_players: 4,
    min_playtime: 45,
    description: "fun",
    description_preview: "fun",
    image_url: "https://vignette.wikia.nocookie.net/monopoly/images/6/66/Nascarmonopoly01.jpg/revision/latest/window-crop/width/200/x-offset/141/y-offset/0/window-width/361/window-height/360?cb=20170213144415",
    thumb_url: "https://vignette.wikia.nocookie.net/monopoly/images/6/66/Nascarmonopoly01.jpg/revision/latest/window-crop/width/200/x-offset/141/y-offset/0/window-width/361/window-height/360?cb=20170213144415")
    
b3 = Boardgame.create( 
    api_id: 1,
    name: "Risk",
    year_published: 1995,
    min_players: 3,
    max_players: 4,
    min_playtime: 45,
    description: "fun",
    description_preview: "fun",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/81QKEkqUqKL._SY355_.png",
    thumb_url: "https://images-na.ssl-images-amazon.com/images/I/81QKEkqUqKL._SY355_.png")



r1 = Room.create(name:"Fun", host_id: 1, zoom_url:"hhhshhs", boardgame_id: Boardgame.first.id)
r2 = Room.create(name:"2nd Catan Room", host_id: 1, zoom_url:"2nd", boardgame_id: Boardgame.first.id)
r3 = Room.create(name:"So much more fun", host_id: 1, zoom_url:"siiii", boardgame_id: Boardgame.second.id)

ubg1 = UserBoardGame.create(user_id: User.first.id, boardgame_id: Boardgame.first.id)
ubg2 = UserBoardGame.create(user_id: User.first.id, boardgame_id: Boardgame.second.id)
ubg3 = UserBoardGame.create(user_id: User.first.id, boardgame_id: Boardgame.third.id)

c1 = Comment.create(boardgame_id: Boardgame.first.id, content: "Heyo")

ur1 = UserRoom.create(user_id: User.first.id, room_id: Room.first.id)
ur1 = UserRoom.create(user_id: User.second.id, room_id: Room.first.id)
ur1 = UserRoom.create(user_id: User.second.id, room_id: Room.second.id)
