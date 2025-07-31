\version "2.24.3"

\header {
  title = "Theme from Star Wars"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \time 4/4
  \partial 4
}

trombone = \relative c' {
  \global
  \repeat volta 2 {
    \tuplet 3/2 { c8 c c } | f2 c'2 | \tuplet 3/2 { bes8 a g } f'2 c4 |
    \tuplet 3/2 { bes8 a g } f'2 c4 | \tuplet 3/2 { bes8 a bes } g2 |
  }
  c,4 | d2 bes'8 a g f | \tuplet 3/2 { f8 g a } \tuplet 3/2 { g4 d8 } e4
  c4 | d2 bes'8 a g f | \tuplet 3/2 { c'4 g8 } g4. r8
  c,4 | d2 bes'8 a g f | \tuplet 3/2 { f8 g a } \tuplet 3/2 { g4 d8 } e4
  \tuplet 3/2 { c'4 c8 } | f8 es des c bes as g f | c'2 r2  
}

right = \relative c' {
  \global
  \tuplet 3/2 { c8 c c } | <f a c>2 <a c f>
}

left = \relative c' {
  \global
  % Music follows here.
  \tuplet 3/2 { c,8 c c } | f4 e d c | bes a g f |
  bes a g f | es' \tuplet 3/2 { c8~c c } \tuplet 3/2 { c c c }
  r4 | r8 c8 <c, c'>4 r8 c'8 <c, c'>4 | r8 c'8 <c, c'>4 r8 c'8 <c, c'>4  r8 c'8 <c, c'>4 r8 c'8 <c, c'>4 |
  <as as'> <c c'>2 r4 |
  <g g'>2 <a a'> | <bes bes'> <c c'>4 \tuplet 3/2 { c'4 c8 } | <des, des'>4 <bes bes'> <a a'> <des des'> |
  <c c'>2 r2
}

trombonePart = \new Staff \with {
  instrumentName = "Posaune"
  midiInstrument = "trombone"
} { \clef treble \trombone }

pianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \trombonePart
    \pianoPart
  >>
  \layout { }
  \midi {
    \tempo 4=70
  }
}
