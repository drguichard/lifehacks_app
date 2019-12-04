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
	{domain: domains.sample, name: 'Tomate' }, 
	{domain: domains.sample, name: 'Lendemain de fête' },
	{domain: domains.sample, name: 'Organisation'}])
tp Topic.all
p "The database has now #{Topic.count} topics"
sleep(1)

p "---------------- TIPS ----------------"

tips = Tip.create!([
	{topic: topics.first, name:'Quand planter ?', content: "Au mois de mai à 20 cm de profondeur dans du terreau et avec une bonne exposition"},
	{topic: topics.sample, name:'s\'hydrater', content:'le mal de tête est souvent causé par la déshydration'},
	{topic: topics.first, name:'Proteger les jeunes plants', content:'Mettre de l\'anti-limace ou entourer de cendre et renouveler après la pluie.'},
	{topic: topics.sample, name:'faire des listes', content:'lister ses choses à faire, les plus urgentes en premier et les moins urgentes à la fin; utiliser des applis telles que Trello'},
	{topic: topics.sample, name:'boire quali', content:'privilégier des alcools de qualités sans sulfites'},
	{topic: topics.sample, name:'éviter les mélanges', content:'ca c\'est bien connu hein, tu le sais mais tu le fais quand même'}
])
tp Tip.all
p "The database has now #{Tip.count} tips"
sleep(1)

p "---------------- END SEED ----------------"