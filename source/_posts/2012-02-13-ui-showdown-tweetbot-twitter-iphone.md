---
date: 2012-02-13 08:38:51
slug: ui-showdown
title: "Twitter Client Showdown: Reloaded"
description: "An update to the original showdown pitting the user interfaces of Tweetbot 1.0 and Twitter for iPhone using a simplified GOMS model."
---

It has been almost 10 months since the [original](http://kaishinlab.com/2011/04/tweetbot-vs-twitter/) showdown pitting the user interfaces of Tweetbot 1.0 and Twitter for iPhone. An update was long due and last week's milestone update of Tweetbot leaves me with no excuses.

For starters, here is a quick summary of the simplified HIP model used in this showdown:

  * Touch interactions are assigned a value based on the precision and time required to execute them. Single taps take in average 165 milliseconds, while double taps and swipes take 350ms and 400ms respectively. The single tap is given a nominal value of 1 and will serve as the base unit of other interactions. For instance, assigning the value of 2 to a swipe means that it's twice harder to execute than a single tap.

  * A task is a chain of user interactions with an end goal. The effort required to achieve a certain task equals the sum of the individual values of each interaction involved. The lower the sum, the more efficient the interface.

  * Typing time is zeroed out.

  * Only the shortest routes were used (lowest scores).

For long-time readers, here is what new:

  * User flow is taken into account this time by adding the interactions required to take the user back to the main timeline in each task.

  * The interaction scores have been revised since. Swipes and double taps call for twice the effort required by single taps. Triple taps are the most taxing in terms of precision, long presses in term of execution time.

  * The tasks have been divided into two main groups: basic and advanced.

The new scores used in the test are as follows:

  * Tap: 1
  * Double tap: 2
  * Swipe: 2
  * Triple tap: 3
  * Long press: 2.5
  * Multi-option prompt: 0.5


Jump to the final results if you are short on time, or grab the [PDF](http://kaishinlab.com/wp-content/uploads/images/twitter-iphone-goms.pdf) if you want to sweat the details.

## Basic tasks

[![Basic tasks](http://kaishinlab.com/wp-content/uploads/images/basic-tasks.png)](http://kaishinlab.com/wp-content/uploads/images/basic-tasks.png)
Tweetbot has clearly the upper-hand even though little has changed since 1.0 as far as these basic tasks go; the redesigned interface of Twitter 4 forces the user to navigate constantly back and forth between the main timeline and individual tweets, resulting in a clunkier experience. For instance, opening a link in the official client and coming back to the timeline takes twice as many taps as the other third part clients. Twitterrific lands very close to Tweetbot but does a better job in terms of consistency and ease of use: all primary tasks can be carried out using only single taps.

## Advanced tasks

[![Advanced tasks](http://kaishinlab.com/wp-content/uploads/images/advanced-tasks.png)](http://kaishinlab.com/wp-content/uploads/images/advanced-tasks.png)
Tweetbot comes out again a winner, only slightly ahead of Twitterrific. Tapbots' popover implementation of account switching contrasts heavily with the 2 layer deep navigation required to do the same task in the official client. Twitterrific does direct messages best, despite the 2 penalty points tied to the impossibility of sending a new DM without resorting to the obscure trick of adding a lowercase 'd' to the beginning of the tweet.

## Verdict

[![Totals](http://kaishinlab.com/wp-content/uploads/images/totals.png)](http://kaishinlab.com/wp-content/uploads/images/totals.png)
Tweetbot wins. Twitterrific closes in second and Twitter 4 lands third with a significant margin. For comparison purposes, I recalculated the score using the same uncalibrated values of the previous showdown (including Twitterrific this time). Of the three, only the official client regressed. A better user experience for first-time users you say?

([ HN thread ](http://news.ycombinator.com/item?id=3584644))

