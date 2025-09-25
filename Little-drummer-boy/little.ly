\version "2.18.2"
\language "english"

\header {
  title = "Little Drummer Boy"
  composer = "Boney M"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key g \major
  \time 2/2
}

sopranoVoice = \relative g'' {
  \global
  \dynamicUp
  % Music follows here.
  g,2.( a4 b2 c4 d | e8 d e4 d2 |
  c8 b c4 b2) |
  r4 c4( b a |
  g2. a4 | b1 | c8 b c4 b2) | r1 | r2
  r4 g4( | g4 a4 | b2 | b2 c8 b c4 b1) | r1
  r4 a4( b c | d2. e4 | d8 c b4 a2) | 
  r1 | r4 a4( b c | d2. e4 f8 e d4 c2) |
  e8( d c4 b2) | d8( c b4 a2) r1
  g2.( a4 | b1 | c8 b c4 b2) | r1 | r2. d4( |
  e8 d e4 d2 | c8 b c4 b2 | b4 c b a) |
  g2. a4 | b2 b4 b | c8 b c4 b2 | r1 | r2
  r4 g4 | g4 a4 | b b | b b c8 b c4 b1 | r1
  r4 a4 b c | d d d e4 | d8 c b4 a2 | 
  r1 | r4 a4 b c | d d d4 e4 | f8 e d4 c2 |
  e8 d c4 b2 | d8 c b4 a2 r1
  g2. a4 | b b b b | c8 b c4 b2 | r1 | a8~g a4 g2 |
  r1 | r1 | r1 |
  g2. a4 | b2 b4 b | c8 b c4 b2 | r1 | r2
  r4 g4 | g4 a4 | b b | b b c8 b c4 b1 | r1
  r4 a4 b c | d d d e4 | d8 c b4 a2 | 
  r1 | r4 a4 b c | d d d4 e4 | f8 e d4 c2 |
  e8 d c4 b2 | d8 c b4 a2 r1
  g2. a4 | b b b b | c8 b c4 b2 | r1 |
  a8 g a4 g2 | r1 |
  a8 g a4 g2 | r1 |
  
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  uh uh uh uh uh uh uh uh uh
  
  Lit -- tle ba -- by
  pa rum pum pum pum
  I am a poor boy too
  pa rum pum pum pum
  I have no gift to bring
  pa rum pum pum pum
  That's fit to give our king
  pa rum pum pum pum,
  rum pum pum pum,
  rum pum pum pum

  Shall I play for you
  pa rum pum pum pum
  On my drum

  Ma -- ry nod -- ded
  pa rum pum pum pum
  The ox and lamb kept time
  pa rum pum pum pum
  I played my drum for him
  pa rum pum pum pum
  I played my best for him
  pa rum pum pum pum,
  rum pum pum pum,
  rum pum pum pum

  Then he smiled at me
  pa rum pum pum pum
  Me and my drum 
  Me and my drum 


}

altoVoice = \relative g' {
  \global
  \dynamicUp
  % Music follows here.
  b,2.( d4 | g2 a4 b | c8 b c4 b2 | a8 g a4 g2) | r4 e( d c |
  b2. d4 | g2 d4 g | a8 g a4 g2) | r1 | r2 r4 b,4( |
  b d g2 | d4 g a8 g a4 g1) | r1 | r4 fs4( g a | b2. c4 |
  b8 a g4 fs2) | r1 | r4 fs( g a b2. g4 | a8 g f4 e2) |
  g8( fs e4 d g | d g fs2) | r1 |
  b,2.( d4 | g2 d4 g | a8 g a4 g2) | r1 | r2. b4( |
  c8 b c4 b2 | a8 g a4 g2 | g4 e d c) |
  d2 d | d d |
  d2 d | d d |
  d2 d | d d |
  d2 d | d d |
  d2 d | d d |
  fs2 fs4 g | fs8 e d4 d2 |
  d2 d | d d |
  d2 d | d e |
  e2 d | d d |
  d2 d | d d |
  d2 d | d d |
  d2 d | fs g4 b( |
  c8 b c4 b2 | a8 g a4 g2 | g4 e d c) |
  b2. d4 | g2 d4 g | a8 g a4 g2) | r1 | r2 r4 b,4 |
  b d g g | d4 g a8 g a4 g1 | r1 | r4 fs4 g a | b b b c4 |
  b8 a g4 fs2 | r1 | r4 fs g a b b b g4 | a8 g f4 e2 |
  g8 fs e4 d g | d g fs2 | r1 |
  b,2. d4 | g g d4 g | a8 g a4 g2 | r1 |
  r2. b4( | c8 b c4 b2) |
  r2. b4( | c8 b c4 b2) |
  
}

