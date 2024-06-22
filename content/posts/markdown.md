+++
title = 'Markdown'
date = 2024-06-22T13:38:13-04:00
draft = true
+++

## Markdown

Let's start with basic inline formatting.{{<marginnote>}}I will be skipping
over irrelevant markup since this article needs to be readable before the heat
death of the universe.{{</marginnote>}}

```md {linenos=table,hl_lines=["5-6", "10", "13"]}
- *italic*
- _italic_
- **bold**
- __bold__
- _*italic?*_
- *_despair italicized_*
- _**bold italic**_
- __*bold italic*__
- *in*ner it*al*ic
- e_tern_al _suff_ering
- `monospaced`
- ~strikethrough~
- <u>underlined</u>
```

The question of why markdown allows _four_ different ways to italicize
something is a good one, but a better question would be "why are two of them
**using a character that straight up has no effect on the
output**?"{{<sidenote>}}See lines 5-6.{{</sidenote>}} This is beyond stupid,
and I will be deducting one point for each pair of useless
characters.{{<marginnote>}}-2 Syntax{{</marginnote>}}

Why stop there? Markdown treats italicizing the inner part of a word like
surgically operating on someone with a butterknife.{{<sidenote>}}See line
10.{{</sidenote>}} Those underscores aren't even hidden. That's gonna be
another point.{{<marginnote>}}-1 Syntax{{</marginnote>}}

{{<blockquote author="You, in your belligerent innocence">}}
But Melody! What about `monospaced`, ~~strikethrough~~, and <u>underlined</u>?
Those all work fine!
{{</blockquote>}}

Oh my sweet summer child… You truly have no idea.

Monospaced is fine, though there technically could be a use for something
between the single backtick and triple backtick syntax markdown supports for
code.{{<marginnote>}}Perhaps a two-backtick delimited smallcaps could be
useful.{{</marginnote>}} With strikethrough, however, we encounter a pretty
major issue. This syntax doesn't work in the most common markdown
standard,{{<sidenote>}}<cite>See the [CommonMark
spec](https://spec.commonmark.org/0.31.2/)</cite>{{</sidenote>}} and is
inconsistent elsewhere. Some require ~one tilde~, some require \~~two\~~.
That's gonna be another point for making me guess whether or not the syntax
will be supported in the random thing that _happens_ to be rendering my
markup.{{<marginnote>}}-1 Syntax{{</marginnote>}}

And finally, there is one more thing critically wrong with this particular example. Check out line 13.

```md {linenos=table,linenostart=13}
- <u>underlined</u>
```

Yeah, that's HTML. Raw HTML. In _my_ markdown document.{{<marginnote>}}Before
you ask, yes, this is written in markdown, yes, I did have to use HTML to
format the underline in the blockquote above, and yes, I am seething in
righteous anger.{{</marginnote>}} Because markdown doesn't
just support using raw HTML all over the goddamn place, but it _forces_ you to.
That's one point for making me write in another markup language to use a markup
language, and another for making that second language HTML.{{<marginnote>}}-2
Syntax{{</marginnote>}}

---

So far, the syntax we've looked at have all been what
markdown{{<marginnote>}}Again, referring to the CommonMark standard here. I'll
continue to refer to this as it is the most ubiquitous standard there is
besides GitHub's, but most people on GitHub just use HTML in a .md file
anyway.{{</marginnote>}} call "inlines." In other words, they're small spans of
markup that do minor format adjustments to text. There is another type of
markup, however, and that is what we will address now.

Behold, the blocks:

````md {linenos=table,hl_lines=["10-12", "17-19", "29-30", "36-38"]}
# This is a level 1 heading

## This is a level 2 heading

### This is a level 3 heading

#### You get it

This is a paragraph.
It is classified as a leaf block.

This is a new paragraph.
It is seperated from the last one.

> This is a blockquote
> This continues the blockquote
because this continues a paragraph, this does too.
> You can resume too
- This doesn't continue it though
    - It's a list item, covered below

```rs
fn main() {
    println!("This is a code block.");
    println!("It even has syntax highlighting!");
}
```

    This is also a code block.
    It's just monospaced though.

- This is a list block.
- Each item in this is called a list item.
    - You can have subitems too!

1. Or even ordered lists.
2. Like this!
3. Yayyy counting
````

This is a long section of markup, so we're only going to pay attention to the
highlighted lines.

```md {linenos=table,linenostart=9,hl_lines=["2-4"]}
This is a paragraph.
It is classiied as a leaf block.

This is a new paragraph.
It is separated from the last one.
```

This empty space is great for reading, but what if I want a paragraph to break
without a line of empty space in between?

```md {linenos=table}
This is a paragraph.<br>
This is rendered as a new line without a space.
```

Of course, more HTML. One point.{{<marginnote>}}-1 Syntax{{</marginnote>}}

```md {linenos=table,linenostart=29}
    This is also a code block.
    It's just monospaced though.
```

This looks nothing like a code block to me. Also, given how inconsistent people
are with how they use indentation, and how they might want to use it in
conjunction with markdown's other features, this has massive potential to cause
a lot of formatting headaches, which is the exact thing a markup language is
meant to get rid of. Another point.{{<marginnote>}}-1 Syntax{{</marginnote>}}

```md {linenos=table,linenostart=32,hl_lines=["5-7"]}
- This is a list block.
- Each item in this is called a list item.
    - You can have subitems too!

1. Or even ordered lists.
2. Like this!
3. Yayyy counting
```

I take no issue with markdown's unordered lists. In fact, they're one of the
better parts of the language. But the ordered lists? That's a different story.

{{<blockquote author="You, blissfully unaware">}}
But Melody, surely it's not because you have to increase the numbers manually?
That would be petty, right?
{{</blockquote>}}

Correct, dear reader! This is why.

```md {linenos=table,hl_lines=["4-5","7-8","10"]}
1. This item is labeled 1
1. This item is labeled 2
1. This item is labeled 3
0. This item is labeled 4
9. This item is labeled 5
1. This item is labeled 6
3. This item is labeled 7
2. This item is labeled 8

. This item isn't labeled.
```

Not only are the preceding numbers irrelevant, but you can even go in
_descending order_ and still be fine. On top of that, you're _not allowed_ to
just use the '.' to denote an ordered list. You _have_ to use _some_
number.{{<marginnote>}}In use, this isn't a huge issue, but it speaks to the
inconsistency of the syntax.{{</marginnote>}} That's another point for making
me write something that doesn't have any functional use, and for laughing in my
face while I count backward and monotonically increasing the label
anyway.{{<marginnote>}}-1 Syntax{{</marginnote>}}
