%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% author: andywiecko                        %
% project: multilanguage LaTeX CV template  %
% version: v1.0                             %
% site: andywiecko.github.io                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Custom package options
\DeclareOption{english}{
\PassOptionsToPackage{\CurrentOption}{babel}
}
\DeclareOption{polish}{
\PassOptionsToPackage{\CurrentOption}{babel}
}
\DeclareOption{russian}{
\PassOptionsToPackage{\CurrentOption}{babel}
}


%% Process given options
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{babel}

% Packages
\usepackage[utf8]{inputenc}
\usepackage{Packages/Geometry}
\usepackage{Packages/SectionStyle}
\usepackage{Packages/FieldDefinitions}
\usepackage{Packages/HyperrefSetup}
\usepackage{Packages/MakeContact}
\usepackage{Packages/Pagination}
\usepackage{Packages/TimeItem}
\usepackage{Packages/Bibliography}
\usepackage{Packages/Misc}
% Settings
\usepackage{Settings/FillContactOrder}
\usepackage{Settings/DefinedFields}
\usepackage{Settings/DefinedSections}
\usepackage{Settings/Icons}
\usepackage{Settings/WidthSettings}

\makeatletter
\def\@LANG#1{\iflanguage{#1}{\usepackage{Settings/LANG/#1}}{}}
\@LANG{polish}
\@LANG{english}
\@LANG{russian}
\makeatother

% languages macros
\def\PL#1{\iflanguage{polish}{#1}{}}
\def\ENG#1{\iflanguage{english}{#1}{}}
\def\RUS#1{\iflanguage{russian}{#1}{}}