verseAltoVoice = \lyricmode {
  % Lyrics follow here.
  uh uh uh uh uh uh uh uh
  
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, pa rum pum pum
  pum
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  ah
  
  Ma -- ry nod -- ded
  pa rum pum pum pum
  The ox and lamb kept time
  pa rum pum pum pum
  I played my drum for him
  pa rum pum pum pum
  I played my best for him
  pa rum pum pum pum,
  rum pum pum pum pum pum pum
  pum

  Then he smiled at me
  pa rum pum pum pum
  uh uh
  
}

tenorVoice = \relative g {
  \global
  \dynamicUp
  % Music follows here.
  r1 | r1 | r1 | r1 | r1 |
  g2. a4 | b2 b4 b | c8 b c4 b2 | r1 | r2
  r4 g4 | g4 a4 | b b | b b c8 b c4 b1 | r1
  r4 a4 b c | d d d e4 | d8 c b4 a2 | 
  r1 | r4 a4 b c | d d d4 e4 | f8 e d4 c2 |
  e8 d c4 b2 | d8 c b4 a2 r1
  g2. a4 | b b b b | c8 b c4 b2 | r1 | a8~g a4 g2 |
  r1 | r1 | r1 |
  b2 b | b b |
  b b | b b |
  b b | b b |
  b b | b b |
  b b | 
  a a | a a |
  a a | a a |
  a a | 
  g g | g g |
  g g | b a |
  a a | b b |
  b b | b b |
  b b | c r4 d4( |
  e8 d e4 d2 | c8 b c4 b2 | b4 c b a) |
  
  b2. c4 | d2 d4 d | e8 d e4 d2) | r1 | r2 r4 b4 |
  b c d d | d4 d e8 d e4 d1 | r1 | r4 d4 d d | d d d d4 |
  b8 c d4 d2 | r1 | r4 d d d | d d d d( | d2) d8 c b4 |
  c2 a8 b c4 | d2 d2 | r1 |
  b2. c4 | d d d4 d | e8 d e4 d2 | r1 |
  r2. d4( | e8 d e4 d2) |
  r2. d4( | e8 d e4 d2) |
  
  % Refrain

}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.
  Come they told me,
  pa rum pum pum pum
  A new born king to see,
  pa rum pum pum pum

  Our fin -- est gifts we bring,
  pa rum pum pum pum
  To lay be -- fore the king,
  pa rum pum pum pum,
  rum pum pum pum,
  rum pum pum pum
 
  So to ho -- nor him
  pa rum pum pum pum
  When we come
}

bassVoice = \relative g {
  \global
  \dynamicUp
  % Music follows here.
  <g, d'>2 <g d'> | <g d'> <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  <g d'> <g d'> | <g d'> <g d'> |
  d'2 d | d d |
  d d | d d |
  d d | <g, d'> <g d'> |
  <g d'> c |
  c2 <g d'> | <g d'> <d d'> |
  <d d'>2 <d d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  <d d'>2 <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  
 <g d'>2 <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  <g d'> <g d'> | <g d'> <g d'> |
  d'2 d | d d |
  d2 d | d d |
  d2 d | d d |
  <g, d'>2 <g d'> | <g d'> <g c> |
  <g c>2 <g d'> | <g d'> <d d'> |
  <d d'>2 <d d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  <d d'>2 <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  
  <g d'>2 <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  <g d'> <g d'> | <g d'> <g d'> |
  <d d'>2 <d d'> | <d d'> <d d'> |
  <d d'>2 <d d'> | <d d'> <d d'> |
  <d d'>2 <d d'> |
  <g d'>2 <g d'> | <g d'> <g c> |
  <g c>2 <g d'> | <g d'> <d d'> |
  <d d'>2 <d d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  <g d'>2 <g d'> | <g d'> <g d'> |
  <d d'>2 <g d'> | <g d'> <g d'> |
  <d d'>2 <g d'> | <g d'> <g d'> |
  
  
}



verseBassVoice = \lyricmode {
  % Lyrics follow here.
  Rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum,
  rum, rum, rum, rum
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = #"acoustic grand"
} { \sopranoVoice }
\addlyrics { 
 \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = #"acoustic grand"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = #"acoustic grand"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Basso"
  midiInstrument = #"acoustic grand"
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
    \tempo 2=60
  }
}
