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

lyricsVerseOne = \lyricmode {
  Es steht ein Haus am Wal -- des -- rand,
  und wenn es schneit wird Holz ver -- brand,
  mein Weg im Win -- ter ist so hart,
  ich hoff' das je -- mand dort, noch auf, mich wa -- rtet.
}

lyricsVerseTwo = \lyricmode {
  Ha -- llo ich kom -- me von so weit,
  und ich weis es ist spä -- te Zeit,
  habt kei -- ne Angst ich tu' euch nichts,
  er -- schreckt nicht we -- gen mei -- nes An -- ge -- si -- chts.
}

lyricsVerseThree = \lyricmode {
  Nun hört ihr Leu -- te nah und fern,
  mögt ihr das Wan -- dern auch so gern,
  es wird zu ei -- ner schwer -- en Last,
  wenn du die Men -- schen, die du liebst ver -- las -- sen musst.
}

lyricsVerseFourPartTwo = \lyricmode {
  es tut doch not sich zu ver -- steh'n,
  denn nie -- mand weis wo -- hin und wann wir ge -- hen.
}

lyricsVerseFour = \lyricmode {
  Es steht ein Haus am Wal -- des -- rand,
  hier werd' ab heut' auch ich er -- kannt,
  \lyricsVerseFourPartTwo
}

melody = {
  r4 g a fis | g e d4. c8 |
  b4 g'4 a fis |
  g e d4. c8 |
  b8 r g'4 a b8( c) |
  b4 g c b |
  \time 6/4
  a r8 g g4 fis e d 
  \time 4/4
  c4. e8 d4. c8 |
}

% SOPRANO

% SOPRANO - INTRO

sopranoIntroPartOne = \relative c'' {
  g2 a | e d |
  g2 a | e fis |
}

sopranoLyricsIntroPartOne = \lyricmode {
  du du du du du du du du
}

sopranoIntro = \relative c'' {
  \sopranoIntroPartOne
  g2 a | b c |
  \time 6/4 d e4. d8 c4 b | \time 4/4 g2 fis4. g8 | g8~fis~g2.
}

sopranoLyricsIntro = \lyricmode {
  \sopranoLyricsIntroPartOne
  du du du du du du du du du du du du du
}

sopranoVerseTwo = \relative c'' {
  g4 g g fis | g g a a |
  b4 g g fis | g g a a |
  b4 b a b | b b a b |
  a8 b c d e4 e b g |
  e2 fis | g2 r |
}

sopranoVerseThree = \relative c'' {
  r4 g4 a b8~c |
  b4 a8~g g4. fis8 |
  g4 g4 a b8~c |
  b4 a8~g g4. fis8 |
  g4 g g g | g d g g | 
  \time 6/4
  fis r8 fis g4 a g g g4. g8 fis4. g8 g fis g4 r2 |
}

sopranoVerseFourPartTwo = \relative c'' {
  g4 g g | g d g g | 
  \time 6/4
  fis r8 fis g4 a g g |
  g4. g8 fis4. g8 |
  g~fis g4 r2 |
}

sopranoVerseFour = \relative c'' {
  g2 a4 b8~c | b4 a8~g g4. fis8 | g4
  g4 a b8~c | b4 a8~g g4. fis8 |
  g4 
  \sopranoVerseFourPartTwo
}

sopranoVoice = {
  \sopranoIntro \break
  \relative c'' {
    \melody
    b8( a) g4 r2
  } \break
  \sopranoVerseTwo \break
  \sopranoVerseThree \break
  \sopranoVerseFour
  \sopranoIntroPartOne
  r4
  \sopranoVerseFourPartTwo
}

sopranoLyricsVerseTwo = \lyricmode {
  \sopranoLyricsIntro
  da da |
  da da da da da da da da da |
  da da |
  da |
}

