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
  Der je -- cis At -- men zum Wag -- nis macht  
  Halt mich fest mit Ge -- fühl  
  Es ist so schön, wenn du lachst  
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % INTRO
  fis,1 | g | g | e |
  r4 fis r8 fis8 r fis | r4 g r8 g r g8 | r4 fis r8 fis r fis8 | r4 fis r8 fis r fis8 |
  r4 fis r8 fis r fis8 | r4 g r8 g r g8 | r4 fis r8 fis r fis8 | r4 fis r8 fis r fis8 |

  % VERSE ONE / change to Ab minor
  \key gis \minor
  dis1 | r | r | r |
  r | r | r | r |
  b'1( | cis | b | ais |
  gis1 | gis1) |
  r4 gis gis8 ais4 b8( | b4) b b8 cis4 dis8 |

  % PRE-CHORUS ONE
  r2 r8 b8. ais8. | fis2 r8 dis8 e8 gis8 |
  r8\fermata gis8. fis16 fis8 fis4. fis8 | fis8. dis gis4 fis8 r4 |
  r2 r8 b8. ais8. | fis2 r8 dis8 e8 gis8 |
  r8 b16 b8. b8 b8. b8. b8 | ais4 r2. |
}

verseSopranoVoice = \lyricmode {
  % INTRO
  Uh uh uh uh
  uh uh uh uh uh uh
  uh uh uh uh uh uh
  uh uh uh uh uh uh
  uh uh uh uh uh uh,

  % VERSE ONE
  da
  Uh
  die Treu -- e schwörst
  die Treu -- e schwörst

  % PRE-CHORUS ONE
  Sprich mich an in dem Takt
  Der die -- ses Lied zu un -- serm Hit macht
  Brich den Beat mit Ge -- fühl
  Du bist so schön, weil du lachst
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  % INTRO
  d1 | b | b | cis |
  r4 d r8 d r d8 | r4 b r8 b r b8 | r4 d r8 d r d8 | r4 cis r8 cis r cis8 |
  r4 d r8 d r d8 | r4 b r8 b r b8 | r4 d r8 d r d8 | r4 cis r8 cis r cis8 |

  % VERSE ONE
  \key gis \minor
  r2 r8 cis dis fis( | fis) dis4  cis b4. | r4. fis'4 dis dis8( | dis4. cis8) r2 |
  r4 dis cis8 dis4. | fis4 dis8 cis4 fis8 fis8 r8 | r1 | r1 |
  r2 r8 cis dis fis( | fis) dis4  cis b8 b4 | r4. fis'4 dis dis8( | dis4. cis8) r2 |
  r4 dis8 dis cis8 dis4. | fis4 dis4 cis8 fis8 fis8 r8 | r1 | r1 |

  % PRE-CHORUS ONE
  r8 e8. dis8. b2 | r8 e8 dis8 b8 r2 |
  r8\fermata e8. dis16 dis8 b4. gis8 | dis'8. cis e4 dis8 r4 |
  r8 ais8. b8. fis'2 | r8 ais,8. b8. gis4 r4 |
  r8 dis'16 dis8. fis8 fis8. dis8. fis8 | fis4 r2. |
}

verseAltoVoice = \lyricmode {
  % INTRO
  Uh uh uh uh
  Uh, uh uh, Uh, uh uh,
  Uh, uh uh, Uh, uh uh,
  Uh, uh uh, Uh, uh uh,
  Uh, uh uh, Uh, uh uh,
  % VERSE ONE
  Ich bin hier, weil ich hier hin -- ge -- hör
  Von Kopf bis Fuß bin ich ver -- liebt
  Du bist mu -- tig, weil du mir Treu -- e schwörst
  Zwi -- schen all den schö -- nen Sou -- ve -- nirs

  % PRE-CHORUS ONE
  Sprich mich an in dem Takt
  Der die -- ses Lied zu un -- serm Hit macht
  Brich den Beat mit Ge -- fühl
  Du bist so schön, weil du lachst
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % INTRO
  r1 | r | r | r |
  r8 g8. fis8. d4. b8( | b1) | r8 g'8. fis8. d4. cis8( | cis1) |
  r8 g'8. fis8. d4. b8( | b1) | r8 g'8. fis8. d4. cis8( | cis1) |
  % VERSE ONE
  \key gis \minor
  b1 | r | r | r |
  r | r | r | r |
  dis1( | dis | dis | cis |
  dis | dis) |
  r4 e e8 fis4 gis8(
  gis4) gis gis8 <gis ais>4 <gis b>8 |

  % PRE-CHORUS ONE
  r2 r8 b8. cis8. dis2 | r8 b8 ais8 gis8 |
  r8\fermata gis8. b16 b8 b4. b8 | b8. b b4 ais8 r4 |
  r2 r8 b8. cis8.| dis2 r8 b8 ais8 gis8 |
  r8 b16 b8. dis8 dis8. b8. dis8 | cis4 r2. |
}

verseTenorVoice = \lyricmode {
  % INTRO
  Dia da da da da, dia da da da da,
  dia da da da da, dia
  % VERSE ONE 
  da Uh
  die Treu -- e schwörst
  die Treu -- e schwörst

  % PRE-CHORUS ONE
  Sprich mich an in dem Takt
  Der die -- ses Lied zu un -- serm Hit macht
  Brich den Beat mit Ge -- fühl
  Du bist so schön, weil du lachst
}

bassVoice = \relative c {
  \global
  \dynamicUp
  % INTRO
  b4 b b b | g g g g | e e e e | a a a a |
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
}

verseBassVoice = \lyricmode {
  % INTRO
  Dum dum dum dum dum dum dum dum, dum dum dum dum dum dum dum dum,
  % VERSE ONE
  Dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum
  dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum
  dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum
  dum dum dum dum dum dum dum dum dum dum dum dum bom bom bom bom bom bom bom bom

  % PRE-CHORUS ONE
  Sprich mich an in dem Takt
  Der die -- ses Lied zu un -- serm Hit macht
  Brich den Beat mit Ge -- fühl
  Du bist so schön, weil du lachst
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
