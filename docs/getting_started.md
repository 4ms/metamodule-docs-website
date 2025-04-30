# Getting Started

## Get to Know the Panel

![MetaModule faceplate](./svg/faceplate-overview.svg)

---

## Connect the power cable

<div class="grid cards" markdown>
-  __Attach the power cable to the MetaModule, red stripe down__

    - The other end of the cable connects to your Eurorack power supply.

   [![Power Cable](./img/power-header.jpg){ .half }](./img/power-header.jpg)
</div>

---

## How to Play a Patch

<div class="grid cards" markdown>

-  __1. Click `Load Patch` in the Main Menu__

   [![Main Menu](./img/main-menu-load.png){ .half }](./img/main-menu-load.png)

</div>
<div class="grid cards" markdown>

-  __2. Click on a patch__


   [![Patch Selector](./img/patch-sel.png){ .half }](./img/patch-sel.png)

</div>
<div class="grid cards" markdown>

-  __3. Click Play icon__

   [![Patch View](./img/patch-view-karplus.png){ .half }](./img/patch-view-karplus.png)

</div>

---

## How to Create a New Patch

<div class="grid cards" markdown>

-  __1. Click `New Patch` in the Main Menu__

   [![Main Menu](./img/main-menu-new.png){ .half }](./img/main-menu-new.png)

</div>
<div class="grid cards" markdown>

-  __2. Pick a module to add to the patch__

      For this example, we'll use the Ensemble Oscillator (EnOsc) from 4ms Company.

      Click once to view just the panel, then click again to add it.

   [![Patch Selector](./img/module-list-enosc.png){ .half }](./img/module-list-enosc.png)

</div>
<div class="grid cards" markdown>

-  __3. Click on the module__

   [![Patch View](./img/patchview-enosc.png){ .half }](./img/patchview-enosc.png)

</div>
<div class="grid cards" markdown>

-  __4. Click the Action Menu icon__

   [![Module View](./img/enosc-action-icon.png){ .half } ](./img/enosc-action-icon.png)

</div>
<div class="grid cards" markdown>

- __5. Select Auto-Map__ 

      This will map physical knobs and jacks to the EnOsc's virtual knobs, switches and jacks.

   [![Module Action Menu](./img/auto-map-menu.png){ .half }](./img/auto-map-menu.png)

</div>
<div class="grid cards" markdown>

- __6. Play!__

       Patch Audio Outs 1 and 2 on the MetaModule to your speakers and twist
       the MetaModule knobs to control the sound. Patch modulation sources into
       the input jacks, if you wish.

       Scroll to see the mappings, or view all of them at once in Knob Set View.

       You can add more modules by clicking the `+` icon in the button bar, and repeat from step 2.

   [![Mapped EnOsc](./img/enosc-mapped.png){ .half }](./img/enosc-mapped.png)

</div>

---

## How to Update Firmware 

<div class="grid cards" markdown>

-  __1. Click `Settings` in the Main Menu__

   [![Main Menu](./img/main-menu-settings.png){ .half }](./img/main-menu-settings.png)

</div>
<div class="grid cards" markdown>

-  __2. Click Update__

   [![System Menu](./img/settings-update.png){ .half }](./img/settings-update.png)

</div>
<div class="grid cards" markdown>

-  __3. Download the firmware to a USB drive or SD Card__

      Use the [Download](../downloads) link above.

      Then save the `metamodule-firmware` folder on your drive.

   [![USB Drive contents](./img/macos-firmware-disk.png){ .half }](./img/macos-firmware-disk.png)

</div>
<div class="grid cards" markdown>

-  __4. Insert the drive into the MetaModule and click `Update Firmware`__

      The drive will be automatically detected. 

      You must leave the module powered on the entire time it is updating.

      It takes about a minute.

  [![Update Firmwware button](./img/firmware-update-button.png){ .half }](./img/firmware-update-button.png)

</div>

Note: if you are upgrading firmware and plugins at the same time, always
upgrade the firmware first. This is because it's possible that the new plugins
will need the new firwmare in order to run. An easy way to make sure you're
doing it right is to copy the new plugins and firmware onto a disk (SD card or
USB). Then power up with all disks removed so that the plugin pre-loader does not
load any plugins. Then insert the disk and upgrade firmware normally. Finally,
reboot with the disk inserted.

