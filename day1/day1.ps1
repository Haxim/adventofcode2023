$totalpos = 0
$haystack = Get-Content -Path .\input.txt

foreach ($line in $haystack) {
    $line -match "(one|two|three|four|five|six|seven|eight|nine|\d)" | Out-Null
    if ($matches.0 -eq "one") { $first = "1" }
    elseif ($matches.0 -eq "two") { $first = "2" }
    elseif ($matches.0 -eq "three") { $first = "3" }
    elseif ($matches.0 -eq "four") { $first = "4" }
    elseif ($matches.0 -eq "five") { $first = "5" }
    elseif ($matches.0 -eq "six") { $first = "6" }
    elseif ($matches.0 -eq "seven") { $first = "7" }
    elseif ($matches.0 -eq "eight") { $first = "8" }
    elseif ($matches.0 -eq "nine") { $first = "9" }
    else { $first = $matches.0 }
    #reverse the string
    $backwards = $line[-1..-$line.Length] -join ''
    $backwards -match "(eno|owt|eerht|ruof|evif|xis|neves|thgie|enin|\d)" | Out-Null
    if ($matches.0 -eq "eno") { $last = "1" }
    elseif ($matches.0 -eq "owt") { $last = "2" }
    elseif ($matches.0 -eq "eerht") { $last = "3" }
    elseif ($matches.0 -eq "ruof") { $last = "4" }
    elseif ($matches.0 -eq "evif") { $last = "5" }
    elseif ($matches.0 -eq "xis") { $last = "6" }
    elseif ($matches.0 -eq "neves") { $last = "7" }
    elseif ($matches.0 -eq "thgie") { $last = "8" }
    elseif ($matches.0 -eq "enin") { $last = "9" }
    else { $last = $matches.0 }
    $pos = "$first$last"
    $pos = [int]$pos
    $totalpos = $totalpos + $pos
}
$totalpos
