\version "2.22.1"

\header {
  title = "Unissasi Laulelet"
  composer = "The Do"
  arranger = "ASÄ Trio"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key a \major
  \time 4/4
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  \partial 2
  % Refrain
  r8 a8 a cis | cis2 r8 gis gis a | a2 r8 a a cis | cis2 r8 gis gis a | a2 r8 a a a | b2 r8 a a a | b2 r8 gis gis a | a1 | r1 |
  % Verse 1
  r1 | r1  | r1 | r1 | r1 | r1 | r1 | r1 | r2
  % Refrain
  r8 a8 a cis | cis2 r8 gis gis a | a2 r8 a a cis | cis2 r8 gis gis a | a2 r8 a a a | b2 r8 a a a | b2 r8 gis gis a | a1 | r2
  % Verse 2
  r8 a8 a cis | cis2 r8 gis gis a |
  a2 r8 a a cis | cis2 r8 gis gis a |
  a2 r8 a a a | b2 r8 a a a |
  b2 r8 a a a | b2 r8 a a a |
  b4. gis8 r4 gis8 a | a1 | r2
  % Refrain
  r8 a8 a cis | cis2 r8 gis gis a |
  a2 r8 a a cis | cis2 r8 gis gis a |
  a2 r8 a a a | b2 r8 a a a |
  b2 r8 gis gis a | a1 | r2
  % Verse 3
  r8 a8 a cis | cis2 r8 gis gis a | a2
  r8 a a cis | cis2
  r8 gis gis a | a2
  r8 a a a | b2
  r8 a a a | b2
  r8 a a a | b2
  r8 a a a | b2
  r8 a a a | b2
  r8 a a a | b2
  r8 cis b cis | cis1 | r2
  % Refrain
  r2 |
  r8 a8 a cis cis2 |
  r8 gis gis a a2 |
  r8 a a cis cis2 |
  r8 gis gis a a
  
  a8 a cis | cis2
  r8 gis gis a | a2
  r8 a a cis | cis2
  r8 gis gis a | a2
  
  r8 a a cis | cis2
  r8 gis gis a | a2
  r8 a a cis | cis2
  r8 gis gis a | a2
  
  r8 fis e fis | b2
  r8 fis e fis | b2
  r8 a gis a | a1 |
}

verseSopranoVoice = \lyricmode {
  % Refrain
  Au -- rin -- ko nou -- si hii -- pi -- en,
  Ok -- sal -- la syn -- tyi var -- pu -- nen,
  He -- rä -- sin het -- keks, u -- nis -- sa -- si lau -- le -- let,
  % Verse 1
  % ---
  % Refrain
  Au -- rin -- ko nou -- si hii -- pi -- en,
  Ok -- sal -- la syn -- tyi var -- pu -- nen,
  He -- rä -- sin het -- keks, u -- nis -- sa -- si lau -- le -- let,
  % Verse 2
  Tah -- di -- ton tuu -- li kuis -- ka -- si,
  Kor -- vaa -- si maail -- man ih -- mei -- tä,
  Le -- vo -- ton tuu -- li~u -- te -- li -- aan korvaan,
  Mer -- en poh -- jan sa -- lai -- suu -- det pal -- jas -- ti,
  % Refrain
  Au -- rin -- ko nou -- si hii -- pi -- en,
  Ok -- sal -- la syn -- tyi var -- pu -- nen,
  He -- rä -- sin het -- keks, u -- nis -- sa -- si lau -- le -- let,
  % Verse 3
  Tar -- peek -- si kul -- taa löy -- sit kait,
  Kyl -- läs -- tyit mer -- ten poh -- jiin kait,
  Äk -- ki -- ä us -- va hal -- la -- yöt,
  Toi -- vat maan pää -- lle en -- si jäät,
  Vaa -- le -- an aa -- mun pos -- kes -- sa,
  Taas lau -- le -- let.
  % Refrain Fine
  Au -- rin -- ko nou -- si hii -- pi -- en,
  Ok -- sal -- la syn -- tyi var -- pu -- nen,
  
  Au -- rin -- ko nou -- si hii -- pi -- en,
  Ok -- sal -- la syn -- tyi var -- pu -- nen,
  
  Au -- rin -- ko nou -- si hii -- pi -- en,
  Ok -- sal -- la syn -- tyi var -- pu -- nen,
  
  He -- rä -- sin het -- keks, u -- nis -- sa -- si lau -- le -- let,
}

