\version "2.24.3"

\header {
  title = "Haus am Waldesrand"
  composer = "Gunnar Gidion"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key g \major
  \time 4/4
}

verseOne = \lyricmode {
  Es steht ein Haus am Wal -- des -- rand,
  und wenn es schneit wird Holz ver -- brand,
  mein Weg im Win -- ter ist so hart,
  ich hoff' das je -- mand dort, noch auf, mich wa -- rtet.
}

verseTwo = \lyricmode {
  Ha -- llo ich kom -- me von so weit,
  und ich weis es ist spä -- te Zeit,
  habt kei -- ne Angst ich tu' euch nichts,
  er -- schreckt nicht we -- gen mei -- nes An -- ge -- sichts.
}

verseThree = \lyricmode {
  Nun hört ihr Leu -- te nah und fern,
  mögt ihr das Wan -- dern auch so gern,
  es wird zu ei -- ner schwer -- en Last,
  wenn du die Men -- schen, die du liebst ver -- las -- sen musst.
}

verseFour = \lyricmode {
  Es steht ein Haus am Wal -- des -- rand,
  hier werd' ab heut' auch ich er -- kannt,
  es tut doch not sich zu ver -- steh'n,
  denn nie -- mand weis wo -- hin und wann wir ge -- hen.
}

melody = {
  r4
  g a fis | g e d4. c8 | b4
  g'4 a fis | g e d4. c8 | b8 r
  g'4 a b8( c) | b4 g c b |
  \time 6/4
  a r8 g g4 fis e d 
  \time 4/4
  c4. e8 d4. c8 
  | b a g4 r2
}

verseAltoVoice = \lyricmode {
  da...
}

% SOPRANO

sopranoVoiceIntro = \relative c'' {
  g2 a | e d |
  g2 a | e fis |
  g2 a | b c |
  \time 6/4 d e4. d8 c4 b | \time 4/4 g2 fis4. g8 | g8 fis g2. |
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  \sopranoVoiceIntro
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Sopran"
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

% SOPRANO - VERSE TWO

sopranoVoiceVerseTwo = \relative c'' {
  \global
  \dynamicUp
  g4 g g fis | g g a a |
  b4 g g fis | g g a a |
  b4 b a b | b b a b |
  a8 b c d e4 e b g |
  e2 fis | g2 r |
}

sopranoVoiceVerseTwoPart = \new Staff \with {
  instrumentName = "Sopran"
  midiInstrument = "choir aahs"
} { \sopranoVoiceVerseTwo }
\addlyrics { \verseAltoVoice }

% SOPRANO - VERSE TWO

sopranoVoiceVerseThree = \relative c'' {
  \global
  \dynamicUp
  r4
  g4 a b8~c | b4 a8~g g4. fis8 | g4
  g4 a b8~c | b4 a8~g g4. fis8 |
  g4 g g g | g d g g | 
  \time 6/4
  fis r8 fis g4 a g g g4. g8 fis4. g8 g fis g4 r2 |
  
}

% SOPRANO - VERSE THREE

sopranoVoiceVerseThreePart = \new Staff \with {
  instrumentName = "Sopran"
  midiInstrument = "choir aahs"
} { \sopranoVoiceVerseThree }
\addlyrics { \verseThree }

% SOPRANO - VERSE FOUR

sopranoVoiceVerseFourPart = \new Staff \with {
  instrumentName = "Sopran"
  midiInstrument = "choir aahs"
} { \sopranoVoiceVerseThree }
\addlyrics { \verseFour }

% ALTO

altoVoiceIntro = \relative c' {
  \global
  \dynamicUp
  r4 b2 c4 | r b2 a4( |
  a) b2 c4 | r b2 a4( |
  a) b2 c4 | r d2 e4 |
  \time 6/4 fis2 g4. fis8 e4 d | \time 4/4 c2 d | d1 |
}

