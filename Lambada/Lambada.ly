\version "2.24.3"

\header {
  title = "Lambada"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key d \minor
  \time 4/4
}

trombone = \relative c' {
  \global
  % Intro
  r1 | r1 |
  
  % Strophe
  \repeat volta 2 {
    a4. g8 f e d8 r8 | d8 f e d c d a g | a16 g a8( a2.) |
  }
  
  \repeat volta 2 {
    \mark \markup { \musicglyph #"scripts.segno" }
    g'4 g8 f bes,4 bes8 d |
    a'4 g8 f bes,4 d8 f |
    e\staccato e16 d c4. c8 d c |
    d16 c d8(  d2.) |
    r1 | r1 |
    d8 r16 d16( d4) d8 r16 d16( d4)
    f8 r16 f16( f4) f8 r16 f16(
    \mark \markup { \italic "D.S. al Fine" }
    f4)
  }
}

right = \relative c' {
  \global
  % Intro
  r8. <f a d>8.\staccato  8\staccato r8. 8.\staccato 8\staccato |
  r8. 8.\staccato  8\staccato r8. 8.\staccato 8\staccato |
  % Strophe
  r8. 8.\staccato  8\staccato r8. 8.\staccato 8\staccato |
  r8. <f bes d>8.\staccato  8\staccato r8. <g c e>8.\staccato 8\staccato |
  r8. <f a c>8.\staccato 8\staccato r8. 8.\staccato 8\staccato |
  % Part B
  r8. <bes d g>8. 8 r8. 8. 8 |
  r8. <bes d g>8. 8 r8. 8. 8 |
  r8. <g c e>8. 8 r8. 8. 8 |
  r8. <f a d>8. 8 r8. 8. 8 |
  % Part C
  a16 <d, f a d> r16 16 16 r8. a'16 <d, f a d> r16 16 16 r8. |
  c'16 <f, a c f> r16 16 16 r8. c'16 <f, a c f> r16 16 16 r8. |
  % Part C'
  a16 <d, f a d> r16 16 16 r8. a'16 <d, f a d> r16 16 16 r8. |
  c'16 <f, a c f> r16 16 16 r8. c'16 <f, a c f> r16 16 16 r8. |
}

dfa = \relative d' { d,4 f8 a }
besdf = { bes,4 d8 f }
ceg = \relative d' { c,4 e8 g }
fac = \relative d { f,4 a8 c }
gbesd = \relative d { g,4 bes8 d }

left = \relative d' {
  \global
  % Intro
  \dfa \dfa |
  \dfa \dfa |
  % Strophe
  \dfa \dfa |
  \besdf \ceg |
  \fac \fac |
  % Part B
  \gbesd \gbesd |
  \gbesd \gbesd |
  \ceg \ceg |
  \dfa \dfa |
  % Part C
  \repeat volta 2{
    \dfa \dfa |
    \fac \fac |
  }
  \repeat volta 2{
    \dfa \dfa |
    \fac \fac |
  }
}

trombonePart = \new Staff \with {
  instrumentName = "Posaune"
  midiInstrument = "trombone"
} { \clef bass \trombone }

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
    \tempo 4=100
  }
}
