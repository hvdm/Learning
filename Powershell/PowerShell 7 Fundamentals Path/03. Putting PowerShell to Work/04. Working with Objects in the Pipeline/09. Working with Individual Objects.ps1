1..10 |                                         # Take the numbers 1 to 10
ForEach-Object { $_ * 2}                        # for each number "$_" multiply it with 2
# $_ means the current object in the pipeline
# {  } is a scriptblock

Write-Host                                      # Empty line

1..10 |                                         # Take the numbers 1 to 10
ForEach-Object -parallel { $_ * 2}              # for each number "$_" multiply it with 2. Using parallel here
# $_ means the current object in the pipeline
# {  } is a scriptblock


