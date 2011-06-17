# README

## What is this?

Sinatra Web Proxy is a small project written with [Sinatra](http://www.sinatrarb.com) (and other stuff
as well). The main reason for making this project was so that I could practice playing around with ruby,
sinatra, haml and etc (actually the main reason is because I want to rewrite some web application for
someone else for a [GSoC](http://code.google.com/soc/) project but I don't want to talk about that). 
It's far from complete but hopefully in the near future this will a pretty good app.

## Why would anyone be interested in this?

* You could be looking for a web proxy made with ruby
* You need a basic webproxy so you can put your own scripts over it
* You're in highschool and want to get past the filters to play flash games or something like that
* You're a code critic and you want to laugh at how rubbish this application is

## Previous updates

* Started playing about with Nokogiri more to mangle the urls a bit more. It looks a little better at
  times but it's still a long way from displaying pages perfectly as they were meant to be viewed
* I've added this README. I added this README since github was coming up to me and saying "Yo bro.
  your project is pretty cool and all but it would be a lot *cooler* if you had a README". I'm like
  "Aww man github, do I have to?" and github was all "Don't question me bro, just do it" so I did.
* I suppose I should mention that I have set up this project on heroku and can be found at
  http://sinprox.heroku.com/. Please don't abuse it too much.

## What's new?

* Bugfix for working with ruby 1.9.2 and latest Heroku stack (thanks to [silviorelli](https://github.com/silviorelli))
* Replaced the old and busted .gem file with the newer Gemfile file
* Changed the heroku url. I still don't like the sound of it but at least it's not as long as the last one

## To-Do

* Looking back at this I noticed a lot of bugs that I hadn't noticed before. I guess I should try
  and fix why it won't go on https sites and various other problems.
* A lot of work needs to be done with the url rewriting and I would probably have to do some mad
  hax to get that working. Also refactoring. Lots and lots of refactoring.
* I also want to make it look a bit nicer. At the moment it's just screaming "I LOOK TERRIBLE WHY HAVE
  YOU DONE THIS TO ME" and I'm like "Calm down. One day I'll get to that and make you feel [SASS](http://sass-lang.com/)y
  but at the moment I'm busy with all this other stuff" which at that point the interface went
  "Nobody understands me T\_\_T" and ran off to its room and slammed the door.
  (Update: It looks a bit better but I would still like to do some improvements on it)
* I also feel that I should give it a better name. I mean "Sinatra Web Proxy" doesn't sound very
  WEB TWO POINT OH doesn't it? I want something cool like mouseHole or something sounding vaguely
  Japanese so people will remember it and say "Hey what's that web proxy made in ruby with the extremely
  difficult to pronounce name? Yokomugu? Yeah that's what it is!" (NOTE: I will not call this project
  Yokomugu)

## Project Info

The Sinatra Web Proxy is hosted on github: https://github.com/dafrancis/Sinatra-Web-Proxy, where your contributions, forkings and feedback are greatly welcomed.

Copyright &copy; 2011 Dafydd Francis, released under the [Beerware](http://en.wikipedia.org/wiki/Beerware) license.
