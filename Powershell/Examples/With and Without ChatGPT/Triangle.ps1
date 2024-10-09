function TriangleWithChatGPT
{
    param ([int] $n)

    $k = $n - 1

    for ($i = 0; $i -lt $n; $i++)
    {
        # Printing spaces
        for ($j = 0; $j -lt $k; $j++)
        {
            Write-Host " " -NoNewline
        }
    
        $k--

        # Printing asterisks
        for ($j = 0; $j -le $i; $j++)
        {
            Write-Host "* " -NoNewline
        }

        Write-Host ""
    }
}

$n = 4
TriangleWithChatGPT -n $n


function TriangleWithoutChatGPT
{
    param ([int] $n)

    for ($i = 0; $i -lt $n; $i++)
    {
        Write-Host (" " * ($n - $i - 1)) -NoNewline
        Write-Host ("* " * ($i + 1))
    }
}

$n = 4
TriangleWithoutChatGPT -n $n
