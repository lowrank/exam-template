\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam}

% Packages
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{latexsym}
\RequirePackage{setspace}
\RequirePackage{amsmath}
\RequirePackage{mathrsfs}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{amsxtra}
\RequirePackage{stmaryrd}
\RequirePackage{algorithm}
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}
\RequirePackage{mathtools}
\RequirePackage[linewidth=1pt]{mdframed}

\mdfsetup{
 skipabove=12pt,
 skipbelow=12pt,
 leftmargin=0pt,
 rightmargin=0pt,
 innertopmargin=12pt,
 innerbottommargin=12pt,
 innerleftmargin=12pt,
 innerrightmargin=12pt,
 frametitleaboveskip=12pt,
 frametitlebelowskip=6pt,
 frametitlerule=true,
 splittopskip=2\topsep}

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}
% Page Layout 
\setlength{\textwidth}{\paperwidth}
\addtolength{\textwidth}{-2in}
\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}

\setlength{\headheight}{15pt}
\setlength{\headsep}{15pt}
\setlength{\topmargin}{0in}
\addtolength{\topmargin}{-\headheight}
\addtolength{\topmargin}{-\headsep}
\setlength{\footskip}{27pt}
\setlength{\textheight}{\paperheight}
\addtolength{\textheight}{-2.3in}

\setlength{\marginparwidth}{.5in}
\setlength{\marginparsep}{5pt}
\setlength{\parindent}{0in}

% THEOREMS
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\newtheorem{exercise}[theorem]{Exercise}
\newtheorem{convention}[theorem]{Convention}
\newtheorem{statement}[theorem]{Statement}
\newtheorem{fact}[theorem]{Fact}
\newtheorem{axiom}[theorem]{Axiom}
\newtheorem{question}[theorem]{Question}
\newtheorem{proposition}[theorem]{Proposition} 
\newtheorem{remark}[theorem]{Remark} 
\newtheorem{corollary}[theorem]{Corollary} 
\newtheorem{problem}[theorem]{Problem} 
\newtheorem{notation}{Notation}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% self-define operators
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\sgn}{\operatorname{sgn}}
\newcommand{\im}{\operatorname{im}}
\newcommand{\Char}{\operatorname{char}}
\newcommand{\supp}{\operatorname{supp}}
\newcommand{\singsupp}{\operatorname{singsupp}}
\newcommand{\diag}{{\rm diag}}
\newcommand{\dsum}{\displaystyle\sum}
\newcommand{\dint}{\displaystyle\int}
\newcommand{\eps}{\varepsilon}

% optimization 
\DeclareMathOperator*{\argmin}{\arg\min}
\DeclareMathOperator*{\argmax}{\arg\max}

