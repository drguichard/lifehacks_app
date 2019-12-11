

# LIFE-HACKERS COMMUNITY

Local server view :
* $ git clone https://github.com/drguichard/lifehacks_app/tree/masterclass
* $ bundle install
* $ rails db:migrate
* $ rails db:seed
* in your browser http://localhost:3000/

[Trello-Users-stories_P1](https://trello.com/b/gxEx3CuS/s1-life-hacks-community-users-stories)

[Heroku - development](https://life-hacks-app.herokuapp.com/)

[Heroku - production](https://life-hacks-app-production.herokuapp.com/)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	INTRODUCTION

I love to learn things from very various **domains** and **topics**, I feel passionated, work hard to learn but my motivation fades away very quickly. <br>
**Why does my motivation fades away before I master the topic ?**:<br>

* I think the target do not worth the personal investment's cost.<br>
* I have too much things to learn, I can't choose.<br>
* I have not enough time: only time-consuming Google researches or twitter hashtags will probably help me.<br>
* I will not be congratulated for my personal successes.<br>

Learning quickly from people that master a **domain** or a **topic**  with small tips seems to be a right solution.

I want to create a community where people are willing to share their tips on the topics they master and learn on tips on the topics they are interested in.


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	APP COMPONENTS

* short tips with text and images.
* search by keywords or browse in domain/topic.
* very simple UI and beautiful design

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
>Note over Landing page: random life tips and log in
>Note over Dashboard: my created topics, my created tips, profile edition (user, my domains, my topics).

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	PAGES

* Landing page with random tips.
* Sign in page
* Dashboard page
* Search page

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
* Devise gem 
* Action mailer gem to send emails for a new tip on my matter alert.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	FRONTEND

This project will mainly use THP competences acquired during session 10 (autumn 2019):
* HTML/CSS
* Bootstrap
* UI kit
* Rails
* Javascript.


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