sopranoLyrics = \lyricmode {
  \sopranoLyricsIntro
  \lyricsVerseOne
  \sopranoLyricsVerseTwo
  \lyricsVerseThree
  \lyricsVerseFour
  \sopranoLyricsIntroPartOne
  \lyricsVerseFourPartTwo
}

% ALTO

altoIntroPartOne = \relative c' {
  r4 b2 c4 | r b r a4( |
  a) b2 c4 | r b4 r a4( |
}

altoLyricsIntroPartOne = \lyricmode {
  du du du du du du du du
}

altoIntro = \relative c' {
  \altoIntroPartOne
  a) b2 c4 | r d2 e4 |
  \time 6/4 fis2 g4. fis8 e4 d |
  \time 4/4 c2 d | d1 |
}

altoLyricsIntro = \lyricmode {
  \sopranoLyricsIntroPartOne
  du du du du du du du du du du du du
}

altoVerseTwo = \relative c' {
  d4 d d d | e e d c |
  d4 d d d | e e d c |
  d4 g g g | g g g g |
  fis8 g a fis g4 g e d |
  d2 e2 | d2 r |
}

% ALTO - VERSE THREE

altoVerseThree = \relative c'' {
  \melody
  b8 a g4 r2
}

% ALTO - VERSE FOUR

altoVerseFourPartTwo = \relative c'' {
  g4 d' d |
  d b a g | \time 6/4 d4 r8 e g4 fis e d |
  e r8 d d4. d8 | d4 d r2
}

altoVerseFour = \relative c'' {
  g2 g4 g8~fis |
  e~d e~fis g~a b4 |
  b g g g8~fis |
  e~d e~fis g~fis e~fis |
  g8 r 
  \altoVerseFourPartTwo
}

altoOutro = {
  \altoIntroPartOne
  r4
  \altoVerseFourPartTwo
}

altoVoice = {
  \altoIntro
  \altoIntro
  \altoVerseTwo
  \altoVerseThree
  \altoVerseFour
  \altoOutro
}

altoLyricsVerseTwo = \lyricmode {
  \sopranoLyricsVerseTwo
}

altoLyrics = \lyricmode {
  \altoLyricsIntro
  \altoLyricsIntro
  \sopranoLyricsVerseTwo
  \lyricsVerseThree
  \lyricsVerseFour
  \altoLyricsIntroPartOne
  \lyricsVerseFourPartTwo
}

% TENOR

% TENOR - INTRO

tenorIntroPartOne = {
  r8 d,4. r8 e4. | r8 g4. r8 fis4. |
  r8 d4. r8 e4. | r8 g4. r8 fis4. |
}

tenorLyricsIntroPartOne = \lyricmode {
  du du du du du du du du
}

tenorLyricsIntro = \lyricmode {
  \tenorLyricsIntroPartOne
  du du du du du du du du du du du du du du du
}

tenorIntro = \relative c' {
  \tenorIntroPartOne
  r8 d4. r8 e4. | r8 g4. r8 g4. |
  \time 6/4 r8 a b c b2 r8 b8 a g | \time 4/4 g2 a4. b8 | b~a~b2. |
}

% TENOR - VERSE TWO

tenorVerseTwo = \relative c' {
  r4
  b c a | b g g4. g8 | g8 r
  b4 c a | b g g4. fis8 | g8 r
  b4 c d8~e |
  d4 b e d | d4 r8
  d8 d4 b b4 | g4 g g a4. a8 | b4 b4 r2
}

% TENOR - VERSE THREE

tenorVerseThree = \relative c' {
  r4
  b c a | b g g4. g8 | g8 r
  b4 c a | b g g4. fis8 | g8 r
  b4 c d8~e |
  d4 b e d | d4 r8
  c8 b4 b b4 g4 | r8 g8~fis g a4. a8 | b8 b b4 r2
}

% TENOR - VERSE FOUR

