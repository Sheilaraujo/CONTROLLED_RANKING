# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Game.create(result: "3x2", team_id: , date: "", place: "Rio de Janeiro")
# Team.create(player_1: , player_2: , score: , game_id: )

User.create(password: "123456", email: "s@g.com", name: "Sheila",   last_name: "Dias",
about_me: "jogo pouco", difficulty: "A", user_score: 0)
User.create(password: "123456", email: "c@g.com", name: "Cintia", last_name: "Lima",
about_me: "só posso jogar aos sábados", difficulty: "Iniciante", user_score: 0)
User.create(password: "123456", email: "v@g.com", name: "Vinicius",    last_name: "Gama",
about_me: "sou de Curitiba", difficulty: "B", user_score: 0)
User.create(password: "123456", email: "p@g.com", name: "Pedro", last_name: "Dantas",
about_me: "jogo muito!", difficulty: "B", user_score: 0)
User.create(password: "123456", email: "g@g.com", name: "Gabriel",    last_name: "Castro",
about_me: "jogo devagar...", difficulty: "B", user_score: 0)
User.create(password: "123456", email: "l@g.com",     name: "Luca",   last_name: "Fernandes",
about_me: "jogo rápido", difficulty: "A", user_score: 0)
User.create(password: "123456", email: "k@g.com", name: "Kayo", last_name: "Camargo",
about_me: "sou do litoral de SP", difficulty: "B", user_score: 10)
User.create(password: "123456", email: "t@g.com", name: "Tatchi",   last_name: "Dias",
about_me: "sou de SP capital", difficulty: "A", user_score: 10)

Schedule.create(date: "Sat, 01 Jul 2022", place: "Rio de Janeiro", user_id: 1, partner: {duo: 2, opponent_1: 3, opponent_2: 4})
Schedule.create(date: "Sun, 02 Jul 2022", place: "São Paulo",      user_id: 1, partner: {duo: 8, opponent_1: 0, opponent_2: 0})
Schedule.create(date: "Mon, 03 Jul 2022", place: "Rio de Janeiro", user_id: 1, partner: {duo: 3, opponent_1: 5, opponent_2: 6})
Schedule.create(date: "Tue, 04 Jul 2022", place: "São Paulo",      user_id: 1, partner: {duo: 0, opponent_1: 0, opponent_2: 7})
Schedule.create(date: "Wed, 05 Jul 2022", place: "Rio de Janeiro", user_id: 2, partner: {duo: 0, opponent_1: 1, opponent_2: 7})
Schedule.create(date: "Thu, 06 Jul 2022", place: "São Paulo",      user_id: 2, partner: {duo: 4, opponent_1: 7, opponent_2: 5})
Schedule.create(date: "Fri, 07 Jul 2022", place: "Rio de Janeiro", user_id: 2, partner: {duo: 6, opponent_1: 0, opponent_2: 4})
Schedule.create(date: "Sat, 08 Jul 2022", place: "São Paulo",      user_id: 2, partner: {duo: 1, opponent_1: 7, opponent_2: 8})
Schedule.create(date: "Sun, 09 Jul 2022", place: "São Paulo",      user_id: 3, partner: {duo: 4, opponent_1: 1, opponent_2: 2})
Schedule.create(date: "Mon, 10 Jul 2022", place: "São Paulo",      user_id: 3, partner: {duo: 0, opponent_1: 6, opponent_2: 1})
Schedule.create(date: "Tue, 11 Jul 2022", place: "São Paulo",      user_id: 3, partner: {duo: 5, opponent_1: 8, opponent_2: 0})
Schedule.create(date: "Wed, 12 Jul 2022", place: "São Paulo",      user_id: 3, partner: {duo: 6, opponent_1: 0, opponent_2: 0})
Schedule.create(date: "Thu, 13 Jul 2022", place: "Rio de Janeiro", user_id: 4, partner: {duo: 8, opponent_1: 1, opponent_2: 6})
Schedule.create(date: "Fri, 14 Jul 2022", place: "Rio de Janeiro", user_id: 4, partner: {duo: 0, opponent_1: 7, opponent_2: 5})
Schedule.create(date: "Sat, 15 Jul 2022", place: "São Paulo",      user_id: 4, partner: {duo: 1, opponent_1: 0, opponent_2: 5})
Schedule.create(date: "Sun, 16 Jul 2022", place: "São Paulo",      user_id: 4, partner: {duo: 2, opponent_1: 1, opponent_2: 0})
