$branch = "%teamcity.build.branch%";
$branch = $branch.Replace('/', '-');
$hash = "%build.vcs.number%";
$hash = $hash.Substring(0, 7);
$counter = "%build.counter%";
$version = "$counter-$branch.$hash";
Write-Host "##teamcity[setParameter name='version' value='$version']";
Write-Host "##teamcity[buildNumber '$version']";
