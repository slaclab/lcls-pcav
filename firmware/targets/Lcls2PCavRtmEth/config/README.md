# CPSW YAML defaults files

## Description

This directory contains CPSW YAML defaults files for the Llrf applications which use the Gen2 UpConverter card.

## Defaults files

- Base files:

File name               | Description
------------------------|---------------------
defaults.yaml           | Constains the base default configuration, common to all other files.
cw_mode.yaml            | Contains setting to set CW mode, on top of the base configuration.
jesd_init.yaml          | Contains the JESD initilization sequence.

- Compose files:

File name               | Description
------------------------|---------------------
defaults_cw.yaml        | Sets base defaults (defaults.yaml) and CW mode (cw_mode.yaml).
defaults_init.yaml      | Sets base defaults (defaults.yaml) and calls the JESD init (jesd_init.yaml).
defaults_cw_init.yaml   | Sets base defaults (defaults.yaml), CW mode (cw_mode.yaml) and calls the JESD init (jesd_init.yaml).

