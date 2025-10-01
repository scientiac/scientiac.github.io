+++
title = "Almost splitting a Keyboard in Half"
date = 2025-09-30
[taxonomies]
writings=["Reports"]
+++

_Yeah! I keep doing stupid things._

The idea of remapping keys isn't new, be it for typing in a different language or to make the escape key more ergonomic for vim users.
I mapped my <kbd>escape</kbd> key to <kbd>`</kbd> and <kbd>caps-lock</kbd> key to <kbd>escape</kbd> when I bought my 65% keyboard.
It was because I had to use some weird function keybind just to type a <kbd>~</kbd>. Then I realised my laptop key got remapped too, but I
just went ahead with it. That is when I used this software called [keyd](https://github.com/rvaiya/keyd).

Fast forward to toady and rewind to a month back, I was bored out of my mind and was fidgeting with my keyboard when I popped one of the keys
out of it. And right then I looked at the keys and wondered if I could make a minimal split keyboard out of it using `keyd`. 

I had watched many videos about split keyboards, and one was even in my [wish](https://boardsource.xyz/products/unicorne-lp-aluminum-corne-case)list for a long time. So, I wondered if I was gonna invest in a keyboard that is going to shape my typing muscle memory, I should at least give it a try beforehand.

Now that I started writing about it, I don't think it was that big a deal. It only took too much of my time to configure it. First I tried the `ferris sweep` layout which was too much of a sacrifice, then I tried `corne` and finally decided on the `5 column corne`.

### Before Operation:
![keyboard-before](/images/diy-split-keyboard/before.png)

### After Operation:
![keyboard-after](/images/diy-split-keyboard/after.jpeg)

<details>
<summary>Here is the <code>keyd</code> configuration:</summary>

```yaml
# corne-36.conf

# keyboard id to enable [wired, bluetooth and 2.4ghz]
[ids]
5566:0008
3151:6001
1235:aa22

[main]

# LEFT HAND
# ROW 1
# Press "q" to write q
1 = q
# Press "w" to write w
2 = w  
# Press "e" to write e
3 = e
# Press "r" to write r
4 = r
# Press "t" to write t
5 = t

# ------------------------------------------ #

# LEFT HAND
# ROW 2
# Press "a" to write a
q = a
# Press "s" to write s
w = s
# Press "d" to write d
e = d
# Press "f" to write f
r = f
# Press "g" to write g
t = g

# ------------------------------------------ #

# LEFT HAND
# ROW 3
# Press "z" to write z
a = z
# Press "x" to write x
s = x
# Press "c" to write c
d = c
# Press "v" to write v
f = v
# Press "b" to write b
g = b

# ------------------------------------------ #

# LEFT HAND
# BOTTOM ROW - Special keys
# Press "down-arrow" for leftmeta, hold "down-arrow" for meta
x = overload(meta, leftmeta)
# Press "alt" for space, hold "alt" for navigation
c = overload(navigation, space)
# Press "up-arrow" for esc, hold "up-arrow" for control
v = overload(control, esc)

# ------------------------------------------ #
# ------------------------------------------ #
# ------------------------------------------ #

# RIGHT HAND
# ROW 1
# Press "y" to write y
8 = y
# Press "u" to write u
9 = u
# Press "i" to write i
0 = i
# Press "o" to write o
minus = o
# Press "p" to write p
equal = p

# ------------------------------------------ #

# RIGHT HAND
# ROW 2
# Press "h" to write h
u = h
# Press "j" to write j
i = j
# Press "k" to write k
o = k
# Press "l" to write l
p = l
# Press ";" to write semicolon
leftbrace = semicolon

# ------------------------------------------ #

# RIGHT HAND
# ROW 3
# Press "n" to write n
j = n
# Press "m" to write m
k = m
# Press "," to write comma
l = comma
# Press "." to write dot, hold "." for control
semicolon = dot
# Press "/" to write slash
apostrophe = slash

