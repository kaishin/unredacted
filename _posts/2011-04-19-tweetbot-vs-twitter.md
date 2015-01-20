---
date: "2011-04-19 14:56:20"
slug: tweetbot-vs-twitter
title: "UI Showdown: Tweetbot vs. Twitter App"
tags:
  - GOMS
  - usability
---

Amidst the turmoil following Twitter's recent announcements concerning third party applications, [Tweetbot](http://tapbots.com/software/tweetbot/), the long awaited Twitter client from Tapbots is finally out for iPhone and iPod Touch. The overwhelmingly positive user feedback is a clear sign that Tapbots got it right again.

To see if Tweetbot lives up to the hype, I tried to pit it against the official client using a GOMS-inspired, oversimplified human information processing model   ([HIP](http://en.wikipedia.org/wiki/Human_information_processor_model)) on a set of frequent and less frequent tasks we perform on Twitter.

[![Tweet options](http://kaishinlab.com/wp-content/uploads/images/tweet-options.jpg)](http://kaishinlab.com/wp-content/uploads/images/tweet-options.jpg)Tweet options displayed after a single tap.


### The Rules





Before jumping in, let me briefly explain some of the concepts used in this model:








  * _An interaction_ occurs between the user and the interface, such as a tap or a swipe. Each interaction is assigned a value based on the time required to execute it. For the sake of simplicity, I gave the _single tap_ a nominal value of 1 then used it as a base unit to make an educated guess for other interactions.




  * _A task_ is any set of actions sharing the same end goal. There may be one or more set of interactions to carry out the same task. I considered the time required to achieve a given task to be equal to the sum of the individual values of each interaction involved. The lower the sum, the more efficient the interface.



  * Unless stated otherwise, typing time was zeroed out.



  * When two or more methods of achieving a given task are possible, only the most efficient one is used in the comparison. The impact on the overall workflow is also taken into account.




  * Only the default behavior of the triple tap is taken into consideration for Tweetbot.






The values assigned to each interaction are as follows:







  * Tap: 1


  * Double tap: 1.5


  * Swipe: 1.5


  * Triple tap: 2


  * Long tap: 2





Thinking time was assigned a value of 0.5, and will be referred to as MOS (multi-option selection) in the tests. For simplification purposes, the number of options was not taken into account, nor was the habit factor.





Short on time? Fast forward to the [results.](http://kaishinlab.com/tweetbot-vs-twitter/#summary)






### Round 1: Basic Tasks





We'll start by having a look at how efficiently the two clients handle basic tasks such as tweeting and replying:










                Task
                Tweetbot
                Twitter App












  1. No hashtags or @ signs.


  2. No other users mentioned in the original tweet


  3. The tap to get to the Messages view is zeroed out












Sending a tweet (1)


**2**



**2**







Replying(1)(2)


**3**


**4**







Native Retweeting


**4**


**4.5**







Sending an initial DM(3)


**6.5**


**5.5**







Opening a link


**1.5**


**2**








#### Outcome: Draw





The two clients are equally efficient when it comes to tweeting and retweeting. Tweetbot cleverly handles single replies and links thanks to double and triple taps, while the official client makes sending initial direct messages significantly less cumbersome.



[![Direct messaging](http://kaishinlab.com/wp-content/uploads/images/twitter-dm.jpg)](http://kaishinlab.com/wp-content/uploads/images/twitter-dm.jpg)Sending a direct message.



### Round 2: Hashtags, Mentions & Group Replies





Let's now spice up the comparison with some hashtags and @ mentions:









                Task
                Tweetbot
                Twitter App












  1. Where the user takes part


  2. Multi-mention tweet











Composing a tweet with #(x1) and @(x1)


**7**


**4**







Composing a tweet with #(x3) and @(x2)


**15**


**7**







Viewing conversations(1)


**1.5**


**2**







Replying all (MMT) (2)


**4.5**


**5**







Replying single (MMT) (2)


**4.5**


**4**







#### Outcome: Twitter for iPhone wins!





Thanks to shortcuts, the official Twitter client trumps Tweetbot when it comes composing tweets containing hashtags and @ symbols. Theoretically, the two clients handle multi-mention replies with almost equal efficiency. Practically, Twitter's less intrusive solution gives it the upper hand.



[![Replying all](http://kaishinlab.com/wp-content/uploads/images/replying-all.jpg)](http://kaishinlab.com/wp-content/uploads/images/replying-all.jpg)Replying a tweet with multiple @ mentions.




### Round 3: User Actions & Lists





Now for the less frequent tasks:











                Task
                Tweetbot
                Twitter App







Following / Unfollowing a user


**3.5**


**5**







Reporting a user for spam


**5**


**8**







Translating a tweet


**4.5**


**5**







Adding a tweet to Favorites


**2.5**


**3**







Deleting a tweet


**3.5**


**4**







Switching timelines


**2.5**


**3**







#### Outcome: Tweetbot wins!





The official client didn't stand a chance here; Tweetbot's long tap is a godsend.



[![Following](http://kaishinlab.com/wp-content/uploads/images/following.jpg)](http://kaishinlab.com/wp-content/uploads/images/following.jpg)Following a user.



### Wrapping up







        Task
        Tweetbot
        Twitter app






Sending a tweet


2


2







Replying


3


4







Native Retweeting


4


4.5






Sending an initial DM


6.5


5.5







Opening a link


1.5


2







Composing a tweet with #(x1) and @(x1)


7


4






Composing a tweet with #(x3) and @(x2)


15


7






>Viewing conversations


1.5


2






Replying All (MMT)


4.5


5






Replying single (MMT)


4.5


4






Following / Unfollowing a user


3.5


5






Reporting a user for spam


5


8






Translating a tweet


4.5


5







Adding a tweet to Favorites


2.5


3







Deleting a tweet


3.5


4







Switching timelines


2.5


3







**Total**


**71**


**68**







The relatively awkward, albeit native, method of keying hashtags and @ signs in Tweetbot skews the results in favor of Twitter for iPhone. Weren't it for the 6th and 7th tasks, the third party client would have come out a clear winner with a score of 49 to 57.






Before jumping to quick conclusions, let's gauge the relevance of these tests based on the way we use Twitter in reality.




[Studies](http://research.yahoo.com/pub/3386) suggest that a big majority of users on the social platform are silent; unless you are a news agency, a celebrity or a spam bot, you are more likely to be reading tweets (passive) than actually tweeting or sending direct messages (active). As a result, the overall experience is deeply affected by our passive use, a point that the tests above completely eschewed in favor of purely active use scenarios.



[![Following](http://kaishinlab.com/wp-content/uploads/images/notifications.jpg
)](http://kaishinlab.com/wp-content/uploads/images/notifications.jpg
)In-app notifications in Tweetbot.



Notably, Tweetbot shines in some areas that would be hard to assess using the HIP model above. Save for the occasional tweet, reply or DM, we spend most of the time on Twitter wading through hundreds of tweets and swapping accounts and lists. Few Twitter clients address these areas as cleverly as Tapbots did:







  * The number of new tweets (since the last refresh) is displayed in a unobtrusive blue bar in the timeline. This may seem gimmicky at first, but it turns out to be a huge time saver; it provides a visual clue of where to start reading rather than leaving it up to the user to figure that out, often going over few tweets more than once in the process. I always thought that _unread_ badges are overkill for a Twitter client, and this seems to be a perfect solution.



  * Single swiping a tweet displays related tweets in a dedicated conversation view, even if the user is not taking part in them. As far as I know, there is no way to do that in the official client. Again, this doesn't sound very useful at first, until you find yourself using it more than what you might have imagined.



  * Even though the obsessive customization may not appeal to everyone, the concepts underlying it are rock-solid and would pay off on the long run as users get used to it.






### In a Nutshell





For a 1.0 release, Tweetbot is doing an astounding job, especially when considering the saturated and volatile market of Twitter third party clients. Even though there is still room for improvement in certain areas, Tweetbot for iPhone has got what it takes to dethrone the official client, and then some.
