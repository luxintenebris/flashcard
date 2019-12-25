\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myclass}[YYYY/MM/DD v1.0 My Class...]

%% Base class options
%\DeclareOption{}{
%  \PassOptionsToClass{\CurrentOption}{base-class}
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
\LoadClass{article}

%% Load additional packages
%\RequirePackage{}

%% Additional TeX/LaTeX code...

\endinput
