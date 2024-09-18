# Traditional Syntax ==> Recommended way
Get-Service |                                   # Get a list of all services
Where-Object { $_.Status -eq 'Running' }        # that are "Running"
                                                # { } means code in a scriptblock
                                                # $_  means the current object in the PipeLine

# Modern Syntax
Get-Service |                                   # Get a list of all services
Where-Object Status -eq 'Running'               # that are "Running"


# Alternate Modern Syntax
Get-Service |                                   # Get a list of all services
Where-Object { $PSItem.Status -eq 'Running' }   # that are "Running"
                                                # { }      means code in a scriptblock
                                                # $PSItem  means the current object in the PipeLine (same like $_)

                                                
Get-Service |                                   # Get a list of all services
Where-Object { $_.Status -eq 'Running' -AND     # that are "Running" and
               $_.StartType -eq 'Manual' }      # StartType is set to manual
                                                # { } means code in a scriptblock
                                                # $_  means the current object in the PipeLine

                                                
# Filtering Early and Late
Get-Service w* |                                # Get a list of all services that start with "w"    <-- EARLY
Where-Object { $_.Status -eq 'Running' -AND     # that are "Running" and                            <-- LATE
               $_.StartType -eq 'Manual' }      # StartType is set to manual                        <-- STILL LATE
                                                # { } means code in a scriptblock
                                                # $_  means the current object in the PipeLine


# Wrong Way
Get-Service |
Where-Object { $_.Name -like "w*" } |
Where-Object { $_.Status -eq 'Running' } |
Where-Object { $_.StartType -eq 'Manual' }


# Correct Way
Get-Service |
Where-Object { $_.Name -like "w*" -AND 
               $_.Status -eq 'Running' -AND 
               $_.StartType -eq 'Manual' }

