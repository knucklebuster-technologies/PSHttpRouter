# Create Module variables
$ModuleRoot = $PSScriptRoot

# Export Cmds
Get-ChildItem -Path "$ModuleRoot\cmds\*ps1" |
ForEach-Object {
    . $PSItem.FullName
    Export-ModuleMember -Function $PSItem.BaseName
}

New-Router