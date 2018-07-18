function Add-Route {
    [CmdletBinding()]
    param (
        [string]$URI,
        [scriptblock]$ScriptBlock
    )
    if ($ScriptBlock.Ast.ParamBlock.Parameters.Count -eq 1) {
        $PSRouter_Routes[$URI] = $ScriptBlock
    }
}