altoVoiceIntroPart = \new Staff \with {
  instrumentName = "Alt"
  midiInstrument = "choir aahs"
} { \altoVoiceIntro }
\addlyrics { \verseAltoVoice }

% ALTO - VERSE TWO

altoVoiceVerseTwo = \relative c' {
  \global
  \dynamicUp
  d4 d d d | e e d c |
  d4 d d d | e e d c |
  d4 g g g | g g g g |
  fis8 g a fis g4 g e d |
  d2 e2 | d2 r |
}

altoVoiceVerseTwoPart = \new Staff \with {
  instrumentName = "Alt"
  midiInstrument = "choir aahs"
} { \altoVoiceVerseTwo }
\addlyrics { \verseAltoVoice }

% ALTO - VERSE THREE

altoVoiceVerseThree = \relative c'' {
  \global
  \dynamicUp
  \melody
}

altoVoiceVerseThreePart = \new Staff \with {
  instrumentName = "Alt"
  midiInstrument = "choir aahs"
} { \altoVoiceVerseThree }
\addlyrics { \verseThree }

% ALTO - VERSE FOUR

altoVoiceVerseFour = \relative c'' {
  \global
  \dynamicUp
  r4 g g g8~fis | e~d e~fis g~a b4 | b
  g g g8~fis | e~d e~fis g~fis e~fis | g8 r
  g4 d' d | d b a g | \time 6/4 d4 r8 e g4 fis e d |
  e r8 d d4. d8 | d2 r
  
  
}

altoVoiceVerseFourPart = \new Staff \with {
  instrumentName = "Alt"
  midiInstrument = "choir aahs"
} { \altoVoiceVerseFour }
\addlyrics { \verseFour }

% TENOR

% TENOR - INTRO

tenorVoiceIntro = \relative c' {
  \global
  \dynamicUp
  r8 d,4. r8 e4. | r8 g4. r8 fis4. |
  r8 d4. r8 e4. | r8 g4. r8 fis4. |
  r8 d4. r8 e4. | r8 g4. r8 g4. |
  \time 6/4 r8 a b c b2 r8 b8 a g | \time 4/4 g2 a4. b8 | b a b2. |
}

tenorVoiceIntroPart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoiceIntro }

% TENOR - VERSE TWO

tenorVoiceVerseTwo = \relative c' {
  \global
  \dynamicUp
  r4
  b c a | b g g4. g8 | g8 r
  b4 c a | b g g4. fis8 | g8 r
  b4 c d8~e |
  d4 b e d | d4 r8
  d8 d4 b b4 | g4 g g a4. a8 | b2 r
}

tenorVoiceVerseTwoPart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoiceVerseTwo }
\addlyrics { \verseTwo }

% TENOR - VERSE THREE

tenorVoiceVerseThreePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoiceVerseThree }
\addlyrics { \verseThree }

tenorVoiceVerseThree = \relative c' {
  \global
  \dynamicUp
  r4
  b c a | b g g4. g8 | g8 r
  b4 c a | b g g4. fis8 | g8 r
  b4 c d8~e |
  d4 b e d | d4 r8
  c8 b4 b b4 g4 | r8 g8~fis g a4. a8 | b8 b b4 r2
}

tenorVoiceVerseThreePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoiceVerseThree }
\addlyrics { \verseThree }

% TENOR - VERSE FOUR

tenorVoiceVerseFour = \relative c' {
  \global
  \dynamicUp
  r4
  b c a | b g g4. g8 | g4
  b4 c a | b g g4. fis8 | g8 r
  b4 c d8~e |
  d4 b e d | d4 r8
  c8 b4 b b4 g4 | r8 g8~fis g a4. a8 | b8 b b4 r2
}

tenorVoiceVerseFourPart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoiceVerseFour }
\addlyrics { \verseFour }

% BASS

% BASS - INTRO

