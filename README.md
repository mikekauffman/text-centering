# Text Centering

## Setup

* Fork
* Clone
* Turn on TravisCI for the fork by
  visting https://travis-ci.org/profile/<github user name>, clicking the "Sync now" button
  and scrolling down to find the repository to build.
* Create a new branch for your work using `git checkout -b v1`
* Implement specs and code
* Push using `git push -u origin v1`

Right before you are done, please fill in `meta/student.json` with appropriate values and push.

## Problem

Your mission, should you choose to accept it, is to build a program that will center text.

The input to this program should be any string.  The output of the program should be a string in which each line is
 centered against the longest line.

For example, if the input is this:

```
this is a short line
this is a really long line that has a lot of characters
and this is
short
```

Then the output should be this:

```
                 this is a short line
this is a really long line that has a lot of characters
                      and this is
                         short
```

So your code needs to:

* find the longest line
* add padding to every other line such that it is centered against the longest line

## Uneven centering

In cases where there aren't an even number of characters in the front and back, round down on the leading spaces.

So if true centering would be `17.5 / 10 / 17.5` your script should make it `17 / 10 / 18`.  For example:

```
22
12345
```

becomes:

```
 22
12345
```

## Lines with spaces

If the original line includes spaces, those should be ignored when centering.  All text should be centered in the output,
regardless of what whitespace was there to begin with.

For example:

```
   22
12345
```

would become:

```
 22
12345
```

## Whitespace at end

There should be no whitespace at the end.

# Extra

Create a class that will iterate through all of the .txt files in the data directory, center them, and save the
centered text to a file named `<original filename>_centered.txt` in the `output` directory.

# Further Practice

This warmup can be completed mulitple times to increqse your comfort level with the material.
To work on this from scratch, you can:

1. Add an upstream remote that points to the original repo `git remote add upstream git@github.com:gSchool/text-centering.git`
1. Fetch the latest from the upstream remote using `git fetch upstream`
1. Create a new branch from the master branch of the upstream remote `git checkout -b v2 upstream/master`
1. Implement specs and code
1. Push using `git push -u origin v2`

Each time you do the exercise, create a new branch. For example the 3rd time you do the exercise the branch
name will be v3 instead of v2.
