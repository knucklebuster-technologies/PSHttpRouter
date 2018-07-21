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
function Start-Router {
    [CmdletBinding()]
    Param ()

    $HTTP_ROUTER.HttpListener.Start()
    while ($HTTP_ROUTER.HttpListener.IsListening) {
        $context = $HTTP_ROUTER.HttpListener.GetContext()
        $req = $context.Request
        Write-Host "Url Path " + $req.Url.AbsolutePath
        $context.Response.Close()
    }
}
