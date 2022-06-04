# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.create(result: "['6x0', '3x2', '3x1']", team_id: , date: "", place: "Rio de Janeiro")

Schedule.create(date: "", place: "", user_id: , partners: "[1, 2, 3]")

Team.create(player_1: , player_2: , score: , game_id: )

User.create(email: "", name: "", last_name: "", encrypted_password: "123456", user_score: 0)