tenorVerseFourPartTwo = \relative c' {
  b4 c4 d8~e |
  d4 b e d | d4 r8
  c8 b4 b b4 g4 | r8 g8~fis g a4. a8 | b8~b b4 r2
}

tenorVerseFour = \relative c' {
  r4
  b c a | b g g4. g8 | g4
  b4 c a | b g g4. fis8 | g8 r

  \tenorVerseFourPartTwo
}

tenorOutro = \relative c' {
  \tenorIntroPartOne
  r4
  \tenorVerseFourPartTwo
}

tenorVoice = {
  \tenorIntro
  \tenorIntro
  \tenorVerseTwo
  \tenorVerseThree
  \tenorVerseFour
  \tenorOutro
}

tenorLyrics = \lyricmode {
  \tenorLyricsIntro
  \tenorLyricsIntro
  \lyricsVerseTwo
  \lyricsVerseThree
  \lyricsVerseFour
  \tenorLyricsIntroPartOne
  \lyricsVerseFourPartTwo
}

% BASS

bassIntroPartOne = {
  g2 a | e' d |
  g, a | e' d |
}

bassIntro = \relative c {
  \bassIntroPartOne
  g, a | b c |
  \time 6/4 d2 e1 | \time 4/4 r8 c d e d2 | g,1 |
}

bassLyricsIntroPartOne = \lyricmode {
  du du du du du du du du
}

bassLyricsIntro = \lyricmode {
  \bassLyricsIntroPartOne
  du du du du du du du du du du du
}

bassVerseTwo = \relative c' {
  \melody
   b8( a) g4 r2 |
}

bassVerseThree = \relative c {
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

bassLyricsVerseThree = \lyricmode {
  Nun hört Leut' nah fern mögt Wan -- dern gern zu ei -- ner Last,
  wenn du die Men -- schen, die du liebst ver -- las -- sen musst.
}

bassVerseFourPartTwo = {
  g4 a a |
  b4 g c b |
  \time 6/4
  d r8 d e4 d c b |
  \time 4/4
  r8 c~d e8 d4. c8 |
  b~a g4 r2
}

bassVerseFour = \relative c {
  \global
  \dynamicUp
  g2 a4 fis |
  g4 b d4. c8 |
  b4 g4 a fis |
  g4 b d4. c8 |
  b8 r
  \bassVerseFourPartTwo
}

bassOutro = \relative c {
  \bassIntroPartOne
  \relative c {
    r4
    \bassVerseFourPartTwo
  }
}

bassLyricsOutro = \lyricmode {
  \bassLyricsIntroPartOne
  \lyricsVerseFourPartTwo
}

bassVoice = {
  \bassIntro
  \bassIntro
  \bassVerseTwo
  \bassVerseThree
  \bassVerseFour
  \bassOutro
}

bassLyrics = \lyricmode {
  \bassLyricsIntro
  \bassLyricsIntro
  \lyricsVerseTwo
  \bassLyricsVerseThree
  \lyricsVerseFour
  \bassLyricsOutro
}

% SCORE

soprano = \new Staff \with {
  instrumentName = "Sopran"
  midiInstrument = "choir aahs"
} {
  \global
  \dynamicUp
  \sopranoVoice
}
\addlyrics {
  \sopranoLyrics
}

alto = \new Staff \with {
  instrumentName = "Alt"
  midiInstrument = "choir aahs"
} {
  \global
  \dynamicUp
  \altoVoice
}
\addlyrics {
  \altoLyrics
}

tenor = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} {
  \global
  \dynamicUp
  \clef "treble_8"
  \tenorVoice
}
\addlyrics {
  \tenorLyrics
}

bass = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} {
  \global
  \dynamicUp
  \clef bass
  \bassVoice
}
\addlyrics {
  \bassLyrics
}

\score {
  <<
    \soprano
    \alto
    \tenor
    \bass
  >>
  \layout { }
  \midi {
    \tempo 4=80
  }
}
