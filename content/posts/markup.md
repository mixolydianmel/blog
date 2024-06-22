+++
title = 'The Absolute State of Document Markup'
author = 'Melody Henrich'
date = 2024-06-22T17:04:56-04:00
draft = false
meta = true
math = true
description = "The unbridled rage of someone who's had enough."
categories = ["markup", "rants", "computing"]
+++

_Inspired by [this talk](https://www.youtube.com/watch?v=P-7hwjocEpM) by Tony
Ibbs, as well as my own boiling rage._

_Notice something wrong? Open an [issue](https://github.com/mixolydianmel/blog/issues)._

# I. What?

{{<newthought>}}That's a short question{{</newthought>}} with an
unfortunately long answer. Let's start at the beginning.

## What even is document markup?

{{<newthought>}}Fundamentally,{{</newthought>}} document markup is a way to
encode text. That's it.

This implies that some _more complex_ representation of text is producible from
a _simpler_,{{<sidenote>}}Keep this in mind. It _will_ come up
later.{{</sidenote>}} encoded version. It's a simple idea, yet quite effective;
input something short and simple, get something long and complicated. It's
really not hard to see why something that fulfills that promise would be
useful, after all most human technology since simple machines has been used to
turn a little input into a lot of output. In the digital age, however, document
markup mostly refers to / is often conflated with _Digital Typesetting_, which
is the process of laying out text on a page in a specified way. Most modern
digital typesetting is done in one of two ways:{{<marginnote>}}If you've
already heard of both of these, you won't miss much if you skip to the next
section, though there is some context in here that's important for
later.{{</marginnote>}}

1. WYSIWYG
1. Markup Languages

If you've ever used Microsoft Word, Google Docs, or (God forbid) any stock
notepad software that came with your computer, congrats, you've used a
WYSIWYG editor. WYSIWYG, besides standing for "What You See Is What You Get,"
is an incredible acronym purely on the basis of
pronunciation.{{<sidenote>}}Pronounced "whizzy wig", "whiz-e-wig", or "mostly
bloatware."{{</sidenote>}} That said, it is also the most common and most
frustrating way to try to typeset a document that has formatting more advanced
than a Web-1.0 government website.{{<marginnote>}}For reference, see [this NASA
website](https://starchild.gsfc.nasa.gov/docs/StarChild/solar_system_level1/solar_system.html)
designed by someone with incredible taste in wallpaper.{{</marginnote>}}These
editors do ultimately have their place, since their visual nature _does_ make
them a good tool for typesetting simple documents. If you've ever tried to do
something more complicated, though, you've likely run into one of their many
limitations.{{<sidenote>}}E.g. getting an image to align itself to the page
properly within a footer in Google Docs. Hell on earth.{{</sidenote>}} This is
where our second method of typesetting comes in.

Document markup langauges are sometimes defined as "nerd shit." Despite this
reputation, document markup languages continue to be used by regular folks and
ultra-poweruser-typesetting nerds alike due to the sheer power they present to
the user. Ever since the advent of the typewriter, writers have been using
document markup to do things like denote headings, emphasize text, and incur my
wrath by adding two spaces after each period in an email. This is known as
_semantic markup_, where the marks denote the **meaning** of the text. For
example, on typewriters, headings were often <u>underlined</u> to denote their
importance.

The other main type of markup language is _presentational_ markup, where the
marks denote how the text will be **presented**. A common contemporary example
is the common `*`emphasis`*`{{<sidenote>}}Also notated `/`emphasis`/`,
`_`emphasis`_`, or "emphasis" if you somehow still haven't moved on from
typewriters.{{</sidenote>}} formatting seen on some social media sites and chat
apps, which denotes that the text should be _italicized_, or at least that the
reader should imagine it as such. While pesentational and semantic markup are
different things, most markup languages incorporate elements of both.

Alright, now we can finally move on to some examples. I would be more excited,
but I'm going to dunk on most of these later, so don't take any of my
explanation of what these markups languages are as an endorsement.

## The Big Lang Theory

{{<newthought>}}For ages, humans have searched{{</newthought>}} for the fastest
and most accurate way to represent their thoughts to one another, and have
mostly found people who don't care that much, dude. Eventually, though,
computers were invented, and suddenly everyone cared a _lot_ about speed and
efficacy of written communication. Some of the earliest markup languages were
developed at computing innovation hotspots like Bell Labs and
IBM,{{<marginnote>}}I'm sorry markup nerds but there simply is not enough space
on my hard drive to cover the ancestral forest that is GML.{{</marginnote>}}
and the DNA of such ancestral typesetting tongues can still be seen in commonly
used markup today.

## Well, it all started that one summer in 1964…

{{<newthought>}}`RUNOFF` is one such language,{{</newthought>}} which would
later see adaptations `roff`, `troff`, `nroff`, and
`groff`.{{<sidenote>}}"Runoff (adaptation)", "typeset runoff", "new roff", and
"GNU runoff" respectively.{{</sidenote>}} These programs were some of the
earliest markup languages that would allow users to do both semantic and
presentational markup in a concise and understandable way. These markup
standards (especially `groff`) remain some of the most powerful tools for
digital typesetting there are, due to the fine-grained control they grant the
user. Modern usage often involves _macro packages_,{{<sidenote>}}<cite>See [the
groff manual page for macro
packages](https://www.gnu.org/software/groff/manual/groff.html#Macro-Package-Intro)</cite>{{</sidenote>}}
which are condensed control sequences that expand to larger expressions meant
to **make doing more complex things easier on the user**. These programs are
almost exclusively invoked at the command line, which is a bit of a limitation
considering anyone using the command line must, on principle, be a huge
nerd.{{<marginnote>}}(/s){{</marginnote>}}

Enter Donald Knuth{{<marginnote>}}If you somehow still haven't heard of Donald
Knuth and you're still reading this, you'd surely be fascinated by him and his
work.{{</marginnote>}} and Leslie Lamport, the developers behind the `$\TeX$`
language and its `$\LaTeX$` macro package respectively. `$\TeX$` is an
incredibly powerful typesetting language, though much like `roff`, it's far too
verbose. Much more frequently used is `$\LaTeX$`, a macro package which
abstracts a lot of that complexity while retaining that fine-grained control
that makes a markup language so powerful. `$\LaTeX$` is famous for its
beautiful and elegant equations, and since its initial development in 1985 has
remained the gold standard for academic writing and math typesetting. Outside
of academic contexts, however, the syntax of `$\TeX$`-based documents can be
cumbersome and _still_ overly verbose, especially for things like
documentation, blogging, or sending memos to your co-workers that nobody will
ever read.

## Ok, but what are normal people using today?

{{<newthought>}}Markdown is agreed upon{{</newthought>}} as a standard in the
same way early scientists agreed a meter is roughly _this_ big. Still, it has
become one of the most ubiquitous forms of document markup in the modern
digital landscape, used by practically everyone and their
octocat.{{<sidenote>}}<cite>See the [GitHub flavored markdown
"standard"](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).</cite>{{</sidenote>}}
Markdown is what Wikipedia calls a "lightweight" markup language, and it shows
in its syntax. At its core, markdown is really just prose decorated with some
syntax for headings, different text styles, and some other things like links
and lists. Built from the ground-up to convert well to HTML, markdown lends
itself well to use cases like online documentation and
blogging,{{<marginnote>}}Much to my chagrin, this page is formatted in
markdown.{{</marginnote>}} both of which benefit massively from its light
syntax. It even ~~forces~~ lets you embed HTML. Awesome…

For those more focused on the physical and outisde the online, AsciiDoc is
another primary choice that converts well to PDF, the chosen file format for
most markup languages' exports. Boasting a similarly lightweight syntax,
AsciiDoc also includes a few more tools for things like math, callout
blocks,{{<sidenote>}}Also called "admonitions" or sometimes
"condescending"{{</sidenote>}}
and document metadata.{{<marginnote>}}"But markdown has support fo-" NOPE. Read
on, find out.{{</marginnote>}} AsciiDoc is similarly lightweight, and focuses
on being easy to write using simple ASCII characters, making it ideal for doing
things like taking quick notes for later cleaning and export, or formatting
those aforementioned perpetually unread memos.

One of the great benefits of these newer, lighter-weight standards is their
lack of independence on environment. You can write markdown and AsciiDoc in
almost any editor on almost any platform, whereas something like `groff` is
tough to get working on a non-unix system, and `$\LaTeX$` requires boatloads of
tooling to make it bearable to write. These key characteristics of ease of use
and compatability make these languages shine in a modern context, especially
when you ignore how completely worthless they are.{{<marginnote>}}Out of all of
them, though, markdown is definitely the worst.{{</marginnote>}}

Let's talk about that.

# II. How?

> WARNING: The following section contains the enraged ramblings of someone who
> cares far too much. Proceed with caution and several grains of salt.

## Oh come on, how bad can it really be?

{{<newthought>}}You're right,{{</newthought>}} I should show you some context.
I'll be covering a few different areas I perceive to be problems in the modern
markup menagerie: Syntax, Ecosystem, and Philosophy.{{<marginnote>}}These are
by no means meant to be a complete metric of the value/efficacy of a language,
but they're useful to talk about in this context.{{</marginnote>}}

## Syntax

{{<newthought>}}Considering these languages{{</newthought>}} have been around
since the 1960s, it would be reasonable to assume we've settled into a standard
that at least makes it easy to write things. Like, there _has_ to be an easy
industry-standard way to write academic papers by now, right? Looking at the
aforementioned academic standard `$\LaTeX$`, we get syntax like this:

```latex {linenos=table}
\documentclass{article}[some-specs]

\usepackage{package-001}
...
\usepackage{package-999}

\title{A Title}
\author{A Sleep-Deprived PhD Student}
\date{} % <- You don't even need to put anything in there

\begin{document}
    This is a paragraph.

    \begin{tabular}{c|c|c}
        Coffee Type & Price (per pound) & Your Rating \\
        \hline
        Arabica     & \$8               & 5           \\
        Liberica    & \$10              & 7           \\
        Excelser    & \$12              & 8           \\
        Robusta     & \$10              & 10          \\
    \end{tabular}

    Say we have some set $S_k$ that contains all solutions to a subproblem $k$ of $S$.
    Let $A_k$ be the set of all \textem{optimal} solutions to $S_k$.

    Here's the quadratic equation:
    \[
        x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}
    \]
\end{document}
```

Ok that's enough. `$\LaTeX$` syntax is what you get when someone asks "hey how
many backslashes do you want in your markup" and the designers answer
"**yes**."{{<marginnote>}}If you think this is not a lot of backslashes, look
up the `$\LaTeX$` source for some academic paper, and weep tears of
regret.{{</marginnote>}} There's also no difference between a _variable_ and a
_function_, where things like `\hline` and `\title` look, at first glance,
exactly the same. There is so, _so_ much bloat in `$\LaTeX$` syntax that it
almost _gets in the way_ of writing things. On top of that, `\` is used as _an
escape character_. That's _three things_ now that the `\` might be doing.

This is all to say nothing of the syntax for drawing
pictures,{{<sidenote>}}Which requires a package called `TiKz`, a name that
makes me shudder each time I see it.{{</sidenote>}} which is
probably enough to make the `UNIX`-brained creators of the
`pic`{{<sidenote>}}It's truly [so
simple](https://meresh.com/files/troff/Making%20Pictures%20with%20GNU%20PIC,%20Eric%20S.%20Raymond.pdf).{{</sidenote>}}
preprocessor
for `groff` turn inside-out with despair.

That's not to say `groff` itself is any better.

```groff {linenos=table}
.TL
Some title
.AU
Some nerd (author)
.AI
Some university
.AB
Here is a brief abstract.
.AE
.PP
This is a paragraph of text. It's indented.
.LP
Here is an unindented paragraph, followed by
the quadratic equation.
.EQ
x = {-b +- sqrt{b sup 2 - 4 a c}} over { 2a }
.EN
This sentence has
.B bold
text.
.IP \(bu
This is a bullet item
.IP \(bu
This is another bullet item
```

I've used `groff` quite extensively, and have even written my own macros for
it. It's one of my favorite markup languages of all
time.{{<marginnote>}}Despite all the weirdness of Luke Smith, I am glad he
introduced people to `groff`.{{</marginnote>}} That doesn't mean I'm not
blinded by how many lines this example takes up. In its origins as an early
text processing tool, `groff` chose to make each new command happen at the
start of a line and prefixed with a period, which is actually a really good
choice for people who want carpal tunnel in their right hand. Needless to say,
it's archaic and doesn't see much use anymore.{{<sidenote>}}That is, outside of
writing `man` pages for linux users to pore through in their boundless free
time.{{</sidenote>}}

Perhaps that means we've already been saved by the lightweight markup languages
of today! The most famous of them all, markdown, surely has us covered. Right?

````md {linenos=table}
1. This is a list item numbered 1.
9. This is a list item numbered 2.
0. This is a list item numbered 3.
. This is just another line from number 3.

This is a paragraph.
This is the same paragraph.

This is a new paragraph.<br>
This is the only way to break a new line
within a paragraph.

- _this is italic_
- *this is italic*
- _*this is also italic*_
- this text has in*tern*al emphasis
- this text has e_tern_al suffering
- <u>this text is underlined</u>

--- <!-- horizontal rule -->

```cpp
std::cout << "This is code" << std::endl;
```

    This is also code

> This is a blockquote
that continues like a paragraph
> continues with a delimiter again
- Then ends when it's a new block

This is an ![image](image.jpg)
This is also an ![image]: image.jpg
````

The only way markdown's syntax is consistent is that it consistently misses the
mark.{{<marginnote>}}I've left out some syntax that is actually good for the
sake of brevity.{{</marginnote>}} I mean come _on_, not only _can_ you use raw
HTML anywhere in the document, but in some cases you're _forced_ to? This is
inexcusable, nobody should be forced to write HTML.

Aside from all the inconsistency within the actual document syntax, there's
even more inconsistency between markdown's syntax _standards_!{{<sidenote>}}The
most common markdown standard,
[CommonMark](https://spec.commonmark.org/0.31.2/), is extremely
limited.{{</sidenote>}} Sometimes you can do ~strikethrough~, sometimes you
can't. Sometimes you can $insert math inline$,{{<marginnote>}}I'm aware that
math formatting is done with other tools like `$\KaTeX$`. That is
worse.{{</marginnote>}} sometimes you can't. Even when the syntax _isn't even
in the final document_ like in the case of metadata, you can't get a straight
answer! Sometimes it's in YAML, sometimes it's in TOML, sometimes it's _not
allowed at all_.

Markdown enthusiasts{{<sidenote>}}Read: masochists{{</sidenote>}} like to talk
about _flavors_ of markdown like it's some sort of buffet. There's _pandoc_
flavored markdown, _github_ flavored markdown, hell, there's even _R markdown_,
which runs `R` code on your markdown file to statistically analyze how much
time you've wasted trying to figure out why your paragraph is
monospaced.{{<marginnote>}}Not to mention that compiling your document takes
absolute _ages_ with R markdown.{{</marginnote>}} All of these different
standards have different ways of doing things. Some support using `+` or `*`
for bullet lists, some don't. Some support code blocks with language syntax
highlighting, some don't.

This wouldn't be such a problem if markdown wasn't the bona fide standard for
modern document markup in the software world,{{<marginnote>}}I consider GitHub
a gateway to markdown addiction, and even then most READMEs I've seen contain a
significant amount of HTML.{{</marginnote>}} and even outside of it in the
blogging sphere. The reach of markdown is so vast that people have tacitly
accepted these horrors for themselves, unaware of the sins they commit each
time they start an italic delimiter with a '*'.

This pattern is perpetuated through nearly all of the standards I've come
across in my search for the perfect markup language. I use markup languages
mostly for notetaking and formatting handouts,{{<marginnote>}}I consider these
to be relatively common use cases, given things like the (in)famous [castel.dev
post](https://castel.dev/post/lecture-notes-1/) and the existence of tools like
vimwiki.{{</marginnote>}} which basically means I have to either:

1. Write a billion macros in my editor to use something like `$\LaTeX$` or
   `groff`, or
2. Settle for something like markdown or AsciiDoc that isn't quite powerful
   enough,

and that just isn't acceptable to me.

## Ecosystem

{{<newthought>}}A good markup language{{</newthought>}} has good tooling for
using it. Whether it's turning the markup into a finished format or importing
macros made by other users, a good ecosystem is a big part of what makes a
markup language easy to use.

`groff`'s ecosystem is archaic/nonexistent.{{<marginnote>}}Of all of these, I
think `groff` actually does it best with its `UNIX`-y use style, but the
documentation is so _scattered_ and _in man pages_ that it negates that
entirely.{{</marginnote>}} Modern `$\LaTeX$` opts to use about a billion
packages distributed in about a dozen ways to address the needs of users. I've
seen many a `$\LaTeX$` document where the package imports take up nearly as
much space as the actual document content. AsciiDoc's ecosystem is pretty good,
but severly lacking in extensibility. Markdown's ecosystem is not just bad,
it's _everywhere_.{{<marginnote>}}I consider markdown to be the asbestos of the
markup langauge world. It's super harmful and also _in
everything_.{{</marginnote>}} Every editor instance has a different set of
things you can use with it, and the web tech rendering your markdown is usually
what determines what you can/can't use. It shouldn't be that hard to create a
good ecosystem for a markup language. Just _having_ an official way to use it
is even a high bar for modern markup languages. Having one that also doesn't
force the user to use it is even rarer.

Possibly the most frustrating aspect of modern markup languages is their severe
lack of use. These things should be ubiquitous like WYSIWYG. People shouldn't
default to taking notes in Google Docs, and yet here we are. I know not of a
markup language with an ecosystem good enough and a syntax simple enough for
ordinary people to just get on board and use it.{{<sidenote>}}There used to be
one, but that one was called _shorthand_ and requires
handwriting.{{</sidenote>}} The power of markup is lost on the general
population because of insidious flaws in our standards.

## Philosphy

{{<newthought>}}Where does that{{</newthought>}} leave us? The philosophy of
most markup languages is either that "users should be able to get the maximum
output from minimum markup" or "wrong." Even most of what we've been talking
about misses the real point; formatting documents into digital formats is
generally _difficult_, and markup languages are meant to make it
_easy_.{{<marginnote>}}Remember that first sidenote? Yeah. We're
back.{{</marginnote>}} Even in the discussion of syntax earlier, you, the
reader, _implicitly_ had to learn what the syntax _was_ and what it _meant_ for
any of that conversation to be relevant and comprehensible.

The flaws in modern markup philosophy become even more obvious when we look at
what these languages are actually _for_. Markdown is really _for_ writing HTML
faster, which it does super effectively by making you write HTML anyway.
`$\LaTeX$` is really _for_ extremely use-case specific scientific writing, and
while it has flaws, it does that reasonably well. AsciiDoc is _for_
writing low stakes technical content,{{<sidenote>}}[Its
website](https://docs.asciidoctor.org/) even says as much.{{</sidenote>}} and
excels at that.

The biggest problem with modern markup is that **all of these languages are
pitched as whole solutions for every circumstance by people who don't know
better**.{{<marginnote>}}Yes, I've tried org mode, vimwiki, neorg, and dozens
of other formats/methods. I dislike all of them.{{</marginnote>}} These
languages are tools, and each has their use case, but there is no sonic
screwdriver, there is no Batman's belt, and there is no God, only the winding
threads of the cosmos pulling us closer and closer to writing HTML by hand.

Don't get me wrong; the problems with syntax and ecosystem we've discussed are
_very_ real and _very_ frustrating for people like me who can't handwrite
things.{{<marginnote>}}Curse you, wrist issues and sensitivity to the texture
of paper!{{</marginnote>}} The problem plaguing modern markup that saddens me
most, though, is that of the missing middle. There is next to nothing in the
gap between something like Markdown and something like `$\LaTeX$`, between the
usability of the lightweight and the power of the academic.

# III. What now?

Thankfully, other people have seen these problems and chosen to do something
about them.{{<sidenote>}}There's an excellent up-and-coming language called
[Typst](https://typst.app/) that addresses a lot of what I've talked about,
though it's still not perfect.{{</sidenote>}} There is still, however, a long
road ahead between where we are and getting to the platonic form of the perfect
markup language.

The thing that would help most right now is if more people really _understood_
this problem. To do that, though, one must actually _use_ a markup language. I
highly encourage anyone who has read this far to pick up a markup langauge,
even if it's markdown.{{<marginnote>}}Tools like
[Obsidian](https://obsidian.md/) and [Joplin](https://joplinapp.org/) are user
friendly and good at easing you into the workflow.{{</marginnote>}} Really any
markup language will give you more power and velocity than Microsoft Word, just
_please_ stop using Word.

Stop it. Save yourself.

---

## End notes

- I plan on doing some fun posts diving deeper into the syntax of some of the
  more offensive languages and rating them on different metrics for some
  lighthearted fun, so stay tuned for that.
- Despite their flaws, I've used these languages extensively and plan to
  continue using them, especially Typst.
- The most annoying part of writing this by far was formatting each instance of
  `$\LaTeX$` properly.
