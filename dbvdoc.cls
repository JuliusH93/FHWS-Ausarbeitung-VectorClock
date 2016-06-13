%%
%% This is file `dbvdoc.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% dbvdoc.dtx  (with options: `package')
%% 
%% Copyright (C) 2000 by Dietrich Paulus. All rights reserved.
%% 
%% 
%% This file is part of the LME TeX package
%% 
%% IMPORTANT NOTICE:
%% 
%% You are not allowed to change this file.  You may however copy this file
%% to a file with a different name and then change the copy.
%% 
%% You are NOT ALLOWED to distribute this file alone.  You are NOT ALLOWED
%% to take money for the distribution or use of this file (or a changed
%% version) except for a nominal charge for copying etc.
%% 
%% You are allowed to distribute this file under the condition that it is
%% distributed together with all files mentioned below.
%% 
%% If you receive only some of these files from someone, complain!
%% 
%% Error Reports in case of UNCHANGED versions to
%% 
%%                         Dietrich Paulus
%%                         Lehrstuhl f. Mustererkennung
%%                         D 91054 Erlangen
%%             Internet:  <info@immd4.cs.fau.de>
%% 
%% This file was modified by Olaf Kaehler
%% Error Reports for versions UNCHANGED as from now to
%% 
%%                          Olaf K"ahler
%%                          Lehrstuhl f. Digitale Bildverarbeitung
%%                          D 07743 Jena
%%              Internet:  <kaehler@informatik.uni-jena.de>
%% 
%% $Id: lmedoc.dtx,v 1.13 2003/02/13 09:29:00 zobel Exp $
%% Copyright (C) 2000 Dietrich Paulus
%%
%% Modified Version for Jena
%% by Olaf Kaehler
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dbvdoc}[2007/07/17 v1.1 dbv document (DBV)]
\def\BaseClass{report}
\LoadClass[twoside,12pt]{\BaseClass}     % 12 pt base class report
\RequirePackage[a4paper]{geometry}
\RequirePackage{a4wide}          % page layout
\RequirePackage{bm}        % standard math notation (fonts)
\RequirePackage{fixmath}        % standard math notation (fonts)
\RequirePackage{amsmath}            % standard math notation (vectors/sets/...)
\RequirePackage{math}            % standard math notation (vectors/sets/...) 
\RequirePackage{graphicx}        % eps graphics support
\RequirePackage{times}           % scalable fonts
\RequirePackage{setspace}  % set correct baselinestretch
%\RequirePackage{twolang}         % will load ngerman.sty
\def\Type{0}
%\DeclareOption{ngerman}{\selectlanguage{\ngerman}}
%\DeclareOption{english}{\selectlanguage{\english}}
\DeclareOption{da}{\gdef\Type{1}}
\DeclareOption{sa}{\gdef\Type{2}}
\DeclareOption{mt}{\gdef\Type{3}}
\DeclareOption{bt}{\gdef\Type{4}}
\DeclareOption{rep}{\gdef\Type{5}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\BaseClass}}
\ProcessOptions\relax
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\typeout{Type \Type}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\onehalfspacing
\let\oldChapter=\chapter
\def\chapter{\cleardoublepage\oldChapter}
\pagestyle{headings}
\DeclareGraphicsRule{.ps.gz}{eps}{.ps.bb}{`gunzip -c #1}
\DeclareGraphicsRule{.cps.gz}{eps}{.cps.bb}{`gunzip -c #1}
\DeclareGraphicsRule{.eps.gz}{eps}{.eps.bb}{`gunzip -c #1}
\DeclareGraphicsRule{.ps.Z}{eps}{.ps.bb}{`gunzip -c #1}
\DeclareGraphicsRule{.cps.Z}{eps}{.cps.bb}{`gunzip -c #1}
\DeclareGraphicsRule{.eps.Z}{eps}{.eps.bb}{`gunzip -c #1}
\DeclareGraphicsExtensions{.ps,.eps,.ps.Z,.eps.Z,.ps.gz,.eps.gz,.ps.bb,.eps.bb}
\makeatletter
\def\city#1{\def\@city{#1}}
\def\birthdate#1{\def\@birthdate{#1}}
\def\advisor#1{\def\@advisor{#1}}
\def\startthesis#1{\def\@startthesis{#1}}
\def\endthesis#1{\def\@endthesis{#1}}
\def\deckblatt{\bgroup\def\baselinestretch{1.0}%
    \def\Titel##1{\gdef\@Titel{##1}\typeout{Defining Titel}}
    \def\Name##1{\gdef\@Name{##1}}
    \def\Vorname##1{\gdef\@Vorname{##1}}
    \def\Geburtsort##1{\gdef\@Geburtsort{##1}}
    \def\Wohnort##1{\gdef\@Wohnort{##1}}
    \def\Geburtsdatum##1{\gdef\@Geburtsdatum{##1}}
    \def\BetreuerA##1{\gdef\@BetreuerA{##1}}
    \def\BetreuerB##1{\gdef\@BetreuerB{##1}}
    \def\Start##1{\gdef\@Start{##1}}
    \def\Ende##1{\gdef\@Ende{##1}}
    \def\Fach##1{\gdef\@Fach{##1}}
    \def\Schwerpunkt##1{\gdef\@Schwerpunkt{##1}}
    \def\Angefertigt##1{\gdef\@Angefertigt{##1}}
}
\def\enddeckblatt{%
\clearpage
\thispagestyle{empty}
\vspace*{-15mm}
%\hfill\includegraphics[width=8cm]{fhws.eps}
\vspace*{1.6cm}
\begin{center}
{\large\bf
    \ifnum\Type=1 Diplomarbeit\fi
    \ifnum\Type=2 Studienarbeit\fi
    \ifnum\Type=3 MASTER-ARBEIT\fi
    \ifnum\Type=4 BACHELOR-ARBEIT\fi
} \\[10mm]
\normalsize
vorgelegt an der Hochschule\\[1mm]
f\"{u}r angewandte Wissenschaften W\"{u}rzburg-Schweinfurt\\[1mm]
in der Fakult\"{a}t Informatik und Wirtschaftsinformatik\\[1mm]
zum Abschluss eines Studiums im Studiengang \@Fach \\[5mm]
{\ifnum\Type=4 Studienschwerpunkt: \@Schwerpunkt\else ~~~ \fi} \\[10mm]
{\Large\bf \@Titel}\\[20mm]
\@Angefertigt
\end{center}
\vfill
\begin{flushleft}
\@BetreuerA \\[2mm]
\@BetreuerB \\[2mm]
Abgabetermin: \@Ende \\[2mm]
Eingereicht von: \@Vorname\ \@Name\ aus \@Wohnort
\end{flushleft}
\clearpage
\egroup}
\endinput
%%
%% End of file `dbvdoc.cls'.
