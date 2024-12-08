\ProvidesClass{NJU_Report}
\LoadClass[oneside, a4paper, 12pt]{ctexart}

%加载宏包
\RequirePackage{graphicx}  %图片
\RequirePackage{subfig}    %图片排版
\RequirePackage{titlesec}  %标题
\RequirePackage{float}     %图片排版
\RequirePackage{fancyhdr}  %页眉页脚页边距
\RequirePackage{hyperref}  %超链接
\RequirePackage{fontspec}  %字体 
\RequirePackage{xeCJK}     %中文字体 
\RequirePackage{unicode-math}
\RequirePackage{amsmath}   %数学公式
\RequirePackage{xcolor}    %颜色
\RequirePackage{geometry}  %页面排版
\RequirePackage{listings}  %代码排版
\usepackage[linesnumbered,ruled,vlined]{algorithm2e}    %引入算法包在文中可以导入算法

%页面设置
\geometry{
	a4paper,
	left=1.5cm,
	right=1.5cm,
	top=2.0cm,
	bottom=2.0cm,
	headsep=1.5cm,
	footskip=1.75cm,
    headheight = 12.8pt
}

%字体
    % 英文字体
\setmainfont{Times New Roman}[
    BoldFont={Times New Roman Bold},       % 设置加粗字体
]
    %中文字体
\setCJKmainfont{simsun.ttc}[AutoFakeBold]  % 设置加粗字体
    %数学字体
\setmathfont{XITS Math}                    % 设置数学字体


%信息
\newcommand{\Topic}[1]{\def\@Topic{#1}}              %题目
\newcommand{\Subtopic}[1]{\def\@Subtopic{#1}}        %副标题
\newcommand{\Name}[1]{\def\@Name{#1}}                %姓名
\newcommand{\Department}[1]{\def\@Department{#1}}    %院系
\newcommand{\Grade}[1]{\def\@Grade{#1}}              %年级
\newcommand{\Major}[1]{\def\@Major{#1}}              %专业
\newcommand{\ID}[1]{\def\@ID{#1}}                    %学号
\newcommand{\Date}[1]{\def\@Date{#1}}                %日期

%设置封面
\newcommand{\makecover}{
    \thispagestyle{empty}
    %加载logo
    \begin{figure*}[htbp]
		\centering
		\includegraphics[width=\linewidth]{NJU_logo.png}
    \end{figure*}
    \vspace{30pt}
    
    % 副标题
    \begin{center}
        {\fontsize{30}{35}\selectfont \bfseries \textbf{\@Subtopic}}
    \end{center}
    \vspace{40pt}

    % 主标题
    \begin{center}    
        {\fontsize{24.88}{35}\selectfont \bfseries \underline{\textbf{\@Topic}}}\\
    \end{center}
    \vspace{60pt}
    
    %作者信息
    \begin{center}
        \fontsize{17.28}{20}\selectfont
        \renewcommand\arraystretch{1}
        \begin{tabular}{l@{\extracolsep{0.2em}}c}
            \textbf{\cover@Name}        &       \underline{\makebox[300pt]{\textbf{\@Name}}}       \\
            \textbf{\cover@Department}  &       \underline{\makebox[300pt]{\textbf{\@Department}}} \\
            \textbf{\cover@Grade}       &       \underline{\makebox[300pt]{\textbf{\@Grade}}}      \\
            \textbf{\cover@ID}          &       \underline{\makebox[300pt]{\textbf{\@ID}}}         \\
        \end{tabular}
    \end{center}
    \vfill
    \begin{center}
		{
			\fontsize{16}{20}\selectfont \bfseries
			\textbf{\@Date}
		}
    \end{center}
    \newpage
}

%设置目录
\newcommand{\makecontents}[1]{
    \fontsize{16}{25}\selectfont
    \tableofcontents
    \thispagestyle{empty}
    \newpage
}

%章节格式
    %section格式和缩进设置
\titleformat{\section}{\fontsize{18}{20}\bfseries}{\arabic{section}.}{0.2em}{}
\titlespacing{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
    %subsection格式和缩进设置
\titleformat{\subsection}{\fontsize{16}{18}\bfseries}{\arabic{section}.\arabic{subsection}}{0.2em}{}
\titlespacing{\subsection}{.3em}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
    %subsubsection格式和缩进设置
\titleformat{\subsubsection}{\fontsize{14}{16}\bfseries}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{0.2em}{}
\titlespacing{\subsubsection}{.6em}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}


%页码格式
\pagestyle{plain}
\lfoot{}

\lstset{                  %设置代码块
	basicstyle=\footnotesize\ttfamily,% 基本风格
	numbers=left,    % 行号
	numbersep=10pt,  % 行号间隔 
	tabsize=4,       % 缩进
	extendedchars=true, % 扩展符号
	backgroundcolor=\color[RGB]{245,245,244}, % 设定背景颜色
	keywordstyle=\color{blue}, % 设定关键字颜色
	numberstyle=\footnotesize\color{gray},  % 设定行号格式
	commentstyle=\it\color[RGB]{100, 200, 150}, % 设置代码注释的格式
	stringstyle=\color{red},
	breaklines=true, % 自动换行
	language=python,
	frame=leftline,  % 框架左边竖线
	xleftmargin=30pt,% 竖线左边间距
	showspaces=false,% 空格字符加下划线
	showstringspaces=false,% 字符串中的空格加下划线
	showtabs=false,  % 字符串中的tab加下划线
}

%\AtEndOfClass{\input{myTemplat.cfg}}
\def \cover@Name{Name: }                %姓名
\def \cover@Department{School: }        %院系
\def \cover@Major{Major: }              %专业
\def \cover@ID{Student ID: }            %学号
\def \cover@Grade{Grade: }              %年级
\def \cover@Date{Date: }                %日期

\endinput