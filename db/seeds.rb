# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Faker::Config.locale = 'fr'

require 'database_cleaner'

p "---------- START CLEAN THE DATABASE ----------"

DatabaseCleaner.allow_production = true
DatabaseCleaner.allow_remote_database_url = true
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean
puts "Mankind successfully erased"
sleep(1)
p "---------- END CLEAN THE DATABASE ----------"

p "---------------- START SEED ----------------"

p "---------------- USERS ----------------"
10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  User.create!(
    first_name: first_name,
    last_name: last_name,
    password: Faker::Internet.password(min_length: 8),
    email: Faker::Internet.email(name: "#{last_name} #{first_name}", separators: '.')
  )
end
User.create!(first_name: "Thibault",last_name: "Guichard", password: "testtest",email: "tguichard8@hotmail.com")
User.create!(first_name: "Fabrice",last_name: "Lazzarotto", password: "testtest",email: "fabricelazzarotto@gmail.com")

tp User.all
p "The database has now #{User.count} users"
sleep(1)

p "---------------- DOMAINS ----------------"

domains = Domain.create!([{user_id:"11", name: 'Jardinage', photo: 'https://images.unsplash.com/photo-1570396750814-3911a0747d09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80' }, 
	{user_id:"11", name: 'Sorties', photo: 'https://images.pexels.com/photos/450301/pexels-photo-450301.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260' },
	{user_id:"11", name: 'Productivité', photo: 'https://images.pexels.com/photos/842548/pexels-photo-842548.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'},
	{user: User.all.sample, name: 'Travail', photo: 'https://images.unsplash.com/photo-1504639725590-34d0984388bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80'},
	{user: User.all.sample, name: 'Evénement', photo: 'https://images.unsplash.com/photo-1556125574-d7f27ec36a06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'},
	{user: User.all.sample, name: 'AUTRE', photo: 'https://images.pexels.com/photos/3325917/pexels-photo-3325917.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'},
])
tp Domain.all
p "The database has now #{Domain.count} domains"
sleep(1)

p "---------------- TOPICS ----------------"

topics = Topic.create!([
	{user: User.all.sample, domain_id:"1", name: 'Tomate' }, 
	{user: User.all.sample, domain_id:"2", name: 'Lendemain de fête' },
	{user: User.all.sample, domain_id:"2", name: 'Organiser un anniversaire' },
	{user: User.all.sample, domain_id:"5", name: 'Organiser baptême' },
	{user: User.all.sample, domain_id:"1", name: 'Potiron' },
	{user: User.all.sample, domain_id:"3", name: 'Gérer ses priorités' },
	{user: User.all.sample, domain_id:"4", name: 'Déguisements' },
	{user: User.all.sample, domain_id:"2", name: 'Invitations'}])
tp Topic.all
p "The database has now #{Topic.count} topics"
sleep(1)

p "---------------- TIPS ----------------"

tips = Tip.create!([
	{user_id:"11", topic_id:"1", name:'Quand planter ?', content: "Au mois de mai à 20 cm de profondeur dans du terreau et avec une bonne exposition"},
	{user_id:"11", topic_id:"2", name:'S\'hydrater', content:'le mal de tête est souvent causé par la déshydration'},
	{user: User.all.sample, topic_id:"1", name:'Proteger les jeunes plants', content:'Mettre de l\'anti-limace ou entourer de cendre et renouveler après la pluie.'},
	{user: User.all.sample, topic_id:"3", name:'Faire des listes', content:'lister ses choses à faire, les plus urgentes en premier et les moins urgentes à la fin; utiliser des applis telles que Trello'},
	{user: User.all.sample, topic_id:"2", name:'Boire qualitatif', content:'privilégier des alcools de qualités sans sulfites'},
	{user: User.all.sample, topic_id:"2", name:'Prévenir les maux de tête', content:'boir un verre d\'eau pour chaque verre d\'alcool'},
	{user: User.all.sample, topic_id:"3", name:'Cagnotte', content:'organiser une cagnotte avec leethchi par exemple'},
	{user: User.all.sample, topic_id:"4", name:'Livre de messe', content:'partir de cet exemple : url'},
	{user: User.all.sample, topic_id:"6", name:'faire des listes', content:'gérer ses priorités avec un outil gérant les listes comme google keep ou Evernote'},
	{user: User.all.sample, topic_id:"7", name:'Ne pas faire comme tous le monde', content:'identifier le déguisement à la mode et prendre le contre-pied'},
	{user: User.all.sample, topic_id:"8", name:'Lancer une Invitations', content:'facile: avec les événements Facebook; plus long avec un email groupé'},
	{user: User.all.sample, topic_id:"1", name:'Hydratation', content:'faire un paillage pour une hydratation continue et faire des économies d\'eau'},
	{user: User.all.sample, topic_id:"2", name:'Boire avec modération', content:'moins marrant mais pas de regrets !'},
	{user: User.all.sample, topic_id:"2", name:'manger des sucres lents', content:'des pâtes ou du riz pour soulager votre système digestif'},
	{user: User.all.sample, topic_id:"2", name:'Eviter les mélanges', content:'ca c\'est bien connu hein, tu le sais mais tu le fais quand même'}
])
tp Tip.all
p "The database has now #{Tip.count} tips"
sleep(1)

p "---------------- END SEED ----------------"