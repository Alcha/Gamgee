# =============================================================================
#  Created On:   2018/06/20 @ 12:37
#  Created By:   Alcha
#  Organization: HassleFree Solutions, LLC
#  Filename:     ProcessTools.ps1
#  Description:  Contains functions for handling processes on LINCLER.
# =============================================================================

function Get-ForegroundProcess {
  [CmdletBinding()]
  param()
    
  $CSharp = Get-Content .\ProcessTools.cs -Raw
  Add-Type -TypeDefinition $CSharp -Language CSharp

  return [Alcha.ProcessTools]::GetForegroundProcessName()
}
