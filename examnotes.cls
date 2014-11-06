\ProvidesClass{examnotes}[2014/05/28 Exam Notes]
\NeedsTeXFormat{LaTeX2e}

% catchall options and pass to article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[T1]{fontenc}
\usepackage[quiet]{fontspec}
\usepackage{polyglossia}
\usepackage{fourier-orns}
\usepackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}

\usepackage{graphicx,xcolor}
\definecolor{shadecolor}{HTML}{DDDDDD}
\definecolor{shadowcolor}{HTML}{DDDDDD}

\newfontfamily\thinfont[]{Helvetica Neue UltraLight}
\newfontfamily\headingfont[Color=212121,Ligatures=TeX]{Helvetica Neue Condensed Black}
\newfontfamily\subheadingfont[Color=212121,Ligatures=TeX]{Helvetica Neue Condensed Bold}
\newfontfamily\requiredfont[Color=FF4B4B,Ligatures=TeX]{Helvetica Neue Condensed Bold}
\newfontfamily\mybold[Color=2A2A2A,Ligatures=TeX]{Helvetica Neue Bold}
\newfontfamily\symbols[Color=2A2A2A,Ligatures=TeX]{Consolas}

\setmainfont[ItalicFont={Helvetica Neue Thin Italic},
  BoldFont={Helvetica Neue Medium},
  Ligatures=TeX]{Helvetica Neue}

\usepackage[a4paper]{geometry}
\newgeometry{top=1.5cm,left=1.5cm,right=1.3cm,bottom=2.2cm}

\usepackage[center]{titlesec}
\usepackage{amsmath,amsfonts,amsthm}

\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\rfoot{\bf\thepage}

\usepackage{enumitem}
\setlist[enumerate,2]{label=\emph{\alph*}.,ref=\theenumi.\emph{\alph*}}

\setlength\parindent{0pt}
\usepackage[]{microtype}
\raggedright
\usepackage{calc}
\newlength{\myl}

\def\disobeylines{\catcode`\^^M=5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% macros    macros    macros    macros   macros    macros    macros    macros   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\header[1]{\fancyhead[L]{\scriptsize\bf\center #1}}
\newcommand\h[1]{{\vspace{0.5\baselineskip}\centering\subheadingfont\Large#1\par\vspace{0.2\baselineskip}}}
%\newcommand\sh[1]{{\vspace{0.5\baselineskip}\subheadingfont\large#1}}
\titleformat{name = \section, numberless}
{\subheadingfont\large}
{}{0em}{}
\titlespacing\section{0pt}{6pt}{-\parskip}
\newcommand\sh[1]{\section*{#1}}
\newcommand\red[1]{{\requiredfont #1}}
\newcommand\note[1]{{\small\requiredfont #1}}
\newcommand\ra{{\symbols →\hspace{0.3em}}\hangindent=0.85em}

\newcommand\rn[1]{\hspace{1em}{#1)\hspace{.3em}}\hangindent=2.1em}
\newcommand\rna{\hspace{2.1em}{\symbols →}\hspace{0.3em}\hangindent=3.1em}

\newcommand\de[1]{\settowidth{\myl}{#1}\addtolength{\myl}{1ex}\textbf{#1}\hangindent=\myl}
\newcommand{\ml}[1]{\vspace{-1.7em}\begin{flalign*}& #1 & \end{flalign*}}
\newcommand{\vp}{\vspace{1ex}}
\newcommand\mymath[1]{\begin{math}\begin{aligned}[t]#1\end{aligned}\end{math}}
\newcommand{\mytilde}{\raise.17ex\hbox{$\scriptstyle\mathtt{\sim}$}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% macros    macros    macros    macros   macros    macros    macros    macros   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


