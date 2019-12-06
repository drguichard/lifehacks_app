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

domains = Domain.create!([{ name: 'Jardinage' }, { name: 'Sorties' },{name: 'Productivité'}])
tp Domain.all
p "The database has now #{Domain.count} domains"
sleep(1)

p "---------------- TOPICS ----------------"

topics = Topic.create!([
	{domain: Domain.all.sample, name: 'Tomate' }, 
	{domain: Domain.all.sample, name: 'Lendemain de fête' },
	{domain: Domain.all.sample, name: 'Organisation'}])
tp Topic.all
p "The database has now #{Topic.count} topics"
sleep(1)

p "---------------- TIPS ----------------"

tips = Tip.create!([
	{topic: Topic.all.sample, name:'Quand planter ?', content: "Au mois de mai à 20 cm de profondeur dans du terreau et avec une bonne exposition", photo: 'https://images.pexels.com/photos/1675211/pexels-photo-1675211.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'},
	{topic: Topic.all.sample, name:'S\'hydrater', content:'le mal de tête est souvent causé par la déshydration', photo: 'https://images.pexels.com/photos/2128817/pexels-photo-2128817.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'},
	{topic: Topic.all.sample, name:'Proteger les jeunes plants', content:'Mettre de l\'anti-limace ou entourer de cendre et renouveler après la pluie.'},
	{topic: Topic.all.sample, name:'Faire des listes', content:'lister ses choses à faire, les plus urgentes en premier et les moins urgentes à la fin; utiliser des applis telles que Trello'},
	{topic: Topic.all.sample, name:'Boire quali', content:'privilégier des alcools de qualités sans sulfites'},
	{topic: Topic.all.sample, name:'Eviter les mélanges', content:'ca c\'est bien connu hein, tu le sais mais tu le fais quand même'}
])
tp Tip.all
p "The database has now #{Tip.count} tips"
sleep(1)

p "---------------- END SEED ----------------"