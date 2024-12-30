# Troubleshooting startup issues

Normally you should update firmware by following [these instructions](getting_started.md#updating-firmware).

However, sometimes something goes wrong and the module will not start up properly. In that case, there is a way
to install updated firmware using a USB cable.


## USB DFU Bootloader

1. Download the latest firmware release and unzip the it. Look inside the metamodule-firmware folder. You should see a file called main.uimg.

2. Connect a USB cable from a computer to the module. It must be a USB cable capable of transmitting data, not just a charging cable.

3. Power cycle the module while holding down the rotary encoder.

4. The button will be flashing green, this tells you that you are in USB-DFU bootloader mode

5. Open Chrome browser (other browsers will not work). Go to this web page: [Web DFU](https://devanlai.github.io/webdfu/dfu-util/)

6. Click Connect, and then select “STM Device in DFU Mode”.

7. Click “Choose File” and select the main.uimg file you just downloaded.

8. Click “Download”.

9. Wait a couple minutes… it takes a while. There will be this error message:
 `DFU GETSTATUS failed: ControlTransferIn failed: NetworkError: Failed to
 execute 'controlTransferIn' on 'USBDevice': A transfer error has
 occurred.` This is normal, and is not a problem. It’s safe to ignore this.

10. When the web page says it’s done, unplug the USB cable and power cycle
  the module

## SD Card restore

This method is more involved, but is the only way to restore damaged bootloaders.

It requires you to format an SD Card.

1. Insert the SD Card you want to format into your computer. All data on this card will be lost, so make sure to backup anything you need.

2. Download [Balena Etcher](https://etcher.balena.io#download-etcher).

3. Install Etcher according to the instructions.

4. Download the [metamodule restore image](https://efp.balena.io/open-image-url?imageUrl=https://metamodule.info/dl/metamodule-restore.img.xz)

5. Launch Etcher.

6. Click "Load from File" and select the metamodule-restore.img.xz file you downloaded.

7. Select the SD Card device. Double-check you selected the right device (not some other SD card or USB drive plugged into your computer). Remember -- ALL DATA WILL BE LOST ON THE SD CARD!

8. Click "Flash" to begin the process. It may take up to 20 minutes or more if you have a slow card.

9. When it's complete, power off the MetaModule and insert the SD Card.

10. Unscrew the MetaModule from your case and locate the small DIP switch labeled "BOOT0_2". It's located roughly under the rotary encoder, in the upper-left corner of the MetaModule (as viewed from the PCB side).

11. Carefully flip the bottom switch to the left. Now both the top and bottom switches should be in the left position.

12. Power up the MetaModule normally.

13. The module should boot up into firmware 1.6.4.

14. To install firmare onto the module itself (so that you don't have to 
