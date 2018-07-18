function New-Router {
    [CmdletBinding()]
    param (
        $HostUrl,
        $Port
    )
    [PSCustomObject]@{
        Host = $HostUrl
        Port = $Port
        Routes = @{}
    }]
}