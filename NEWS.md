# fmggp2 0.59.0

* The seventeen dark themes (`theme_blockbuster()`, `theme_bopit()`, `theme_consolewars()`, `theme_doom()`, `theme_geocities()`, `theme_goosebumps()`, `theme_hypercolor()`, `theme_jurassic()`, `theme_netscape()`, `theme_orbitz()`, `theme_oregontrail()`, `theme_rzone()`, `theme_seinfeld()`, `theme_snick()`, `theme_surge()`, `theme_tetris()`, and `theme_y2k()`) gain `mode = c("dark", "light")`. The light palette tints the background and panel with the theme's hue, uses dark text, and darkens the frame, title, and marks so they hold contrast on a light panel.
* `theme_batman()` gains the same `mode` argument for its `"movie"` and `"darknight"` versions. `"classic"` is already light, so `mode` doesn't change it.
* The themes vignette shows each light version.

# fmggp2 0.58.0

* Removed `theme_beanie()`, `theme_friends()`, `theme_toysrus()`, `theme_furby()`, `theme_boyband()`, and `theme_clueless()`. The book chapters that used them now use `theme_microdrive()` (violin plots), `theme_netware()` (overlapping bar graphs), `theme_j2me()` (treemaps), `theme_pager()` (overlapping and stacked densities), `theme_visor()` (bump charts), and `theme_cuseeme()` (parallel sets).

# fmggp2 0.57.0

* New `theme_microdrive()`: the IBM Microdrive, with a tan desk background, a black frame, a red title, IBM blue, red, navy, and Hitachi sky blue marks, and a Times New Roman title. The palette is sampled from "IBM 340MB Microdrive and Hitachi 1GB Microdrive" by MiNe (CC BY 2.0).
* New `theme_netware()`: Novell NetWare, with a NetWare red background and white text, a maroon frame, maroon, red, rose, and blush marks, and a Gill Sans title. The palette is sampled from "Novell NetWare 2.0 packages" by diaper on Flickr (CC BY 2.0).
* New `theme_j2me()`: J2ME phone apps, with a black phone background, a silver frame, a pale screen panel, Ushahidi red, tan, brown, and black marks, and an Arial Narrow title. The palette is sampled from "Ushahidi J2ME App" by Erik (HASH) Hersman (CC BY 2.0).
* New `theme_palmpilot()`: the PalmPilot, with a charcoal case background, a HotSync teal frame, a white title, a green LCD panel, ink, LCD green, plum, and teal marks, and a Futura title. The palette is sampled from "Palm Pilot Professional 01" by Museo8bits (CC BY-SA 3.0).
* New `theme_visor()`: the Handspring Visor, with a pale lavender background, a translucent green frame, a gray LCD panel, green, gray, mint, and silver marks, and a Trebuchet MS title. The palette is sampled from "Handspring Visor DeLuxe Green" by Waldohreule (CC BY-SA 3.0).
* New `theme_pager()`: two-way pagers, with a concrete background, a charcoal frame and title, a pale LCD panel, charcoal, orange, and slate marks, and an Arial Black title. The palette is sampled from "RIM BlackBerry 950" by Ruben de Rijcke (CC BY-SA 4.0).
* New `theme_cuseeme()`: CU-SeeMe, with a dithered gray background, a black frame, a white panel, black, magenta, and gray marks, and a magenta Tahoma title. The palette is sampled from "CU-SeeMe application screenshot" by Lt Georgios Floros, HN (public domain).
* New `theme_vrml()`: VRML, with a tan wall background, a floor brown frame, a pale panel, sofa red, lamp green, black, and glass marks, and an Andale Mono title. The palette is sampled from "Interior" by Jan Křivka (public domain).
* New `theme_javaapplet()`: Java applets, with a gray AWT window background and frame, a white panel, red, blue, purple, and gray marks, and a blue Verdana title. The palette is sampled from "Java applet" by Audrius Meskauskas (public domain).
* New `theme_cuecat()`: the :CueCat, with a pale paper background, a putty frame, a red title, red, ink, LED orange, and putty marks, and a Marker Felt title. The palette is sampled from "CueCat-upside" by Shaddack (public domain).
* New `theme_audrey()`: the 3Com Audrey, with a white plastic background, a black tile frame, a teal title, teal, navy, tan, brown, and aqua marks, and an Arial Rounded title. The palette is sampled from "3Com Audrey" by Andrew Turner (CC BY 2.0).

# fmggp2 0.56.1

* `theme_goosebumps()` puts pale green before moss in its discrete palette, so a third group stands out on the dark purple panel.

# fmggp2 0.56.0

