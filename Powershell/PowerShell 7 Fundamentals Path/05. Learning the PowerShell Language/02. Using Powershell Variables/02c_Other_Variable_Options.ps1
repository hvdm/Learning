# Tee-Object output to variable and the pipeline
# Out-Variable
# PipelineVariable


# Get expression result AND save it to variable p
Get-Process ls* | Tee-Object -Variable p

# Use the variable p as a placeholder
$p | Measure-Object WorkingSet -Sum

# -OutVariable is related to tee-object (does the same)
# Output the results and save them to variable m
$p | Measure-Object WorkingSet -Sum -OutVariable m

$m.Sum