mezzoSopranoVoice = \relative a' {
  \global
  \dynamicUp
  % Refrain
  r8 fis8 fis a | a2
  r8 e e fis | fis2
  r8 fis fis a | a2
  r8 e e fis | fis2
  r8 fis fis fis |
  b2 r8 fis fis fis |
  b2 r8 e, e fis | fis1 | r2
  % Verse 1
  r8 fis8 fis a | a2 r8 e e fis | fis2 r8 fis fis a | a2 r8 e e fis | fis2 r8 fis fis fis | b2 r8 fis fis fis | b2 r8 fis fis fis | b2 r8 fis e fis | fis1 |  r2
  % Refrain
  r8 fis8 fis a | a2 r8 e e fis | fis2 r8 fis fis a | a2 r8 e e fis | fis2 r8 fis fis fis | b2 r8 fis fis fis | b2 r8 fis e fis | fis1 | r2
  % Verse 2
  r8 fis8 fis a | a2
  r8 e e fis | fis2
  r8 fis fis a | a2
  r8 e e fis | fis2
  r8 fis fis fis | b2
  r8 fis fis fis | b2
  r8 fis fis fis | b2
  r8 fis fis fis | b4. e,8
  r4 e8 fis | fis1 |
  r2
  % Refrain
  r8 fis8 fis a | a2 r8 e e fis | fis2 r8 fis fis a | a2 r8 e e fis | fis2 r8 fis fis fis | b2 r8 fis fis fis | b2 r8 fis e fis | fis1 | r2
  % Verse 3
  r8 fis8 fis a | a2
  r8 e e fis | fis2
  r8 fis fis a | a2
  r8 e e fis | fis2
  r8 fis fis fis | b2
  r8 fis fis fis | b2
  r8 fis fis fis | fis2
  r8 gis gis gis | gb2
  r8 fis fis fis | gis2
  r8 a a a | a2
  r8 fis e fis | fis1 |
  r2
  % Refrain
  r8 fis8 fis a | a2
  r8 e e fis | fis2
  r8 fis8 fis a | a2
  r8 e e fis | fis2
  
  r8 fis fis a | a2
  r8 e e fis | fis2
  r8 fis fis a | a2
  r8 e e fis | fis2
  
  r2 | r8 fis fis a a2 |
  r8 e e fis fis2 |
  r8 fis fis a a2 |
  r8 e e fis fis8
  
  fis e fis | fis2
  r8 fis e fis | gis2
  r8 fis e fis | fis1
}

verseMezzoSopranoVoice = \lyricmode {
  % Refrain
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _
  % Verse 1
  Pei -- lil -- le näy -- tit kas -- vo -- si,
  Ja pei -- li hy -- myn hei -- jas -- ti,
  Lu -- pa -- sit lau -- laa ko -- vem -- paa,
  Rak -- kau -- den pen -- saan is -- tut -- taa,
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _
  % Refrain Fine
  Au -- rin -- ko nou -- si hii -- pi -- en,
  Ok -- sal -- la syn -- tyi var -- pu -- nen,
  Au -- rin -- ko nou -- si hii -- pi -- en,
  Ok -- sal -- la syn -- tyi var -- pu -- nen,
  Au -- rin -- ko nou -- si hii -- pi -- en,
  Ok -- sal -- la syn -- tyi var -- pu -- nen,
  He -- rä -- sin het -- keks, u -- nis -- sa -- si lau -- le -- let,

}

altoVoice = \relative a {
  \global
  \dynamicUp
  % Refrain
  r2 |
  r1 | r1 | r1 | r1 | r1
  r1 | r1 | r2
  % Verse 1
  r8 cis cis fis | fis2
  r8 b, b cis | cis2
  r8 cis cis fis | fis2 r8 b, b cis | cis2 r8 fis e e | d2 r8 fis e fis | d2 r8 fis e fis | d2 r8 fis e fis | cis1
  % Refrain
  r2 r8 cis cis fis | fis2 r8 b, b cis | cis2 r8
  cis cis fis | fis2 r8 b, b cis | cis2 r8 fis e e | d2 r8 fis e fis | d2 r8 fis e fis | cis1 | r2
  % Verse 2
  r8 cis cis fis | fis2 r8 b, b cis | cis2 r8
  cis cis fis | fis2 r8 b, b cis | cis2
  r8 fis e fis | d2 r8 fis e fis | d2
  r8 fis e fis | d2
  r8 fis e fis | d4. e8 r4
  e8 fis | cis1 | r2
  % Refrain
  r8 cis cis fis | fis2 r8 b, b cis | cis2 r8
  cis cis fis | fis2 r8 b, b cis | cis2 r8 fis e e | d2 r8 fis e fis | d2 r8 fis e fis | cis1 | r2
  % Verse 3
  r8 cis cis fis | fis2 r8 b, b cis | cis2 r8
  cis cis fis | fis2 r8 b, b cis | cis2
  r8 cis e d | d2
  r8 e e d | e2
  r8 fis e fis | d2
  r8 fis e fis | d2
  r8 fis e fis | d2
  r8 fis e fis | d2
  r8 fis e fis | cis1 | r2
  % Refrain
  r8 cis cis fis | fis2
  r8 b, b cis | cis2
  r8 cis cis fis | fis2
  r8 b, b cis | cis2
  
  r2 | r8 cis cis fis fis2 |
  r8 b, b cis cis2 |
  r8 cis cis fis fis2 |
  r8 b, b cis cis

  
  cis cis fis | fis2
  r8 b, b cis | cis2
  r8 cis cis fis | fis2
  r8 b, b cis | cis2
  
  r8 fis e fis | d2
  r8 fis e fis | d2
  r8 fis e fis | cis1
}

verseAltoVoice = \lyricmode {
  % Lyrics follow here.  
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

mezzoSopranoVoicePart = \new Staff \with {
  instrumentName = "Mezzo-soprano"
  midiInstrument = "choir aahs"
} { \mezzoSopranoVoice }
\addlyrics { \verseMezzoSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "choir aahs"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

\score {
  <<
    \sopranoVoicePart
    \mezzoSopranoVoicePart
    \altoVoicePart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
