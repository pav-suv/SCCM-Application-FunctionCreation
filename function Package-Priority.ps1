function New-PackagePriority {
    param(
        [parameter(Mandatory=$true)] [string] $packagename,
        [parameter(Mandatory=$true)] [string] $priority

    )
 Set-CMPackage -Name $packagename -Priority $priority

}

 New-PackagePriority -packagename "PKG_7Zip_26.0.0.0" -priority "High"
