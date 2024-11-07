# Wi-Fi Expander

## Getting Setup

Read the PDF version here: [Wifi Quick Start](https://4mscompany.com/media/MetaModule/Wifi-QSG.pdf)

### Connect to MetaModule

1. Power off your system.
2. Connect one end of the included 8-pin cable to the header labelled 
    "WiFi" on the MetaModule, and the other end to the 8-pin header on 
    the Wi-Fi Expander. 
3. Make sure the red stripe is up on both ends of the cable. 
4. Connect the included 10-pin power cable to Eurorack power with the red stripe down.
5. Power on your case. The Wi-Fi Expander button will turn light blue.

### Connecting to a Wi-Fi network (Provisioning)

<div class="grid cards" markdown>
-   __1. Download the ESP BLE Provisioning app on a phone or tablet__

    - iOS: [App Store](https://apps.apple.com/us/app/esp-ble-provisioning/id1473590141)
    - Android: [Google Play Store](https://play.google.com/store/apps/details?id=com.espressif.provble&hl=en_US)

-   ![ESP BLE Provisioning app](./img/wifi-ble-app-icon.png){ .half }
</div>
<div class="grid cards" markdown>
-   __2. Open to ESP BLE Provisioning app__

    At some point the app will ask for permission to use the 
    camera and/or Bluetooth. Click "OK" or "Allow".

    If you do not allow access to the camera and Bluetooth, then you 
    MUST go to your iOS or Android Settings and allow access.
</div>
<div class="grid cards" markdown>
-   __3. Tap the gear icon (upper-left) on iOS or the three dots (upper-right) on Android__
    
    This will open the settings page.

-   ![ESP BLE Gear](./img/esp-ble-gear.png){ .half }
</div>
<div class="grid cards" markdown>
-   __4. Turn off Encrypted Communication__
    
-   ![ESP BLE Settings](./img/esp-ble-settings.png){ .half }
</div>
<div class="grid cards" markdown>
-   __5. Tap "Provision Device"__
    
-   ![ESP BLE Provision](./img/esp-ble-provbut.png){ .half }
</div>
<div class="grid cards" markdown>
-   __6. Tap "I don't have a QR code"__
    
-   ![ESP BLE QR Code button](./img/esp-ble-qrbut.png){ .half }
</div>
<div class="grid cards" markdown>
-   __7. In the PREFIX box, remove the text “PROV_” (if present), and type “4MS”__

     On Android, tap “Change” first.
    
-   ![ESP BLE prefix](./img/esp-ble-prefix.png){ .half }
</div>
<div class="grid cards" markdown>
-   __8. Tap the Refresh icon or “Scan Again”__

    Then tap the 4MS device that appears

-   ![ESP BLE scan](./img/esp-ble-refresh.png){ .half }
</div>
<div class="grid cards" markdown>
-   __9. Select your Wi-Fi network from the list__

    Enter your Wi-Fi password when asked.

    After a moment, the light on the Wi-Fi Expander will turn green.
</div>
<div class="grid cards" markdown>
-   __10. On the MetaModule, go to `Settings > Info`__

    Look for the Wi-Fi IP address

-   ![Settings Wifi IP](./img/settings-info-wifi-ip.png){ .half }
</div>
<div class="grid cards" markdown>
-   __11. On your computer, open a browser window and type in the IP address__

    Hint: the IP address starts with `http://`, not with `https://`

-   ![Browser Wifi IP](./img/browser-ip.png){ .half }
</div>
<div class="grid cards" markdown>
-   __You're connected!__


    In the browser, navigate to the drive (and optionally, a subfolder) where you want to put a patch.

    Click the Upload button and select a .yml patch file to transfer. 

    When the progress bar is complete, the patch file can be played on your MetaModule!
</div>

After connecting to a Wi-Fi network, you can choose to delete the ESP BLE Provisioning app. However, if you
anticipate needing to change Wi-Fi networks, you may want to leave it installed. 

## Changing Wi-Fi networks

Power on with the button held down. Release it when it turns red. The light will turn off and then turn light blue.
You can then perform the [steps at the top of this page](#connecting-to-a-wi-fi-network-provisioning).

## Troubleshooting

- Cannot get the ESP BLE Provisioning app to see the Wi-Fi Expander module:
    - Did you disable Secure Communication?
    - Did you erase the prefix text "PROV" and replace it with "4MS"?
    - Did you give the app permission to use the camera?
      Even though the Wi-Fi Expander doesn't have a QR code, the app will
      still not function unless you give it permission to use the camera.
    - Did you give the app permission to use Bluetooth?
       - Go to your phone's settings and verify it has Bluetooth and camera permissions


- Cannot see my hotspot in the list of Wi-Fi networks:
    - If you are creating a personal Wi-Fi network (aka "hotspot"),
      then it's possible you will need to run the ESP BLE Provisioning app on a
      different device. The app may not be able to see the hotspot network
      created on the same device that it's running on.

- My browser won't load the Wi-Fi Expander's page
    - Your computer must be on the same network as the Wi-Fi expander. 
      Make sure whatever Wi-Fi network you entered into the ESP BLE app is the 
      same as the network your computer is connected to.

