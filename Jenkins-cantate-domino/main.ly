\version "2.22.1"

\header {
  title = ""
}

global = {
  \time 6/8
  \key a \minor
  \tempo 4=60
}

soprano = \relative c' {
  \global
  e16 e16 e e16 e8 e d8 d | e8 e16 e e8 e g4 | 
  fis16 fis fis8 fis fis d d | e8. e16 e2 |
  gis16 gis gis gis gis8 gis b b | fis16 fis fis fis fis8 fis a a |
  e16 e e e e8 e gis gis | dis8. dis16 dis2 |
  
  fis8 fis16 fis fis8 fis16 fis gis8 gis |
  a16 a a a a4 b8 r | 
}

alto = \relative c' {
  \global 
}

tenor = \relative c' {
  \global
}

bass = \relative c {
  \global
  e16 e16 e e16 e8 e b8 b | c8 c16 c c8 c a4 | 
  b16 b b8 b b b b | cis8. cis16 cis8( gis cis4) |
  cis16 cis cis cis cis8 cis gis gis | d'16 d d d d8 d a a |
  cis16 cis cis cis cis8 cis gis gis | b8. b16 b2 |
}

verseOne = \lyricmode {
  Al -- le -- lu -- ia
  Al -- le -- lu -- ia
  Can -- ta -- te Do -- mi -- no
  Can -- ti -- cum no -- vum
  Al -- le -- lu -- i -- a
  
  Ju -- bi -- la -- te De -- o om -- nis
  Ju -- bi -- la -- te De -- o om -- nis
  Ju -- bi -- la -- te De -- o om -- nis te -- r -- ræ

  Can -- ta -- te et ex -- sul -- ta -- te
  Et psal -- li -- te Re -- gem
  Et psal -- li -- te Re -- gem
  Re -- gem re -- gum
  Et hym -- num di -- ce -- te De -- o
  De -- o
  Al -- le -- lu -- i -- a
  Et hym -- num di -- ce -- te De -- o
  De -- o
  Al -- le -- lu -- i -- a
  Al -- le -- lu -- i -- a

%  Ser -- vi -- te Do -- mi -- no
%  Do -- mi -- no in læ -- ti -- ti -- a
%  Al -- le -- lu -- ia
%  Al -- le -- lu
%  Al -- le -- lu -- ia
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
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
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
