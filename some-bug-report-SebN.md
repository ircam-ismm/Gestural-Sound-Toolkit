SebN report

## Gestural Sound Toolkit

Bug report on Max Package + propositions + solutions sometimes !

-\> In "/extras/Gestural Sound Toolkit - overview.maxpat" on load.

-   root patcher tab : [p intro2] calls old bpatcher like "ml.classification.gmm.maxpat" instead of "**gst.classification.gmm.maxpat**". SOLVED !!!

-   [mubu #0-hhmm data] container try to read data from personal hard drive searching for "data" instance -\> mubu : cannot read data from file '/Volumes/Macintosh HD/Users/naves/Documents/Maxwork/\_OBJ/MC.PANNER/data'

-\> gst.acc.intensity.maxpat abstraction :

-   [pipo intensity] is not used ?

-   comment for 3rd inlet : "mubu.scroll configuration" instead of "gain".

-   a similar integration in gen : sn.acc.intensity

-\> old ml.xxx or sp.xxx abstractions replaced with gst.xxx version.

-\> sn.acc.intensity proposition with a similar gen implementation.

-\> sn.kick proposition including some simplifications.

-\> correct last inlet of Orientation and kick abstractions with "mubu.scroll configuration"
