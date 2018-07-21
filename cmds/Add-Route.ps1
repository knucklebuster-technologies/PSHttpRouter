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
function Add-Route {
    [CmdletBinding()]
    param (
        [Parameter(HelpMessage="The Path To Match Against i.e. /api/v1/users")]
        [ValidateNotNullOrEmpty()]
        [string]
        $UriPath,
        [Parameter(HelpMessage="Http Method for the scriptblock")]
        [ValidateSet('GET', 'PUT', 'POST', 'DELETE', 'PATCH')]
        [string]
        $Method,
        [Parameter(HelpMessage="The scriptblock to execute when the url and method are requested. must accept one parameter of type System.Net.HttpListenerContext")]
        [ValidateScript({$PSItem.Ast.ParamBlock.Parameters.Count -eq 1})]
        [scriptblock]
        $ScriptBlock
    )
    $HTTP_ROUTER.Routes += [PSCustomObject]@{
        Path = $UriPath
        Method = $Method
        ScriptBlock = $ScriptBlock
    }
}