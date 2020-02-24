%% assignment.cls                                                                                                                
%% Copyright 2020 Adam Morrissett                                               
%                                                                               
% This work may be distributed and/or modified under the                        
% conditions of the LaTeX Project Public License, either version 1.3            
% of this license or (at your option) any later version.                        
% The latest version of this license is in                                      
%   http://www.latex-project.org/lppl.txt                                       
% and version 1.3 or later is part of all distributions of LaTeX                
% version 2003/12/01 or later.                                                  
%                                                                               
% This work has the LPPL maintenance status "author-maintained".                
%                                                                               
% This Current Maintainer of this work is Adam Morrissett.                      
%                                                                               
% This work consists of the files assignment.cls and main.tex.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignment}[2020/02/20 Assignment LaTeX class]

%% Load base class
\LoadClass[12pt]{article}

%% fancyhdr package
%% Used for creating custom headers and footers.
\RequirePackage{fancyhdr}

%% geometry package
%% Used for changing page settings.
\RequirePackage[headheight=14.5pt, margin=1in]{geometry}

%% Times typeface package
%% Used for setting class typeface.
\RequirePackage{mathptmx}

%% lastpage package
%% Used for getting the page count in the document.
\RequirePackage{lastpage}

%% Parse class options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\newcommand*{\course}[3]{%
    \newcommand{\@courseName}{#1}
    \newcommand{\@courseCode}{#2}
    \newcommand{\@courseSection}{#3}
}

\renewcommand{\maketitle}{%
    \pagestyle{fancy}
    \fancyhf{}
    \fancyhead[L]{\fontsize{12}{14.5} \selectfont \@title}
    \fancyhead[C]{\fontsize{12}{14.5} \selectfont \@courseName}
    \fancyhead[R]{\fontsize{12}{14.5} \selectfont \@author}
    
    \fancyfoot[L]{\fontsize{12}{14.5} \selectfont \@date}
    \fancyfoot[C]{\fontsize{12}{14.5} \selectfont Page \thepage{} of \pageref{LastPage}}
    \fancyfoot[R]{\fontsize{12}{14.5} \selectfont \@courseCode{} (\@courseSection{})}
}

\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}

