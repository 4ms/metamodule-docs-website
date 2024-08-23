# Plugins

## Installing Plugins

<div class="grid cards" markdown>

-  __1. Click `Settings` in the Main Menu__

   ![Main Menu](./img/main-menu-settings.png){ .half }

</div>
<div class="grid cards" markdown>

-  __2. Click `Plugins`__

   ![System Menu](./img/settings-plugins.png){ .half }

</div>
<div class="grid cards" markdown>

-  __3. Download plugins to a USB drive or SD Card__

      Use the [Plugins](../plugins) link above.

      Save each `.mmplugin` file to the USB or SD Card. You 
      can put them in the root directory, or in a folder called
      `metamodule-plugins`

   ![USB Drive contents](./img/macos-plugins-disk.png){ .half }

</div>
<div class="grid cards" markdown>

-  __4. Insert the drive into the MetaModule and click `Scan disks`__

      Click a plugin to load it.

  ![Plugins Found](./img/plugins-found.png){ .half }

</div>


## Auto-loading

If you always want a plugin to load when you power on, you can tell the MetaModule to Auto-load it.

Note: A USB drive or microSD card containing the plugin file must be
installed in the MetaModule when you power on. If not, then you can load
the plugin normally after startup.

<div class="grid cards" markdown>

-  __1. Click a plugin name under `PLUGINS LOADED`__

      If the plugin is not yet loaded, then follow the [instructions above](#loading-plugins). 

  ![Plugins Found](./img/plugins-loaded.png){ .half }

</div>
<div class="grid cards" markdown>

-  __2. Check Auto-load__

      The auto-load status of a plugin is saved. The next time you power on, the MetaModule will search the USB drive and SD Card for a plugin with a matching name.

      Note: The wrong version may get loaded if you have different versions of the same plugin on an SD Card and a USB Drive, or different versions in the `metamodule-plugins/` folder and in the root directory.

  ![Plugins Found](./img/plugins-autoload.png){ .half }


</div>
