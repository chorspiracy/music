\version "2.24.3"

\header {
  title = "Tanz der Moleküle"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key b \minor
  \time 4/4
}

verseOne = {
  Ich bin hier, weil ich hier hin -- ge -- hör  
  Von Kopf bis Fuß bin ich ver -- liebt  
  Du bist mu -- tig, weil du mir Treu -- e schwörst  
  Zwi -- schen all den schö -- nen Sou -- ve -- nirs  
}

preChorusOne = {
  Sprich mich an in dem Takt
  Der die -- ses Lied zu un -- serm Hit macht  
  Brich den Beat mit Ge -- fühl  
  Du bist so schön, weil du lachst  
}

refrain = {
  Uh -- uh -- hu  
  Uh -- uh -- huu, uh -- huu, uh -- huu  
  Du, mein Herz tanzt  
  Uh -- uh -- hu  
  Und je -- cis Mo -- le -- kül be -- wegt sich  
}

verseTwo = {
  Glaubst du wie ich da -- ran, dass al -- les gut sein kann  
  So -- lan -- ge wir zu -- sam -- men sind?  
}

preChorusTwo = {
  Brich das Eis, mit dem Schritt  
  Der je -- des At -- men zum Wag -- nis macht  
  Halt mich fest mit Ge -- fühl  
  Es ist so schön, wenn du lachst  
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % INTRO
  fis,1 | g | g | e |
  r4 fis r8 fis8 r fis | r4 g r8 g r g8 | r4 fis r8 fis r fis8 | r4 fis r8 fis r fis8 |

  % VERSE ONE
  \key gis \minor
  dis1 | r | r | r |
  r | r | \deadNote fis8 \deadNote fis8 r2. | r1 |
  b1( | b | b | ais |
  gis1 | b) |
  r4 gis gis8 ais4 b8( | b4) b b8 cis4 dis8 |

  % PRE-CHORUS ONE
  r2 r8 b8. ais8. | fis2 r8 dis8 e8 gis8 |
  r8\fermata gis8. fis16 fis8 fis4. fis8 | fis8. dis gis4 fis8 r4 |
  r2 r8 b8. ais8. | fis2 r8 dis8 e8 gis8 |
  r8 b16 b8. b8 b8. b8. b8 | ais4 r2. |
  
  % REFRAIN
  \key b \minor
  r2 r8 <a d>( <a b> <a d>) | r2 r8 <a d>( b <b d> | <b d>4 <cis d>8 cis4. <b d>8 <b d>8 | <b d>8 <a cis>8 <a cis>2.) |

  % VERSE TWO
  \key d \minor
  <f a>16 <f a> <f a> <f a> <f a>4 r2 |
  <f a>16 <f a> <f a> <f a> <f a>4 r2 |
  <f a>16 <f a> <f a> <f a> <f a>4 r2 |

  <e g>16 <e g> <e g> <e g> <e g>8 r8
  <e g>16 <e g> <e g> <e g> r <e g> r <f a> |

  <f a>16 <f a> <f a> <f a> <f a>4 r2 |
  <f a>16 <f a> <f a> <f a> <f a>4 r2 |
  <f a>16 <f a> <f a> <f a> <f a>4 r2 |
  <f a>16 <f a> <f a> <f a> <f a>4 r2 |

  % PRE-CHORUS TWO
  \key gis \minor
  r2 r8 b8. ais8. | fis2 r8 dis8 e8 gis8 |
  r8\fermata gis8. fis16 fis8 fis4. fis8 | fis8. dis gis4 fis8 r4 |
  r2 r8 b8. ais8. | fis2 r8 dis8 e8 gis8 |
  r8 b16 b8. b8 b8. b8. b8 | ais4 r2. |
  
  % REFRAIN
  \key b \minor
  r2 r8 <a d>( <a b> <a d>) | r2 r8 <a d>( b <b d> | <b d>4 <cis d>8 cis4. <b d>8 <b d>8 | <b d>8 <a cis>8 <a cis>2.) |
}

