---
title: Learning SpriteKit
date: 2016-12-28 05:26:03 UTC
background_image: /img/central-park-path.jpg
---

The first project I decided to work on is my old game called Zengaku. I’m not really a big fan of game development. It’s just not my calling. I don’t disparage those who love it. I know many do, but it’s not my thing. This is a pretty simple game and I’m able to use the existing code base to help me get started to some degree. But I decided to modernize the code and the UI so that I’d be able to use the latest tools and learn something new  without having to start with nothing.

(READMORE)

I have a number of puzzle files generated and we developed our own simple, but proprietary file format for the game data. I just wanted to be able to extract the data from an example file so I could build and test that my modernized model objects worked correctly and I had a full fleshed out game file. This was simple enough. Although reading some of that old code and its dearth of comments was a bit of a challenge. The file format was meant to be pretty compact and efficient, but not exactly easy to parse or follow. I was able to make it go, but its pretty ugly.

I’m now at the point where I’d like to render the game board layout that I read from the file as images in a scene. Since I want this game to feel more like a game than our previous effort, I chose to use Apple’s 2D rendering framework to make that happen. The old implementation was UIKit based and rather static by most games standards. It was economical for us to build it that way and it seemed like decent trade off since the game itself was really just a number puzzle game with each cell as a data entry field. So what more do you need than some input fields and some buttons. I could probably follow that same path and have my “modern” game out much sooner. Although I still would be rather bored by it and I’d like to make it something that I’d have more fun playing and maybe decide to add a Sudoku and other game modes to at some point if this is popular enough to warrant further development. I don't expect that to be the case. I just don't really want our 1st app to actually completely die.
