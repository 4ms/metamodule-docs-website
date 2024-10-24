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

