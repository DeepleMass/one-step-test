Experiment-Verzeichnis
======================

Zugehoerig zu Abschnitt 5 (Ein motivierendes Experiment) der
Papierfassungen in ../DE_de/latex/ (deutsch) und ../EN_en/latex/
(englisch).

Dateien
-------
  sammle.sh     Erfassungsskript (Rekonstruktion des Originals):
                stuendlich ein Block von bis zu 1024 Bytes aus
                /dev/random, Dateiname = Zeitstempel im Format
                YYYY_MM_DD_HH_MM_SS.

  auswertung.py Auswertung: liest alle Dateien eines Verzeichnisses
                namenssortiert (= chronologisch), verkettet sie zu
                einer Bitfolge (MSB zuerst je Byte) und berechnet die
                kumulierte Verteilung der Laeufe und Teillaeufe
                (Einschritttest). Die Konsistenzbedingung l_1 = M
                wird automatisch geprueft.

Datenbestand
------------
  Der Bestand liegt im Repository one-step-test
  (https://github.com/DeepleMass/one-step-test) unter dev/random:
  2796 Dateien (2790 davon exakt 1024 Bytes, 6 kurze Reads des
  Entropie-Pools mit 1001 bis 1014 Bytes), zusammen 2.863.002 Bytes
  = 22.904.016 Bits, Erhebungszeitraum 14.04.2016 bis 13.11.2016.

Ergebnis (python3 auswertung.py ../../dev/random)
------------------------------------------------
  M = 22.904.016 Bits, laengster Lauf P = 23,
  l_1 = M exakt, Halbierungsreihe durchgehend,
  Chi-Quadrat-Anpassungstest der Laufverteilung gegen die
  geometrische Verteilung: chi2 = 26,0 bei 21 Freiheitsgraden
  (kritischer Wert zum Niveau 5%: 32,7),
  Uebergangswahrscheinlichkeit p = 0,49994 +- 0,00010
  (0,62 Standardabweichungen unter 1/2).
  Die graphische Darstellung (../DE_de/latex/haeufigkeiten.dat) wird im
  Paper per pgfplots direkt aus den Daten gezeichnet.
