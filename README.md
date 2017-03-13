[history of updates](https://github.com/cauerego/cauerego.github.io/commits/master/README.md) - click on the weird random numbers to see the "wikipedia" style comparison (a.k.a. diff)

# [cregox experimental blog](https://blog.cregox.com)

## Actual blogging will soon be on [medium](https://medium.cregox.com)

This was initially made with the apparently now defunct [Tinypress](http://tinypressco.github.io/), to use a better blogging technology, easier to customize, prettier and slimmer...

It was [missing some important features](https://github.com/tinypressco/tinypressco.github.io/issues/created_by/cauerego)\*, such as social buttons or anything to allow for communication. While commenting is often not enough engaging people have no will to engage anyway. Creating a sense of community is at the core of blogging, imho, but there are pathways. It doesn't need to be all self contained. :)

\* I can't remember what I've reported in that link, but this only highlights even more why, especially in an internet society, [I despise people's will to forget]().

So, this was to be my "ultimate" next blog (back in dec 2015)... Then, on the 2nd post, I've suddenly started writing the novel. Finally, after considering making it into a dedicated "creating the novel channel" I figured "nah, it will still be cregox's blogging channel, and the novel is a just one subset of it". If a community is to ever be built around it, they'll figure out how to move from there later on.

**and now** (as of Mar 2017), this (naturally) became just an experimentations blog. I'll still try, eventually, to make the BDD novel, but don't hold your breath. you see? I'm already even experimenting with writing style... Makes any sense? ;D

# BDD Novel

As for Behavior-Development-Driving the novel... If you still don't know about [cucumber.io](https://cucumber.io/), now it's probably a good idea to look at least at their landing page.

The idea is using Racket and something like cucumber + markdown in which we can add tags to concepts. [So the tests are made against the tags][tag] to check for consistency and tag summaries are made, ordered by paragraphs, pages, number of occurances and alpha, to help visualizing / debugging. Not sure it could be applied to a doc text like this README, so here's an instance from the novel, much further ahead than what's already written today. For now, what's "in the room" would be defined by Racket to be anything declared in the last tag definitions, so below, Benny is not in the room.

Using a smaller title md below to keep things in context of this README:

> (...)

> [[Benny]]

> (...) and that's how he was born.

> ### Merging universes
> [[basiux,past]]
> Laura's latest dream ends up activating a worm hole for a fraction of a second. Negative matter never existed before or after the big bang. Now it does. She then can see through the hundreds of eyes from a fly one of the first computer machines ever invented. Like in a VR game, controlling a little fly. She knows that's the very first one, in a garage lab being made by a geek, and there are other ones being made other places as well, which could lead to a very different future if any of the other were made first. So she flies in his nose right in the most appropriate moment and [stop him from accomplishing][kill basiux] the computer assembly. He didn't have the resources to continue so soon, eventually the news come up and even if he did later succeed to build it, computers history have already been rewritten differently enough that the reaction chain from there would lead to human exctinction before the singularity. But she didn't know that.

```gherkin
Feature: time travel - try stopping basiux from being created
  References are 12 monkeys and unchangable past
  If there would ever be a way to go back in time
  It would be self contained and impossible to change what happened
  Unless a new universe is created

  Scenario: someone goes back in time
    Given anyone is in the past
    And basiux is in the room
    When they act to kill basiux
    And they don't go to a new universe
    Then throw an error she can't
```

The text up there would throw an error because it wouldn't find a tag [a new universe] which needs to exist along with [kill basiux]. Functions to be defined would be `is in the`, `act to`, `(don't) go to` and `throw an error`.

By creating a new universe, she can always "choose" (no such thing as free will) to "wake up" and go back to a point before that creation.

The infinite is truly amazing and beautiful! :)

# Blog Theme

Initially crafted with love <3 by [John Otander](http://johnotander.com). Site (was) ~~powered by~~ Tinypress.
[</> available](https://github.com/johnotander/pixyll.git).
