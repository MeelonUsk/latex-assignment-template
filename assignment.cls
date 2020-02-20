%% Copyright 2020 Adam Morrissett
%%
%% Permission is hereby granted, free of charge, to any person obtaining a 
%% copy of this software and associated documentation files (the "Software"),
%% to deal in the Software without restriction, including without limitation 
%% the rights to use, copy, modify, merge, publish, distribute, sublicense, 
%% and/or sell copies of the Software, and to permit persons to whom the 
%% Software is furnished to do so, subject to the following conditions:
%% 
%% The above copyright notice and this permission notice shall be included in 
%% all copies or substantial portions of the Software.
%% 
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
%% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
%% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
%% FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
%% DEALINGS IN THE SOFTWARE.

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

