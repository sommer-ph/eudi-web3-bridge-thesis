% cacthesis is a document class for bachelor and master theses.
% It is based on the scrbook document class.

\def\fileversion{0.9}
\def\filedate{2019/09/26}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cacthesis}[\fileversion\space v.\fileversion\space CAC Thesis document class]

\LoadClass[a4paper,11pt,oneside,numbers=noenddot,listof=totoc]{scrbook}

\RequirePackage{graphicx}

\newcommand{\logoPath}{images/tud_logo.png}


\RequirePackage[left=20mm,right=20mm,top=23mm,bottom=23mm,footskip=7mm,headheight=4mm]{geometry}

\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
	\fancyhf{}
	\renewcommand\headrulewidth{0pt}
	\fancyfoot[R]{\thepage}
}
\fancypagestyle{myheadings}{
	\fancyhf{}
	\fancyhead[C]{\leftmark}
	\renewcommand\headrulewidth{0.4pt}
	\renewcommand{\footrulewidth}{0.4pt}
	\fancyfoot[R]{\thepage}
}
\pagestyle{myheadings}
% setup style of first line
\RequirePackage{indentfirst}
\setlength{\parindent}{0cm}


\titlehead{
	\begin{center}
		\includegraphics[scale=1.5]{\logoPath}\\
		{\scshape Technische Universit\"at Darmstadt}\\
		{\scshape Department of Computer Science}\\
		{\scshape Chair of Applied Cryptography}	
	\end{center}
}
