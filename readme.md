#### Requirements

To compile this piece of code you have to install nim compiler; you can install following this [link](https://nim-lang.org/install_unix.html)

## What is

Simple utility to change the gnome shell theme and gtk theme based on current time
In order to use the utility you should define a file called __daynight_theme.json__ in __~/.config__ with the following fields:
- _day_theme_
- [_day_shell_theme_]
- _night_theme_
- [_night_shell_theme_]

Every field is a string and contains the name of the respective theme to apply at the right time of the day

Additionally there are two optional parameters:
- _edge_day_night_
- _edge_night_day_

These two parameters must be in the format "HH:MM:SS" and represent respectively the time edge between day/night and vice-versa. In the script are setted by default at _"18:00:00"_ and _"06:00:00"_

##### Unite extension 

If you use Unite extension on Gnome you can set other two optional parameters:

- _day_unite_buttons_
- _night_unite_buttons_

This two parameters change the windows button theme of Unite extension

##### Icon theme

You can also set the icon theme with these optional fields in the json:

- _day_icons_
- _night_icons_


### Example

A base _daynight_theme.json_ is:

`{"day_theme": "Adwaita", "night_theme": "Adwaita-dark"}`

My personal config is: 

` {"day_theme": "ZorinGreen-Light", "night_theme": "ZorinBlue-Dark", "day_shell_theme": "Canta-light-compact", "night_shell_theme": "Flat-Remix-Dark-fullPanel", "night_unite_buttons": "materia-dark", "day_unite_buttons": "materia-light", "day_icons": "Zafiro-Icons-Light", "night_icons": "Zafiro-Icons-Variant-A"}`