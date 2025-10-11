\version "2.24.3"

\header {
  title = "Verweil bei mir (Abide with me)"
}

global = {
  \key es \major
  \time 4/4
  \tempo "Adagio"
}

soprano = \relative c'' {
  \global
  g2 g4 f | es2 bes' | c4 bes bes as | g1 |
  g2 as4 bes | c2 bes | as4 f g a | bes1 |
  g2 g4 f | es2 bes' | bes4 as as g | f1 |
  f2 g4 as | g f es as | g2 f | es1 |
}

alto = \relative c' {
  \global
  es2 d4 d | es2 es | es4 d es f | es1 | \break
  es2 es4 es | es2 es | es4 f es es | d1 | \break
  es2 es4 d | es2 es | es4 es e e | c1 | \break
  d2 es4 d | es d es f | es2 d | bes1 |
}

tenor = \relative c' {
  \global
  bes2 bes4 as | g2 es | es4 bes' bes bes | bes1 |
  bes2 as4 g | as2 g | c4 bes bes f | f1 |
  g4 as bes as |
  g2 es'4( \tweak Accidental.parenthesized ##t des ) |
  c c c bes | as1 |
  bes2 bes4 bes | bes as g c | bes2 as | g1 |
}

bass = \relative c {
  \global
  es2 bes4 \tweak Accidental.parenthesized ##t b | c2 g | as4 bes c d | es1 |
  es4( d) c bes | as2 es' | f4 d es c | bes1 |
  es2 bes4 bes | c2 g | as4. bes8 c4 c | f1 |
  as2 g4 f | es bes c as | bes2 bes |
  es1 |
}

verseOne = \lyricmode {
  \set stanza = "1."
  Ver -- weil bei mir, der Tag ver -- geht mit eil',
  bricht an die Nacht, Oh Herr, bei mir ver -- weil,
  Schwin -- det die Kraft, und je -- de Hil -- fe zagt,
  Hel -- fer der Hilf -- lo -- sen, ver -- weil bei mir.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Wel -- len um Well', ge -- trie -- ben fort und fort,
  Ja -- gen wir nach, dem Glück, der Zeit, dem Ort,
  Doch ir -- gend -- wann ver -- geht al -- les im hier,
  Du der du e -- wig weilst, ver -- weil bei mir.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Reich mir die Hand, nimm mich an Dei -- nen Arm,
  Führ mich zum Kreuz, und mei -- ner Sünd' er -- barm,
  Schließ mich ins Herz und schenk mir dei -- ne Ruh,
  Im Tod, im Le -- ben, Herr, ver -- weil bei mir.
}


rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 80 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "Piano"
        instrumentName = \markup \center-column { "Soprano" "Alto" }
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseOne
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseThree
      \new Staff \with {
        midiInstrument = "Piano"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=80
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "Flute" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "Clarinet" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "Cello" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "Cello" \verseOne
    \midi { }
  }
}