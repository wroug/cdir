
$exists = Test-Path -Path $PROFILE
if ($exists -eq $false) {
	echo "We haven't found a profile at $profile"
	$userchoice = Read-Host "[C] Create profile; [O] Another path for profile; [X] Exit; "
}

Get-Content .txt, inputFile2.txt | Set-Content joinedFile.txt
