#	===========================================================================
#	 Created on:   5/28/2018 @ 19:17
#	 Created by:   Alcha
#	 Organization: HassleFree Solutions, LLC
#	 Filename:     Reverse-String.ps1
#	===========================================================================

# .EXTERNALHELP .\Help_Files\Get-ReversedString-Help.xml
function Get-ReversedString {
  [CmdletBinding()]
  param (
    [Parameter(Mandatory = $true,
      Position = 0)]
    [ValidateNotNullOrEmpty()]
    [string[]]$InputStr
  )

  $Output = New-Object String[] $InputStr.Length

  for ($x = 0; $x -lt $InputStr.Length; $x++) {
    $ArrayStr = $InputStr[$x].ToCharArray()
    [System.Array]::Reverse($ArrayStr)
    $ReversedString = -join ($ArrayStr)

    $Output[$x] = $ReversedString
  }

  return $Output
}
