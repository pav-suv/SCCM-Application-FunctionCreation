#function for application Distribution priority
function New-ApplicationPriority {
    param(
        [parameter(Mandatory=$true)] [string] $application,
        [parameter(Mandatory=$true)] [string] $DistributionPriority

    )
 Set-CMApplication -Name $application  -DistributionPriority $DistributionPriority

}

 

New-ApplicationPriority -application "APS_7Zip_TEST1" -DistributionPriority High

#--------------------------------------------------------------------------------------------------