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