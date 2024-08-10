\version "2.22.1"

\header {
  title = "Cantate Domino"
  composer = "Karl Jenkins"
}

global = {
  \time 6/8
  \key a \major
  \tempo 4=60
}

soprano = \relative e' {
  \global
  % Intro
  b4 e8 fis a4 | b8 a d,4 fis \fermata |
  
  \repeat volta 2 {
  % Strophe
  e16 e16 e e16 e8 e d8 d | e8 e16 e e8 e g4 | 
  fis16 fis fis8 fis fis d d | e8. e16 e2 |
  gis16 gis gis gis gis8 gis b b | fis16 fis fis fis fis8 fis a a |
  e16 e e e e8 e gis gis | dis8. dis16 dis2 |
  
  e8 e16 e e16 e e8 d16 d d8 | e8 e e8 e g4 | 
  fis16 fis fis fis fis8 fis d d | e8. e16 e2 |
  gis16 gis gis gis gis8 gis b b | fis16 fis fis fis fis8 fis a a |
  e16 e e e e8 e gis gis | dis8. dis16 dis2 |
  
  fis8 fis16 fis fis8 fis16 fis gis8 gis |
  a16 a a a a4 b8 r |
  cis16 cis cis cis cis8 cis d8 d | cis8.( b16) a2 \fermata |
  a8 a16 a a a a8 fis a | b8.( e,16) e8 b'16 b gis8 cis16 b \fermata |
  c8 c16 c c c c8 a c | d8.( g,16) g8 d'16 d b8 e16 d( | d2. | d | b \fermata |
  }
}

alto = \relative c' {
  \global 
  %Intro
  e2. | e2. |
  % Strophe
  b16 b16 b b16 b8 b b8 b | c8 c16 c c8 c c4 | 
  d16 d d8 d d b b | cis8. cis16 cis2 |
  e16 e e e e8 e dis e | d16 d d d d8 d e d |
  gis,16 gis gis gis gis8 gis gis cis | b8. b16 b2 |
  
  b8 b16 b b16 b b8 b16 b b8 | c8 c c8 c c4 | 
  d16 d d d d8 d b b | cis8. cis16 cis2 |
  e16 e e e e8 e dis e | d16 d d d d8 d e d |
  gis,16 gis gis gis gis8 gis gis cis | b8. b16 b2 |
  
  d8 d16 d d8 d16 d d8 e |
  fis16 fis fis fis fis4 gis8 r |
  a16 a a a a8 a a8 a | a8.( fis16) e2 \fermata |

  fis8 fis16 fis fis fis fis8 fis fis | gis8.( e16) e2 \fermata |
  a8 a16 a a a a8 a a | b8.( g16) g2 |

  <<fis8. a>> <<fis16 a16>> fis8 <<fis8 b8>> <<fis a>> r |
  <<fis8. a>> <<fis16 a16>> fis8 <<fis8 b8>> <<fis4 a>> |
  <<gis2. b2.>>\fermata |  
}

tenor = \relative e {
  \global
  % Intro
  b'2. | b2. |
  
  g16 g16 g g16 g8 g fis8 fis | g8 g16 g g8 g e4 | 
  fis16 fis fis8 fis fis fis fis | gis8. gis16 gis2 |
  gis16 gis gis gis gis8 gis gis gis | a16 a a a a8 a fis fis |
  e16 e e e e8 e e e | fis8. fis16 fis2 |

  g8 g16 g g16 g g8 fis16 fis fis8 | g8 g g8 g e4 | 
  fis16 fis fis fis fis8 fis fis fis | gis8. gis16 gis2 |
  gis16 gis gis gis gis8 gis gis gis | a16 a a a a8 a fis fis |
  e16 e e e e8 e e e | fis8. fis16 fis4.( gis8) |

  a8 a16 a a8 a16 a a8 a |
  cis16 cis cis cis cis4 e8 r |
  e16 e e e e8 e fis8 fis | e8.( d16) cis2 \fermata |

  cis8 cis16 cis cis cis cis8 cis cis | e8.( b16) b2 \fermata |
  e8 e16 e e e e8 e e | g8.( d16) d2 |

  <<a8. d>> <<a16 d>> <<a8 d>> <<a d>> <<a8 d>> r |
  <<a8. d>> <<a16 d>> <<a8 d>> <<a4. d>> |
  <<b2. e>> \fermata|
}

bass = \relative e {
  \global
  % Intro
  e2. | e2. |
  
  % Strophe
  e16 e16 e e16 e8 e b8 b | c8 c16 c c8 c a4 | 
  b16 b b8 b b b b | cis8. cis16 cis8( gis cis4) |
  cis16 cis cis cis cis8 cis gis gis | d'16 d d d d8 d a a |
  cis16 cis cis cis cis8 cis gis gis | b8. b16 b2 |

  e8 e16 e e16 e e8 b16 b b8 | c8 c c8 c a4 | 
  b16 b b b b8 b b b | cis8. cis16 cis8( gis cis4) |
  cis16 cis cis cis cis8 cis gis gis | d'16 d d d d8 d a a |
  cis16 cis cis cis cis8 cis gis gis | b8. b16 b2 |
  
  d8 d16 d d8 d16 d b8 b |
  fis'16 fis fis fis fis4 e8 r |
  a16 a a a a8 a d,8 fis | a8.( a,16) a2 \fermata |
  fis'8 fis16 fis fis fis fis8 fis fis |
  <<e8. gis>> <<e16 gis>> <<e2 gis>> |
  a8 a16 a a a a8 a a | (<<g8. b>> )<<g16 b>> <<g2 b>> |
  d,8. d16 d8 d d8 r |
  d8. d16 d8 d4. |
  e2.\fermata |
}

verseOne = \lyricmode {
  % Intro
  Al -- le -- lu -- ia
  Al -- le -- lu -- ia
  
  % Strophe
  Al -- le -- lu -- ia
  Al -- le -- lu -- ia
  Can -- ta -- te Do -- mi -- no
  Can -- ti -- cum no -- vum
  Al -- le -- lu -- i -- a
  
  Ju -- bi -- la -- te De -- o om -- nis
  Ju -- bi -- la -- te De -- o om -- nis
  Ju -- bi -- la -- te De -- o om -- nis te -- r -- ræ

  Ser -- vi -- te Do -- mi -- no
  Do -- mi -- no in læ -- ti -- ti -- a
  Al -- le -- lu -- ia
  Al -- le -- lu
  Al -- le -- lu -- ia
  
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
}

verseComp = \lyricmode {
  _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _
  
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _ _ _

  _ _ _ _
  _ _ _ _ _ _ _
  De -- o
  Al -- le -- lu -- i -- a
  Al -- le -- lu -- i -- a
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" \verseComp
  >>
  \layout { }
  \midi { }
}
