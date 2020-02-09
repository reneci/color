# color
This script provides an very easy way to change the color of the console output.

# functions

## color

color &lt;foregroundcolor&gt; [&lt;backgroundcolor&gt;]

Following colors are defined for the background and forground color

|color|
|-|
|default|
|black|
|dark red|
|dark green|
|dark yellow|
|dark blue|
|dark magenta|
|dark cyan|
|dark gray|
|red|
|green|
|yellow|
|blue|
|magenta|
|cyan|
|gray|
|white|



# how to use color.sh in script
```
#!/bin/bash
. ./color.sh

color "magenta" "black"
echo "Hello World"
color "reset"

ecolor "The same only in one line" "White" "Red"

```
