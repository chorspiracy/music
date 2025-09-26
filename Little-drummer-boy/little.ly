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
  \key f \major
  \time 2/2
}

sopranoVoice = \relative g' {
  \global
  \dynamicUp
  % Music follows here.
  r1 | r1 | r1 |
  f2.( g4 | a2 bf4 c | d8 c d4 c2 |
  bf8 a bf4 a2) |
  r4 bf4( a g | \time 2/2
  f2. g4 | a1 | bf8 a bf4 a1.) | r2.
  f4( | f4 g4 | a2 | a2 bf8 a bf4 | a1.) |
  r2 r4 g4( a bf | c2. d4 | c8 bf a4 g1.) | 
  r4 g4( a bf | c2. d4 ef8 d c4 bf2) |
  d8( c bf4 a2) | c8( bf a4 g1.) |
  f2.( g4 | a1 | bf8 a bf4 a1.) | r2 |
  a4( c d8 c d4 c2 | bf8 a bf4 \time 3/2 a2. bf4 a g) |
  \time 2/2 f2. g4 | \time 3/2 a2 a4 a | bf8 a bf4 a2 | r2 r2 \time 2/2  |
  r4 f4 | f4 g4 | \time 3/2 a a | a a bf8 a bf4 a2 | r1
  \time 2/2 r4 g4 a bf | \time 3/2 c c c d4 | c8 bf a4 |
  g2 r1 | \time 2/2
  
  r4 g4 a bf | \time 3/2 c c c4 d4 ef8 d c4 | \time 2/2 bf2
  d8 c bf4 | a2 c8 bf a4 g2 r2
  f2. g4 | \time 3/2 a a a a | bf8 a bf4 a2 | r1 | \time 1/2 g8~f g4 |
  \time 2/2 f1 | r1 | r1. |
  \time 2/2 f2 f4 g4 | \time 3/2 a4 a a4 a | bf8 a bf4 a2 | r1 |
  \time 2/2 r4 f4 | f4 g4 | \time 3/2 a a | a a bf8 a bf4 a1 | r2
  \time 2/2 r4 g4 a bf | \time 3/2 c c c d4 | c8 bf a4 g2 | 
  r1 | \time 2/2 r4 g4 a bf | \time 3/2 c c c4 d4 | ef8 d c4 \time 2/2 bf2 |
  d8 c bf4 a2 | c8 bf a4 \time 3/2 g2 r1 |
  \time 2/2 f2. g4 | \time 3/2 a a a a bf8 a bf4 | a2 r1 |
  \repeat volta 2 {
    \time 1/2 g8 f g4 \time 3/2 f2 r1
  }  
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  uh uh uh uh uh uh uh uh uh
  
  % Lit -- tle ba -- by
  Klei -- nes Kind -- chen,
  pa rum pum pum pum
  % I am a poor boy too
  Ich bin auch arm wie du,
  pa rum pum pum pum
  % I have no gift to bring
  Nichts kann ich ge -- ben Dir
  pa rum pum pum pum
  % That's fit to give our king
  was an -- ge mes -- sen hier
  pa rum pum pum pum,
  rum pum pum pum,
  rum pum pum pum

  % Shall I play for you
  Soll ich trom -- meln Dir
  pa rum pum pum pum
  % On my drum
  Die -- ses Lied?

  % Ma -- ry nod -- ded
  Ma -- ri -- a lä -- chel -- te
  pa rum pum pum pum
  % The ox and lamb kept time
  Es wipp -- ten Ochs' und Lamm
  pa rum pum pum pum
  % I played my drum for him
  Ich schlug die Trom -- mel an,
  pa rum pum pum pum
  % I played my best for him
  Der Glo -- cken Klang er -- klang,
  pa rum pum pum pum,
  rum pum pum pum,
  rum pum pum pum

  % Then he smiled at me
  Je -- sus lausch -- te mir,
  pa rum pum pum pum
  % Me and my drum 
  % Me and my drum 
  Trom -- meln und Sang,
  Trom -- meln und Sang.


}

altoVoice = \relative g {
  \global
  \dynamicUp
  % Music follows here.
  r1 | r1 | r1 |
  a2.( c4 | f2 g4 a | bf8 a bf4 a2 | g8 f g4 f2) | r4 d( c bf |
  a2. c4 | f2 c4 f | g8 f g4 f1.) | r2. a,4( |
  a c f2 | c4 f g8 f g4 | f1.) | r2 r4 e4( f g | a2. bf4 |
  a8 g f4 e1.) | r4 e( f g a2. f4 | g8 f ef4 d2) |
  f8( e d4 c f | c f e1.) |
  a,2.( c4 | f2 c4 f | g8 f g4 f1.) | r2 |
  f4( a bf8 a bf4 a2 | g8 f g4 f2. d4 c bf) |
  c2_\markup \italic "con libertà ritmica" c4 c | c2 c2 |
  c4 c c2 | c2 c2 c2
  c2 c2 |
  c2 c2 | c2 c2 c2 |
  c2 c2 c2
  c2 c2 | c2 c c2 |
  c2 c2 | c2 c c2 |
  bf2 bf2 | c2 c c2 |
  c2 c | c c |
  c2 c | c c |
  c2 c | r4 a'( |
  bf8 a bf4 a2 | g8 f g4 f2 | f4 d c bf) |
  a2 a4 c4 | f f c4 f | f8 f f4 f2 | r1 | r4 a,4 |
  a c f f | c4 f f8 f f4 f1 r2 | r4 e4 f g | a a a bf4 |
  a8 g f4 e2 | r1 | r4 e f g a a a f4 | g8 f ef4 d2 |
  f8 e d4 c f | c f e2 | r1 |
  a,2. c4 | f f c4 f | f8 f f4 f2 r1 |
  r2 | f4( a bf8 a bf4 a2) |
}