bassVoiceIntro = \relative c{
  \global
  \dynamicUp
  g2 a | e' d |
  g, a | e' d |
  g, a | b c |
  \time 6/4 d2 e1 | \time 4/4 r8 c d e d2 | g,1 |
}

bassVoiceIntroPart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoiceIntro }

% BASS - VERSE 2

bassVoiceVerseTwoPart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} { \clef bass \melody }
\addlyrics { \verseTwo }

bassVoiceVerseTwo = \relative c' {
  \global
  \dynamicUp
  \melody
}

bassVoiceVerseTwoPart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoiceVerseTwo }
\addlyrics { \verseTwo }

% BASS - VERSE THREE

bassVoiceVerseThree = \relative c {
  \global
  \dynamicUp
  g'2 d | e d |
  g d | c a |
  g a | b c |
  \time 6/4
  d4 r8 d8 e4 e e e |
  \time 4/4
  r8 c~d e d4. a8 |
  g g g4 r2 |
}

verseThreeBass = \lyricmode {
  Nun hört Leut' nah fern mögt Wan -- dern gern zu ei -- ner Last,
  wenn du die Men -- schen, die du liebst ver -- las -- sen musst.
}

bassVoiceVerseThreePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoiceVerseThree }
\addlyrics { \verseThreeBass }

% BASS - VERSE FOUR

bassVoiceVerseFour = \relative c {
  \global
  \dynamicUp
  r4
  g a fis | g b d4. c8 | b4
  g4 a fis | g b d4. c8 | b8 r
  g4 a a | b4 g c b |
  \time 6/4
  d r8 d e4 d c b 
  \time 4/4
  r8 c~d e8 d4. c8 |
  b a g4 r2
}

bassVoiceVerseFourPart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoiceVerseFour }
\addlyrics { \verseFour }

% SCORES

% SCORES - INTRO

\score {
  <<
    \sopranoVoicePart
    \altoVoiceIntroPart
    \tenorVoiceIntroPart
    \bassVoiceIntroPart
  >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}

% SCORES - VERSE ONE

\score {
  <<
    \new Staff \with {
      instrumentName = "Solo"
      midiInstrument = "choir aahs"
    } <<
      \new Voice = "solo" {
        \global
        \clef treble
        \relative c'' {
          \melody
        }
      }
    >>
    \new Lyrics \with {
    } \lyricsto "solo" {
      \verseOne
    }
    
    \altoVoiceIntroPart
    \tenorVoiceIntroPart
    \bassVoiceIntroPart
  >>
  \layout {
    indent = 0
    \context {
      \Staff
      \remove "Instrument_name_engraver"
    }
  }
  \midi {
    \tempo 4=100
  }
}

% SCORES - VERSE TWO

\score {
  <<
    \sopranoVoiceVerseTwoPart
    \altoVoiceVerseTwoPart
    \tenorVoiceVerseTwoPart
    \bassVoiceVerseTwoPart
  >>
  \layout {
    indent = 0
    \context {
      \Staff
      \remove "Instrument_name_engraver"
    }
  }
  \midi {
    \tempo 4=100
  }
}

% SCORES - VERSE THREE

\score {
  <<
    \sopranoVoiceVerseThreePart
    \altoVoiceVerseThreePart
    \tenorVoiceVerseThreePart
    \bassVoiceVerseThreePart
  >>
  \layout {
    indent = 0
    \context {
      \Staff
      \remove "Instrument_name_engraver"
    }
  }
  \midi {
    \tempo 4=100
  }
}

% SCORES - VERSE FOUR

\score {
  <<
    \sopranoVoiceVerseFourPart
    \altoVoiceVerseFourPart
    \tenorVoiceVerseFourPart
    \bassVoiceVerseFourPart
  >>
  \layout {
    indent = 0
    \context {
      \Staff
      \remove "Instrument_name_engraver"
    }
  }
  \midi {
    \tempo 4=100
  }
}