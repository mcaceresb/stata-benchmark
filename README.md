Description
-----------

Quick hack to benchmark Stata commands

Requirements
------------

I only have access to Stata 13.1, so I impose that to be the minimum. The command is really simple, however, so I would not be surprised if it worked with earlier versions.

Installation
------------

```stata
local github https://raw.githubusercontent.com
net install benchmark, from(`github'/mcaceresb/stata-benchmark/master/)
```

Examples
---------

```stata
sysuse auto, clear
bench, reps(10) trace last: reg price mpg
return list
bench, reps(5) restore last: gen x = 1
ds x
```
