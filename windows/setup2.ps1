function Install-FromChocolatey {
    param(
        [string]
        [Parameter(Mandatory = $true)]
        $PackageName
    )

    choco install $PackageName --yes
}

function Install-PowerShellModule {
    param(
        [string]
        [Parameter(Mandatory = $true)]
        $ModuleName,

        [ScriptBlock]
        [Parameter(Mandatory = $true)]
        $PostInstall = {}
    )

    if (!(Get-Command -Name $ModuleName -ErrorAction SilentlyContinue)) {
        Write-Host "Installing $ModuleName"
        Install-Module -Name $ModuleName -Scope CurrentUser -Confirm $true
        Import-Module $ModuleName -Confirm

        Invoke-Command -ScriptBlock $PostInstall
    } else {
        Write-Host "$ModuleName was already installed, skipping"
    }
}

Install-FromChocolatey 'python'
Install-FromChocolatey 'python2'
Install-FromChocolatey 'vscode'
Install-FromChocolatey 'sourcetree'
Install-FromChocolatey 'dotnet-5.0-sdk'
Install-FromChocolatey 'nodejs'
Install-FromChocolatey 'kubernetes-node'
Install-FromChocolatey 'kubernetes-cli'
Install-FromChocolatey 'minikube'
Install-FromChocolatey 'docker-cli'
Install-FromChocolatey 'docker-compose'
Install-FromChocolatey 'docker-desktop'
Install-FromChocolatey 'winrar'
Install-FromChocolatey 'notepadplusplus'
Install-FromChocolatey 'cmder'
Install-FromChocolatey 'awscli'
Install-FromChocolatey 'postgresql'
Install-FromChocolatey 'pgadmin4'
Install-FromChocolatey 'skype'
Install-FromChocolatey 'zoom'
Install-FromChocolatey 'sql-server-2019'
Install-FromChocolatey 'sql-server-management-studio'

Install-FromChocolatey 'jdk8'
Install-FromChocolatey 'androidstudio'
Install-FromChocolatey 'android-sdk'
Install-FromChocolatey 'yarn'
Install-FromChocolatey 'figma'
Install-FromChocolatey 'forticlientvpn'
Install-FromChocolatey 'resharper'


