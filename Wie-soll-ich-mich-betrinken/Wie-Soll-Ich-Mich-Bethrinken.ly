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
  c4 | b8( c) d4 c b | a2 b4 e |
  f e d g8( f) | \partial 2. e2.
}

alto = \relative c' {
  \global
  c4
  
}

tenor = \relative c' {
  \global
  c4
  
}

bass = \relative c {
  \global
  c4
  
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
