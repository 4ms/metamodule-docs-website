# Versions

There are many different versions associated with the MetaModule, VCV Rack, and third-party plugins. This guide
explains the different versions you may encounter.

There are three versions to consider when we talk about using plugins on the MetaModule:

- Firmware version: This is the version of the low-level software running on the MetaModule hardware: the MetaModule "engine", if you will.

- Plugin version: This is the version of the third-party plugin that you load onto the MetaModule

- SDK version: Essentially the minimum firmware version required to run this plugin (read on for details)

Each of these is discussed in detail below:

## Firmware Version
<div class="grid cards" markdown>

-  The Firmware is the code that runs on the MetaModule hardware.

      You can see the firmware version by clicking the Settings button in the Main Menu.
    
      The firmware version is displayed next to the words "Firmware version: ".
       
      For example, the firmware version in the picture is v1.2.1.
       
      You can check the latest firmware version available from the [Downloads page](../downloads)

  [![Settings](./img/system-info.png){ .half }](./img/system-info.png)

</div>


## Plugin Version

<div class="grid cards" markdown>

-  Each plugin that runs on the MetaModule can have its own version.


      You can see the plugin version by looking at the file you downloaded:
      the version will be at the end of the file name.

      You can also see the version of what's loaded on the MetaModule by
      going to the Settings > Plugins page and looking at the version next to each
      plugin name.

      The plugin version is used by the plugin developer to track updates to
      the plugin itself. It has nothing to do with what firmware version it
      requires. For instance, the first release of a plugin might be v1.0.0.
      This might have been built to run on firmware v2.1. The plugin developer
      might add some more modules and bump the version to v2.0.0, but it still runs
      on firmware v2.1. Then they might fix some bugs and then call it v2.2, but it still 
      runs on firmware v2.1.

      (Note that prior to v2.0 firmware, the plugin version
      reflected the firmware version, but this is no longer the case.)


  [![Plugin page](./img/plugins-versions.png){ .half }](./img/plugins-versions.png)

</div>
<div class="grid cards" markdown>
 Note that the VCV Rack plugins have their own versioning system.
 The version discussed above is the MetaModule plugin version. You 
 can check which VCV Rack plugin version the MetaModule version
 is based on by looking at the [Plugins webpage.](../plugins)
</div>

## SDK Version

<div class="cards grid" markdown>

-  Plugins are built using the MetaModule SDK. The SDK has a version, which closely 
   follows the minimum firmware version it needs to run.

     There's no way to easily see the SDK version of a given plugin file. In general,
     always use the newest version available.

     If there is a currently active development version of firmware (aka beta version), then it 
     will have the tag `-dev-X` in the filename:

         Plugin-v0.1-dev-12.mmplugin

     This indicates the firmware will only run on the development firmware
     version `dev-12.0` or later (up to but not including `dev-13`)

</div>

## Compatibility between Firmware version and Plugin version

In general, if you use the latest versions of all plugins and the latest
firmware version, then everything will run. But if you want to understand
how it all works, then here are the rules for determining compatibility.

First, some terminology:

!!! note "Version Major, Minor, and Patch"
    We use [semantic versioning](https://semver.org/) to determine compatibility.
    Versions have three parts: __major__, __minor__, and __patch__.

    For example, v1.2.3 has a major version of 1, a minor version of 2, and a
    patch version of 3.


For a plugin to run on a particular firmware version:

- The __major__ versions of the plugin's SDK and the firmware must be the __same__

    Example: a plugin with SDK v2.X will run on firmware v2.X.Y, but __not__ on firmware v3.A.B or 1.C.D

- The __minor__ version of the plugin's SDK must be __equal or less than__ the firmware.

    Example: a plugin with SDK v1.2 will run on firmware v1.3.x or v1.2.x, but will __not__ run on firmware v1.1.x

- The __patch__ version __doesn't matter__ (and usually SDKs don't have a patch version)

    Example: a plugin with SDK v1.2.5 will run on firmware v1.2.1 or v1.2.9

Instead, when you load a plugin on the MetaModule, it's scanned by the MetaModule to determine if 
it's compatible with the firmware you're running.

## When does the version matter?

Note that this is a new policy starting with firmware v2.0 (April 2025) -- prior to this the plugin
version was linked to the firmware version it required.


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

## Technical details on Plugin versions (for developers)

This section is meant for plugin developers or anyone curious how versioning
works with plugins. Nothing in this section is necessary to know or understand
in order to use the MetaModule and plugins.

Plugins have the SDK version used to compile the plugin in two places:

 1. Inside the `.mmplugin` tar bundle, there is a file called `SDK-X.X` which
    is automatically generated by the `plugin.cmake` build script.
 2. In the metamodule-core-interface library that the plugin compiles against,
    there is a function `get_version()`

The `SDK-X.X` file is present so that the plugin loader can abort early if it
untars a plugin with an incompatible version. This file provides a small amount
of assurance that executing the code in the plugin will not crash. 

The `get_version()` symbol is called only after the the first two checks have passed.
This returns a major, minor, and revision.

#### Extracting contents of a plugin file

If you have an unknown plugin and wish to open a plugin up to see what version it needs, you
can extract the contents. 
   - On MacOS, right-click the .mmplugin file and open it with "Archive Utility"
   - On Linux, type the command: `tar -xf PluginFileName.mmplugin`
   - On Windows, you can use a MinGW shell and type the Linux command. Or you
     may be able to use 7zip or TarTool if you rename the .mmplugin file to end
     in .tar. 

 Once you have it extracted, you will see a file starting with `SDK-`. This
 indicates the version. For instance `SDK-2.0` means the plugin requires
 firmware v2.0 or later (but earlier than the next major release which is 3.0).
