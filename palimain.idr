module Main

import chapter2

main : IO()
main = repl "Enter a string: " (\a => show (palindrome a))
