
#Function to Remove Deployments
function Remove-Deployments{
    param(
        [parameter(mandatory=$true)] [string] $name,
        [parameter(mandatory=$true)] [string] $Collectionname
        
    )
Remove-CMApplicationDeployment -Name "$name" -CollectionName "$Collectionname"

}

Remove-Deployments -Name "APS_7yZip" -CollectionName "InstallCollection"
Remove-Deployments -Name "APS_7Zip" -CollectionName "AvailableCollection" 
Remove-Deployments -Name "APS_7Zip" -CollectionName "UninstallCollection"
#---------------------------------------------------------------------------------------------

#Function to Remove DeploymentsType
function Remove-DeploymentsType{
    param(
        [parameter(mandatory=$true)] [string] $name,
        [parameter(mandatory=$true)] [string] $deploymenttypename
    )   
Remove-CMDeploymentType -ApplicationName "$name" -DeploymentTypeName "$deploymenttypename"

}
Remove-DeploymentsType -name "APS_7Zip" -deploymenttypename "7-Zip 26.00 (x64 edition) - Windows Installer (*.msi file)"


#-----------------------------------------------------------------------------------------------------------
#Function to Remove Collection
function Remove-Collection{
    param(
        [parameter(mandatory=$true)] [string] $Collectionname
        
    )
Remove-CMDeviceCollection -Name "$Collectionname"  -Force

}
Remove-Collection -Collectionname "InstallCollection" 
Remove-Collection -Collectionname "AvailableCollection" 
Remove-Collection -Collectionname "UninstallCollection" 
Remove-Collection -Collectionname "ExceptionCollection" 
#---------------------------------------------------------------------------------------------------------------------------------------------------------

#Function to Remove DistributionPointGroup
function Remove-DistributionPointGroup{
    param(
        [parameter(mandatory=$true)] [string] $distributepointgroupname
        
    )
 Remove-CMDistributionPointGroup -Name "$distributepointgroupname"

}
 Remove-CMDistributionPointGroup -distributepointgroupname "ALL Mangalore Group"
#--------------------------------------------------------------------------------
#Function to Remove Application
function Remove-Application{
    param(
        [parameter(mandatory=$true)] [string] $name
        
    )
 Remove-CMApplication -ApplicationName "$name" -Force

}
 Remove-Application -name "APS_7Zip" 
