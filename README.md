# Powerline scripts for bash, ash, PowerShell, and cmd

![Powerline for bash, ash, PowerShell, and cmd](powerline.svg)

## Installation

Ensure you use a font that supports Powerline characters, such as [JetBrains Mono](https://www.jetbrains.com/lp/mono/).

### bash

Add the contents of the `bash/powerline.sh` script to your `~/.bashrc` file.

Customize the variables (e.g., label and color). You can use the `bash/colors.sh` script to select a color.

### ash (e.g., OpenWrt)

Add the contents of the `ash/powerline.sh` script to your `~/.profile` file.

Customize the label and color. You can use the `bash/colors.sh` script to select a color.

### PowerShell

First, enable the execution of PowerShell scripts (including profiles) by running the following command as an administrator:

```powershell
Set-ExecutionPolicy RemoteSigned
```

Next, locate your PowerShell profile file by running:

```powershell
$PROFILE
```

Copy the contents of the `powershell\powerline.ps1` file into your PowerShell profile file.

For older PowerShell versions (e.g., PowerShell 5), ensure the profile script is saved in UTF-8 *with BOM* encoding.

Customize the variables (e.g., label, color, adminColor). You can run the `powershell\colors.ps1` script to select colors.

To suppress system information on PowerShell startup, add the `-NoLogo` switch to the command line in your `PowerShell` profiles within your Terminal application:

```ps1
pwsh -NoLogo # newer PowerShell
powershell -NoLogo # legacy PowerShell
```

### cmd

Save the `cmd\prompt.cmd` file somewhere on your disk. Then, update the command line in your `cmd` profile within your Terminal application as follows:

```ps1
cmd /k "C:\path\to\prompt.cmd"
```

## License

MIT license. See [LICENSE.md](LICENSE.md).

## Credits

- Yuri Plashenkov (https://plashenkov.com, https://github.com/plashenkov), author.
