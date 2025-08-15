\version "2.24.3"

\header {
  title = "Hungriges Herz"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \time 4/4
}

chordNames = \chordmode {
  \global
  f1*2/bes
  f:maj7/a
  f/bes
  c:sus4
  f/bes
  f:maj7/a
  f/bes
  c:sus4
  f/bes
  f:maj7/a
  f/bes
  f:maj7/a
  f/bes
  f:maj7/a
  f/bes
  c:sus4
  f/bes
  c:sus4

  % Refrain
  bes1
  a:m7
  d:m
  f
  bes
  c
  f

  % Verse 2
  f1*2/bes
  f:maj7/a
  f/bes
  c:sus4
  f/bes
  f:maj7/a
  f/bes
  c:sus4
  f/bes
  f/a

  % Al fine
  f1:7
  bes1
  a:m7
  d:m
  f
  bes
  c
  f
  f:7
  bes1
  a:m7
  d:m
  f
  bes
  c
  f
}

soprano = \relative c'' {
  \global
  % Music follows here.
  s1 s s s |
  s1 s s s |
  s1 s s s |
  s1 s s s |
  s s s s |
  s s s s |
  s s s s |
  % eis eis kalt
  s | s | s | r2 r8 a8 a4 |
  s1 | s | s |
  
  r2 r4 f | a4. g f4 | a4 g8 e4 g g8( |
  g) f4 f e f8( | f)
  r r4 r f8 a | a8 g4 a8 g4 a8 g8( | g) a
  g4 f f8 f( | f4) r r2 |
  
  s1 s s s |
  s1 s s s |
  a1( | a2 c) |
  g1( | g) |
  a1( | a2 c) |
  g1( | g) |
  
  s1 s s s
  r2 r4 f8 a |
  a g4 a8 g4 a8 g( | g) a g4 a8 g4 a8 |
  g4 a8 g4 a8 g4 | a8 g4 a8 g4 f8 a |
  a g4 a8 g4 a8 g( | g) a g4 a g8 f8( | f1)  

  r2 r4 c'8 c |
  c c4 c8 c4 c8 c( | c) c c4 c8 c4 c8 |
  c4 c8 c4 c8 c4 | c8 c4 c8 c4 c8 c |
  c c4 c8 c4 c8 c( | c) c c4 c4 bes8 a8( |a1)  
}

alto = \relative c' {
  \global
  % Music follows here.
  r1 r1 r1 r1
  r1 r1 r1
  r2 r4 r8 c |
  d c4 d c d8( | d) c4 d r8 r8 c8 |
  c8 bes4 c bes c8( | c) bes4 c r8 r e |
  f e4 f e f8( | f) e4 f r8 r4 |
  d8 c c bes c bes c4 | r1 |
  r8 d d d d c c c c c r c c d c c | c c r4 r2 | r1 |
  r8 f f e f e f e | f4 c8 c c c c c | c c r4 r2 |
  r2 r4 r8 c | d c4 d c d8( | d) c4 d r8 r c |
  c bes4 c bes c8( | c) bes4 c8 r f8 f4 |
  % eis eis kalt
  \mark \markup { \musicglyph "scripts.segno" }
  r4 \xNote f r2 | r2 r4 \xNote c | \xNote c r4 r2 | r2 r8 e8 f4 |
  r4 \xNote f r2 | r2 r4 \xNote c4 | \xNote c r r2 |
  % Refrain
  \repeat volta 2 {
    r2 r4 f | d4. d d4 | c4 c8 c4 c e8( | e) d4 d d c8( | c)
    r8 r4 r4 c8 f | d d4 d8 d4 d8 e( e) e e4 c4 c8 f8( |
    \mark \markup { \italic "Al Coda" }
    f4) r4 r2 |
  }
  % Verse 2
  r1 r r r |
  r r r r |
  c4.( e4 f4.) |
  c4.( e4 f4.) |
  c4.( e4 f4.) |
  c4.( e4 f4.) |
  c4.( e4 f4.) |
  c4.( e4 f4.) |
  c4.( e4 f4.) |
  c2 r4 r8 c |
  d8 c4 c c d8( | d4) c4 d r8 c8 |
  d8 c c4 r4 r8 c |
  d c c4 r8 f8
  \mark \markup { \italic "D.S." }
  f4 |
  r2
  \mark \markup { \musicglyph "scripts.coda" }
  r4 c8 f |
  d8 d4 d8 d4 d8 c( | c) c8 c4 c8 c4 c8 |
  f4 f8 f4 f8 f4 f8 f4 f8 f4 c8 f |
  d8 d4 d8 d4 d8 e( | e) e e4 c4 c8 c( | c1)
  \repeat volta 2 {
    r2 r4 f8 a |
    a g4 a8 g4 a8 g( | g) a g4 a8 g4 a8 |
    g4 a8 g4 a8 g4 | a8 g4 a8 g4 f8 a |
    a g4 a8 g4 a8 g( | g) a g4 a4 g8 f8( | f1)
  }
}

