<#
.SYNOPSIS
    Short description
.DESCRIPTION
    Long description
.EXAMPLE
    PS C:\> <example usage>
    Explanation of what the example does
.INPUTS
    Inputs (if any)
.OUTPUTS
    Output (if any)
.NOTES
    General notes
#>
function New-Router {
    [CmdletBinding()]
    param (
        $UrlPreFix = 'http://localhost:8080/testing/'
    )

    $listener = [System.Net.HttpListener]::new()
    $listener.Prefixes.Add($UrlPreFix)

    $router = [PSCustomObject]@{
        HttpListener = $listener
        Routes = @()
    }

    Set-Variable -Name 'HTTP_ROUTER' -Value $router -Scope Global -Force
}