* Removed `theme_win98()`, `theme_napster()`, `theme_spice()`, `theme_encarta()`, `theme_lisafrank()`, `theme_magiceye()`, `theme_rugrats()`, and `theme_trl()`, which had no freely licensed reference image. The book chapters that used them now use `theme_oksoda()`, `theme_talkboy()`, `theme_crystalpepsi()`, `theme_orbitz()`, `theme_koosh()`, `theme_rzone()`, `theme_gushers()`, and `theme_squeezit()`. `ggtext` is no longer a dependency.

* `theme_oregontrail()` has a new palette and a gray window frame sampled from "Nicole has dysentary" by The Pug Father (CC BY 2.0), which the vignette now shows.

* `theme_goosebumps()` has new slime green and purple colors sampled from the Goosebumps book covers, plus pale green and orchid marks.

* The README and themes vignette show the new themes with their reference images.

# fmggp2 0.55.0

* New `theme_squeezit()`: Squeezit bottles on gravel, with a gravel background, a red frame and title, red, orange, green, pink, blue, and gold marks, and a Skia title. The palette is sampled from "Squeezeit flavours" by ZolHaj (CC BY-SA 4.0).

# fmggp2 0.54.0

* New `theme_gushers()`: Fruit Gushers, with a white plate background, a red frame and title, eight fruit snack marks (red, green, teal, orange, pink, maroon, moss, and gray), and a Chalkboard title. The palette is sampled from "Betty Crocker Fruit Gushers pieces" by Thomson200 (CC0).

# fmggp2 0.53.0

* New `theme_rzone()`: the Tiger R-Zone headset, with black plastic, a red frame and title, red, purple, and pink marks, pale blue visor text, and an Arial Narrow title. The palette is sampled from "Tiger RZone Headset" by Evan-Amos (public domain).

# fmggp2 0.52.0

* New `theme_koosh()`: a tri color Koosh ball, with a white background, an orange frame, orange, purple, and black marks, and an Arial Rounded title. The palette is sampled from "Koosh Ball TriColor" by Evan-Amos (public domain).

# fmggp2 0.51.0

* New `theme_orbitz()`: Orbitz, the drink with floating balls, with a black background, a gold frame, gold and magenta marks, and a Marker Felt title. The palette is sampled from "Bottle of Orbitz drink" by Jesse! S? (CC BY 2.0).

# fmggp2 0.50.0

* New `theme_crystalpepsi()`: Crystal Pepsi, with a clear bottle cream background, a navy frame, Pepsi red and navy marks, and a Futura title. The palette is sampled from "Crystal Pepsi" by Mike Mozart (CC BY 2.0).

# fmggp2 0.49.0

* New `theme_talkboy()`: the Deluxe Talkboy, with a walnut background, a silver frame and panel, button blue marks, and a Brush Script title. The palette is sampled from "Deluxe Talkboy on table" by Y2kcrazyjoker4 (CC BY-SA 4.0).

# fmggp2 0.48.0

* New `theme_oksoda()`: OK Soda cans, with a brushed silver background, a black frame, a gray comic panel, OK red marks and title, slate and brick accents, and a Courier New title. The palette is sampled from "OK Soda Original 4" by TeemPlayer (CC BY-SA 3.0).

# fmggp2 0.47.1

* `theme_trl()` adds white as a sixth discrete color and `theme_rugrats()` adds Tommy blue and orange for eight, so the book's ridgeline plot and instance chart have enough colors again.

# fmggp2 0.47.0

* Removed copyrighted reference images from the themes vignette. Themes without a freely licensed image no longer show one.

* `theme_pogs()` has a new palette sampled from "Remember Pogs?" by MTSOfan (CC BY-NC-SA 2.0), which the vignette now shows.

* `theme_furby()` has a new palette sampled from "Furby" by Amanda (blamethecrane, CC BY-ND 2.0), which the vignette now shows.

* `theme_friends()` has a new palette sampled from "Monica's Apartment, Friends" by Rob Young (CC BY 2.0), which the vignette now shows.

* `theme_beanie()` has a new palette sampled from "Beanie Baby" by ajay_suresh (CC BY 2.0), which the vignette now shows.

# fmggp2 0.46.0

* The themes vignette uses freely licensed Wikimedia Commons images for nine themes (aim, freshprince, happymeal, jurassic, netscape, tetris, titanic, trl, and walkman).

# fmggp2 0.45.0

* The themes vignette shows reference images again for 22 themes.

* New palettes for `theme_aim()` (the sign on window) and `theme_pogs()`.

# fmggp2 0.44.0

