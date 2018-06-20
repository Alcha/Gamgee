<#
.NOTES
===============================================================================
 Created on:   	06/16/18 @ 09:49
 Created by:   	Alcha
 Organization: 	HassleFree Solutions, LLC
 Filename:     	Test-Module.ps1
===============================================================================
.DESCRIPTION
	The Test-Module.ps1 script lets you test the functions and other features of
your module in your PowerShell Studio module project. It's part of your project,
but it is not included in your module.

	In this test script, import the module (be careful to import the correct version)
and write commands that test the module features. You can include Pester
tests, too.

	To run the script, click Run or Run in Console. Or, when working on any file
in the project, click Home\Run or Home\Run in Console, or in the Project pane,
right-click the project name, and then click Run Project.
#>

Import-Module -Name 'Gamgee'

$DirectoryFiles = Get-ChildItem -Path (Get-ScriptDirectory) -Filter '*.ps1' -Recurse
$DotSourceFiles = @{}

foreach ($File in $DirectoryFiles) {
  if (($File.Name -match 'test') -eq $false) {
    Write-Verbose "$File does not contain test..."
    $DotSourceFiles.Add($File.Name, $File)
    Write-Output $File
  }
} 

Write-Output 'Done...'