verseSopranoVoice = \lyricmode {
  % INTRO
  Uh uh uh uh
  uh uh uh uh uh uh
  uh uh uh uh uh uh,

  % VERSE ONE
  da
  ver -- liebt
  Uh
  die Treu -- e schwörst
  die Treu -- e schwörst

  % PRE-CHORUS ONE
  Sprich mich an in dem Takt
  Der die -- ses Lied zu un -- serm Hit macht
  Brich den Beat mit Ge -- fühl
  Du bist so schön, weil du lachst

  % REFRAIN
  Uh uh

  % VERSE TWO
  Tip pe tip pe tip, |
  Tip pe tip pe tip, |
  Tip pe tip pe tip, |
  Tip pe tip pe tip, tip pe t tip tip t |
  Tip pe tip pe tip, |
  Tip pe tip pe tip, |
  Tip pe tip pe tip, |
  Tip pe tip pe tip, |

  % PRE-CHORUS TWO
  Brich das Eis, mit dem Schritt  
  Der je -- des At -- men zum Wag -- nis macht  
  Halt mich fest mit Ge -- fühl  
  Es ist so schön, wenn du lachst  

  % REFRAIN
  Uh uh
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  % INTRO
  d1 | b | b | cis |
  r4 d r8 d r d8 | r4 b r8 b r b8 | r4 d r8 d r d8 | r4 cis r8 cis r cis8 |

  % VERSE ONE
  \key gis \minor
  r2 r8 cis dis fis( | fis) dis4  cis b4. | r4. fis'4 dis dis8( | dis4. cis8) r2 |
  r4 dis cis8 dis4. | fis4 dis8 cis4 fis8 fis8 r8 | r1 | r8 \deadNote fis \deadNote fis r8 r2 |
  r2 r8 cis dis fis( | fis) dis4  cis b8 b4 | r4. fis'4 dis dis8( | dis4. cis8) r2 |
  r4 dis8 dis cis8 dis4. | fis4 dis4 cis8 fis8 fis8 r8 | r1 | r1 |

  % PRE-CHORUS ONE
  r8 e8. dis8. b2 | r8 e8 dis8 b8 r2 |
  r8\fermata e8. dis16 dis8 b4. gis8 | dis'8. cis e4 dis8 r4 |
  r8 ais8. b8. fis'2 | r8 ais,8. b8. gis4 r4 |
  r8 dis'16 dis8. fis8 fis8. dis8. fis8 | fis4 r2. |

  % REFRAIN
  \key b \minor
  \repeat volta 2 {
    r8 g8. fis8. d4. b8( | b1) |
    r8 g'8. fis8. d4. cis8( | cis1) |
  }

  % VERSE TWO
  \key d \minor
  r2 r8 d c d | f4 d8 d4 d8 c d | r4. f4 d d8( | d4. c) r4 |
  r4 d c8 d4. f4 | d8 c f f8( f4) | r1 | r1 |

  % PRE-CHORUS TWO
  \key gis \minor
  r8 e8. dis8. b2 | r8 e8 dis8 b8 r2 |
  r8\fermata e8. dis16 dis8 b4. gis8 | dis'8. cis e4 dis8 r4 |
  r8 ais8. b8. fis'2 | r8 ais,8. b8. gis4 r4 |
  r8 dis'16 dis8. fis8 fis8. dis8. fis8 | fis4 r2. |

  % REFRAIN
  \key b \minor
  \repeat volta 2 {
    r8 g8. fis8. d4. b8( | b1) |
    r8 g'8. fis8. d4. cis8( | cis1) |
  }
}

