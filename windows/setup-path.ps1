$jdk_version = "8u211";
$target = "$Env:ProgramFiles\Java\jdk1.$($jdk_version.replace("u",".0_"))\$jdk_filename";
$JAVA_HOME = $target.Replace($target.SubString($target.LastIndexOf('\')),"");
[Environment]::SetEnvironmentVariable("Path", "$env:Path;$JAVA_HOME", "User");


$outpath = "$Env:UserProfile\Android\PowerShell";
[Environment]::SetEnvironmentVariable("Path", "$env:Path;$outpath\tools", "User");

