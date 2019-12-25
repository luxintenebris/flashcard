% file comment %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 		Filename:		flashcard.cls
%
% 		Project:		tex-card
%
% 		Author:			Andreas L. Duschl <<andreas.duschl@luxintenebris.de>>
%
% 		Affiliation:	____________________
%		
%		Copyright:		____________________
%
%		Description:
%		Class for creating Q&A flashcards.
%
%
%
%		Document state:	Development
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{flashcard}[2019/12/24 v0.1 Class for creating Q&A flashcards.]

%% Base class options
%\DeclareOption{}{
%  \PassOptionsToClass{\CurrentOption}{article}
%}

%% Fallback
\DeclareOption*{
	\ClassWarning{}{Unknown option'\CurrentOption'}
}

%% Execute default options
%ExecuteOptions{}

%% Process given options
\ProcessOptions\relax

%% Load base
\LoadClass[twoside]{article}

%% Load additional packages
\RequirePackage[a6paper, landscape, top=16mm, right=5mm, left=5mm]{geometry}
\RequirePackage{fancyhdr}

%% Additional TeX/LaTeX code...

\newcounter{cardcounter}

\pagestyle{fancy} 
\fancyhf{} 
\fancyhead[OL]{\leftmark} 
\fancyhead[OC]{\emph{Question}} 
\fancyhead[EC]{\emph{Answer}}
\fancyhead[OR]{\#\arabic{cardcounter}}
%\renewcommand{\headrulewidth}{1.0pt}

\renewcommand{\sectionmark}[1]{\markboth{#1}{}}

\renewcommand\section[1]{%
  \refstepcounter{section}%
  \addcontentsline{toc}{section}{\protect\numberline{\thesection}#1}%
  \sectionmark{#1}}

\newenvironment{card}[1]{
	\stepcounter{cardcounter}
	\vspace*{\fill}
	\begin{center}\LARGE{#1}\end{center}
	\vspace*{\fill}
	\newpage
}
{\newpage}

\endinput