verseAltoVoice = \lyricmode {
  % INTRO
  Uh uh uh uh
  Uh, uh uh, Uh, uh uh,
  Uh, uh uh, Uh, uh uh,
  % VERSE ONE
  Ich bin hier, weil ich hier hin -- ge -- hör
  Von Kopf bis Fuß bin ich ver -- liebt ver -- liebt
  Du bist mu -- tig, weil du mir Treu -- e schwörst
  Zwi -- schen all den schö -- nen Sou -- ve -- nirs

  % PRE-CHORUS ONE
  Sprich mich an in dem Takt
  Der die -- ses Lied zu un -- serm Hit macht
  Brich den Beat mit Ge -- fühl
  Du bist so schön, weil du lachst

  % REFRAIN
  Dia da da da da, dia da da,

  % VERSE TWO
  Glaubst du wie ich da -- ran, dass al -- les gut sein kann  
  So -- lan -- ge wir zu -- sam -- men sind?  

  % PRE-CHORUS TWO
  Brich das Eis, mit dem Schritt  
  Der je -- des At -- men zum Wag -- nis macht  
  Halt mich fest mit Ge -- fühl  
  Es ist so schön, wenn du lachst  

  % REFRAIN
  Dia da da da da, dia da da,
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % INTRO
  r1 | r | r | r |
  \repeat volta 2 {
    r8 g8. fis8. d4. b8( | b1) | r8 g'8. fis8. d4. cis8( | cis1) |
  }

  % VERSE ONE
  \key gis \minor
  b1 | r | r | r |
  r | r | r4. \deadNote fis'8 \deadNote fis8 r4. | r1 |
  dis1( | gis | gis | ais |
  b | gis) |
  r4 e e8 fis4 gis8(
  gis4) gis gis8 <gis ais>4 <gis b>8 |

  % PRE-CHORUS ONE
  r2 r8 b8. cis8. dis2 | r8 b8 ais8 gis8 |
  r8\fermata gis8. b16 b8 b4. b8 | b8. b b4 ais8 r4 |
  r2 r8 b8. cis8.| dis2 r8 b8 ais8 gis8 |
  r8 b16 b8. dis8 dis8. b8. dis8 | cis4 r2. |

  % REFRAIN
  \key b \minor
  r4 fis,16 fis r4 fis16 fis r8 fis16 fis |
  r4 g16 g r4 g16 g r8 g16 g |
  r4 g16 g r4 g16 g r8 g16 g |
  r4 a16 a r4 a16 a r8 a16 a |

  % VERSE TWO
  \key d \minor
  r2 r8 a g a | c4 a8 a4 a8 g a |
  r4. c4 a a8( | a4. g) r4 |
  r2 a4 g8 a | c4 a8 g c c( c4) | r1 | r1 |

  % PRE-CHORUS TWO
  \key gis \minor
  r2 r8 b8. cis8. dis2 | r8 b8 ais8 gis8 |
  r8\fermata gis8. b16 b8 b4. b8 | b8. b b4 ais8 r4 |
  r2 r8 b8. cis8.| dis2 r8 b8 ais8 gis8 |
  r8 b16 b8. dis8 dis8. b8. dis8 | cis4 r2. |

  % REFRAIN
  \key b \minor
  r4 fis,16 fis r4 fis16 fis r8 fis16 fis |
  r4 g16 g r4 g16 g r8 g16 g |
  r4 g16 g r4 g16 g r8 g16 g |
  r4 a16 a r4 a16 a r8 a16 a |
}

verseTenorVoice = \lyricmode {
  % INTRO
  Dia da da da da, dia da da,

  % VERSE ONE 
  da ver -- liebt Uh
  die Treu -- e schwörst
  die Treu -- e schwörst

  % PRE-CHORUS ONE
  Sprich mich an in dem Takt
  Der die -- ses Lied zu un -- serm Hit macht
  Brich den Beat mit Ge -- fühl
  Du bist so schön, weil du lachst

  % REFRAIN
  Da dap da dap da dap |
  Da dap da dap da dap |
  Da dap da dap da dap |
  Da dap da dap da dap |
  
  % VERSE TWO
  Glaubst du wie ich da -- ran, dass al -- les gut sein kann  
  So -- lan -- ge wir zu -- sam -- men sind?  

  % PRE-CHORUS TWO
  Brich das Eis, mit dem Schritt  
  Der je -- des At -- men zum Wag -- nis macht  
  Halt mich fest mit Ge -- fühl  
  Es ist so schön, wenn du lachst  

  % REFRAIN
  Da dap da dap da dap |
  Da dap da dap da dap |
  Da dap da dap da dap |
  Da dap da dap da dap |
}

