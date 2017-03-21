Set-ExecutionPolicy unrestricted

import-module "C:\Program Files (x86)\Microsoft Dynamics NAV\100\RoleTailored Client\NavModelTools.ps1"
import-module "C:\Program Files\Microsoft Dynamics NAV\100\Service\NavAdminTool.ps1"

Compare-NAVApplicationObject    -OriginalPath "Q:\Extension\Orriginal.txt" `
                                -ModifiedPath "Q:\Extension\Example.txt" `
                                -DeltaPath "Q:\Extension\Delta\Delta.delta" -Force

New-NAVAppManifest -Name "Example App" -Publisher "Mark Brummel" -Version "1.0.0.0" -Id "cf9edf36-45c2-44c9-8367-cac5748bd597" `
 | New-NAVAppManifestFile -Path "Q:\Extension\Example.xml"

Get-NAVAppManifest -Path "Q:\Extension\Example.xml" | New-NAVAppPackage -Path "Q:\Extension\Example.navx" `
                   -SourcePath "Q:\Extension\Delta\" -Force

Publish-NAVApp -ServerInstance DynamicsNAV100 -Path "Q:\Extension\Example.navx" -SkipVerification