#
# Create.ps1
#
$rgName = "functionapp0212"
New-AzureRmResourceGroup -Name $rgName -Location 'westus2'
./Deploy-AzureResourceGroup.ps1 -StorageAccountName '' -ResourceGroupName $rgName -ResourceGroupLocation 'westus2' -TemplateFile 'functionapp.json' -TemplateParametersFile 'functionappc1.parameters.json' -ArtifactStagingDirectory '.' -DSCSourceFolder '.\DSC'
./Deploy-AzureResourceGroup.ps1 -StorageAccountName '' -ResourceGroupName $rgName -ResourceGroupLocation 'westus2' -TemplateFile 'functionapp.json' -TemplateParametersFile 'functionappc2.parameters.json' -ArtifactStagingDirectory '.' -DSCSourceFolder '.\DSC'
./Deploy-AzureResourceGroup.ps1 -StorageAccountName '' -ResourceGroupName $rgName -ResourceGroupLocation 'westus2' -TemplateFile 'functionapp.json' -TemplateParametersFile 'functionappp1.parameters.json' -ArtifactStagingDirectory '.' -DSCSourceFolder '.\DSC'
./Deploy-AzureResourceGroup.ps1 -StorageAccountName '' -ResourceGroupName $rgName -ResourceGroupLocation 'westus2' -TemplateFile 'functionapp.json' -TemplateParametersFile 'functionappp2.parameters.json' -ArtifactStagingDirectory '.' -DSCSourceFolder '.\DSC'