bassVoice = \relative c {
  \global
  \dynamicUp
  % INTRO
  b4 b b b | g g g g | e e e e | a a a a |
  b4 b b b | g g g g | e e e e | a a a a |

  % VERSE ONE
  \key gis \minor
  gis4 gis gis gis8 fis | e4 e e e8 b' | cis4 cis cis cis8 gis | fis4 fis fis fis8 g |
  gis4 gis gis gis8 fis | e4 e e e8 b' | cis4 cis cis cis8 gis | fis4 fis fis fis8 g |
  gis4 gis gis gis8 fis | e4 e e e8 b' | cis4 cis cis cis8 gis | fis4 fis fis fis8 g |
  gis4 gis gis gis8 fis | e4 e e e8 b' | cis4 cis cis8 gis cis8 gis | fis fis fis cis' fis fis fis fis |

  % PRE-CHORUS ONE
  r8 gis8. fis8. gis2 | r8 gis8 dis8 e8 r2 |
  r8\fermata cis8. e16 e8 cis4. cis8 | fis,8. fis gis4 fis8 r4 |
  r8 gis8. dis'8. gis2 | r8 gis8. dis8. e4 r4 |
  r8 cis16 cis8. cis8 cis8. cis8. cis8 | fis,4 r2. |

  % REFRAIN
  \key b \minor
  b4 b b b | g g g g | e e e e | a a a a |

  % VERSE TWO
  \key d \minor
  d4 d d d8 c | bes4 bes bes bes8 a |
  g4 g g g8 d' | c4 c c c8 cis |
  d4 d r8 d c d | bes4 bes8 bes a g( g4) |
  g g g g8 d' | c4 c c c |

  % PRE-CHORUS TWO
  \key gis \minor
  r8 gis'8. fis8. gis2 | r8 gis8 dis8 e8 r2 |
  r8\fermata cis8. e16 e8 cis4. cis8 | fis,8. fis gis4 fis8 r4 |
  r8 gis8. dis'8. gis2 | r8 gis8. dis8. e4 r4 |
  r8 cis16 cis8. cis8 cis8. cis8. cis8 | fis,4 r2. |

  % REFRAIN
  \key b \minor
  b4 b b b | g g g g | e e e e | a a a a |
}

verseBassVoice = \lyricmode {
  % INTRO
  Dum dum dum dum | dum dum dum dum, | dum dum dum dum | dum dum dum dum |
  Dum dum dum dum | dum dum dum dum, | dum dum dum dum | dum dum dum dum |

  % VERSE ONE
  Dum dum dum dum dum | dum dum dum dum dum | dum dum dum dum dum | dum dum dum dum dum |
  dum dum dum dum dum | dum dum dum dum dum | dum dum dum ver -- liebt | dum dum dum dum dum |
  dum dum dum dum dum | dum dum dum dum dum | dum dum dum dum dum | dum dum dum dum dum |
  dum dum dum dum dum | dum dum dum dum dum | dum dum bom bom bom bom |
  bom bom bom bom bom bom bom bom |

  % PRE-CHORUS ONE
  Sprich mich an in dem Takt
  Der die -- ses Lied zu un -- serm Hit macht
  Brich den Beat mit Ge -- fühl
  Du bist so schön, weil du lachst

  % REFRAIN
  Bom bom bom bom |
  Bom bom bom bom |
  Bom bom bom bom |
  Bom bom bom bom |

  % VERSE TWO
  Dum dum dum dum dum |
  Dum dum dum dum dum |
  Dum dum dum dum dum |
  Dum dum dum dum dum |
  Dum dum, So la -- nge wir zu -- sam -- men sind |
  Dum dum dum dum dum |
  Dum dum dum dum |

  % PRE-CHORUS TWO
  Brich das Eis, mit dem Schritt  
  Der je -- des At -- men zum Wag -- nis macht  
  Halt mich fest mit Ge -- fühl  
  Es ist so schön, wenn du lachst  

  % REFRAIN
  Bom bom bom bom |
  Bom bom bom bom |
  Bom bom bom bom |
  Bom bom bom bom |
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Sopran"
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alt"
  midiInstrument = "choir aahs"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "acoustic bass"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

\score {
  <<
    \sopranoVoicePart
    \altoVoicePart
    \tenorVoicePart
    \bassVoicePart
  >>
  \layout { }
  \midi {
    \tempo 4=125
  }
}
