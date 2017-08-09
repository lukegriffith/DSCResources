
enum Ensure
{
    Absent

    Present
}

class xFileConfig
{

    [String] $Path
    [String] $Value

    [Ensure] $Ensure = [Ensure]::Present

    [void] Set()
    {
        Write-Verbose "Setting file $($this.Path)."
        # Set file config
    }

    [bool] Test()
    {        Write-Verbose "Testing file $($this.Path)."
        return $false
    }
    # Gets the resource's current state.
    [xFileConfig] Get()
    {

        # Return this instance or construct a new instance.
        return $this
    }
}