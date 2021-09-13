function Install-FromChocolatey {
    param(
        [string]
        [Parameter(Mandatory = $true)]
        $PackageName
    )

    choco install $PackageName --yes
}

Install-FromChocolatey 'itunes'
Install-FromChocolatey 'dart-sdk'
Install-FromChocolatey 'flutter'
Install-FromChocolatey 'vmwareworkstation'
Install-FromChocolatey 'foxitreader'
Install-FromChocolatey 'unikey'