% partial derivative
\newcommand{\pdr}[2]
{\dfrac{\partial{#1}}{\partial{#2}}}
\newcommand{\pdrr}[2]
{\dfrac{\partial^2{#1}}{\partial{#2}^2}}
\newcommand{\pdrt}[3]{\dfrac{\partial^2{#1}}
	{\partial{#2}{\partial{#3}}}}
\newcommand{\dr}[2]{\dfrac{d{#1}}{d{#2}}}
\newcommand{\drr}[2]{\dfrac{d^2{#1}}{d{#2}^2}}

% mathfrak symbols
\newcommand{\fT}{\mathfrak{T}}
\newcommand{\fu}{\mathfrak{u}}
\newcommand{\fo}{\mathfrak{o}}
\newcommand{\fU}{\mathfrak{U}}
\newcommand{\fO}{\mathfrak{O}}
\newcommand{\fE}{\mathfrak{E}}
\newcommand{\fm}{\mathfrak{m}}

% mathsf symbols
\newcommand{\sfc}{\mathsf c}
\newcommand{\sfC}{\mathsf C}

% mathbb symbols
\newcommand{\bbC}{\mathbb C} \newcommand{\bbE}{\mathbb E}
\newcommand{\bbL}{\mathbb L} \newcommand{\bbN}{\mathbb N}
\newcommand{\bbP}{\mathbb P} \newcommand{\bbQ}{\mathbb Q}
\newcommand{\bbR}{\mathbb R} \newcommand{\bbS}{\mathbb S}
\newcommand{\bbZ}{\mathbb Z} \newcommand{\scrE}{\mathscr{E}}

% mathbf symbols
\newcommand{\bzero}{{\mathbf 0}}
\newcommand{\btheta}{{\boldsymbol\theta}}
\newcommand{\btau}{\boldsymbol \tau}
\newcommand{\bchi}{\mbox{\boldmath{$\chi$}}}
\newcommand{\bnu}{{\boldsymbol \nu}}
\newcommand{\bmu}{\boldsymbol \mu}
\newcommand{\brho}{\mbox{\boldmath{$\rho$}}}
\newcommand{\bxi}{\boldsymbol \xi}
\newcommand{\bzeta}{\boldsymbol \zeta}
\newcommand{\bEta}{\boldsymbol \eta}
\newcommand{\bnabla}{\boldsymbol \nabla}
\newcommand{\blambda}{\boldsymbol \lambda}
\newcommand{\bLambda}{\boldsymbol \Lambda}
\newcommand{\bOmega}{\boldsymbol \Omega}
\newcommand{\bGamma}{\mbox{\boldmath{$\Gamma$}}}
\newcommand{\bSigma}{{\boldsymbol\Sigma}}
\newcommand{\bPi}{\boldsymbol \Pi}

\newcommand{\ba}{\mathbf a} \newcommand{\bb}{\mathbf b}
\newcommand{\bc}{\mathbf c} \newcommand{\bd}{\mathbf d}
\newcommand{\be}{\mathbf e} \newcommand{\bff}{\mathbf f}
\newcommand{\bg}{\mathbf g} \newcommand{\bh}{\mathbf h}
\newcommand{\bi}{\mathbf i} \newcommand{\bj}{\mathbf j}
\newcommand{\bk}{\mathbf k} \newcommand{\bl}{\mathbf l}
\newcommand{\bm}{\mathbf m} \newcommand{\bn}{\mathbf n}
\newcommand{\bo}{\mathbf o} \newcommand{\bp}{\mathbf p}
\newcommand{\bq}{\mathbf q} \newcommand{\br}{\mathbf r}
\newcommand{\bs}{\mathbf s} \newcommand{\bt}{\mathbf t}
\newcommand{\bu}{\mathbf u} \newcommand{\bv}{\mathbf v} 
\newcommand{\bw}{\mathbf w} \newcommand{\bx}{\mathbf x} 
\newcommand{\by}{\mathbf y} \newcommand{\bz}{\mathbf z} 
\newcommand{\bA}{\mathbf A} \newcommand{\bB}{\mathbf B}
\newcommand{\bC}{\mathbf C} \newcommand{\bD}{\mathbf D} 
\newcommand{\bE}{\mathbf E} \newcommand{\bF}{\mathbf F}
\newcommand{\bG}{\mathbf G} \newcommand{\bH}{\mathbf H}
\newcommand{\bI}{\mathbf I} \newcommand{\bJ}{\mathbf J}
\newcommand{\bK}{\mathbf K} \newcommand{\bL}{\mathbf L}
\newcommand{\bM}{\mathbf M} \newcommand{\bN}{\mathbf N}
\newcommand{\bO}{\mathbf O} \newcommand{\bP}{\mathbf P} 
\newcommand{\bQ}{\mathbf Q} \newcommand{\bR}{\mathbf R}
\newcommand{\bS}{\mathbf S} \newcommand{\bT}{\mathbf T}
\newcommand{\bU}{\mathbf U} \newcommand{\bV}{\mathbf V}
\newcommand{\bW}{\mathbf W} \newcommand{\bX}{\mathbf X} 
\newcommand{\bY}{\mathbf Y} \newcommand{\bZ}{\mathbf Z}

% mathcal symbols
\newcommand{\cA}{\mathcal A} \newcommand{\cB}{\mathcal B}
\newcommand{\cC}{\mathcal C} \newcommand{\cD}{\mathcal D} 
\newcommand{\cE}{\mathcal E} \newcommand{\cF}{\mathcal F}
\newcommand{\cG}{\mathcal G} \newcommand{\cH}{\mathcal H}
\newcommand{\cI}{\mathcal I} \newcommand{\cJ}{\mathcal J}
\newcommand{\cK}{\mathcal K} \newcommand{\cL}{\mathcal L}
\newcommand{\cM}{\mathcal M} \newcommand{\cN}{\mathcal N}
\newcommand{\cO}{\mathcal O} \newcommand{\cP}{\mathcal P} 
\newcommand{\cQ}{\mathcal Q} \newcommand{\cR}{\mathcal R}
\newcommand{\cS}{\mathcal S} \newcommand{\cT}{\mathcal T}
\newcommand{\cU}{\mathcal U} \newcommand{\cV}{\mathcal V}
\newcommand{\cW}{\mathcal W} \newcommand{\cX}{\mathcal X} 
\newcommand{\cY}{\mathcal Y} \newcommand{\cZ}{\mathcal Z}

%mathsf shortcuts -- for random variables
\newcommand{\sA}{\mathsf A} \newcommand{\sB}{\mathsf B}
\newcommand{\sC}{\mathsf C} \newcommand{\sD}{\mathsf D}
\newcommand{\sE}{\mathsf E} \newcommand{\sF}{\mathsf F}
\newcommand{\sG}{\mathsf G} \newcommand{\sH}{\mathsf H}
\newcommand{\sI}{\mathsf I} \newcommand{\sJ}{\mathsf J}
\newcommand{\sK}{\mathsf K} \newcommand{\sL}{\mathsf L}
\newcommand{\sM}{\mathsf M} \newcommand{\sN}{\mathsf N}
\newcommand{\sO}{\mathsf O} \newcommand{\sP}{\mathsf P}
\newcommand{\sQ}{\mathsf Q} \newcommand{\sR}{\mathsf R}
\newcommand{\sS}{\mathsf S} \newcommand{\sT}{\mathsf T}
\newcommand{\sU}{\mathsf U} \newcommand{\sV}{\mathsf V}
\newcommand{\sW}{\mathsf W} \newcommand{\sX}{\mathsf X}
\newcommand{\sY}{\mathsf Y} \newcommand{\sZ}{\mathsf Z}

% commonly-used probability notations
\newcommand{\prob}[1]{\bbP \negthinspace\left(#1\right)}
\newcommand{\rv}{random variable\ }
\newcommand{\expect}[1]{\bbE\!\left[#1\right]}
\DeclareMathOperator{\var}{Var}
\newcommand{\vari}[1]{\var\negthinspace\left[#1\right]}
\newcommand{\abs}[1]{|#1|}
\newcommand{\norm}[1]{\|#1\|}
%\newcommand{\E}[1]{\bbE\!\left[#1\right]}
\newcommand{\aver}[1]{\langle {#1} \rangle}
\newcommand{\Baver}[1]{\Big\langle {#1} \Big\rangle}


%
% \oddsidemargin=0in
% \evensidemargin=0in
% \textwidth=6.3in
% \topmargin=-.5in
% \textheight=9in

% \pagestyle{empty}

% HEADER/FOOTER
\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyfoot[C]{page \thepage} 

% COVER PAGE
\def\cover#1#2#3{
\centerline{\huge \bf #1}             %%%(number of test)
\vfill\vfill
#2                                    %%%(class number and section) 

#3 \hfill                             %%%(date of test)
\vfill
{\bf Name: } $\underline{\hspace{2.7in}}$
}

\def\honorcode#1{
\vfill #1
\vfill \vfill
}

\newenvironment{examinfo}
{{\bf Read all of the following information before starting the exam:}
\vspace{1pc}\begin{list}{$\bullet$}{
\leftmargin=5mm
\labelwidth=3mm
\labelsep=3mm
}}{\end{list}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FORMULA SHEET
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{formulasheet}
{{\centering{\LARGE Formula Sheet} }
\vspace{1pc}\begin{list}{$\bullet$}{
\leftmargin=5mm
\labelwidth=3mm
\labelsep=3mm
}}{\end{list}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% QUESTIONS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\boxquestion#1#2#3{
\begin{mdframed}
{\bf{Question #1.}} (#2 pts) \vspace{1pc} \par #3 
\end{mdframed}
}

