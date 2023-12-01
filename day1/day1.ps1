$totalpos = 0
$haystack = Get-Content -Path .\input.txt

foreach ($line in $haystack) {
    $line -match '\d' | Out-Null
    $first = $matches.0
    $backwards = $line[-1..-$line.Length] -join ''
    $backwards -match '\d' | Out-Null
    $last = $matches.0
    $pos = "$first$last"
    $pos = [int]$pos
    $totalpos = $totalpos + $pos

   
}
$totalpos