# ------------------------------------------ #

# RIGHT HAND
# BOTTOM ROW - Special keys
# Press "->" for enter, hold "->" for alt
m = overload(alt, enter)
# Press "del" for backspace, hold "del" for symbols
comma = overload(symbols, backspace)
# Press "<-" for tab, hold "<-" for shift
dot = overload(shift, tab)


# ------------------------------------------ #

# ALL UNUSED KEYS FROM THE KEYBOARD
tab = noop
capslock = noop
backspace = noop
backslash = noop
rightbrace = noop
esc = noop
enter = noop
6 = noop
7 = noop
y = noop
leftshift = noop
z = noop
b = noop
h = noop
slash = noop
rightshift = noop
leftcontrol = noop
leftalt = noop
space = noop
rightalt = noop
rightcontrol = noop
leftmeta = noop
rightmeta = noop
grave = noop
f1 = noop
f2 = noop
f3 = noop
f4 = noop
f5 = noop
f6 = noop
f7 = noop
f8 = noop
f9 = noop
f10 = noop
f11 = noop
f12 = noop
up = noop
down = noop  
left = noop
right = noop
home = noop
end = noop
pageup = noop
pagedown = noop
insert = noop
delete = noop
kp0 = noop
kp1 = noop
kp2 = noop
kp3 = noop
kp4 = noop
kp5 = noop
kp6 = noop
kp7 = noop
kp8 = noop
kp9 = noop
kpdot = noop
kpenter = noop
kpplus = noop
kpminus = noop
kpasterisk = noop
kpslash = noop

# ------------------------------------------ #
# ------------------------------------------ #
# ------------------------------------------ #

#  [ 1:q ] [ 2:w ] [ 3:e ] [ 4:r ] [ 5:t ]                    [ 8:y ] [ 9:u ] [ 0:i ] [ -:o ] [ =:p ]
#   [ q:a ] [ w:s ] [ e:d ] [ r:f ] [ t:g ]              	[ i:h ] [ o:j ] [ p:k ] [ [:l ] [ ]:; ]
#    [ a:z ] [ s:x ] [ d:c ] [ f:v ] [ g:b ]          	     [ j:n ] [ k:m ] [ l:, ] [ ;:. ] [ ':/ ]
#          [ x:meta ] [ c:nav/space ] [ v:ctrl/esc ]    	[ m:alt/return ] [ ,:sym/backspace ] [ .:shift/tab ]

# ------------------------------------------ #
# ------------------------------------------ #
# ------------------------------------------ #

[symbols]

# LEFT HAND
# ROW 1
# Hold "del" and press "q" for "!"
1 = S-1
# Hold "del" and press "w" for "@"
2 = S-2
# Hold "del" and press "e" for "#"
3 = S-3
# Hold "del" and press "r" for "$"
4 = S-4
# Hold "del" and press "t" for "%"
5 = S-5

# ------------------------------------------ #

# LEFT HAND
# ROW 2
# Hold "del" and press "a" for "1"
q = 1
# Hold "del" and press "s" for "2"
w = 2
# Hold "del" and press "d" for "3"
e = 3
# Hold "del" and press "f" for "4"
r = 4
# Hold "del" and press "g" for "5"
t = 5

# ------------------------------------------ #

# LEFT HAND
# ROW 3
capslock = noop
# Hold "del" and press "z" for "6"
a = 6
# Hold "del" and press "x" for "7"
s = 7
# Hold "del" and press "c" for "8"
d = 8
# Hold "del" and press "v" for "9"
f = 9
# Hold "del" and press "b" for "0"
g = 0


# LEFT HAND
# BOTTOM ROW - Special keys
x = noop
c = backslash
v = '

# ------------------------------------------ #

