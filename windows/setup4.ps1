function Install-FromChocolatey {
    param(
        [string]
        [Parameter(Mandatory = $true)]
        $PackageName
    )

    choco install $PackageName --yes
}

Install-FromChocolatey 'jmeter'
Install-FromChocolatey 'partitionwizard'
Install-FromChocolatey 'vlc'
Install-FromChocolatey 'ccleaner'
Install-FromChocolatey 'teamviewer'