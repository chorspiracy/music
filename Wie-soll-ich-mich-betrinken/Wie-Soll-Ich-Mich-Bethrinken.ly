\version "2.24.3"

\header {
  title = "Herzlich thut mich betrinken
"
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=100
}

soprano = \relative c'' {
  \global
  \partial 4
  \repeat volta 2 {
    e,4 |
    a g f e |
    d2 e4 b' |
    c c b8( c16 d) b4 |
    a2.
  }
  %\alternative {{}{}}
  \partial 4 c4 |
  b8( a) g4 a b |
  c2 c4 g |
  a g f8( e) f4 | e2.
  c'4 | b8( c) d4 c b | a2 b4 e, |
  f e d g8( f) | \partial 2. e2.
}

alto = \relative c' {
  \global
  e8~d | c~d d~e e~d d~c | c4 b8( a b4) e | e a a gis | e2.
  a8( g) | f4 e8( d) c4 f | f( e8( d) e4 e | f bes,8( a) a( g) a( d) | cis2. d4 |
  d g g8( fis) g4 | g4 fis g g | c,8( d) c4 f, d' | d( c b)
}

tenor = \relative c' {
  \global
  \partial 4
  gis4 | a b c8( d) g,4 | a8( gis) a4 gis gis |
  a8~b c4 f e8 d | c2.
  e4 | d8 c b4 a8 g f g | a4 g8 f g4 c | c8 d e4 d8 cis d gis, | a2. 
  a4 | g8 a b4 c8 d e4 | e( d) d c | c8 b b a a4 g8 a | b4( a gis)
}

bass = \relative c {
  \global
  \partial 4
  e4 | f g a8( b) c4 | f,2 e4 e |
  a8 g f e d b e4 | a,2.
  a'4 | d, e f8 e d4 | a8 b c4 c c | f8 e d cis d4 d | a2. 
  fis4 g g'8 fis e4. d8 |
  c8 a d4 g, c8 b | a b c4 c8 b b a | gis4( a e')
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  Wie soll ich mich be -- trin -- ken und welch Ge -- tränk schmeckt mir?
  Oh Bar -- mann, Bar -- mann za -- pfe mir nur die gol -- dne Kron,
  da -- mit was mich er -- gö -- tze sei mei -- ner Ar -- beit lohn.
}

verseOneRepeat = \lyricmode {
  Oh al -- ler Welt Ver -- lang -- en Du mei -- ner See -- len Bier,
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Wie soll ich dich be -- zah -- len ich hab kein Geld da -- bei
  Oh O -- ber, O -- ber, schrei -- be die Schand ins Schuld -- buch ein
  da -- mit von mir mehr blei -- be als schlim -- mer Kopf -- schmerz -- pein
}

verseTwoRepeat = \lyricmode {
  das macht mir kei -- ne Qua -- len, es ist mir ei -- ner -- lei
}

verseThree = \lyricmode {
  \set stanza = "3."
  Wie soll ich mich er -- he -- ben, und wer fährt mich nach haus
  wie bin ich so er -- blei -- chet wo ist mein Au -- gen -- licht,
  Der Schwin -- del mich er -- grei -- fet, Herr Gott, was bin ich dicht.
}

verseThreeRepeat = \lyricmode {
  Ich muss mich ü -- ber -- ge -- ben, der Wäch -- ter schmeißt mich raus
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
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOneRepeat

    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwoRepeat
    
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThreeRepeat
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { T B }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi { }
}
