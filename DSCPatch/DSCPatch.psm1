using module DSCStandard




class pFileConfig : xFileConfig {

    [Logger]$log


    pFileConfig() {
        $this.log = [Logger]::new()
    }

    Set()
    {

        $this.log.Write("Setting config $($this.path).")

        ([xFileConfig]$this).Set()

        $this.log.Write("Set completed.")

    }


}

class Logger {

    [void]Write([string]$message){

    }

}

# import module cChoco/cChocoPackageInstall --- somehow.

# Essentially a wrapper for the WMF4 DSC Resource commands.
class pChocoPackageInstall {

    <#
        Parameters of resource

    #>

    [void]Set() {

        # Patch logic

        # Set-TargetResource < params>

    }

}