\version "2.22.1"

\header {
  title = "Weihnachten bin ich zu Haus"
  composer = "Roy Black"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key bes \major
  \time 4/4
  \tempo "Langsamer Swing"
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp
  % Intro
  es4( d g f | f es d c)\fermata |
  
  % Music follows here.
  d2( c | d c4) r | d2( d f f) |
  bes( a) | g( f) |
  g( f) | es( d4) r8
  
  d8 | c4 c8 c f4 f | c c8 c f4 r |
  c4 c8 c f4 f8 f | c4 c8 c f4 r8 
  f8 | bes8 bes bes bes a a a a | g4 g f2 |
  r1 | r2 a2\fermata |
%  g2( f) | a( f) |
  
  % Chorus 1
  r4 <d, f>2. | r4 <es f>2. |
  r4 <c d>2( d4) | r4 <es g>8 <es f>8( <es f>2) |
  r4 f( g2) | r4 e r e |
  r g8 a( a4) g8( c | <c d>1) |
}

verseSopranoVoice = \lyricmode {
  % intro
  ah mh mh uh uh uh uh
  
  Doch fällt ü -- ber Nacht dann lei -- se der Schnee,
  Fun -- keln die Ster -- ne und glitz -- ert der See,
  Dann weiß ich, dass die Träu -- me auf die Rei -- se gehn,
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  % Intro
  bes4( bes es d | bes bes bes bes)\fermata |
  
  % Music follows here.
  bes2( a | bes a4) r | bes2( bes | c d) |
  g2.( f4) | es2.( d4) |
  es2.( d4) | c2( c4 bes) |
  c1( | c) |
  es | es |
  a4( g2 f4) | d4( des c4) r4 |
  <bes es>8 <bes es> <c f> <c es> <bes d> <bes d> bes4 | bes a8 a bes2\fermata |
  
  % Chorus
  d4 d8 d f4 f8 f | es4 es8 es c2 |
  d4 f es d | c2 r |

  d4 d8 d e4 e8 e | f4 f8 f g2 |
  a4 g8 f f4 e8 f( | f1) |

}

verseAltoVoice = \lyricmode {
  % intro
  ah mh mh uh uh uh uh
  mh mh mh
  ah ah

  Und vor der Er -- in -- ner -- ung blei -- ben sie stehn.
  
  % Chorus
  Weih -- nach -- ten, Weih -- nach -- ten bin ich zu Haus, wenn auch nur im Traum
  Weih -- nach -- ten steh ich bei Mut -- ter zu Haus un -- ter dem Tan -- nen -- baum

}

tenorVoice = \relative c {
  \global
  \dynamicUp
  % Intro
  fis4( f bes as | g g fis es)\fermata |
 
  % Music follows here.
  f2( f | f4 e es4) r | f2( g | bes4 a f2) |
  d'4( c2.) | c4( bes2.) |
  bes4( a bes2) | g4( f2.) |
  as1( | as1) |
  bes2( a) | bes( a) |
  d2( c) | a2.( g4) |
  r ges( f2) | e4( es d2)\fermata |
  
  % Chorus 1
  r4 f2. | r4 g4( bes a) |
  r4 f2 a4 | r4 bes8 bes8( bes) bes a bes |

  r4 bes( c2) | r4 c r c | r e8 c( c4) e8 es | 
  r8 a,8 gis a( a2)|
  
}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.
}

bassVoice = \relative c {
  \global
  \dynamicUp
  % Intro
  bes2 bes | bes bes\fermata |
  
  % Strophe 1
  bes8 bes bes bes c4 c8 c | d4 d c r |
  d d8 d es4 es8 es | f4 f d r8 f |
  bes4 bes8 bes a4 r8 a | g4 g8 g f4 f8 f |
  g g g g f4 f | es es8 es d4 r4
  
  
  r1 | r1 |
  
  c2 f | c f |
  g4 d f c |
  b2 bes | c8( bes as4) g4( ges) |
  f4 f f2\fermata |
  
  % Chorus 1
  bes2 d | c f4 f, | bes4 d c bes | f2 f2 |
  
  bes2 bes' | a bes | r8 c c,4 d e | r8 f8 e es( es2) |
}

verseBassVoice = \lyricmode {
  % Intro
  Bom bom bom bom,
  
  % Lyrics follow here.
  Ich geh mei -- nen Weg auf der gro -- ßen Welt,
  Le -- be das Le -- ben wie's mir ge -- fällt,
  Der Him -- mel ist weit, die Son -- ne die scheint,
  Und ich freu mich wenn das Glück es gut mit mir meint.

  
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
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
  midiInstrument = "choir aahs"
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
    \tempo 4=60
  }
}
