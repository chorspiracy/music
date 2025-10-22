\version "2.24.3"

\header {
  title = "Metamorphosis"
  composer = "JS"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \minor
  \time 4/4
}

% Define helpers (optional, but keeps the function tidy)
#(define (mk-note p d) (make-music 'NoteEvent 'pitch p 'duration d))
#(define (mk-skip d)   (make-music 'SkipEvent 'duration d))

% pattern: a b s a b s s s |
double =
#(define-music-function (a b dur) (ly:pitch? ly:pitch? ly:duration?)
   (make-music 'SequentialMusic
     'elements
     (list
       (mk-note a dur) (mk-note b dur) (mk-skip dur)
       (mk-note a dur) (mk-note b dur)
       (mk-skip dur) (mk-skip dur) (mk-skip dur)
       (make-music 'BarCheck 'which #\|))))


% pattern: s s x s s x y z
triple =
#(define-music-function (x y z dur) (ly:pitch? ly:pitch? ly:pitch? ly:duration?)
   (make-music 'SequentialMusic
     'elements
     (list
       (mk-skip dur) (mk-skip dur)
       (mk-note x dur)
       (mk-skip dur) (mk-skip dur)
       (mk-note x dur)
       (mk-note y dur)
       (mk-note z dur))))

right = \relative c' {
  \global
  \triple g as c 8
  \triple g as c 8

  \triple g as c 8
  \triple g as c 8

  \triple g as c 8
  \triple g as c 8
  
  \triple g b c 8
  \triple g b c 8
  
  \key e \major
  \triple gis b cis 8
  \triple gis b cis 8
  
  \triple a cis dis 8
  \relative c' {
    \triple a cis dis 8
  }
  
  \triple b dis e 8
  \triple b dis e 8

  \key f \major
  \relative c' {
    \triple a c d 8
    \triple a c d 8
  }
  \triple bes d e 8
  \triple bes d e 8

  \triple c e f 8
  \triple c e f 8

  \key bes \minor
  \relative c' {
    \triple c des f 8
    \triple c des f 8
  }
  \relative c' {
  \triple bes c des 8
  \triple bes c des 8
  
  \triple bes c des 8
  \triple bes c des 8
  
  \triple bes a c 8
  \triple bes a c 8
  
  \triple bes c des 8
  \triple bes c des 8
  }
  
  \key e \major
  \relative c' {
  \triple a cis dis 8
  \triple a cis dis 8

  \triple b dis e 8
  \triple b dis e 8
  
  \triple bis dis e 8
  \triple bis dis e 8
  \triple b dis e 8
  \triple b dis e 8
  }

  \relative c' {
  \triple a d e 8
  }
  \relative c' {
  \triple a d e 8
  }
  
  \relative c' {
  \triple b d e 8
  \triple b d e 8
  }
  
  \relative c' {
  \triple c e fis 8
  \triple c e f 8
  }
  
  \key bes \minor
  \relative c' {
    \triple c des f 8
    \triple c des f 8
  }
  \relative c' {
  \triple bes c des 8
  \triple bes c des 8
  
  \triple bes c des 8
  \triple bes c des 8
  
  \triple bes a c 8
  \triple bes a c 8
  
  \triple bes c des 8
  \triple bes c des 8
  }
  
  \key e \major
  \relative c' {
  \triple a cis dis 8
  \triple a cis dis 8

  \triple b dis e 8
  \triple b dis e 8
  }

  \relative c' {
  \triple ais b cis 8
  \triple ais b cis 8
  
  \triple ais cis dis 8
  \triple ais cis dis 8

  
  \triple b fis' cis' 8
  }
  \relative c' {
  \triple b fis' cis' 8
  }
  
  \key f \minor
  \relative c' {
  \triple bes es bes' 8
  }
  \relative c' {
    \triple bes es bes' 8
  }

  \relative c' {
    \triple es f bes 8
  }
  \relative c' {
    \triple es f bes 8
  }

  \relative c' {
    \triple es f bes 8
  }
  \relative c' {
    \triple es f bes 8
  }

  \relative c' {
    \triple es f bes 8
  }
  \relative c' {
    \triple es f c' 8
  }

  \relative c' {
  \triple g as c 8
  \triple g as c 8
  \triple g as c 8
  \triple g as c 8 \fermata
  }
  
  <g, as c>1
}

left = \relative c {
  \global
  \double c f 8
  \double c f 8

  \double des f 8
  \double des f 8
  
  \double d f 8
  \double d f 8
  
  \double d e 8
  \double d e 8

  \key e \major
  \double cis dis 8
  \double cis dis 8
  
  \double cis fis 8
  \double cis fis 8
  
  \double dis fis 8
  \double dis fis 8

  \key f \major
  \double d e 8
  \double d e 8

  \double d g 8
  \double d g 8
  
  \double e g 8
  \double e g 8
  
  \key bes \minor
  \double f bes 8
  \double f bes 8
  \relative c {
  \double des g 8
  \double des g 8
  
  \double des ges 8
  \double des ges 8
  
  \double des f 8
  \double des f 8

  \double des g 8
  \double des g 8
  }

  \key e \major
  \relative c {
  \double cis fis 8
  \double cis fis 8

  \double dis fis 8
  \double dis fis 8

  \double e a 8
  \double e a 8

  \double e gis 8
  \double e gis 8

  \double e f 8
  \double e f 8

  \double e gis 8
  \double e gis 8

  \double e a 8
  \double e a 8
  }

  \key bes \minor
  \double f bes 8
  \double f bes 8
  \relative c {
  \double des g 8
  \double des g 8
  
  \double des ges 8
  \double des ges 8
  
  \double des f 8
  \double des f 8

  \double des g 8
  \double des g 8
  }

  \key e \major
  \relative c {
  \double cis fis 8
  \double cis fis 8

  \double dis fis 8
  \double dis fis 8

  \double e fis 8
  \double e fis 8
   
  \double eis fis 8
  \double eis fis 8  
  }
  
  \double a, e' 8
  \double a, e' 8

  \key f \minor
  \double as, es' 8
  \double as, es' 8
  
  \double g bes 8
  \double g bes 8

  \double ges bes 8
  \double ges bes 8

  \double f bes 8
  \double f bes 8
  \relative c {
  \double c f 8
  \double des f 8
  \double d f 8
  \double des f 8
  <f, c' f>1
  }
}

\score {
  \new PianoStaff \with {
%    instrumentName = "Klavier"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout {
    \context {
    \Score
    % Stretch horizontally
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
    % or adjust this one:
    proportionalNotationDuration = #(ly:make-moment 1/6)
  }
  }
  \midi {
    \tempo 4=100
  }
}
