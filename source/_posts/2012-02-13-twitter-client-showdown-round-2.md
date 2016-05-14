---
date: 2012-02-13 08:38:51 -0600
title: "Twitter Client Showdown: Round 2"
description: "An update to the original showdown pitting the user interfaces of Tweetbot 1.0 and Twitter for iPhone using a simplified GOMS model."
category: research
tags:
  - interactions
  - ios
  - mobile
  - usability
---

It has been almost a year since the [original showdown]({% post_url 2011-04-19-twitter-client-showdown %}) pitting the user interfaces of the Twitter official client and Tweetbot. Since the latter got a major update last week, it is a good opportunity to revisit the Twitter client landscape on iOS.

For starters, here is a quick summary of the simplified HIP model used in this showdown:

  * Touch interactions are assigned a value based on the precision and time required to execute them. Single taps take in average 165 milliseconds, while double taps and swipes take 350ms and 400ms respectively. The single tap is given a nominal value of 1 and will serve as the base unit of other interactions. For instance, assigning the value of 2 to a swipe means that it's twice harder to execute than a single tap.

  * A task is a chain of user interactions with an end goal. The effort required to achieve a certain task equals the sum of the individual values of each interaction involved. The lower the sum, the more efficient the interface.

  * Typing time is zeroed out.

  * Only the shortest routes were used (lowest scores).

For long-time readers, here is what's new:

  * Here comes a new challenger: Twitterrific.

  * User flow is taken into account this time by adding the interactions required to take the user back to the main timeline in each task.

  * The interaction scores have been revised since. Swipes and double taps call for twice the effort required by single taps. Triple taps are the most taxing in terms of precision, long presses in term of execution time.

  * The tasks have been divided into two main groups: basic and advanced.

The new scores used in the test are as follows:

| Interaction | Value
|-|:-:|
| Tap | 1
| Double tap | 2 |
| Swipe | 2 |
| Triple tap | 3 |
| Long tap | 2.5 |
| Multi-option prompt | 0.5 |

### Basic tasks

| Task | Tweetbot | Twitter | Twitterrific
|-|:-:|:-:|:-:|
| Compose a Tweet | 2 | 2 | 2 |
| Open a link | 2 | 4 | 2 |
| Reply | 3.5 | 4.5 | 3.5 |
| Retweet | 4 | 5 | 4 |
| View conversation | 2.5 | 3 | 3.5 |
| Favorite a tweet | 2.5 | 3.5 | 2.5 |
| Follow user | 4 | 3.5 | 3.5 |
| Unfollow user | 4 | 6 | 5 |
| **Total** | **24.5** | **30.5** | **26** |

Tweetbot has clearly the upper-hand even though little has changed since the initial release. In contrast, the redesigned interface of Twitter 4 forces the user to navigate constantly back and forth between the main timeline and individual tweets, resulting in a less fluid experience; opening a link in the official client and coming back to the timeline takes twice as many taps as the other third part clients. Twitterrific lands very close to Tweetbot but does a better job in terms of consistency and ease of use: all primary tasks can be carried out using only single taps.

### Advanced tasks

| Task | Tweetbot | Twitter | Twitterrific
|-|:-:|:-:|:-:|
| Reply all (MMT) | 5 | 5.5 | 3.5 |
| Reply one user (MMT) | 5 | 4.5 | 8.5 |
| Send a new DM | 7.5 | 8.5 | 7 |
| Reply to DM | 5 | 8 | 3.5 |
| Compose a tweet with # and @ | 5 | 5 | 5 |
| Report a user | 5.5 | 6 | 6.5 |
| Delete a tweet | 4 | 4 | 4 |
| Switch time-lines | 2.5 | 3 | 3 |
| **Total** | **39.5** | **44.5** | **41** |

Tweetbot still comes out ahead of the official client, and barely ahead of Twitterrific. Tapbots' popover implementation of account switching contrasts heavily with the 2 layer deep navigation required to do the same task in Twitter 4. Twitterrific does direct messages best, despite the 2 penalty points tied to the impossibility of sending a new DM without resorting to the obscure trick of adding a lowercase "d" to the beginning of the tweet.

### Verdict

| Task | Tweetbot | Twitter | Twitterrific
|-|:-:|:-:|:-:|
| Basic | 24.5 | 30.5 | 26 |
| Advanced | 39.5 | 44.5 | 41 |
| **Total** | **64.5** | **75** | **67** |
| Total (Uncalibrated) | 61.5 | 76 | 66 |
| Previous Total | 71.0 | 68 | 74 |

Tweetbot wins. Twitterrific closes in second and Twitter 4 lands third with a significant margin. The uncalibrated new scores[^1] and the old scores were adde for comparison purposes. Of the three, only the official client regressed.

The detailed methodology and results can be viewed in this [spreadsheet].

[spreadsheet]: http://goo.gl/Ydh6vR

[^1]: The uncalibrated scores were calculated using the original interaction cost values.

*[HIP]: Human Information Processing
*[DM]: Direct Message
*[MMT]: Multi-Mention Tweet
*[MOP]: Multi-Option Prompt


