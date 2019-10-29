# Description:
#  Akubot provides running commentary (Annkissam Style)
#  Also Akubot is hungry and really likes beers.
#  Need Yoda? We've got Yoda.
#  Can add more keywords.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   <food> - replies with "Mmmm... <food>"
#   beer - replies with random beer quote
#   yoda - replies with random yoda quote
#   knock on wood - replies with :knockonwood: emoji
#
# Author:
#   slambrosia  (based on bhankus' homer.coffee)
#
#
#
tryQuotes = [
  "Ever tried. Ever failed. No matter. Try Again. Fail again. Fail better.",
  "Do not fear failure but rather fear not trying.",
  "To learn something new, you need to try new things and not be afraid to be wrong.",
  "Defeat is not the worst of failures. Not to have tried is the true failure.",
  "Just try new things. Don't be afraid. Step out of your comfort zones and soar, all right?",
  "<insert witty/annoying try quote here>",  
  "I try to look cute all the time.",
  "The one thing you shouldn't do is try to tell a cab driver how to get somewhere."
]

beerQuotes = [
  "Beer...Now there's a temporary solution.",
  "All right, brain. You don't like me and I don't like you, but let's just do this and I can get back to killing you with beer.",
  "Mmmm... beer",
  "Beer: The cause of, and solution to, all of life's problems.",
  "Beer, beer, beer, bed, bed, bed.",
  "Does whisky count as beer?",
  "Akubot no function beer well without.",
  "You don't win friends with salad.",
  "Fermentation and civilization are inseparable.",
  "Life, alas, is very drear. Up with the glass! Down with the beer!",
  "Well, I never met a beer I didn’t drink.",
  "Hoppiness is Happiness.",
  "Ah beer, my one weakness. My Achilles heel if you will.",
  "It never rains in the brewhall.",
  "I never drink water; that is the stuff that rusts pipes.",
  "You put the beer in the coconut and drink it all up. You put the beer in the coconut and throw
  the can away.",
  "Drink Good Beer — Be Kind — Tell the Truth",
  "Beauty is in the eye of the beer holder",
  "Beer? Who wants to go to Roche?",
  "Rover at 5:30? Anyone?",
  "isitbeertimefor.us ?"
]

yodaQuotes = [
 "Try not. Do, or do not. There is no try.",
 "Agree with you, the council does. Your apprentice, Skywalker will be.",
 "Always two there are, no more, no less: a master and an apprentice.",
 "Fear is the path to the Dark Side. Fear leads to anger, anger leads to hate; hate leads to suffering. I sense much fear in you.",
 "Qui-Gon's defiance I sense in you.",
 "Truly wonderful the mind of a child is.",
 "Around the survivors a perimeter create.",
 "Lost a planet Master Obi-Wan has. How embarrassing. how embarrassing.",
 "Victory, you say? Master Obi-Wan, not victory. The shroud of the Dark Side has fallen. Begun the Clone War has.",
 "Much to learn you still have...my old padawan... This is just the beginning!",
 "Twisted by the Dark Side young Skywalker has become.",
 "The boy you trained, gone he is, consumed by Darth Vader.",
 "The fear of loss is a path to the Dark Side.",
 "If into the security recordings you go, only pain will you find.",
 "Not if anything to say about it I have.",
 "Great warrior, hmm? Wars not make one great.",
 "Size matters not. Look at me. Judge me by my size, do you?",
 "That is why you fail.",
 "No! No different. Only different in your mind. You must unlearn what you have learned.",
 "Always in motion the future is.",
 "Reckless he is. Matters are worse.",
 "When nine hundred years old you reach, look as good, you will not.",
 "No. There is... another... Sky... walker..."
 ]

knockQuotes = [
 ":knockonwood:",
 ":knockonwood: :knockonwood:",
 "https://media.giphy.com/media/3rgXBDVsDPn2GuaYYU/giphy.gif",
 "https://media.giphy.com/media/lkP5E17rjoG4g/giphy.gif"
]

flamesQuotes = [
 "https://media.giphy.com/media/t7ROzZQbH2KiI/giphy.gif",
 "https://media.giphy.com/media/NTur7XlVDUdqM/giphy.gif",
 "https://media.giphy.com/media/QZkpIdieotn3i/giphy.gif"
]

serenityQuotes = ["Serenity now...insanity later!",
              "Hey Braun!...Costanza is kicking your butt!",
              "Costanza, you're white hot!!",
              "Listen to me, George...I owe ya one.",
              "This is a place of business, I told you never to come in here! Serenity now!"
]

module.exports = (robot) ->
  robot.hear /beer/i, (msg) ->
    msg.send msg.random beerQuotes
  robot.hear /bacon|bagel|barbecue|burger|candy|coffee|ramen|sushi|chocolate|donut|sandwich|breakfast|lunch|dinner|food|grub/i, (msg) ->
    msg.send "Mmmm... " + msg.match[0]
#  robot.hear /try/i, (msg) ->
#    msg.send msg.random tryQuotes
   robot.hear /yoda/i, (msg) ->
     msg.send msg.random yodaQuotes
   robot.hear /knock on wood/i, (msg) ->
     msg.send msg.random knockQuotes
   robot.hear /flames/i, (msg) ->
     msg.send msg.random flamesQuotes
   robot.hear /serenity|serenity now/i, (msg) ->
     msg.send msg.random serenityQuotes
     msg.send "https://www.youtube.com/watch?v=WBMTH-4B2NI"
