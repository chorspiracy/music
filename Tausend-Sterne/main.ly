\version "2.24.3"

\header {
  title = "Tausend Sterne"
  composer = "Siegfried Köhler"
}

global = {
  \key c \major
  \time 4/4
}

soprano = \relative c' {
  \global
  % Music follows here.
  e4 e g g |
  a a e4. e8 |
  g4 g c c |
  f8( e) f4 d4. d8 |
  e4 d8( e) c4 c |
  d c8( d) b4 e, |
  a a c c |
  d8( c) b4 c2 |
}

alto = \relative c' {
  \global
  % Music follows here.
  c4 c d b |
  c d8( c) b4 c |
  d8( e) f4 e8( f) g4 |
  a a a4( g8) g |
  g4 b a a8( g) |
  f4 f e c |
  c d g e |
  a d, e2 |
}

tenor = \relative c' {
  \global
  % Music follows here.
  c4 c b g |
  a b8( a) gis4 a |
  b8( c) d4 d c |
  c c c4( b8) b |
  b8( c) d4 c8( d) e4 |
  d c b b |
  a4 b c c |
  c4 b g2 |
}

bass = \relative c {
  \global
  % Music follows here.
  c4 c b8( c) d( g) |
  f4 f e4. e8 |
  g4 g, c e |
  f e8( d) g4. g8 |
  c,4 e f e |
  d d gis a8( g) |
  f4 f e8( g) a( g) |
  f4 g c,2 |
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Tau -- send Ster -- ne sind ein Dom
  in Stil -- ler, wel -- ten wei -- ter Nacht.
  Ein Licht blüht auf im Ker -- zen -- schein,
  das uns um -- fängt und glück -- lich macht.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  All dies Schwei -- gen macht uns froh,
  ein Leuch -- ten durch die Her -- zen geht.
  Und sil -- bern schwingt der ho -- he Dom,
  vom Hauch der Weih -- nacht still um -- weht.
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Al -- les Dun -- kel sinkt hin -- weg,
  wir ha -- ben un -- ser Licht ent -- facht.
  Es leuch -- tet uns zum neu -- en Jahr in
  tie -- fer, stern -- ver -- klär -- ter Nacht.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Soprano" "Alto" }
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bass" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
