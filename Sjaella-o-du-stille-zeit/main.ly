\version "2.22.1"

\header {
  title = "O Du Stille Zeit"
}

global = {
  \time 4/4
  \key bes \major
  \tempo 4=60
}

soprano = \relative c' {
  \global
  f4 bes bes c | d1 |
  bes4( c d) f | es d c2 |
  \repeat volta 2 {
    d4 es8 f g4 f | c2( bes) |
    bes4 c8 d es4 d | bes1 |
  }
  \alternative {
    { f'2( d4 bes | c) c bes2 }
    { f'2( d4 bes | c) c bes2( | bes1) }
  }
}

alto = \relative c' {
  \global
  f4 bes bes bes8( a) | a1 |
  f4( g8 a bes4) d | d bes bes4( a) |
  \repeat volta 2 {
    bes4 bes8 bes es4 es | d1 |
    g,4 g8 bes bes4 f | g1 |
  }
  \alternative {
    { d'2( bes4 a | bes) bes8( a) f2 }
    { d'2( bes4 a | bes) a fis4( eis8 dis | d1) }
  }
}

tenor = \relative c' {
  \global
  d4 d8( es) c( d) es4 | d1 |
  f8( es es4 f) g | g f8( g) f2 |
  \repeat volta 2 {
    f4 g8 a bes4 a4 | a1 |
    g4 g8 f f4 f | es1 |
  }
  \alternative {
    { a2( f4 d | es) es d2 }
    { a'2( f4 d | es) es cis2 | c1 }
  }
}

bass = \relative c' {
  \global
  bes8 a g4 f f | bes1 |
  g4( f bes) b | c es f2 |
  \repeat volta 2 {
    f4 g8 f es( c) f4 | fis2( g) |
    g8( f) es d c( a) bes4 | <<bes1 c1>> |
  }
  \alternative {
    { bes4( a4 g f | f) f bes2 }
    { bes4( a4 g f | f) f fis2( | bes1) }
  }
}

verseOne = \lyricmode {
  \set stanza = "1."
  Oh du stil -- le Zeit,
  kommst eh wie's ge -- dacht,
  ü -- ber die Ber -- ge weit,
  ü -- ber die Ber -- ge weit
  Gu -- te Nacht.
  Gu -- te Nacht.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  In der Ein -- sam -- keit,
  Rauscht es nun so sacht,
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { T B }
    } <<
      %\clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi { }
}