# RIGHT HAND
# ROW 1
# Hold "del" and press "y" for "^"
8 = S-6
# Hold "del" and press "u" for "&"
9 = S-7
# Hold "del" and press "i" for "*"
0 = S-8
# Hold "del" and press "o" for "("
minus = S-9
# Hold "del" and press "p" for ")"
equal = S-0
# ------------------------------------------ #

# RIGHT HAND
# ROW 2
# Hold "del" and press "h" for "_"
u = minus
# Hold "del" and press "j" for "="
i = equal
# Hold "del" and press "k" for "`"
o = grave
# Hold "del" and press "l" for "["
p = leftbrace
# Hold "del" and press ";" for "]"
leftbrace = rightbrace

# ------------------------------------------ #

# RIGHT HAND
# ROW 3
# Hold "del" and press "n" for "_"
j = S-minus
# Hold "del" and press "m" for "+"
k = S-equal
# Hold "del" and press "," for "~"
l = S-grave
# Hold "del" and press "." for "{"
semicolon = S-leftbrace
# Hold "del" and press "/" for "}"
apostrophe = S-rightbrace

# ------------------------------------------ #

# RIGHT HAND
# BOTTOM ROW - Special keys
m = backspace
comma = noop
dot = rightshift

# ------------------------------------------ #
# ------------------------------------------ #
# ------------------------------------------ #

[navigation]

# LEFT HAND
# ROW 1
# Hold "alt" and press "q" for "f1"
1 = f1
# Hold "alt" and press "w" for "f2"
2 = f2
# Hold "alt" and press "e" for "f3"
3 = f3
# Hold "alt" and press "r" for "f4"
4 = f4
# Hold "alt" and press "t" for "f5"
5 = f5

# ------------------------------------------ #

# LEFT HAND
# ROW 2
# Hold "alt" and press "a" for "f6"
q = f6
# Hold "alt" and press "s" for "f7"
w = f7
# Hold "alt" and press "d" for "f8"
e = f8
# Hold "alt" and press "f" for "f9"
r = f9
# Hold "alt" and press "g" for "f10"
t = f10

# ------------------------------------------ #

# LEFT HAND
# ROW 3
# Hold "alt" and press "z" for "f11"
a = f11
# Hold "alt" and press "x" for "f12"
s = f12
d = noop
f = noop
g = noop

# ------------------------------------------ #

# RIGHT HAND
# ROW 1
8 = noop
# Hold "alt" and press "u" for "tab"
9 = tab
# Hold "alt" and press "i" for "pageup"
0 = pageup
# Hold "alt" and press "o" for "pagedown"
minus = pagedown
# Hold "alt" and press "p" for "print"
equal = print

# ------------------------------------------ #

# RIGHT HAND
# ROW 2
# Hold "alt" and press "h" for "left"
u = left
# Hold "alt" and press "j" for "down"
i = down
# Hold "alt" and press "k" for "up"
o = up
# Hold "alt" and press "l" for "right"
p = right
leftbrace = noop

# ------------------------------------------ #

# RIGHT HAND
# ROW 3
# Hold "alt" and press "n" for "home"
j = home
# Hold "alt" and press "m" for "end"
k = end
l = noop
semicolon = noop
apostrophe = noop

# ------------------------------------------ #

# RIGHT HAND
# BOTTOM ROW - Special keys
m = noop
comma = delete
dot = noop
```

</details>

I even vibe coded a [layout visualiser](/images/diy-split-keyboard/corne-36.html) to remember the keybinds.

### Happy Ending?
Well, I could just lie and say that I have increased my productivity by 200% but, that is far from the reality. After I had fun changing the layout, I am just happy with the comfort of my laptop keyboard and have not used the split keyboard at all. I do use it sometimes but, I am so slow on it that I immidiately fall back to the laptop. It is obvious, it takes time to learn a split layout but, I am just not investing my time on it. Nevertheless, **it was so damn fun while I configured it**.

Projects like `keyd` just keep the spirit of Linux alive.