* New palettes for `theme_encarta()`, `theme_netscape()`, `theme_titanic()`, `theme_goosebumps()`, `theme_tetris()`, `theme_furby()`, `theme_trl()`, `theme_oregontrail()`, `theme_magiceye()`, `theme_savedbythebell()`, and `theme_rugrats()`, sampled from new reference images.

* The themes vignette links to reference images that are not licensed for reuse instead of hosting them.

# fmggp2 0.43.0

* New reference images and palettes for `theme_win98()`, `theme_napster()`, `theme_spice()`, `theme_beanie()`, `theme_jurassic()`, `theme_happymeal()`, `theme_friends()`, `theme_freshprince()`, `theme_pogs()`, and `theme_walkman()`. `theme_napster()` now uses the gray client window with a black chat area, `theme_spice()` the Spice World tour poster, `theme_freshprince()` the show logo, and `theme_walkman()` a sports yellow body with blue buttons.

# fmggp2 0.42.0

* `theme_batman()` gains a `version` argument: `"movie"` (Batman 1989, the default), `"classic"` (the 1966 TV series), and `"darknight"` (The Dark Knight).

* The themes vignette shows a reference image for each theme, stored in `man/figures/theme_*/`.

# fmggp2 0.41.0

* New `theme_surge()`: Surge soda, with a black background, a Surge green frame and title, green, red, orange, yellow, and white marks, a dark to bright green continuous scale, and a DIN Alternate title.

# fmggp2 0.40.0

* New `theme_geocities()`: a GeoCities home page, with a black background, a web gray frame, a dark navy panel, lime green text, a yellow Comic Sans title, web safe marks, and a blue to yellow continuous scale.

# fmggp2 0.39.0

* New `theme_bopit()`: the Bop It toy, with a deep purple background, a yellow frame and title, yellow, blue, green, orange, and pink marks, a purple to yellow continuous scale, and a Rockwell title.

# fmggp2 0.38.0

* New `theme_clueless()`: Cher's yellow plaid, with a black frame, a cornsilk panel, black, red, tartan green, navy, and gray marks, and a Didot title.

# fmggp2 0.37.0

* New `theme_powerrangers()`: the Mighty Morphin Power Rangers, with a light gray background, a lightning gold frame, a red Copperplate title, and red, blue, yellow, pink, black, and green Ranger marks.

# fmggp2 0.36.0

* New `theme_seinfeld()`: a Seinfeld comedy club, with a brick background, a yellow frame and title, the yellow, red, blue, and green logo colors, and an American Typewriter title.

# fmggp2 0.35.0

* New `theme_consolewars()`: the Sega vs. Nintendo console wars, with a charcoal background, a Sega blue frame, a Nintendo red title, blue, red, purple, gray, and gold marks, and a Krungthep title.

# fmggp2 0.34.0

* New `theme_doom()`: Doom (1993), with a scorched brown background, a hellfire red frame and title, orange, red, gunmetal, armor green, and keycard marks, and an Impact title.

# fmggp2 0.33.0

* New `theme_rugrats()`: a pale yellow Rugrats playpen with an orange frame, a purple Marker Felt title, and Tommy blue, Angelica pink, Reptar green, orange, purple, red, teal, and yellow marks.

# fmggp2 0.32.0

* New `theme_y2k()`: the Y2K countdown, with a black terminal background, a red LED frame and title, red, amber, green, silver, and blue screen marks, and a PT Mono title.

# fmggp2 0.31.0

* New `theme_hypercolor()`: Generra Hypercolor shirts, with a deep purple background, a magenta frame, heat changing magenta, orange, purple, blue, green, and yellow marks, and a Gill Sans title.

# fmggp2 0.30.0

* New `theme_savedbythebell()`: the Saved by the Bell opening credits, with a black background, a hot pink frame, a white panel, Memphis style teal, magenta, yellow, purple, red, and blue marks, and a SignPainter title.

# fmggp2 0.29.0

* New `theme_boyband()`: late 90s boy band album covers, with a midnight navy background, a chrome frame, ice blue, hot pink, gold, lavender, and mint marks, and a Silom title.

# fmggp2 0.28.0

* New `theme_snick()`: Nickelodeon's Saturday night block, with a night purple background, an orange frame and title, slime green, purple, blue, yellow, and pink marks, and an Arial Black title.

# fmggp2 0.27.0

* New `theme_batman()`: the Batman (1989) palette, with a black background, a gold frame and title, orange and gold marks, and a DIN Condensed title.

# fmggp2 0.26.0

* New `theme_magiceye()`: a deep indigo Magic Eye poster with psychedelic magenta, teal, and orange marks and a Skia title.

