%%
%% This is file `hauthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% hauthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% Copyright (C) 2026 by ShixuanCheng
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2008 or later.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hauthesis}
[2026/10/01 1.0 Huai'an University Thesis Template]

\def\hau@fontset{windows}

\DeclareOption{windows}{\def\hau@fontset{windows}}
\DeclareOption{macos}  {\def\hau@fontset{macos}}
\DeclareOption{linux}  {\def\hau@fontset{linux}}
\DeclareOption{none}   {\def\hau@fontset{none}}

\newif\ifhau@num@fig   \hau@num@figtrue
\newif\ifhau@num@tab   \hau@num@tabtrue
\newif\ifhau@num@eqn   \hau@num@eqntrue
\newif\ifhau@num@alg   \hau@num@algtrue

\DeclareOption{plainfig}{\hau@num@figfalse}
\DeclareOption{plaintab}{\hau@num@tabfalse}
\DeclareOption{plaineqn}{\hau@num@eqnfalse}
\DeclareOption{plainalg}{\hau@num@algfalse}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[UTF8, a4paper, zihao=-4, openany, oneside, fontset=none]{ctexbook}

\RequirePackage{geometry}

\geometry{
showframe=false,         % 显示排版边框
verbose=true,           % 显示调试信息
a4paper,                % A4（210mm × 297mm）
includeheadfoot=false,  % 页眉页脚不计入版心
bindingoffset=0.9cm,    % 装订线宽度
left=2.5cm,             % 左边距
right=2cm,              % 右边距
top=2.74cm,             % 上边距
bottom=2.2cm,           % 下边距
headheight=0.7cm,       % 页眉区域高度
headsep=8bp,            % 页眉下边界到版心上边界的距离
footskip=0.45cm,        % 版心下边界到页脚基线的距离
}
\newcommand\songti  {\CJKfamily{zhsong}}
\newcommand\heiti   {\CJKfamily{zhhei}}
\newcommand\kaishu  {\CJKfamily{zhkai}}
\newcommand\fangsong{\CJKfamily{zhfs}}
\newcommand\lishu   {\CJKfamily{zhli}}
\newcommand\hau@set@fonts@none{}
\newcommand\hau@set@fonts@auto{%
\IfFontExistsTF{SimSun}%
{\hau@set@fonts@windows}%
{\IfFontExistsTF{Songti SC}%
 {\hau@set@fonts@macos}%
 {\hau@set@fonts@linux}}%
}
\newcommand\hau@set@fonts@windows{%
\IfFontExistsTF{SimSun}
{%
\setmainfont{Times New Roman}%
\setCJKmainfont{SimSun}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhsong}{SimSun}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhhei}{SimHei}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhkai}{KaiTi}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhfs}{FangSong}[AutoFakeBold=2]%
\setCJKfamilyfont{zhli}{LiSu}[AutoFakeBold=2]%
\newCJKfontfamily{\bfkai}{KaiTi}[FakeBold=2]%
}%
{%
\PackageWarning{hauthesis}{'windows' fonts not found; switching to 'auto'}%
\hau@set@fonts@auto
}%
}
\newcommand\hau@set@fonts@macos{%
\IfFontExistsTF{Songti SC}
{%
\setmainfont{Times New Roman}%
\setCJKmainfont{Songti SC}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhsong}{Songti SC}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhhei}{Heiti SC}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhkai}{Kaiti SC}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhfs}{STFangsong}[AutoFakeBold=2]%
\setCJKfamilyfont{zhli}{STLiti}[AutoFakeBold=2]%
\newCJKfontfamily{\bfkai}{Kaiti SC}[FakeBold=2]%
}%
{%
\PackageWarning{hauthesis}{'macos' fonts not found; switching to 'auto'}%
\hau@set@fonts@auto
}%
}
\newcommand\hau@set@fonts@linux{%
\IfFontExistsTF{FandolSong-Regular.otf}
{%
\setmainfont{texgyretermes}[%
Extension      = .otf,%
UprightFont    = *-regular,%
BoldFont       = *-bold,%
ItalicFont     = *-italic,%
BoldItalicFont = *-bolditalic,%
]%
\setCJKmainfont{FandolSong-Regular.otf}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhsong}{FandolSong-Regular.otf}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhhei}{FandolHei-Regular.otf}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhkai}{FandolKai-Regular.otf}[AutoFakeBold=2, AutoFakeSlant=0.2]%
\setCJKfamilyfont{zhfs}{FandolFang-Regular.otf}[AutoFakeBold=2]%
\setCJKfamilyfont{zhli}{FandolKai-Regular.otf}[AutoFakeBold=2]%
\newCJKfontfamily{\bfkai}{FandolKai-Regular.otf}[FakeBold=2]%
}%
{%
\PackageError{hauthesis}{No usable CJK fonts found}{%
Install Fandol fonts (they ship with TeX Live), or pass [none] and set fonts yourself.}%
}%
}
\@ifundefined{hau@set@fonts@\hau@fontset}%
{\PackageError{hauthesis}{Unknown fontset '\hau@fontset'}{}}%
{\expandafter\let\expandafter\hau@set@fonts
 \csname hau@set@fonts@\hau@fontset\endcsname}%
\hau@set@fonts
\renewcommand{\normalsize}{\fontsize{12bp}{14.4bp}\selectfont}
\linespread{1.625}

\setlength{\parindent}{2\ccwd}
\setlength{\parskip}{0bp}
\raggedbottom %\flushbottom
\renewcommand\chapter{%
\global\@topnum\z@
\@afterindenttrue
\secdef\@chapter\@schapter}

\ctexset{
chapter = {
name       = {},
number     = \arabic{chapter},
format     = \heiti\bfseries\zihao{-3},
aftername  = \hspace{1\ccwd},
fixskip    = true,
beforeskip = 22.5bp,
afterskip  = 22.5bp,
},
section = {
format    = \heiti\bfseries\zihao{4},
aftername = \hspace{1\ccwd},
beforeskip = .2\baselineskip,
afterskip  = .2\baselineskip,
},
subsection = {
format    = \heiti\zihao{-4},
aftername = \hspace{1\ccwd},
beforeskip = .2\baselineskip,
afterskip  = .2\baselineskip,
},
}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

\pagestyle{fancy}
\fancyhf{}
\newcommand{\hautotalpages}{\pageref{LastPage}}

\let\haudefaultCJKglue\CJKglue
\newcommand{\hauheaderspace}{%
\xeCJKsetup{CJKglue={\haudefaultCJKglue\hskip 3pt}}%
}

\fancyhead[L]{{\bfseries\zihao{-2}\hauheaderspace \ 淮安大学毕业设计（论文）}}
\fancyhead[R]{\songti\zihao{-4}第 \thepage 页\quad 共 \hautotalpages 页}
\renewcommand{\headrulewidth}{0.5pt}
\RequirePackage{tabularray}
\RequirePackage{graphicx}

\def\YourName{}
\def\YourNumber{}
\def\YourCollege{}
\def\YourMajor{}
\def\PaperTitleLa{}
\def\PaperTitleLb{}
\def\SupervisorNameIn{}
\def\SupervisorTitleIn{}
\def\SupervisorNameOut{}
\def\SupervisorTitleOut{}
\def\PaperYear{}
\def\PaperMonth{}
\def\PaperTitleENa{}
\def\PaperTitleENb{}
\def\Keywords{}
\def\KeywordsEN{}

\newcommand{\MakeCover}{%
\vspace*{2\baselineskip}%
\thispagestyle{empty}%
\begin{center}%
{\kaishu\fontsize{26pt}{32.5pt}\selectfont 淮 \ 安 \ 大 \ 学}\\[5.5em]
{\heiti\fontsize{38pt}{47.5pt}\selectfont 毕业设计（论文）}\\[7.5em]
\kaishu\zihao{3}%
\begin{tblr}{
colspec = {Q[b,j,wd=2.9cm]Q[b,c,wd=0.9cm]Q[b,c,wd=2.1cm]Q[b,c,wd=1.4cm]
 Q[b,c,wd=0.6cm]Q[b,c,wd=2.9cm]Q[b,c,wd=0.9cm]},
colsep = 6pt,
row{1-Z} = {ht=1cm, abovesep=10pt, belowsep=0pt},
hspan = minimal, vspan = minimal,
}
\bfkai 学 \ 生 \ 姓 \ 名： & \SetCell[c=2]{b,c}\YourName &&
\SetCell[c=2]{b,c}\bfkai 学\hspace{1em}号： &&
\SetCell[c=2]{b,c}\YourNumber & \\
\cline{2-3}\cline{6-7}
\bfkai 学\hspace{2.7em}院： & \SetCell[c=6]{b,c}\YourCollege &&&&&& \\
\cline{2-7}
\bfkai 专\hspace{2.7em}业： & \SetCell[c=6]{b,c}\YourMajor &&&&&& \\
\cline{2-7}
\bfkai\scalebox{0.6}[1]{设计（论文）题目}： &
\SetCell[c=6]{b,c}\PaperTitleLa &&&&&& \\
\cline{2-7}
\rule{0pt}{20pt} & \SetCell[c=6]{b,c}\PaperTitleLb &&&&&& \\
\cline{2-7}
\bfkai\scalebox{0.8}[1]{校内指导老师}： &&
\SetCell[c=2]{b,c}\SupervisorNameIn &&
\SetCell[c=2]{b,c}\SupervisorTitleIn &&\\
\cline{2-7}
\bfkai\scalebox{0.8}[1]{校外指导老师}： &&
\SetCell[c=2]{b,c}\SupervisorNameOut &&
\SetCell[c=2]{b,c}\SupervisorTitleOut &&\\
\cline{2-7}
\end{tblr}%
\par\vspace{6em}%
{\heiti\fontsize{16pt}{20pt}\selectfont
\PaperYear\hspace{1em}年\hspace{1em}\PaperMonth\hspace{1em}月}%
\end{center}%
}
\newcommand{\abstracthead}{}
\newsavebox{\abstractbox}

\fancypagestyle{hauabstract}{%
\fancyhf{}%
\fancyhead[C]{{\zihao{3}\hauheaderspace\abstracthead}}%
\renewcommand{\headrulewidth}{0pt}%
}

\newenvironment{hauabstractpage}[1]{%
\renewcommand{\abstracthead}{#1}%
\clearpage
\newgeometry{
showframe=false,        % 显示排版边框
includeheadfoot=false,  % 页眉页脚不计入版心
bindingoffset=0.9cm,    % 装订线宽度
left=2.5cm,             % 左边距
right=2cm,              % 右边距
top=2.74cm,             % 上边距
bottom=2.2cm,           % 下边距
headheight=0.7cm,       % 页眉区域高度
headsep=0.25cm,         % 页眉下边界到版心上边界的距离
footskip=0.45cm,        % 版心下边界到页脚基线的距离
}%
\thispagestyle{hauabstract}%
\setlength{\fboxsep}{0.5em}%
\setlength{\fboxrule}{1bp}%
\begin{lrbox}{\abstractbox}%
\begin{minipage}[c][\dimexpr\textheight-2\fboxsep-2\fboxrule][t]%
{\dimexpr\textwidth-2\fboxsep-2\fboxrule}%
\songti\zihao{-4}%
}{%
\end{minipage}%
\end{lrbox}%
\noindent\fbox{\usebox{\abstractbox}}%
\clearpage
\restoregeometry
}

\newcommand{\keywordsCN}[1]{%
\par\vspace{2\baselineskip}\noindent
{\heiti 关键词}\hspace{1\ccwd}#1\par
}
\newenvironment{cnabstract}%
{\begin{hauabstractpage}{毕业设计（论文）中文摘要}%
 \vspace*{\baselineskip}% 先空一行
 \parindent=2\ccwd}%      每段首行缩进两个汉字
{\keywordsCN{\Keywords}%
 \end{hauabstractpage}}
\newlength{\hautitlelabelwd}
\newlength{\hautitletextwd}
\newlength{\hautitleline}

\setlength{\hautitleline}{31.2bp}

\newcommand{\hauabstracttitle}[2]{%
\begingroup
\parskip=0pt
\par\noindent
\settowidth{\hautitlelabelwd}{\zihao{3}\bfseries Title\hspace{0.5em}}%
\setlength{\hautitletextwd}{\dimexpr\linewidth-\hautitlelabelwd\relax}%
\begin{tabular}{@{}l@{}p{\hautitletextwd}@{}}
\noindent\rule[-6bp]{0pt}{\hautitleline}\zihao{3}\bfseries Title\hspace{0.5em} &
\noindent\rule[-6bp]{0pt}{\hautitleline}\makebox[\hautitletextwd][c]{\zihao{4}#1} \\ \cline{2-2}
\noalign{\vskip 26.4bp}%
\noindent\rule[-6bp]{0pt}{\hautitleline} &
\noindent\rule[-6bp]{0pt}{\hautitleline}\makebox[\hautitletextwd][c]{\zihao{4}#2} \\ \cline{2-2}
\end{tabular}%
\par\vspace{26bp}%
\noindent{\zihao{3}\bfseries\rule{0pt}{\hautitleline}Abstract}\par
\vspace{23.2bp}%
\endgroup
}

\newcommand{\keywordsEN}[1]{%
\par\vspace{2\baselineskip}%
{\bfseries Keywords}\hspace{1\ccwd}#1\par
}

\newenvironment{enabstract}%
{\begin{hauabstractpage}{毕业设计（论文）外文摘要}%
 \hauabstracttitle{\PaperTitleENa}{\PaperTitleENb}%
 \linespread{1.2}\selectfont}%
{\keywordsEN{\KeywordsEN}%
 \end{hauabstractpage}}
\newcommand{\hautocstart}{%
\clearpage
\pagenumbering{Roman}%
\renewcommand{\hautotalpages}{\pageref{hauctocend}}%
\pagestyle{fancy}%
}

\newcommand{\hautocend}{%
\label{hauctocend}%
\clearpage
\renewcommand{\hautotalpages}{\pageref{LastPage}}%
}

\renewcommand{\tableofcontents}{%
\clearpage
\begingroup
\parskip=0pt \topsep=0pt \partopsep=0pt
\vspace*{70.6bp}%
\begin{center}%
{\linespread{1}\heiti\fontsize{14pt}{21pt}\selectfont 目\hspace{1.5em}录}%
\end{center}%
\vspace*{43.3bp}%
\linespread{1}\songti\fontsize{12bp}{26bp}\selectfont
\@starttoc{toc}%
\endgroup
}

\renewcommand{\@dotsep}{2.5}
\renewcommand*\l@chapter{\@dottedtocline{0}{0em}{1.0em}}
\renewcommand*\l@section{\@dottedtocline{1}{0em}{2.0em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{0em}{2.8em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{0em}{4.0em}}
\newcommand*\l@unnumbered{\@dottedtocline{0}{0em}{0em}}
\graphicspath{{figures/}}
\RequirePackage{caption}

\ifhau@num@fig
  \counterwithin{figure}{chapter}
  \renewcommand{\thefigure}{\thechapter-\arabic{figure}}
\else
  \counterwithout{figure}{chapter}
  \renewcommand{\thefigure}{\arabic{figure}}
\fi
\ifhau@num@tab
  \counterwithin{table}{chapter}
  \renewcommand{\thetable}{\thechapter-\arabic{table}}
\else
  \counterwithout{table}{chapter}
  \renewcommand{\thetable}{\arabic{table}}
\fi
\DeclareCaptionLabelFormat{haucapfmt}{#1#2}
\DeclareCaptionLabelSeparator{haucapsep}{\hspace{1\ccwd}}
\DeclareCaptionFont{haucapfont}{\linespread{1}\songti\fontsize{10.5pt}{12.6pt}\selectfont}
\captionsetup{
font          = haucapfont,
labelformat   = haucapfmt,
labelsep      = haucapsep,
justification = centering,
}
\captionsetup[table]{position=top}
\captionsetup[figure]{position=bottom}
\setlength{\textfloatsep}{12pt plus 2pt minus 2pt}   % 浮动体在页顶/页底时
\setlength{\intextsep}{12pt plus 2pt minus 2pt}      % 浮动体夹在正文中间时
\setlength{\floatsep}{12pt plus 2pt minus 2pt}       % 两个浮动体之间

\captionsetup[table]{skip=6pt, aboveskip=6pt}   % 表题：与表格之间 6pt，上方 6pt
\captionsetup[figure]{skip=6pt, belowskip=6pt}  % 图题：与图片之间 6pt，下方 6pt

\g@addto@macro\@floatboxreset{%
\linespread{1}%
\songti\fontsize{10.5pt}{12.6pt}\selectfont
\renewcommand\arraystretch{1.35}%
}
\RequirePackage{enumitem}

\setlist{
topsep    = 0pt,
partopsep = 0pt,
parsep    = 0pt,
itemsep   = 0pt,
}
\RequirePackage{unicode-math}
\setmathfont{texgyretermes-math.otf}

\RequirePackage{etoolbox}
\newcommand{\hau@mathleading}{\linespread{1}\selectfont}
\newcommand{\hau@setmathleading}[1]{%
\AtBeginEnvironment{#1}{\hau@mathleading}}
\forcsvlist{\hau@setmathleading}{%
align,align*,alignat,alignat*,flalign,flalign*,
gather,gather*,multline,multline*,
split,aligned,alignedat,gathered,
array,matrix,pmatrix,bmatrix,Bmatrix,vmatrix,Vmatrix,cases,dcases}
\ifhau@num@eqn
  \counterwithin{equation}{chapter}
  \renewcommand{\theequation}{\thechapter-\arabic{equation}}
\else
  \counterwithout{equation}{chapter}
  \renewcommand{\theequation}{\arabic{equation}}
\fi

\setlength{\abovedisplayskip}{10pt plus 2pt minus 5pt}
\setlength{\belowdisplayskip}{10pt plus 2pt minus 5pt}
\setlength{\abovedisplayshortskip}{0pt plus 3pt}
\setlength{\belowdisplayshortskip}{6pt plus 3pt minus 3pt}
\setlength{\jot}{6pt}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\floatname{algorithm}{算法}
\renewcommand{\algorithmicrequire}{\textbf{输入：}}
\renewcommand{\algorithmicensure}{\textbf{输出：}}
\renewcommand{\algorithmiccomment}[1]{\hfill/* #1 */}
\ifhau@num@alg
  \counterwithin{algorithm}{chapter}
  \renewcommand{\thealgorithm}{\thechapter-\arabic{algorithm}}
\else
  \counterwithout{algorithm}{chapter}
  \renewcommand{\thealgorithm}{\arabic{algorithm}}
\fi
\AtBeginEnvironment{algorithm}{%
  \fontsize{10.5pt}{12.6pt}\selectfont
  \setlength{\abovedisplayskip}{6pt plus 2pt minus 2pt}%
  \setlength{\belowdisplayskip}{6pt plus 2pt minus 2pt}%
  \setlength{\abovedisplayshortskip}{6pt plus 2pt minus 2pt}%
  \setlength{\belowdisplayshortskip}{6pt plus 2pt minus 2pt}%
}
\DeclareCaptionFont{hauwuhao}{\fontsize{10.5pt}{12.6pt}\selectfont}
\captionsetup[algorithm]{font={hauwuhao}}
\newenvironment{conclusion}{%
\clearpage
\begingroup
\parskip=0pt \topsep=0pt \partopsep=0pt
\vspace*{56.5bp}%
\phantomsection
\addcontentsline{toc}{unnumbered}{总结与展望}%
\begin{center}%
{\linespread{1}\heiti\fontsize{15bp}{22.5bp}\selectfont 总结与展望}%
\end{center}%
\vspace*{27.25bp}%
\endgroup
}{%
\clearpage
}

\newenvironment{acknowledgements}{%
\clearpage
\begingroup
\parskip=0pt \topsep=0pt \partopsep=0pt
\vspace*{56.5bp}%
\phantomsection
\addcontentsline{toc}{unnumbered}{致谢}%
\begin{center}%
{\linespread{1}\heiti\fontsize{15bp}{22.5bp}\selectfont 致 \quad 谢}%
\end{center}%
\vspace*{27.25bp}%
\endgroup
}{%
\clearpage
}


\newlength{\hau@note@itemsep}
\newlength{\hau@note@line}
\setlength{\hau@note@itemsep}{6pt}
\setlength{\hau@note@line}{18pt}

\newcommand{\notemark}[1]{%
\hyperlink{note@#1}{\textsuperscript{[#1]}}%
}

\newlist{notelist}{enumerate}{1}
\setlist[notelist]{%
label       = [\arabic*],
labelindent = 0pt,
leftmargin  = *,
labelsep    = 0.5em,
widest      = 99,
topsep      = 0pt,
partopsep   = 0pt,
parsep      = 0pt,
itemsep     = \hau@note@itemsep,
before      = \vspace{0pt},
after       = \vspace{0pt},
}

\newenvironment{notes}{%
\clearpage
\begingroup
\parskip=0pt \topsep=0pt \partopsep=0pt
\vspace*{56.5bp}%
\phantomsection
\addcontentsline{toc}{unnumbered}{注释}%
\begin{center}%
{\linespread{1}\heiti\fontsize{15bp}{22.5bp}\selectfont 注 \quad 释}%
\end{center}%
\vspace*{27.25bp}%
\endgroup
\songti\linespread{1}\fontsize{12pt}{\hau@note@line}\selectfont
\begin{notelist}%
\let\hau@noteitem\item
\renewcommand{\item}{\hau@noteitem\hypertarget{note@\arabic{notelisti}}{}}%
}{%
\end{notelist}%
\clearpage
}


\RequirePackage{filehook}
\RequirePackage{etoolbox}

\AtEndOfPackageFile*{biblatex}{
\defbibheading{bibliography}[\bibname]{%
\clearpage
\begingroup
\parskip=0pt \topsep=0pt \partopsep=0pt
\vspace*{56.5bp}%
\phantomsection
\addcontentsline{toc}{unnumbered}{参考文献}%
\begin{center}%
{\linespread{1}\heiti\fontsize{15bp}{22.5bp}\selectfont 参\ 考\ 文\ 献}%
\end{center}%
\vspace*{19.25bp}%
\endgroup
}
\renewcommand\bibfont{\linespread{1}\fontsize{12bp}{18bp}\selectfont}%
\setlength{\bibitemsep}{0pt plus 2pt}%
\setlength{\bibhang}{1cm}%
}

\AtEndOfPackageFile*{natbib}{
\patchcmd{\thebibliography}{\chapter*{\bibname}}{%
\clearpage
\begingroup
\parskip=0pt \topsep=0pt \partopsep=0pt
\vspace*{56.5bp}%
\phantomsection
\addcontentsline{toc}{unnumbered}{参考文献}%
\begin{center}%
{\linespread{1}\heiti\fontsize{15bp}{22.5bp}\selectfont 参\ 考\ 文\ 献}%
\end{center}%
\vspace*{19.25bp}%
\endgroup
}{}{\PackageError{hauthesis}{\string\thebibliography\space 的内部结构已变，标题补丁失败}{}}
\renewcommand\bibfont{\linespread{1}\fontsize{12bp}{18bp}\selectfont}%
\setlength{\bibsep}{0pt plus 2pt}%
\setlength{\bibhang}{1cm}%
}
\RequirePackage{listings}
\RequirePackage{xcolor}

\IfFontExistsTF{TeX Gyre Termes}
  {\newfontfamily\codeLatin{TeX Gyre Termes}}
  {\newfontfamily\codeLatin{DejaVu Serif}}
\IfFontExistsTF{FandolSong-Regular.otf}
  {\setCJKfamilyfont{codeCJK}{FandolSong-Regular.otf}}
  {\setCJKfamilyfont{codeCJK}{SimSun}}
\IfFontExistsTF{Consolas}
  {\newfontfamily\codeMonoLatin{Consolas}}
  {\newfontfamily\codeMonoLatin{DejaVu Sans Mono}}
\IfFontExistsTF{FandolFang-Regular.otf}
  {\setCJKfamilyfont{codeMonoCJK}{FandolFang-Regular.otf}}
  {\setCJKfamilyfont{codeMonoCJK}{FangSong}}
\newcommand{\codeMono}{\CJKfamily{codeMonoCJK}\codeMonoLatin}
\newcommand{\hau@codestyle@black}{%
  \definecolor{hlkw}{RGB}{0, 0, 0}%
  \definecolor{hlcm}{RGB}{0, 0, 0}%
  \definecolor{hlstr}{RGB}{0, 0, 0}%
  \definecolor{codebg}{RGB}{255, 255, 255}%
  \definecolor{hlbasic}{RGB}{0, 0, 0}%
}
\newcommand{\hau@codestyle@vscode}{%
  \definecolor{hlkw}{RGB}{86, 156, 214}%
  \definecolor{hlcm}{RGB}{106, 153, 85}%
  \definecolor{hlstr}{RGB}{206, 145, 120}%
  \definecolor{codebg}{RGB}{255, 255, 255}%
  \definecolor{hlbasic}{RGB}{0, 0, 0}%
}
\newcommand{\hau@codestyle@classic}{%
  \definecolor{hlkw}{RGB}{0, 64, 180}%
  \definecolor{hlcm}{RGB}{0, 140, 70}%
  \definecolor{hlstr}{RGB}{205, 85, 0}%
  \definecolor{codebg}{RGB}{246, 248, 251}%
  \definecolor{hlbasic}{RGB}{0, 0, 0}%
}
\newcommand{\hau@codestyle@print}{%
  \definecolor{hlkw}{RGB}{0, 0, 0}%
  \definecolor{hlcm}{RGB}{90, 90, 90}%
  \definecolor{hlstr}{RGB}{150, 150, 150}%
  \definecolor{codebg}{RGB}{255, 255, 255}%
  \definecolor{hlbasic}{RGB}{0, 0, 0}%
}
\newcommand{\hautocodestyle}[1][black]{%
  \ifcsname hau@codestyle@#1\endcsname
    \csname hau@codestyle@#1\endcsname
  \else
    \PackageError{hauthesis}{未知的配色方案：\@backslashchar#1}{%
      可用方案：black、vscode、classic、print}%
  \fi
}
\hautocodestyle
\lstset{
  basicstyle=\CJKfamily{codeCJK}\codeLatin\color{hlbasic}\fontsize{10pt}{10pt}\selectfont,
  columns=fullflexible,
  keepspaces=true,
  numbers=left,
  numberstyle=\scriptsize\color{gray},
  frame=none,
  numbersep=0.5em,
  xleftmargin=1em,
  xrightmargin=1em,
  keywordstyle=\bfseries\color{hlkw},
  commentstyle=\itshape\color{hlcm},
  stringstyle=\color{hlstr},
  showstringspaces=false,
  breaklines=true,
  backgroundcolor=\color{codebg},
}
\lstdefinestyle{codeMono}{
  basicstyle=\CJKfamily{codeMonoCJK}\codeMonoLatin\color{hlbasic}\fontsize{10pt}{10pt}\selectfont,
  columns=fullflexible,
  keepspaces=true,
  numbers=left,
  numberstyle=\scriptsize\color{gray},
  frame=none,
  numbersep=0.5em,
  xleftmargin=1em,
  xrightmargin=1em,
  keywordstyle=\bfseries\color{hlkw},
  commentstyle=\itshape\color{hlcm},
  stringstyle=\color{hlstr},
  showstringspaces=false,
  breaklines=true,
  backgroundcolor=\color{codebg},
}
\newcommand{\codeinputhl}[2][]{%
  \lstinputlisting[#1]{#2}%
}
\lstdefinelanguage{JavaScript}{
  keywords={break,case,catch,class,const,continue,debugger,default,delete,do,
            else,export,extends,finally,for,function,if,import,in,instanceof,
            let,new,return,super,switch,this,throw,try,typeof,var,void,while,
            with,yield,async,await,of,static,get,set},
  sensitive=true,
  comment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]{"},
  morestring=[b]{'},
  morestring=[b]{`},
}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{subcaption}
\RequirePackage{booktabs}
\RequirePackage{tikz}
\RequirePackage{fancyvrb}
\RequirePackage{listings}
\RequirePackage{longtable}
\endinput
%%
%% End of file `hauthesis.cls'.
