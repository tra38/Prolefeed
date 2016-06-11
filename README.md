##What is Prolefeed?

Prolefeed is a Ruby Gem that provides a simple API for generating stories by using smaller, pre-made human content. You simply provide the content, and Prolefeed will organize it into a fashion pleasing to the human being. You can run Prolefeed over and over to find different versions of your story, and choose the one that you want.


##Code Examples

Examples of code are located in the example folder. They include a toy example, the Ruby file used to generate this documentation, and an example 'hot take'. You may also look at the 'History of Real-World Usage' section to see examples of this code being used in production.


##History of Real-World Usage

The predecessor to the 'Prolefeed' algorithm ('text_arrangement.rb') was built during NaNoGenMo 2015, in the project [(NaNoGenMo Dada 2.0) 2.0](https://github.com/dariusk/NaNoGenMo-2015/issues/180). The project was able to successfully turn a longform journalistic article into a computer-generated story, simply by shuffling paragraphs.

Prolefeed 1.0 was developed to write a short story "The Last Laugh". You may view the source code of the project (and the final, generated story) [here](https://gist.github.com/tra38/02b03745e7da37789ed2).

Prolefeed 2.0 was developed for the blog post ['The Case Against Artificial Intelligence'](http://tra38.github.io/blog/ai3.html). In this version, the 'bookend' concept is introduced, to help provide more organization to the blog post in question. The source code is [here](https://gist.github.com/tra38/8a6bf3743cd89687151c). It is this version of the code that has been packaged into a Ruby Gem.

Finally, the documentation for this project was generated using Prolefeed. Check it out [here](examples/generate_documentation.rb).


##Install

### Command Line

```
gem install prolefeed
```

### Gemfile

```ruby
gem 'calyx'
```


##Credits
Inspiration: This algorithm was inspired by [Fake Press Coverage of NaNoGenMo: A Novel](https://github.com/dariusk/NaNoGenMo-2015/issues/159).

Name: George Orwell invented the world 'Prolefeed' to describe the computer-generated work produced in Oceania. [According to Wikipedia](https://en.wikipedia.org/wiki/Prolefeed), prolefeed is:

>>the deliberately superficial literature, movies and music that were produced by Prolesec, a section of the Ministry of Truth, to keep the "proles" (i.e., proletariat) content and to prevent them from becoming too knowledgeable

This algorithm is best suited for generating this type of literature in Oceania. The algorithm's stories are simply the random arrangement of human-written passages, yet it 'seems' meaningful and evocative to a human being because of [apophenia](https://en.wikipedia.org/wiki/Apophenia)...the human tendency for seeing patterns where none exist.

Algorithm Writing: [Tariq Ali](https://github.com/tra38) wrote the algorithm, and is serving as the maintainer of this gem.


##Usage

```ruby

prolefeed = Prolefeed.new

prolefeed.add_to_bookends("THESIS OF PAPER")
prolefeed.add_to_bookends("SUMMARY OF PAPER")

prolefeed.add_to_story("Paragraph #1")
prolefeed.add_to_story("Paragraph #2")
prolefeed.add_to_story("Paragraph #3")

final_story = prolefeed.generate.join("
")

puts final_story

# Example of Generated Story:

#THESIS OF PAPER
# Paragraph #2
# Paragraph #1
# Paragraph #3
# SUMMARY OF PAPER

#Second Example:

# SUMMARY OF PAPER
# Paragraph #3
# Paragraph #1
# Paragraph #2
# THESIS OF PAPER
```

'Bookends' are the introductory and conclusion paragraphs of content. These paragraphs serve as the 'frame' that structures and organizes the rest of your content. The generator will only pick two bookends to use, and randomize its order in the essay. It is recommended to have two bookends.

The 'Story' refers to the rest of your content. All paragraphs you add to the story will be shuffled and presented to the user in different orders.

Though the algorithm is simple, it is applicable to many situations:

- Easily create 'evocative' fiction literature that avoids plot in favor of description and theme

- Repackage your existing content into a coherent and organized blog post (surrounded by bookends).

- Turn your listicle into 'respectable' longform journalism, simply by removing the bullet points and adding more description to your story paragraphs.

- And so much more!

You may rerun the programs multiple times to see different versions of your same story. Then choose the one you want and publish it.


##License
This work is open source and provided under the terms of the [Unlicense](http://unlicense.org). This is because this algorithm is so basic that it has already been invented (and re-invented) countless times. Honestly, it really shouldn't work at all...and yet, to my horror, it does.