$vcsRootId = "%vcs.root.id%";
Write-Host "<vcsRootId>: $vcsRootId";

$branch = "%teamcity.build.vcs.branch.$vcsRootId%";
Write-Host "<branch>: $branch";

$branch = $branch.Replace('/', '-');
Write-Host "<beautified-branch>: $branch";

$hash = "%build.vcs.number.$vcsRootId%";
Write-Host "<hash>: $hash";

$hash = $hash.Substring(0, 7);
Write-Host "<beautified-hash>: $hash";

$counter = "%build.counter%";
Write-Host "<counter>: $counter";

$version = "$counter-$branch.$hash";
Write-Host "<version>: $version";

Write-Host "##teamcity[setParameter name='version' value='$version']";
Write-Host "##teamcity[buildNumber '$version']";

#FOO
