% File comment %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 		Filename:		flashcards.cls
%
% 		Project:		flashcards
%
% 		Author:			Andreas L. Duschl <<andreas.duschl@luxintenebris.de>>
%
%
%		Description:
%		Class for creating Q&A flashcards.
%
%
%
%		Document state:	Development
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{flashcards}[2019/12/24 v0.1 Class for creating Q&A flashcards.]

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
\RequirePackage[a6paper, landscape, top=15mm, right=10mm, left=10mm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{tocloft}
\RequirePackage{makeidx}
\RequirePackage{hyperref}
\RequirePackage[fit]{truncate}
\RequirePackage{xifthen}

%% Additional TeX/LaTeX code...

\pagestyle{fancy} 
\fancyhf{} 
\fancyhead[OL]{\leftmark} 
\fancyhead[OC]{\emph{Question}} 
\fancyhead[EC]{\emph{Answer}}
\fancyhead[OR]{\#\arabic{cards}}
%\renewcommand{\headrulewidth}{1.0pt}

\renewcommand{\sectionmark}[1]{\markboth{#1}{}}
\renewcommand\section[1]{%
  \refstepcounter{section}%
  \addcontentsline{toc}{section}{\protect\numberline{\thesection}#1}%
  \sectionmark{#1}}

\newlistof{cards}{crd}{List of cards}

\newcommand*\cleartoleftpage{%
  \clearpage
  \ifthenelse{\isodd{\value{page}}}{}{\hbox{}\newpage}
}

\newcommand{\addcard}[3][]{
	\refstepcounter{cards}
	\ifthenelse{\isempty{#1}}
	{\addcontentsline{crd}{cards}{\#\protect\numberline{\thecards} \truncate[ {[}\dots{]}]{0.75\textwidth}{#2}}}
	{\addcontentsline{crd}{cards}{\#\protect\numberline{\thecards} \truncate[ {[}\dots{]}]{0.75\textwidth}{#1}}}
	\cleartoleftpage
	\noindent
	\begin{minipage}[t][0.95\textheight][t]{\textwidth}% question
	\vspace*{\fill}
	\begin{center}\LARGE{#2}\end{center}
	\vspace*{\fill}
	\end{minipage}
	\newpage
	\par
    \noindent
	\begin{minipage}[t][0.95\textheight][t]{\textwidth}%  answer
	#3
	\end{minipage}
	\newpage
}

\endinput
