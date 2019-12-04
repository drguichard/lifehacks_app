 beautiful design
* awards for contributors (Friend, Master, Admin level: validation of a tip)
* tips notation

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	THE BROWSING PATTERNS OF USERS
<p align="center">
  <img width=auto height=auto src="https://svgshare.com/i/G8i.svg">
</p>

>Title: Browsing pattern of new user
>Landing page->Sign in: 
>Sign in->Dashboard: 
>Note over Landing page: random tips.
>Note over Sign in: new profile, domains and topics
>Note over Dashboard: my topic's tips, my created tips, tips creation, profile edition (user, my domains, my topics), search console.


<p align="center">
  <img width=auto height=auto src="https://svgshare.com/i/G8v.svg">
</p>

>Title: Browsing pattern of user
>Landing page->Dashboard: 
>Note over Landing page: a random life tip and log in
>Note over Dashboard: my topic's tips, my created tips, tips creation, profile edition (user, my domains, my topics), search console.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	PAGES

* Landing page with random tips.
* Sign in page
* Dashboard page
* Search page
* Newsletter / Alerts

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	DATABASE

user
* has_many :tips through :topic

domain
* has_many :users
* has_many :topics

topic
* belongs_to :domain
* has_many :domains

tip
* belongs_to :user
* belongs_to :topic

[Database scheme- comments allowed](https://drive.google.com/file/d/1cBeVdEN9kjMpSmPOjgXi-y0CeuNHlyje/view?usp=sharing)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	BACKEND

This project will mainly use THP competences acquired during session 10 (autumn 2019):
* Database gestion with Active Record and PostgreSQL
* Rails.
* Devise gem for sign in/log in, cookies…
* Action mailer gem to send emails for a new tip on my matter alert.
* Scrapping users #tips on twitter.


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	FRONTEND

This project will mainly use THP competences acquired during session 10 (autumn 2019):
* HTML/CSS
* Bootstrap
* UI kit
* Rails
* Javascript.


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	WHY YOU SHOULD JOIN ?

Because we smile and :<br>

* you'll **re-use** a great part of **what you learnt** in THP.
* you'll be **proud** to show it to your future employer.
* you are interested to be a part of this new community with an **admin status**.
* you can **work on remote** (video meetings each day of development at 9H30 and slack connected). 


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	IDEA AND INFLUENCES

>"**Be stronger** than your strongest excuse".

>"People don't buy what you do; they buy why you do it and what you do simply proves what you believe. In fact, **people will do the things that prove what they believe.**"<br>
>"Working hard for someting we **don't care about** is called **stress**, Working hard for something we **love** is called **passion**". <br>Simon Sinek

<p align="center">
  <img width="500" height="450" src="http://www.varchannelmarketing.com/wp-content/uploads/2014/02/The-golden-circle-e1391717108503.gif">
</p>

	"Why do you do what you do ?"
	-To learn and make learn useful things that will ease people daily life.

	"What is the purpose ?"
	-giving and receiving tips and tricks.

	"How do you do what you do?"
	-by developing a dedicated app.

	"What do you do ?"
	-A community app based on life tips and tricks


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	TECHNICAL NEEDS

* one/two oriented on controllers, action mailer and gems gestion.
* one oriented on database and scrapping
* one oriented on views and production (me)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	MINIMAL VERSION

An app with:
* Sign in/ Connection page
* Dashboard page
* Search page


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	FINAL VERSION

An app with:
* Landing page with random tips.
* Sign in/ Connection page
* Dashboard page
* Search page
* Alerts send


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	BENCHMARK

* [Medium - life hacking](https://medium.com/essentiels/life-hacking-82-astuces-pour-vous-simplifier-la-vie-a6503c3e0895)
* [Life Hack](https://www.lifehack.org/)
* [Madmoizelle on life hacks](https://www.madmoizelle.com/life-hacks-129672)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	README TOOLS

* [create diagrams](https://bramp.github.io/js-sequence-diagrams/)
* [code in markdown](https://stackedit.io/app#)
* [Share svg](https://svgur.com/)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	PIPELINES ET BRANCHE DEVELOPMENT

On va t'inviter à travailler avec un pipeline heroku.
Plus d'info ici : https://devcenter.heroku.com/articles/pipelines

Pour ce projet seulement deux étapes suffisent : production et development
[heroku-life-hacks-app_development](https://life-hacks-app.herokuapp.com/)
[heroku-life-hacks-app_production](https://life-hacks-app-production.herokuapp.com/)

Je fais plusieurs branche dans mon git :
-1 : Master
-2 : Developpement

Dès le début je fais un git checkout -b development et a partir de cette branche je crée d'autres branches (les features sur lesquels je bosse).
Quand elles sont finies j'envoie une pull request sur la branche development.
Si celle ci est acceptée par mes collegues, je push ma branche development sur heroku
Si tout fonctionne bien sur developpement, je peux promote sur production
