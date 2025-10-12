\version "2.24.3"

\header {
  title = "Weihnachten bin ich zu Haus"
  composer = "Roy Black"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key d \major
  \time 4/4
  \tempo "Langsamer Swing"
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Intro
  d1( | d )\fermata |
  
  % Music follows here.
  r4 fis,2 e4 | r4 fis e2 | r4 fis g b |
  a1 | d2( cis) |
  b( a) | b( a) |
  
  % Doch scheint über Nacht
  g( fis4) r4 |
  
  r1 | r1 | g1 | g2. r8
  
  a8 | d8 d d d cis cis cis cis | b4 b a2 |
  g8 g a g fis fis d4 |
  r1 |
  
  % Chorus 1
  r4 fis2. |
  r4 e2. |
  r4 fis r fis |
  r4 e( fis g) |
  r4 a( b2) |
  r4 gis( a2) |
  r4 a r gis |
  r4 a( gis g) |
  r8 a a4 r8 g g4 |
  fis4 fis2. |
  r4 b r b |
  r a r g |
  r fis2 a4 |
  fis2( g2) |
  r4 a2. |
  r4 a2 bes4|
  d1( | d) |
  \mark \markup { \italic "Fine" } \bar "||"

  % Chorus 2
  fis,4 fis8 fis a4 a8 a | g4 g8 g e4( eis) |
  fis4 a g fis | e2( eis) |
  fis4 fis8 fis gis4 gis8 gis | a4 a8 a b2 |
  cis4 b8 a a4 gis4 |
  <gis a>2.
  \mark \markup { \italic "D.S. al Fine" }
  r4
  \bar "|."
}

verseSopranoVoice = \lyricmode {
  % intro
  mh
  
  % Prelude
  dm dm dm dm du du du duh, uh uh uh uh
  bam bam
  
  Dann weiß ich, dass die Träu -- me auf die Rei -- se gehn,
  
  Und vor der Er -- in -- ner -- ung
  
  % Chorus 1
  du du dup dup du
  du du dup dup du
  kling kling, kling kling, |
  Hei -- mat |
  dup dup dup dup
  du du hier |
  ah
  ah |
  da -- für. |

  % Chorus 2
  Weih -- nach -- ten, Weih -- nach -- ten bin ich zu Haus, wenn auch nur im Traum
  Weih -- nach -- ten steh ich bei Mut -- ter zu Haus un -- ter dem Tan -- nen -- baum
  du
}

