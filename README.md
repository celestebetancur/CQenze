# CQenze 0.1.5
### (from SimpleCode 0.1.4)
-----------------
### (minilanguage on top of chucK)

CQenze is a minilanguage designed to make musical (or color) patterns that uses an implicit cyclic timing (Tidal ``:``),
and a variation ``=`` that being also cyclic synchronizes musical events 'strictly'.
Build on top of chuck language, uses chuck real-time audio capabilities.

-----------------
To configure CQenze on your machine do:

``./configure``.

Run ``./cqenze Live.cqz`` if you want to compile and execute the compiled file, and then change ``Live.cqz`` using any text editor , then by just saving the changes in the file, it will recompile automatically.

If you want to use your own samples, simply copy the folders
in dirt folder.

Folder's name must not contain numbers or spaces, samples must not
be in subfolders and every sample must be named with numbers.

Only ``.wav`` for now.

## Tutorial
-----------------

See the sample code, Live.cqz:

```
// this is a comment and is ignored by the compiler

tempo 120; // set tempo
cycles 2; // set number of cycles before restart loop

//Audio patterns

sn :-+;
cp =--+-;
bd/4 :++;

//Color patterns - open CQenzeVisual/CQenze.html to visualize

indianred:--+-----+-----+--;
orange:+-+;

//write a string 

"ser o no ser";  
```

Choose a word from this list:
(Every word represents a sample or a folder with samples)
```
ab ade adesa adesb adesc alex alphabet amencutup armora arp arpy auto baa ba bass bassa bassb
bassc bassd bassdm bassfoo battles bd bend bev bin birds3 bleep blip blue bottle breaksa
breaksb breakscloud breakslouder breaksc breaksd breath bubble can casio cc chin
chink circus clak click co cosmicg cp cr crow d db diphone diphonea dist dork dorkbot dr dra
drb drfew drum drumtraks e east electro erk f feel feelfx fest fire  flick foo fuckable
future gab gabba gabbaloud gabbalouder glasstap glitch glitcha gretsch h hand hardcore haw hc
hh hha hit hmm ho house ht if ifdrums incoming industrial insect invaders jazz jungbass jungle
jvbass koy kurt latibro led less lighter lt made madea mash mash2 metal miniyeah moan monsterb
moog mouth mp msg mt newnotes noise noisea notes numbers oc odx off pad padlong pebbles perc
peri pluck print printshort proc procshort psr rave rave2 ravemono rm sax seawolf sequential sf
sheffield short sid sine sitar sn sound space speech speechless speedupdown stab stomp subroc
sugar sundance tabla tablaa tablex tacscan tech techno tink tok toys trump ul ulgab uxay
voodoo wind wobble world xmas yeah 
```
or from this list:
(These are colors)
```
maroon darkred brown firebrick crimson red tomato coral indianred lightcoral
darksalmon salmon lightsalmon orangered darkorange orange gold darkgoldenrod
goldenrod palegoldenrod darkkhaki khaki olive yellow yellowgreen darkolivegreen
olivedrab lawngreen chartreuse greenyellow darkgreen green forestgreen lime
limegreen lightgreen palegreen darkseagreen mediumspringgreen springgreen
seagreen mediumaquamarine mediumseagreen lightseagreen darkslategray teal
darkcyan aqua cyan lightcyan darkturquoise turquoise mediumturquoise paleturquoise
aquamarine powderblue cadetblue steelblue cornflowerblue deepskyblue dodgerblue
lightblue skyblue lightskyblue midnightblue navy darkblue mediumblue blue royalblue
blueviolet indigo darkslateblue slateblue mediumslateblue mediumpurple darkmagenta
darkviolet darkorchid mediumorchid purple thistle plum violet magenta orchid
mediumvioletred palevioletred deeppink hotpink lightpink pink antiquewhite beige
bisque blanchedalmond wheat cornsilk lemonchiffon lightgoldenrodyellow lightyellow
saddlebrown sienna chocolate peru sandybrown burlywood tan rosybrown moccasin
navajowhite peachpuff mistyrose lavenderblush linen oldlace papayawhip seashell
mintcream slategray lightslategray lightsteelblue lavender floralwhite aliceblue
ghostwhite honeydew ivory azure snow black dimgray gray darkgray silver lightgray
gainsboro whitesmoke white
```

If you choose a sample: ``bd``, write ``:`` or ``=``; if you choose a color
use ``:``:

``bd :`` or ``bd =`` or ``red :``.

Then write a pattern like ``+--+--+`` and ``;`` at the end:

``bd : +--+--+;``or ``bd = +--+--+;`` or ``red : +--+--+;``.

If you want a diferent sample with the same name-folder write ``bd/4`` :

``bd/4 : ++;``.

To change the tempo write:

``tempo 140;`` or any integer you want.

To change the number of cycles per loop:

``cycles 2;`` or any integer.


And just for fun write:

``"a b c d e f g ";`` and hear.
