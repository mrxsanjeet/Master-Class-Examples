Set-ExecutionPolicy unrestricted

import-module "C:\Program Files (x86)\Microsoft Dynamics NAV\100\RoleTailored Client\NavModelTools.ps1"

Split-NAVApplicationObjectFile -Source "Q:\MasterClass\Exercise 4\Exercise 4.txt" -Destination "Q:\MasterClass\Exercise 4\" -Force
