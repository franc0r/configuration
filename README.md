# configuration
Cofiguration files (wstools install files, udefrules, other config files...)


# Usage wstool
`wstool init your/src/folder your_wstool_file.rosinstall`

## Steamcontroller install driver
`wstool init your/src/folder sc_driver.rosinstall`

to install the driver execute

`./sc_driver_install.sh your/src/folder -j4`



# Steamcontroller driver
to start driver navigate to `steamcontroller`and type
`sudo scd --configs . --default-config xbox360 `
from this dir. You can also use the startscript `./start_scd.sh` from this dir
