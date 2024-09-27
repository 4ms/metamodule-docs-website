# Versions

There are many different versions associated with the MetaModule, VCV Rack, and third-party plugins. This guide
attempts to explain the different version you may encounter.

## Firmware Version
<div class="grid cards" markdown>

-  The Firmware is the code that runs on the MetaModule hardware.

      You can see the firwmare version by clicking the Settings button in the Main Menu.
    
      The firmware version is displayed next to the words "Firmware version: ".
       
      For example, the firmware version in the picture is v1.2.1.
       
      You can check the latest firmware version available from the [Downloads page](../downloads)

  [![Settings](./img/system-info.png){ .half }](./img/system-info.png)

</div>


## Plugin Version

<div class="grid cards" markdown>

-  Each plugin that runs on the MetaModule can have its own version.

      You can see the plugin version by looking at the file you downloaded,
      the version will be at the end of the file name.

      You can also see the version of what's loaded on the MetaModule by
      going to the Settings > Plugins page and looking at the version next to each
      plugin name.

      Note that the VCV Rack plugins have their own versioning system.
      The version you see here is the MetaModule plugin version. You 
      can check which VCV Rack plugin version the MetaModule version
      is based off of, by looking at the [Plugins webpage.](../plugins)

  [![Plugin page](./img/plugins-versions.png){ .half }](./img/plugins-versions.png)

</div>

## Compatibility between Firmware version and Plugin version

In general if you use the latest version of all plugins work and the latest
version of firmware, then everything will run.

But, in the future there may be more firmware and plugin versions, so there are some rules
for determining compatibility.

!!! note "Version Major, Minor, and Patch"
    Versions have three parts: __major__, __minor__, and __patch__.

    For example, v1.2.3 has a major version of 1, a minor version of 2, and a
    patch version of 3.


We follow [semantic versioning](https://semver.org/) to determine compatibility.

For a plugin to run on a particular firmware version:

- The major versions must be the same

    - Example: plugin v2.x.x will run on firmware v2.x.x, but __not__ on firmware v3.x.x or 1.x.x

- The minor version of the plugin must be equal or less than the firmware.

    - Example: plugin v1.2.x will run on firmware v1.3.x or v1.2.x, but will __not__ run on firmware v1.1.x

- The patch version doesn't matter:

    - Example: plugin v1.2.5 will run on firmware v1.2.1 or v1.2.9





## 4ms VCV Rack Plugin version


<div class="grid cards" markdown>

-  The VCV Rack plugin of 4ms modules also has a version. This is separate from
   the version of the firmware of either the firmware or plugins.

     You can see the version of the 4ms plugin for VCV Rack by right-clicking
     any 4ms module and looking in the `Info` sub-menu.

     This version number does not correspond to the firmware version or plugin
     versions or API version. The major version indicates the major version of
     VCV Rack that it will run on (Rack v2) and the minor and patch versions
     indicate revisions and bug fixes to the plugin.
     
     Always use the latest version of the 4ms plugin for VCV Rack. In terms of
     compatibility, it will always generate patches that run on all firmware versions
     (though, of course not all features may be available for earlier versions).


  [![VCV Rack Plugin version](./img/vcv-rack-version.png){ .half }](./img/vcv-rack-version.png)

</div>

