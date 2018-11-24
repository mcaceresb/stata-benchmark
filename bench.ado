*! version 0.3 24Sep2018 Mauricio Caceres Bravo, mauricio.caceres.bravo@gmail.com
*! Generic benchmark of Stata commands

capture program drop bench
program bench, rclass
    benchmark `0'
end
