Description
-----------

Quick hack to benchmark Stata commands

Requirements
------------

I only have access to Stata 13.1, so I impose that to be the minimum. The command is really simple, however, so I would not be surprised if it worked with earlier versions.

Installation
------------

```stata
net install benchmark, from(https://raw.githubusercontent.com/mcaceresb/stata-benchmark/master/)
```

Examples
---------

```stata
sysuse auto
benchmark, reps(10) disp: qui reg price mpg
```
