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
  r4 g g4 f | es2 bes' | c4. bes8 bes4 as | g1 |
  g2 as4 bes | c2 bes | as4. f8 g4 a | bes1 |
  g2 g4 f | es2 bes' | bes4. as8 as4 g | f1 |
  r4 f4 g4-\tweak parenthesized ##t \fermata as |
  g4. f8 es4 as | g2 f | es1 |
}

alto = \relative c' {
  \global
  r4 d d4 d | d4( c) f( es) | g4. f8 es4 f | bes,4( f'2 es4) | \break
  bes2 es4 es | g4( f) f( es) | es4. f8 es4 es | d1 | \break
  es2 f4 d | d4( c) f2 | es4. es8 e4 e | c1 | \break
  r4 d d4 d | es4. d8 es4 f | f4( es) es( d) | bes1 |
}

tenor = \relative c' {
  \global
  r4 bes bes4 as | g2 bes | es4. d8 d4 bes | bes1 |
  g2 bes4 bes | es2 d | c4. bes8 bes4 f | f2( g4 as) |
  g4. as8 bes4 as | g2 es'4( des) | c4. c8 c4 bes | as1 |
  r4 bes bes4 bes | bes4. as8 g4 c | bes2 bes4( as) | g1 |
}

bass = \relative c {
  \global
  r4 es bes4 b | c2 g | as4. bes8 c4 d | es1 |
  es4.( d8) c4 bes | as2 g | f4. bes8 es4 c | bes1 |
  es2 d4 b | c2 g | as4. bes8 c4 c | f4( g2 f4) |
  r4 as g4 f | es4. b8 c4 as | bes2 bes |
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
  Du, der du e -- wig weilst, ver -- weil bei mir.
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

