% FBI-Aufgabenblatt
%
% LaTeX-Klasse zur Erstellung von Aufgabenblaettern inkl. optionaler Musterloesung in einem Stil mit FBI-Logo.
%
% Entworfen von Kristof Hamann auf Grundlage von vsis-aufgabenblatt.cls.
% ChangeLog: in v1.1 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fbi-aufgabenblatt}[2017/10/21 v1.1 FBI-Aufgabenblaetter]

\RequirePackage{times}
\RequirePackage{helvet}

\LoadClass[a4paper,parskip=half-,DIV=11]{scrartcl}



% Silbentrennung
\RequirePackage{babel}
% Kodierung der Schriftarten wegen Umlauten
\RequirePackage[T1]{fontenc}


% Einbinden von Grafiken (z.B. FBI-Logo)
\RequirePackage{graphicx}

% Definieren von Farben
\RequirePackage{xcolor}	
\definecolor{shadecolor}{gray}{0.9}

% Rahmen (z.B. fuer Musterloesungen)
\RequirePackage{framed}

% Erweiterte Tabellen (z.B. fuer Kopfzile)
\RequirePackage{tabularx}

%\renewcommand{\familydefault}{\sfdefault} 
%\RequirePackage{sfmath}


% Seitenlayout
\RequirePackage[headsepline]{scrpage2}
\setlength{\headsep}{2cm}
%\setlength{\oddsidemargin}{-1cm}
%\setlength{\textwidth}{17cm}
\setkomafont{pageheadfoot}{\small}


% Kopfzeile mit VSIS-Logo und Vorlesungsdaten
\pagestyle{scrheadings}
\ihead{%
{\textsf{ \Huge \Vorlesung-\AufgabenblattTitel{} \Aufgabenblatt{}}}\\
\Teilnehmer{} $\cdot$ \Semester{}
%\end{minipage}
}

\ifoot{%
{\textsf{ Seite \thepage~$\cdot$ \Vorlesung-\AufgabenblattTitel{} \Aufgabenblatt{} $\cdot$ \Teilnehmer{}}}
%\end{minipage}
}

\cfoot{}

\usepackage[utf8]{inputenc}

% Section = Aufgabe
% \othersectionlevelsformat{Gliederungsname}{}{Zaehlerausgabe}
\renewcommand*{\othersectionlevelsformat}[3]{\AufgabeTitel~#3:\enskip}
% Aufzaehlungen fuer Teilaufgaben
\renewcommand{\labelenumi}{\alph{enumi})}
\renewcommand{\theenumi}{\thesection\alph{enumi}}
\renewcommand{\theenumii}{\roman{enumii})}
\renewcommand{\labelenumii}{\theenumii}


% Etwas rechtsbündig in der selben Zeile schreiben
\newcommand\ontheright[1]{{\unskip\nobreak\hfill\penalty50\ 
  \mbox{\quad}\nobreak\hfill#1\parfillskip=0pt \finalhyphendemerits=0\par}}

  
% Optionales Einblenden von Musterloesungen, Layout von Musterloesungen
\newif\ifmusterloesung
\musterloesungfalse
\newcommand{\aufgabe}[2]{\section{#1\ontheright{\normalfont}}}
\newenvironment{musterloesung}{\begin{shaded}\textbf{\MusterloesungTitel:}\\*[0.5em]\nopagebreak}{\end{shaded}}



% Variablen fuer Seitenkopf: Setzen mit \renewcommand{\Variable}{Wert}
\newcommand{\Vorlesung}{VIS}
\newcommand{\Semester}{WiSe 2017}
\newcommand{\Ausgabedatum}{}
\newcommand{\Abgabedatum}{}
\newcommand{\Aufgabenblatt}{}
\newcommand{\Punktezahl}{}
\newcommand{\MusterloesungTitel}{L\"osungsvorschlag}
\newcommand{\MusterloesungTitelblatt}{L\"osungsvorschl\"age}
\newcommand{\VorlesungTitel}{Lehrveranstaltung}
\newcommand{\AufgabenblattTitel}{Übungsblatt}
\newcommand{\PunktezahlTitel}{Gesamtpunktzahl}
\newcommand{\AusgabedatumTitel}{Ausgabe}
\newcommand{\AbgabedatumTitel}{Abgabe}
\newcommand{\AufgabeTitel}{Aufgabe}
\newcommand{\Teilnehmer}{}
\newcommand{\GruppeTitel}{Gruppe}
\newcommand{\Gruppe}{}
\newcommand{\KleinGruppe}{}
