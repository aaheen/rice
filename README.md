# Nord Orchis GTK dotfiles

Dotfiles for my current [Nord](https://nordtheme.com) theme.

I'm using Fedora 37, so I'm not 100% sure if all of the commands I'm using translate to all other popular distros.


## Fonts

My preference towards fonts changes with time, but currently I use

| Use / Alias 	  | Font name		| Source                                                          |
| ---             | ---         | ---                                                             |
| monospace       | Mononoki		| [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases/)	|
| sans-serif      | Open Sans		| [Google Fonts](https://fonts.google.com/specimen/Open+Sans)		  |
| Obsidian (sans) | Overpass		| [Google Fonts](https://fonts.google.com/specimen/Overpass)		  |
| serif           | Crimson Pro	| [Google Fonts](https://fonts.google.com/specimen/Crimson+Pro)		|

> Nerd Fonts are named "$FONT Nerd Font", or some variation, so you may need to experiment a little.
> FYI you can do `$ fc-list | grep mononoki` to get the actual name(s) for Mononoki within the system.

Much that I love all manner of interesting/niche fonts, ~~especially the super pretty overpriced ones from Adobe,~~ I try to enforce a strict rule of only sourcing fonts from FOSS / F(AIF) sources and [Google Fonts](https://fonts.google.com/).


## Outside sources

**GNOME shell (GTK4)**
The bulk of the customizations come from [Vince's](https://vinceliuice.github.io/) ***incredible*** ["Orchis" GNOME shell theme](https://github.com/vinceliuice/Orchis-theme). He's so nicely updated it with a built-in Nord variant, so I don't have to mess around with css myself :P

**Cursors**
Cursors are the [Nordzy cursors](https://github.com/alvatip/Nordzy-cursors) by [alvatip](https://github.com/alvatip).

**Firefox**
Firefox theme is [Minimalist Nord](https://github.com/canbeardig/MinimalistFox) by [Hakan](https://github.com/canbeardig).


## Installation

I've included `install.sh` to do a few things, it's pretty human-readable but jsyk it:
- enables user-themes within gnome-extensions
- runs `git submodule init` and `git submodule update`
- runs the Orchis `install.sh` file and only installs the Nord theme, `compact` size, `default` color variant. 
- enables the `Orchis-Compact-Nord` theme with gsettings.
- runs the Nordzy `install.sh` file 
- enables the `Nordzy-cursors` cursor theme with gsettings.

> 2023-04-07 At the time of writing this, I think the orchis installer is bugged because it doesn't recognize `nord` as a variant, despite listing it in the output of `--help`. Try editing `install.sh` if/when this gets resolved.

### Firefox

To install the firefox theme, you can go to the [Firefox Add-ons page](https://addons.mozilla.org/en-US/firefox/addon/minimalist-nord/), or simply run

```
firefox ./firefox/themes/minimalist-nord.xpi ./firefox/themes/manifest.json --new-instance
```

### Fonts

> I have yet to write a script that downloads, installs, and sets my fonts for me; I'll get to it at some point.


## Other scripts

They are included for my own use, **expect that they will not work on your system** without some tinkering. `install-full.sh` is rather cursed in particular, you have been warned.


## Contact me

I haven't set up matrix yet, if you're reading this and know me personally, bug me about it!

Otherwise, send me an email at `erik` AT `heen` DOT `dev`