verseAltoVoice = \lyricmode {
  % Lyrics follow here.
  uh uh uh uh uh uh uh uh
  
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _

  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _
  ah
  
  % Ma -- ry nod -- ded
  Ma -- ri -- a lä -- chel -- te,
  pa rum pum pum pum
  % The ox and lamb kept time
  Es wipp -- ten Ochs' und Lamm,
  pa rum pum pum pum
  % I played my drum for him
  Ich schlug die Trom -- mel an,
  pa rum pum pum pum
  % I played my best for him
  Der Glo -- cken Klang er -- klang,
  pa rum pum pum pum,
  rum pum pum pum pum pum pum
  pum

  % Then he smiled at me
  Je -- sus lausch -- te mir,
  pa rum pum pum pum
  uh uh
  
}

tenorVoice = \relative g {
  \global
  \dynamicUp
  % Music follows here.
  r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 |
  f2. g4 | \time 3/2 a2 a4 a | bf8 a bf4 a2 | r1 | r2.
  f4 | f4 g4 | a a a a bf8 a bf4 | a2 r1
  r2 r4 g4 a bf | \time 3/2 c c c d4 | c8 bf a4 g2 | 
  r1 | \time 2/2 r4 g4 a bf | \time 3/2 c c c4 d4 | ef8 d c4 \time 2/2 bf2 |
  d8 c bf4 a2 | c8 bf a4 \time 3/2 g2 r1
  \time 2/2 f2. g4 | \time 3/2 a a a a | bf8 a bf4 a2 r1 | \time 1/2 g8~f g4 
  \time 2/2 f1 | r1 | r1. |
  % Strophe 2
  f2 f4 c | f2 f2 |
  f4 c f2 | f2 f2 f2 |
  f2 f2 | f2 f2 |
  f2 f2 | f2 g2 g2 |
  g2 g2 | 
  g2 g2 | g2 g2 |
  g2 g2 | f f2 |
  f f2 | f f2 |
  f g |
  g2 f | f f |
  f f | f f |
  f g | r4 c( |
  d8 c d4 c2 | bf8 a bf4 \time 3/2 a2. bf4 a g) |
  
  a2 a4 bf4 | c c c4 c | df8 c df4 c2 | r1 | r4 a4 |
  a bf c c | c4 c df8 c df4 c1 r2 | r4 c4 c c | c c c c4 |
  a8 bf c4 c2 | r1 | r4 c c c | c c c c( | c2) c8 bf a4 |
  bf2 g8 a bf4 | c2 c2 | r1 |
  a2. bf4 | c c c4 c | df8 c df4 c2 | r1 |
  r2 | a4( c d8 c d4 c2) |
}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.
  % Come they told me,
  Kommt, Ihr Hir -- ten,
  pa rum pum pum pum
  % A new born king to see,
  Das neu -- e Kind zu sehn
  pa rum pum pum pum

  % Our fin -- est gifts we bring,
  Kommt bringt Ge -- schen -- ke mit!
  pa rum pum pum pum
  % To lay be -- fore the king,
  Die schön -- sten Ga -- ben mit!
  pa rum pum pum pum,
  rum pum pum pum,
  rum pum pum pum
 
  % So to ho -- nor him
  Ihm zu hul -- di -- gen
  pa rum pum pum pum
  % When we come
  Ihn zu ehr'n
}

bassVoice = \relative g, {
  \global
  \dynamicUp
  % Vorspiel
  <f c'>2 <f c'> |
  <f c'>2 <f c'> | <f c'> <f c'> | <f c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> <f c'> | <f c'> <f c'> | 
  % Strophe 1
  <f c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> <f c'> 
  <f c'> <f c'> |
  c' c | c c |
  c c | c c |
  c c |
  <f, c'> <f c'> | <f c'> bf |
  bf2 <f c'> | <f c'> c' |
  c c |
  <f, c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> <f c'> |
  c' <f, c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> <f c'> |
  % Strophe 2
  <f c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> <f c'> |
  <f c'> | <f c'> <f c'> <f c'> |
  c' c | c c |
  c c | c c |
  c c |
  <f, c'> <f c'> | <f c'> bf |
  bf2 <f c'> | <f c'> c' |
  c |
  <f, c'> <f c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> | c' |
  <f, c'> <f c'> | <f c'> |
  <f c'> <f c'> | <f c'> <f c'> |
  % Strophe 3
  <f c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> <f c'> <f c'>
  | c' c | c
  c c | c c c | c c |
  <f, c'> <f c'>  <f c'> | bf bf |
  <f c'> | <f c'> c' |
  c c |
  <f, c'> <f c'> | <f c'> <f c'> |
  <f c'> <f c'> | <f c'> <f c'> |
  c' <f, c'> | <f c'> <f c'> |
}



verseBassVoice = \lyricmode {
  % Lyrics follow here.
  Rum, rum
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

\score {
  \new Staff = "Soprano" \sopranoVoicePart
  \layout {}
  \midi { \tempo 2=60 }
}

\score {
  \new Staff = "Alto" \altoVoicePart
  \layout {}
  \midi { \tempo 2=60 }
}

\score {
  \new Staff = "Tenor" \tenorVoicePart
  \layout {}
  \midi { \tempo 2=60 }
}

\score {
  \new Staff = "Bass" \bassVoicePart
  \layout {}
  \midi { \tempo 2=60 }
}
