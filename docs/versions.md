# Versions

There are many different versions associated with the MetaModule, VCV Rack, and third-party plugins. This guide
attempts to explain the different version you may encounter.

There are three versions to consider when we talk about using plugins on the MetaModule:
- Firmware version: This is the version of the software running on the MetaModule hardware
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
      on firmware v2.1. Then might fix some bugs and then call it v2.2, but it still 
      runs on firmware v2.1.

      (Note that prior to v2.0 firmware, the plugin version
      reflected the firmware version, but this is no longer the case.)


  [![Plugin page](./img/plugins-versions.png){ .half }](./img/plugins-versions.png)

</div>
<div class="grid cards" markdown>
 Note that the VCV Rack plugins have their own versioning system.
 The version discuessed above is the MetaModule plugin version. You 
 can check which VCV Rack plugin version the MetaModule version
 is based off of, by looking at the [Plugins webpage.](../plugins)
</div>

## SDK Version

<div class="cards grid" markdown>

-  Plugins are built using the MetaModule SDK. The SDK has a version, which closely 
   follows the minimum firmware version it needs to run.

     Plugin SDK version is usually written into the filename at the end. The tag `-fw-X.Y` indicates
     that the SDK version is vX.Y. For example:

         Plugin-v1.0.0-fw-2.3.mmplugin

     has an SDK version of 2.3.
     This means it requires firmware v2.3 or later, and earlier than v3.0 (see next section for details).

     If there is a currently active developement version of firmware (aka beta version), then it 
     will be have the tag `-dev-X` in the filename:

         Plugin-v0.1-dev-12.mmplugin

     This indicates the firmware will only run on the developement firmware
     version `dev-12.0` or later (up to but not including `dev-13`)

</div>

## Compatibility between Firmware version and Plugin version

In general if you use the latest version of all plugins work and the latest
version of firmware, then everything will run. But if you want to understand
how it all works, then here are the rules for determining compatibility.

First, some terminology:

!!! note "Version Major, Minor, and Patch"
    We use [semantic versioning](https://semver.org/) to determine compatibility.
    Versions have three parts: __major__, __minor__, and __patch__.

    For example, v1.2.3 has a major version of 1, a minor version of 2, and a
    patch version of 3.


For a plugin to run on a particular firmware version:

- The __major__ versions of the plugin's SDK and the firmware must be the __same__

    - Example: a plugin with SDK v2.X will run on firmware v2.X.Y, but __not__ on firmware v3.A.B or 1.C.D

- The __minor__ version of the plugin's SDK must be __equal or less than__ the firmware.

    - Example: a plugin with SDK v1.2 will run on firmware v1.3.x or v1.2.x, but will __not__ run on firmware v1.1.x

- The __patch__ version __doesn't matter__ (and usually SDKs don't have a patch version)

    - Example: a plugin with SDK v1.2.5 will run on firmware v1.2.1 or v1.2.9


## When does the version matter?

As of v2.0-dev-13:

#### Autoloader
   The plugin auto-loader will attempt to load the latest plugin version it finds, for each given plugin.
   It will only consider the plugin version, and will ignore any `-fw-X.Y` or `-dev-ZZ` tag in the file name.

   For example, if the autoloader scans all the disks and finds:

      SupaPlug-v1.2-fw-1.1.mmplugin
      SupaPlug-v0.1-fw-2.2.mmplugin
      SupaPlug.mmplugin
      SupaPlug-v0.1-dev-13.mmplugin

  Then it will attempt to load the one with v1.2 because that's the latest version.
  Currently, if it fails to load this one, then it will not try any more.
  Future firmwares may have it proceed to try more versions. (e.g. next it will try
  v0.1, then the ones with no versions)


#### Plugin page (Settings > Plugins)

  All .mmplugin files found on the disks will be shown. 

  If you go back and forth
  between incompatible firmware versions (e.g. to test dev firmware), then it's
  recommended to use different USB disks for each plugin version, or use
  different folders and manually change the folder names when
  upgrading/downgrading.

#### Plugin Webpage

  The latest version of plugins built for officially-released firmware will be shown 
  on the [plugins page](https://metamodule.info/plugins). This page uses the `-fw-X.Y` 
  tag in the file name as well as inspecting the plugin's contents to determine
  which plugins are compatible with the current official firmware.

  Plugins that work with the developement ("beta") firmware will be included in a zip
  file on the [downloads page](https://metamodule.info/downloads). These will not be
  described in detail, since developement firwmare changes rapidly.


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

Plugins have their version in three places. While this is overly redundant, it
offers some boosts in performance for the plugin loader.

 1. The filename contains an SDK version string: `*-fw-X.Y.mmplugin`.
 2. Inside the `.mmplugin` tar bundle, there is a file called `SDK-X.Y` which
    is automatically generated by the `plugin.cmake` build script.
 3. In the metamodule-core-interface library that the plugin compiles against,
    there is a function `get_version()` which returns the SDK version.

Since un-tarring all .mmplugin files found on the disk consumes a lot of time
and memory, the version is embedded into the filename so that users can tell
what version firmware a given plugin should work with.

The `SDK-X.X` file is present so that the plugin loader can abort early if it
un-tars a plugin with an incompatible version. This file provides a small amount
of assurance that executing the code in the plugin will not crash. 

One the plugin is untarred, the executable is dynamically linked, which takes some
time to perform. When this is complete, the `get_version()` symbol is looked up and 
called. The version returned from this is used to determine if a plugin is compatible
before executing any more code from the plugin. This step is a redundant check to
make sure that a mangled plugin (or a plugin whose contents were manually merged
for some reason) will not be executed (because that would cause an immediate crash).