# fmggp2 0.25.0

* New `theme_aim()`: AOL Instant Messenger yellow and blue with a white chat window and an Arial Rounded title.

# fmggp2 0.24.0

* New `theme_oregontrail()`: an Apple II black screen with phosphor green text and an Andale Mono title.

# fmggp2 0.23.0

* New `theme_trl()`: MTV's Total Request Live black studio, MTV yellow, and neon marks with an Impact title.

# fmggp2 0.22.0

* New `theme_furby()`: purple Furby fur with a soft white plot area and a Chalkboard SE title.

# fmggp2 0.21.0

* New `theme_tetris()`: a black well with the seven tetromino colors and the bundled Press Start 2P title font.

# fmggp2 0.20.0

* New `theme_goosebumps()`: a haunted purple background with slime green drips and a Trattatello title.

# fmggp2 0.19.0

* New `theme_supersoaker()`: neon orange plastic with a water blue plot area and an Arial Black title.

# fmggp2 0.18.0

* New `theme_tamagotchi()`: a lilac Tamagotchi egg with a gray green LCD plot area and a Futura title.

# fmggp2 0.17.1

* `theme_walkman()` now uses the Sony Sports Walkman photo palette (cobalt blue backdrop, sports yellow, play button green, and beige).
* `theme_jurassic()` now uses the Jurassic Park Post Office souvenir sheet palette (black, logo red, stamp yellow, sunset orange, cream, and tan).
* `theme_lisafrank()` now uses the Lisa Frank folder palette (purple, magenta, orange, yellow, and white).
* `theme_titanic()` now uses the Titanic's original paint colors (hull black, hull stripe gold, canvas, antifouling red, White Star buff, and funnel gray).
* `theme_encarta()` now uses colors from MindMaze in Encarta 97 (slate stone, parchment, carved frame brown, and gold).

# fmggp2 0.17.0

* New `theme_toysrus()`: Toys"R"Us white and blue with the multicolored logo letters as marks and a Phosphate title.

# fmggp2 0.16.0

* New `theme_lisafrank()`: Lisa Frank hot pink with rainbow neon marks and a Chalkboard title.

# fmggp2 0.15.0

* New `theme_titanic()`: Titanic (1997) ocean navy, iceberg white, steel blue, gold, and funnel red with a Big Caslon title.

# fmggp2 0.14.0

* New `theme_netscape()`: the Netscape Navigator night sky with star yellow, teal, magenta, and meteor orange and a Times New Roman title.

# fmggp2 0.13.0

* New `theme_encarta()`: Encarta and Encyclopedia Britannica on CD-ROM, with midnight navy, parchment, gold, blue, and maroon and a Georgia title.

# fmggp2 0.12.0

* New `theme_walkman()`: Sony Walkman Sports silver and black with yellow and orange marks and a DIN Condensed title.

# fmggp2 0.11.0

* New `theme_pogs()`: cardboard milk cap background with bright purple, orange, teal, and yellow prints and a Bradley Hand title.

# fmggp2 0.10.0

* New `theme_freshprince()`: The Fresh Prince of Bel-Air graffiti neon on deep purple with an Arial Black title and a teal to pink continuous fill.

# fmggp2 0.9.0

* New `theme_friends()`: Monica's purple apartment, the red, yellow, and blue logo dots, and a Chalkduster title.

# fmggp2 0.8.0

* New `theme_happymeal()`: McDonald's Happy Meal box red and yellow with an Arial Rounded title.

# fmggp2 0.7.0

* New `theme_jurassic()`: Jurassic Park black, jungle green, red, and amber with a Herculanum title.

# fmggp2 0.6.0

* New `theme_n64()`: Nintendo 64 controller gray with the red, green, blue, and yellow logo colors and an Arial Black title.

# fmggp2 0.5.0

* New `theme_beanie()`: Beanie Babies heart tag red and gold with Comic Sans MS text.

# fmggp2 0.4.0

* New `theme_spice()`: Spice Girls era pinks, purple, and gold with Trebuchet MS text.

# fmggp2 0.3.0

* New `theme_blockbuster()`: Blockbuster Video blue and yellow with Arial text and an Impact title. Adds an internal `register_font()` helper for system fonts.

# fmggp2 0.2.0

* New `theme_gameboy()`: the original Game Boy screen palette with the bundled Press Start 2P pixel font.

# fmggp2 0.1.0

* `theme_win98()` and `theme_napster()` late 90s themes.
* Book helpers `co_box()`, `status()`, and `%nin%`.
* README, Quarto vignettes, and pkgdown site.