altoVoice = \relative c'' {
  \global
  \dynamicUp
  % Intro
  g4( fis b a | a g fis g)\fermata |
  
  % Music follows here.
  d2( cis) | d2. cis4 | d2( e | e fis) |
  b2.( a4) | g2.( fis4) |
  g2.( fis4) | e2. r8
  
  fis8 | e4 e8 e a4 a |
  e e8 e a4 r |
  e4 e8 e a4 a8 a | e4 e8 e a4 r4
    
  a1 | fis4( f e dis) |
  d8 d e e e8 d8 d4 | d cis8 cis d2\fermata |
  
  % Chorus
  r4 a( e' d) | r b( d cis) |
  r4 d r d | r cis( d e) |
  r4 d( e2) | r4 e( cis d) |
  r4 cis r d | r4 cis( d e) |
  r8 g8 g4 r8 e8 e4 |
  a,4 e'2( d4) |
  r4 e r e |
  r e r cis |
  r4 a cis e |
  d2( <d f>) |
  r4 a'( g fis) |
  r4 a2 g4 |

  g4( fis b a | a g fis g) |

  % Chorus 2
  e4 d8 d e4 e8 e | e4 e8 e d4( cis) |
  cis4 e d cis | d2( cis) |
  d4 d8 d d4 e8 e | e4 e8 e d2 |
  e4 gis8 fis fis4 eis4 |
  e2. r4
}

verseAltoVoice = \lyricmode {
  % intro
  uh
  
  % Prelude
  dm dm du duh uh uh uh uh
  
  Doch fällt ü -- ber Nacht dann lei -- se der Schnee,
  Fun -- keln die Ster -- ne und glitz -- ert der See,
  
  du du
  
  Und vor der Er -- in -- ner -- ung
  blei -- ben sie stehn.
  
  % Chorus 1
  du du dup dup du
  du du dup dup du
  kling kling, kling kling, |
  Hei -- mat |
  dup dup dup dup
  du du du hier |
  ah
  ah |
  da -- für. |
  
  % Chorus 2 (wie Sopran)
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % Intro
  bes4( a d c | b4 d bes e)\fermata |
 
  % Music follows here.
  a,2( a) | a4 gis a g | a2( b) | d4 cis a4
  
  % "Der Himmel ist weit.."
  r8 a |
  d4 d8 d cis4 r8 cis | b4 b8 b a4 a8 a |
  b b b b a4 a | g g8 g fis4 r4
  
  e'2 d4 c | b2 c |
  d2( cis) | d( cis) |
  fis4( e2 d4) | cis4( c b a) |
  b4( a2 as4) |
  g4 a8 g fis2\fermata |
  
  % Chorus 1
  fis4 fis8 fis a4 a8 a | g4 g8 g e2 |
  fis4 a g fis | e2 r |
  fis4 fis8 fis gis4 gis8 gis | a4 a8 a b2 |
  cis4 b8 a a4 gis8 a( | a1) |
  
  % "Ich hör die Glocken der.."
  \mark \markup { \musicglyph #"scripts.segno" }
  g4 g8 g e4 e8 e | a4 fis4 r
  a8 a | d4 d8 d b4 b8 b |
  cis4 cis8 cis a2 |
  fis4 fis a a8 a | d2 r4 d8 e |
  fis4 e8 d d4 d8 e | fis4 e8 d d4 cis |
  
  ais4( a d c | b4 d ais e') |

  % Chorus 2
  a,4 a8 a cis4 cis8 cis | b4 b8 b a2 |
  a4 cis b a | a1 |
  a4 a8 cis b4 b8 b | b4 a8 a a2 |
  a4 a8 cis d4 d | <b cis>2. r4 |
}

verseTenorVoice = \lyricmode {
  % Intro
  uh
  
  % Prelude
  dmh du du du du du du du du 
  Der Him -- mel ist weit, die Son -- ne die scheint,
  Und ich freu mich wenn das Glück es gut mit mir meint.
  
  % "Doch fällt über.."
  Bam bam bam bam bam
  
  Ba ba du
  du du

  blei -- ben sie stehn.
  
  % Chorus
  Weih -- nach -- ten, Weih -- nach -- ten bin ich zu Haus, wenn auch nur im Traum
  Weih -- nach -- ten steh ich bei Mut -- ter zu Haus un -- ter dem Tan -- nen -- baum

  Ich hör die Glo -- cken der Hei -- mat,
  seh zwei Men -- schen, die mir ih -- re Lie -- be,
  ge -- schenkt,
  
  sie sind lei -- der nicht hier,
  doch die Trä -- nen von mir sa -- gen,
  heu -- te habt Dank da -- für.

  % Chorus 2
  Weih -- nach -- ten, Weih -- nach -- ten bin ich zu Haus, wenn auch nur im Traum
  Weih -- nach -- ten steh ich bei Mut -- ter zu Haus un -- ter dem Tan -- nen -- baum

  Ich hör die Glo -- cken der Hei -- mat,
  seh zwei Men -- schen, die mir ih -- re Lie -- be,
  ge -- schenkt,
  
  sie sind lei -- der nicht hier,
  doch die Trä -- nen von mir sa -- gen,
  heu -- te habt Dank da -- für.
}

bassVoice = \relative c {
  \global
  \dynamicUp
  % Intro
  d1( | d)\fermata |
  
  % Strophe 1
  d8 d d d e4 e8 e | fis4 fis e r |
  fis fis8 fis g4 g8 g | a4 a fis r4
  
  % Der Himmel ist weit
  fis4( e2.) | e4( d2.) |
  d4 cis d2 | b4 a4 d2 |
  
  c'2 b4 a | g2 a2 |
  
  e2 a | e a |
  b4( fis) a( e) |
  dis4( d cis c) | b4( cis d b4) |
  bes4 a8 a d2\fermata |
  
  % Chorus 1
  d2 fis | e a4 a, | d4 fis e d | a2 a4 a'4 |
  d,2 d | cis d | r8 e e,2 e4 | a2 a2 |
  g2 a2 | d2 b | gis2 e4 b'| a2 a2 |
  d2 cis | b2 bes2 | a2 b2 | a2 a4 a |
  d1( d1) |

  % Chorus 2
  d2 fis, | e4 e' a,2 | d4 fis e d | a2 a4 cis |
  d4 d8 d d4 e8 d | cis4 cis8 gis' fis2 |
  e4 e8 a b4 b | a2. r4 |
}

verseBassVoice = \lyricmode {
  % Intro
  mh,
  
  % Lyrics follow here.
  Ich geh mei -- nen Weg auf der gro -- ßen Welt,
  Le -- be das Le -- ben wie's mir ge -- fällt,
  
  % "Der Himmel ist weit.."
  duh duh du du duh, du du duh,
  
  Bam bam bam bam bam
  Ba ba ba ba du du, du, du blei -- ben sie stehn.

  % Chorus 1
  Dum dum dum dm fm dm fm dm fm dum dm fm
  Dum dum dum dum fe dum fm dum dum
  dum dum dum dum dum dm fm dum dum dum
  dum dum dum dum dum dum dm da für.

  % Chorus 2
  Dum dum dm fm dum, dm fm dm fm, dum dm fm 
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "Piano"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "Piano"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "Piano"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "Piano"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \sopranoVoice }
     \new Staff = "alto" \new Voice = "alto" { \altoVoice }
     \new Staff = "tenor" \new Voice = "tenor" { \tenorVoice }
     \new Staff = "bass" \new Voice = "bass" { \bassVoice }
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
    \sopranoVoicePart
    \altoVoicePart
    \tenorVoicePart
    \bassVoicePart
  >>
  \layout { }
  \midi {
    \tempo 4=70
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "Flute" \verseSopranoVoice
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "Clarinet" \verseAltoVoice
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "Cello" \verseTenorVoice
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "Cello" \verseBassVoice
    \midi { }
  }
}
