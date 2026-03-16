# Plugins

## Installing Plugins

<div class="grid cards" markdown>

-  __1. Download plugins to a USB drive or microSD card__

      Use the [Plugins](../plugins) link above.

      Click "Download All" at the top. Unzip the "all_plugins.zip" file.

      Copy the `metamodule-plugins` folder to the USB drive or microSD card. 

      If you want to just install particular plugins, download them individually,
      and copy the `.mmplugin` file to the `metamodule-plugins` folder on 
      your USB drive or microSD card.

      You also can put the `.mmplugin` files in the root directory of the USB
      drive or microSD card.

      Insert the drive into the MetaModule.

   [![USB Drive contents](./img/macos-plugins-disk.png){ .half }](./img/macos-plugins-disk.png)

</div>
<div class="grid cards" markdown>

-  __2. Click `Settings` in the Main Menu__

   [![Main Menu](./img/main-menu-settings.png){ .half }](./img/main-menu-settings.png)

</div>
<div class="grid cards" markdown>

-  __3. Click `Plugins`__

   [![System Menu: Plugins highlighted](./img/settings-plugins.png){ .half }](./img/settings-plugins.png)

</div>
<div class="grid cards" markdown>

-  __4. Click `Scan disks`__

  [![Scan plugins button](./img/scan-plugins.png){ .half }](./img/scan-plugins.png)

</div>
<div class="grid cards" markdown>

-  __5. Click a plugin to load it__

      The plugin will stay loaded until you unload it or reboot.

  [![Bogaudio plugin highlighted](./img/plugins-found.png){ .half }](./img/plugins-found.png)

</div>
<div class="grid cards" markdown>

-  __Or, load all plugins__

    Scroll to the bottom and click the `Load All` button to load all plugins found 

  [![Load All button](./img/plugins-load-all.png){ .half }](./img/plugins-load-all.png)

</div>



## Pre-loading Plugins

If you want a plugin to load automatically when you power on, you can tell the
MetaModule to pre-load it.

A USB drive or microSD card containing the plugin file must be installed in the
MetaModule when you power on for this feature to work. If not, you can load the
plugin normally after startup.

<div class="grid cards" markdown>

-  __1. Click a plugin name under `PLUGINS LOADED`__

      If the plugin is not yet loaded, then follow the [instructions above](#installing-plugins). 

  [![Plugins Found: SickoCV](./img/plugins-loaded.png){ .half }](./img/plugins-loaded.png)

</div>
<div class="grid cards" markdown>

-  __2. Enable Pre-load__

      The pre-load status of a plugin is saved when you exit the Plugins tab.
      The next time you power on, the MetaModule will search the USB drive and
      microSD card for a plugin with a matching name.

      Note: The wrong version may get loaded if you have different versions of the same plugin on a microSD card and a USB drive, or different versions in the `metamodule-plugins/` folder and in the root directory.

  [![Plugin Popup: Pre-load switch](./img/plugins-preload.png){ .half }](./img/plugins-preload.png)

</div>
<div class="grid cards" markdown>

-  __Or, Pre-load all the currently loaded plugins__

      Click `Pre-load Current` at the bottom of the list of loaded plugins.

      The next time you power-on, the MetaModule will pre-load only the current
      set of loaded plugins.

  [![Pre-load current button](./img/plugins-preload-current.png){ .half }](./img/plugins-preload-current.png)

</div>

## Auto-loading Plugins

You can tell the MetaModule to load plugins only when needed. This is also known as "lazy loading".
In Settings > Prefs > Missing Plugins you can enable this by choosing "Ask" or "Always".
See [Preferences](preferences.md) for details.
[![Missing Plugins Prefs](./img/settings-missing-plugins.png){ .wide-240 }](./img/settings-missing-plugins.png)


For best results, keep a USB drive or microSD card installed on your
MetaModule. The drive should contain the latest plugins.

### Usage

Whenever you open or reload a patch file, the MetaModule will check if the
patch uses any modules from plugins that aren't currently loaded. In "Ask"
mode, a pop-up will listing the brands that are missing and ask you if you want
to continue.

The MetaModule will scan the USB drive and microSD card for the latest version
of the missing plugins and then load them. 

 [![Ask Missing Plugins](./img/load-missing-plugin-conf.png){ .wide-240 }](./img/load-missing-plugin-conf.png)


The auto-loader will run in any of the following situations:

 - Clicking on a patch name from the Patch Selector page
 - Clicking on the "Now Playing" or "Last Viewed" patch name
 - Selecting "Reload" or "Revert" from the File Menu on the Patch View page
 - Clicking on the Play button when a patch is paused or not playing
 - Updating a patch via Wi-Fi or on disk

 Specifically, the auto-loader will *not* be run if you press the Back button to navigate
 to the Patch View page.


### Missing modules after auto-loading
After scanning for plugins and loading them, if there are still some missing
modules, these will display in a pop-up. This could happen if the patch uses a
module present in the VCV plugin but not present in the MetaModule plugin, or
if the plugin could not be found.

Check the Plugins page to see if there are any updates to the MetaModule
plugin.



## Viewing the modules in a plugin

<div class="grid cards" markdown>

-  __1. Click `New Patch` from the Main Menu__

     To add a module to an existing patch, click the `+` icon in the top button
     bar.

    
  [![New Patch](./img/main-menu-new.png){ .half }](./img/main-menu-new.png)

</div>

<div class="grid cards" markdown>

-  __2. Click the name of the plugin, then browse the modules__

    Click once on any module to view it full-screen.

    Click a second time to add it to the current patch.

  [![Airwindows Galactic module being added](./img/airwindows-module-list.png){ .half }](./img/airwindows-module-list.png)

</div>

---

## Browsing Modules by Tag

In addition to browsing by brand, you can browse by **Tag**. Tags group modules by function
(e.g. *VCO*, *Filter*, *Sequencer*, *Reverb*), making it easier to find a module type.


<div class="grid cards" markdown>

-  __Click the sort button at the top of the module list__

    Toggle between **Brand** and **Tag** views.

  [![Module browser sort menu showing Brand and Tag options](./img/module-browser-sort-menu.png){ .half }](./img/module-browser-sort-menu.png)

</div>
<div class="grid cards" markdown>

-  __In Tag view, choose a tag__

  [![Module browser in Tag view showing list of tags](./img/module-browser-tag-list.png){ .half }](./img/module-browser-tag-list.png)

</div>
<div class="grid cards" markdown>

-  __Click a tag to see all modules with that tag__

  [![Module browser showing Mixer modules](./img/module-browser-tag-mixer.png){ .half }](./img/module-browser-tag-mixer.png)

</div>

Tags follow the VCV Rack standard tag system, which consolidates related terms under one label.
For example, "VCO", "Oscillator", and "Voltage Controlled Oscillator" all map to the same tag.
Module tags are set by the plugin developer.

As a difference from the VCV Rack standard tag system, custom tags are allowed to appear in the MetaModule.

