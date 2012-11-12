# Gimme lyrics!

A simple Spotify app displaying the lyrics of the currently playing song.

## Usage

*Dont't use it.* It's just an app I wrote for fun and it uses the [lyrics.wikia.com](lyrics.wikia.com) service in a way that is, let's say, not exactly allowed by their terms of usage. It's just an excercise based on the excellent [Spotify Apps API Tutorial](https://github.com/spotify/apps-tutorial).

## Development

I'm using CoffeeScript here. Usually I would .gitignore the `js/compiled` directory, but I wanted to be able to quickly clone this repo and start playing with the app without necessarily installing the CoffeeScript compiler.

If you have the compiler installed, though, you can use the `coffee -wco js/compiled js/src` command to watch the `js/src` for changes and compile when needed.
