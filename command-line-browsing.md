I hate browsers. I don't know why. I always have a strange urge to use the command line whenever possible.

Well it's not quite true that I don't know why. I have a few theories:

1. I'm so used to be able to use command line tools like grep that it urks me when I am denied them.
1. I don't care about your page layout.
1. I'm pretty bad at handling tabs, well at least as compared to handling my bash history. There's no equivalent to bash's C-R in firefox, instead I have to find the tab by hand and remember to code it.

It's not too hard to get linux to do this with a few command line tools and a little blue. It's a little surprising that there isn't
something that can just do this with a single apt-get install, but such is life.

The tool I'm using at the moment is the surfraw (sr) tool. (Written by Julianassange no less!), unfortunately by default this uses your built in browser rather than, say, curl.

Here's the tweaking I've done to make this usable

# Commands

    apt-get install surfraw, curl, html2text

# tsr (Text sr)

    #!/bin/bash
    # A version of sr that uses a curl
    sr -browser=tsr-browser.sh "$@"

# tsr-browser.sh

    #!/bin/bash
    curl -L "$@" | html2text

# textcurl.sh

    #!/bin/bash
    # Quickly view a url
    curl -Lq "$@" | html2text