tenor = \relative c' {
  \global
  % Music follows here.
  r1 r1 r1 r1 |
  r1 r1 r1 r1 |  
  r1 r1 r1 r1 |
  r1 r1 r1 r1 |
  f,( | f2. g4) | a2. r4 | r1 |
  f1( | f2 g4 a) | g2. r4 |
  r2 r4 r8 c | d c4 d c d8( | d) c4 d r8 r c |
  c bes4 c bes c8( | c) bes4 c8 r2 |
  % eis eis kalt
  r1 | \xNote f,4 r2. | r4 \xNote c \xNote c r | r2 r8 c'8 c4 |
  r1 | \xNote f,4 r2. | r4 \xNote c \xNote c r4 |
  
  r2 r4 f | bes4. bes bes4 | a4 a8 g4 g a8( | a) a4 a a a8( | a)
  r8 r4 r a8 c | bes bes4 bes8 bes4 bes8 c( | c) c c4 bes bes8 c( |
  c4) r4 r2 |
  
  d,8 c4 d c d8( | d) c4 d c4 r8 |
  c8 bes4 c bes c8( | c4) r8 r2 a8 |
  bes a4 bes a bes8( | bes) a8 bes4 r8 r4 |
  c8 c c bes bes a c8 r4 | r2 r4 r8 e |
  f e4 f e4 f8( f) e4 f e4 r8 | g4 a8 g4 a8 g4 ( g4)
  r4 r4 r8 c, | d4 c8 d c d c4 | r2 r4 d8 c d4 c8 d c e r4 |
  r2 r4 r8 c' |
  d8 c4 c c d8( | d4) c4 d r8 c8 |
  d8 c c4 r4 r8 c d c c4 r2 |

  r2 r4 a8 c |
  bes8 bes4 bes8 bes4 bes8 a( | a) a8 a4 a8 a4 a8 |
  a4 a8 a4 a8 a4 | c8 c4 c8 c4 a8 c |
  bes8 bes4 bes8 bes4 bes8 c( | c) c8 c4 c bes8 a8( | a1)
  r2 r4 a8 c |
  bes8 bes4 bes8 bes4 bes8 e,( | e) e8 e4 e8 e4 e8 |
  f4 f8 f4 f8 f4 | c'8 c4 c8 c4 a8 c |
  bes8 bes4 bes8 bes4 bes8 e,( | e) e8 e4 g c8 c8( | c1)
}

