{smcl}
{* *! version 0.1 16Sep2016}{...}
{cmd:help benchmark}
{hline}

{title:Title}

{pstd}
{hi:benchmark} {hline 2} Quick hack to benchmark Stata commands
{p_end}

{marker syntax}{title:Syntax}

{pstd}
{cmd:benchmark}, {opt reps(int)} [{opt disp:lay}]: {it:Stata command to benchmark}

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}

{syntab:Main}
{synopt:{opt reps(int)}} Number of repetitions. {p_end}
{synopt:{opt disp:lay}} Display how long each repetition took after each run. {p_end}

{marker desc}{title:Description}

{pstd} {cmd:benchmark} is a very simple wrapper to determine how long a code takes to run. I have found it useful whenever I want to optimize a piece of code.{p_end}

{marker ex}{title:Examples}

{phang}Randomize a dataset into 2 groups, checking for balance by gender.{p_end}

{pmore}{inp:. sysuse auto}{p_end}
{pmore}{inp:. benchmark, reps(10) disp: qui reg price mpg}{p_end}

{title:Website}

{pstd}{cmd:Benchmark} is maintained at {browse "https://github.com/mcaceresb/stata-benchmark":github.com/mcaceresb/stata-benchmark}{p_end}

{title:Authors}

{pstd}Mauricio Caceres{p_end}
{pstd}{browse "mailto:mauricio.caceres.bravo@gmail.com":mauricio.caceres.bravo@gmail.com }{p_end}
{pstd}{browse "https://mcaceresb.github.io":mcaceresb.github.io}{p_end}
