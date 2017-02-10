*! version 0.1 16Sep2016 Mauricio Caceres, caceres@nber.org
*! Generic benchmark of Stata program

* Not really sure if there's a canon way to benchmark Stata programs;
* this is a short hack I wrote for it that works OK.
capture program drop benchmark
program benchmark, rclass
    version 13.1

    * Hack to parse as colon program
    gettoken 0 1: 0, p(:)
    syntax, reps(int) [DISPlay]

    * Get rid of the colon
    gettoken c 1: 1, p(:)

    * Iterate `reps' and report the result of each run
    qui {
        tempname benchmark
        timer clear
        timer on 98
        timer on 99
    }

    forvalues r = 1 / `reps' {
        `1'
        timer off 99
        qui timer list
        matrix `benchmark' = nullmat(`benchmark') \ `r', r(t99)
        if "`display'" != "" di "`r': `:di trim("`:di %21.4gc r(t99)'")' seconds"
        timer clear 99
        timer on 99
    }

    qui {
        timer off 99
        timer off 98
        timer list
        local average = `r(t98)' / `reps'
        timer clear
    }

    return matrix benchmark = `benchmark'
    return scalar average   = `average'
end
