# How to install the VCV Rack plugin manually

There is normally not any reason to install plugins manually. However, if you were asked by Support to 
try a special version, or are beta-testing, then here is the procedure to do a manual installation:

<div class="grid cards" markdown>

-  __1. Download the plugin__ 

      From the [Downloads](../downloads){ target="blank" } page, click to
      download the plugin for the type of computer you have. If you have a Mac,
      make sure to download the x64 version for an Intel processor, or the arm64
      version for a newer Apple silicon processor.


<!--   [![Download page](./img/vcv-plugin-download.png){ .half }](./img/vcv-plugin-download.png) -->

</div>
<div class="grid cards" markdown>

-  __2. Find your VCV Rack User Folder__

      From the VCV Rack program, select "Open user folder" 
      from the _Help_ menu.

      A folder called "Rack2" will open on your screen.

      <span style="font-size: 0.8em">
      Alternatively, you can open the folder manually:</span>

      - <span style="font-size:0.8em">MacOS: ~/Library/Application Support/Rack2/</span>
      - <span style="font-size:0.8em">Windows: C:\Users\<username>\AppData\Local\Rack2\</span>
      - <span style="font-size:0.8em">Linux: ~/.local/share/Rack2/</span>


   [![Open user folder](./img/vcv-open-user-folder.png){ .half }](./img/vcv-open-user-folder.png)

</div>
<div class="grid cards" markdown>

-  __3. Put the downloaded file into the plugin directory__ 

    The folder is named after they type of computer and OS you have, but always starts with `plugins-`

    For example, on a Mac with Apple silicon, it's called `plugins-mac-arm64`, and on an Intel Mac it's `plugins-mac-x64`.


   [![Cppying to plugin dir](./img/copy-rack-plugin.png){ .half }](./img/copy-rack-plugin.png)

</div>
<div class="grid cards" markdown>

-  __4. Quit and re-launch VCV Rack__ 

    Right-click (or control-click) on any empty rack space to open the Add
    Module page and see the 4ms modules.

   [![4ms Modules in VCV](./img/vcv-rack-modules.png){ .half }](./img/vcv-rack-modules.png)

</div>
