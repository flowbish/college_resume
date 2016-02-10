%Author: Alec Mori
%Last Updated Sept 12th, 2015
%----------------------------------------------------------------------------------------
%General Information
%----------------------------------------------------------------------------------------

\ProvidesClass{alec_mori_resume_template}[09/10/2015 My Resume]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\usepackage[hmargin=1.0cm, vmargin=0.25cm]{geometry}
\usepackage{hyperref}
\usepackage[english]{isodate}

%----------------------------------------------------------------------------------------
%Colors
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{light}{HTML}{6b6b6b} % The primary document color for content text
\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
\definecolor{headings}{HTML}{2b2b2b} % The color of the large sections
\definecolor{subheadings}{HTML}{333333} % The color of subsections and places worked/studied

%----------------------------------------------------------------------------------------
%Set fonts
%----------------------------------------------------------------------------------------

\usepackage{fontspec}

\setmainfont[Color=primary, BoldItalicFont=Ubuntu-BoldItalic, BoldFont=Ubuntu-Bold, ItalicFont=Ubuntu-Italic]{Ubuntu-Light} 

\setsansfont[Scale=MatchLowercase, Mapping=tex-text]{Abel-Regular} 

%----------------------------------------------------------------------------------------
%Contact Info
%----------------------------------------------------------------------------------------

%Arg1 - First Name
%Arg2 - Last Name
%Arg3 - Contact Info
%Arg4 - Outbound Links
\newcommand{\contactInfo}[4]{
\noindent
\begin{minipage}[t]{0.4\textwidth}
%First Name
\color{headings}
\fontspec{Abel-Regular}\fontsize{42pt}{14pt}\selectfont #1
%Last Name
\color{headings}
\fontspec{Abel-Regular}\fontsize{42pt}{14pt}\selectfont#2%
\end{minipage}
%
\begin{minipage}[t]{0.6\textwidth}%
\begin{flushright}%
%Contact Info
\color{headings}%
\fontspec{Abel-Regular}\fontsize{11pt}{14pt}\selectfont #3%

%Sites
\color{headings}%
\fontspec{Abel-Regular}\fontsize{11pt}{14pt}\selectfont #4%
\end{flushright}%
\end{minipage}%
\vspace{5pt}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{1.5pt}}%
\vspace{-8pt} 
}


%----------------------------------------------------------------------------------------
%Version Information
%----------------------------------------------------------------------------------------
\newcommand{\version}[1]{
%\vspace{-5pt}
\noindent
\begin{minipage}[b][][b]{\textwidth}
\begin{flushleft}
\color{headings}
\fontspec{Ubuntu-Light}\fontsize{11pt}{14pt}\selectfont
\LaTeX | \isodate\today\ | #1
\end{flushleft}
\end{minipage}
}

%----------------------------------------------------------------------------------------
%Section Information
%----------------------------------------------------------------------------------------

%Arg1 - Header Name
%Section Header
\newcommand{\header}[1]{
\vspace{4pt}
\noindent
\color{headings}
\fontspec{Abel-Regular}\fontsize{16pt}{14pt}\selectfont \bf #1
\vspace{-14pt}
\begin{flushleft}
\makebox[\linewidth]{\color{headings}\rule{.91\paperwidth}{0.75pt}}
\end{flushleft}
\vspace{-8pt}
}

%----------------------------------------------------------------------------------------
%Subsection Information
%----------------------------------------------------------------------------------------

%Arg1 - Company
%Arg2 - Date
\newcommand{\subheader}[2]{
\vspace{-6pt}
\fontspec{Abel-Regular}\fontsize{13pt}{14pt}\selectfont
\begin{flushleft}
\hspace{8pt}#1 \hfill #2
\end{flushleft}
\vspace{-8pt}
}

%----------------------------------------------------------------------------------------
%Information
%----------------------------------------------------------------------------------------

%Arg1 - Line
\newcommand{\information}[1]{
\noindent
\fontspec{Abel-Regular}\fontsize{12pt}{13pt}\selectfont
\begin{minipage}[t]{.03\paperwidth}
\hfill
\end{minipage}
\begin{minipage}[t]{.02\paperwidth}
\textbullet
\end{minipage}
\begin{minipage}[t]{.68\paperwidth}
#1
\end{minipage}
\begin{minipage}[t]{.15\paperwidth}
\hfill
\end{minipage}
\vspace{2pt}
}

%----------------------------------------------------------------------------------------
%Mini Header
%----------------------------------------------------------------------------------------

\newcommand{\miniheader}[1]{
\vspace{3pt}
\noindent
\color{headings}
\fontspec{Abel-Regular}\fontsize{16pt}{12pt}\selectfont \bf #1
\vspace{-14pt}
\begin{flushleft}
\makebox[\linewidth][l]{\color{headings}\rule{\textwidth}{0.75pt}}
\vspace{-10pt}
\end{flushleft}
}

%----------------------------------------------------------------------------------------
%Mini Information
%----------------------------------------------------------------------------------------

%Arg1 - Line
\newcommand{\miniinformation}[1]{
\vspace{-6pt}
\fontspec{Abel-Regular}\fontsize{11pt}{12pt}\selectfont
\hspace{6pt} #1

\vspace{8pt}
}