bass = \relative c {
  \global
  % Music follows here.
  s1 s s s |
  s1 s s s |
  s1 s s s |
  s1 s s s |
  bes( | bes) | a2. r4 | r1 |
  bes1( | bes) | c2. r4 |
  s1 | s s s s |
  % eis eis kalt
  s | s | s | r2 r8 c8 c4 |
  s1 | s | s |
  
  r2 r4 f | bes,4. bes bes4 | a4 a8 a4 a d8( |
  d) d4 d d f8( | f)
  r r4 r f8 f | bes,8 bes4 bes8 bes4 bes8 c8( | c) c
  c4 c c8 f( | f4) r r2 |
  
  s1 s s s |
  s1 s s s |
  bes,1( | bes) |
  a( | a) |
  bes( | bes) |
  c( | c) |
  
  s1 s s s
  r2 r4 f8 f |
  bes,8 bes4 bes8 bes4 bes8 a8( | a) a8 a4 a8 a4 a8 |
  d4 d8 d4 d8 d4 | f8 f4 f8 f4 f8 f |
  bes,8 bes4 bes8 bes4 bes8 c( | c) c8 c4 c c8 f( | f1)
  r2 r4 f8 f |
  bes,8 bes4 bes8 bes4 bes8 a8( | a) a8 a4 a8 a4 a8 |
  d4 d8 d4 d8 d4 | f8 f4 f8 f4 f8 f |
  bes,8 bes4 bes8 bes4 bes8 c( | c) c8 c4 c c8 f( | f1)
}

verse = \lyricmode {
  Dein zu -- cker -- sü -- ßer ro -- ter Mund lutscht al -- le Wor -- te ku -- gel -- rund
  Und selbst im Kampf er -- ge -- ben sich, dei -- ne Lip -- pen mei -- nen nicht
  An dei -- nen glüh -- end hei -- ßen Wan -- gen ver -- brenn' ich mei -- ne Fin -- ger
  Selbst wenn du mich zu Bo -- den wirfst wäh -- ne ich mich als Ge -- win -- ner
  Was ist mit mei -- nem Wil -- len bloß, machst mei -- nen Wil -- len wil -- len -- los
  
  Du bist eis -- eis -- kalt
  Du bist eis -- eis -- kalt
  Mein hun -- gri -- ges Herz durch -- fährt ein bit -- ter -- sü -- ßer Schmerz
  Sag mir wie weit, wie weit, wie weit, wie weit willst du gehn
  
  uh uh uh uh
  uh uh uh uh
  Du hältst mich fest was soll das bloß, drück ich zu -- rück, lässt du mich los. Du bist
  
  Sag nur,
  wie weit, wie weit, wie weit, wie weit, wie weit,
  wie weit, wie weit, wie weit, wie weit, wie weit,
  sag nur, wie weit, wie weit, wie weit, wie weit
  willst du gehn

  Sag mir,
  wie weit, wie weit, wie weit, wie weit, wie weit,
  wie weit, wie weit, wie weit, wie weit, wie weit,
  sag nur, wie weit, wie weit, wie weit, wie weit
  willst du gehn
}

verseTenor = \lyricmode {
  uh uh uh uh
  Was ist mit mei -- nem Wil -- len bloß, machst mei -- nen Wil -- len wil -- len -- los
  
  eis -- eis -- kalt
  Du bist eis -- eis -- kalt
  
  Mein hun -- gri -- ges Herz durch -- fährt ein bit -- ter -- sü -- ßer Schmerz
  Sag mir wie weit, wie weit, wie weit, wie weit willst du gehn

  Dei -- ne Au -- gen seh'n durch mich durch je -- mand an -- d'ren an
  Wenn dei -- ne Hän -- de mich be -- rühr'n, ver -- fol -- gen sie ei -- nen Plan
  Mit dei -- ner rau -- en En -- gels -- zun -- ge dringst du in mich ein
  Ge -- wohnt an die -- se Fol -- ter, sag ich ja und mei -- ne nein
  Du hältst mich fest was soll das bloß, drück ich zu -- rück, lässt du mich los
}

chordsPart = \new ChordNames \chordNames

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "alto" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
    \new Voice = "bass" { \voiceTwo \bass }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "tenor" \verseTenor
>>

\score {
  <<
    \chordsPart
    \choirPart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
