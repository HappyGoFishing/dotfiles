function prompt {
    "$($env:USERNAME)@$([System.Net.Dns]::GetHostName())[$(Get-Location)]: "
}

