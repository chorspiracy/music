\version "2.24.3"

\header {
  title = "Verweil mit mir"
}

global = {
  \key es \major
  \time 4/4
  \tempo "Adagio"
}

soprano = \relative c'' {
  \global
  % Music follows here.
  g2 g4 f | es2 bes' | c4 bes bes as | g1 |
  g2 as4 bes | c2 bes | as4 f g a | bes1 |
  g2 g4 f | es2 bes' | bes4 as as g | f1 |
  f2 g4 as | g f es as | g2 f | es1 |
}

alto = \relative c' {
  \global
  % Music follows here.
  
}

tenor = \relative c' {
  \global
  % Music follows here.
  
}

bass = \relative c {
  \global
  % Music follows here.
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Ver -- weil mit mir, schon dimmt des Ta -- ges Schein,
  bricht tie -- fer Nacht, Oh Herr, mit mir ver -- weil,
  En -- det das Tun, und je -- de Hil -- fe zagt,
  Hel -- fer der Hilf -- lo -- sen, ver -- weil mit mir.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Einst strah -- lend schön,
  % be -- ginnt der letz -- te Verse,
  be -- ginnt der nächs -- te Verse,
  Sinkt bald hin -- weg, weicht sanft mit stil -- lem Herz,
  Wel -- len um Well',
  mag en -- den Wol -- len nie,
  % will en -- den erst mit Dir,
  Wart, Herr, am letz -- ten Tag, ver -- weil mit mir.
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Reich mir die Hand, nimm mich in Dei -- nen Arm,
  Führ mich zum Kreuz, und mei -- ner Sünd' er -- barm,
  Zeig mir den Weg, kommt, winkt mir noch mal zu,
  % bis wir uns wie -- der -- sehn, ver -- weil mit mir.
  führ mich in Dei -- ne Ruh, ver -- weil mit mir.
  % Ver -- weil mit mir führ mich in Dei -- ne Ruh.
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 60 4)
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
  >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verseOne
    \midi { }
  }
}

