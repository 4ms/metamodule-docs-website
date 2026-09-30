# VCV expander modules

Many VCV Rack plugins include *expander* modules: modules that add features to
another module when the two are placed side by side in the rack. Typical
examples are extra steps for a sequencer, extra channels or sends for a mixer,
or CV inputs for parameters that don't fit on the main module's panel.

Starting in firmware v2.4.0, expander modules are fully supported. A patch made
in VCV Rack opens and runs on the MetaModule with the same expander connections,
and you can view, create, and remove expander connections on the MetaModule
itself.

!!! note "Not the same as hardware expanders"
    This page is about *virtual* expander modules inside a patch. For the
    hardware expanders that attach to the back of the MetaModule, see
    [Wi-Fi Expander](wifi.md), [MetaAIO](meta-aio.md), and
    [MetaButtons](meta-buttons.md).

## What you need

- MetaModule firmware v2.4.0 or later.
- The 4ms plugin for VCV Rack, v2.3.0 or later (only needed when creating
  patches in VCV Rack). Older versions don't save expander connections into the
  patch file.
- A version of the MetaModule plugin that includes the expander modules. Before
  firmware v2.4.0, expander modules couldn't do anything on the MetaModule, so
  most plugins left them out. Download the latest version of the plugin from the
  [Plugins page](../plugins). See [Using Plugins](plugins.md) for how to
  install it.

## Expanders in a VCV Rack patch

Build the patch in VCV Rack as you normally would, with each expander touching
the module it expands. When you save or send the patch from the MetaModule Hub,
the expander connections are stored in the patch file. See
[Expander modules](using_rack.md#expander-modules) on the VCV Rack page for the
details.

On the MetaModule, an expander connection is a link between two modules that is
saved in the patch. Unlike VCV Rack, the two modules do **not** have to be next
to each other on the screen: they stay connected however the modules are
[arranged](patch_layout.md).

## Viewing a module's expanders

<div class="grid cards" markdown>
-  __1. Open the module's Action menu and click `Expanders...`__

    Click on the module in the Patch View, click the Tool icon to open the
    [Module Action menu](action_menu.md), and scroll down to `Expanders...`

   [![Expanders item in the Action menu](./img/module-action-expanders.png){ .half }](./img/module-action-expanders.png)
</div>
<div class="grid cards" markdown>
-  __2. The Expanders window shows what is attached to each side__

    Each module has a __Left__ side and a __Right__ side. A side shows the name
    of the module attached to it, or `none` if nothing is attached.

    Click on an attached module's name to jump to that module.

    Press the Back button to close the window.

   [![Expanders window](./img/expander-popup.png){ .half }](./img/expander-popup.png)
</div>

While the patch is playing, a note after the module name tells you about the
connection:

- __(active)__: the two modules are exchanging data, which means the expander is
  working.
- __(no link)__: the connection is in the patch, but the two modules are not
  linked. This happens if one of the modules is not a module ported from VCV
  Rack. It can also appear for a moment right after you attach an expander.
- No note: the modules are linked, but have not sent each other anything. Many
  pairs only talk to each other while they're running, so you may see this
  until the patch has played for a moment.

## Attaching an expander

You can attach an expander to a module at any time, even while the patch is
playing. Both modules must already be in the patch. If the expander isn't in
the patch yet, add it first with the `+` button in the Patch View.

<div class="grid cards" markdown>
-  __1. Click an empty side in the Expanders window__

    Pick the side that the expander goes on. This is the same side you would
    place it on in VCV Rack. Most expanders go on the right side of the module
    they expand.

   [![Empty Expanders window](./img/expander-popup-empty.png){ .half }](./img/expander-popup-empty.png)
</div>
<div class="grid cards" markdown>
-  __2. Select the module to attach__

    The Patch View opens, with a message reminding you which side you are
    attaching to. Turn the encoder to highlight the expander module, and click.

    To cancel, press the Back button.

   [![Selecting the module to attach](./img/expander-select-module.png){ .half }](./img/expander-select-module.png)
</div>
<div class="grid cards" markdown>
-  __3. The expander is attached__

    You are returned to the first module, with the Expanders window showing
    the new connection.

   [![Expanders window](./img/expander-popup.png){ .half }](./img/expander-popup.png)
</div>

Some things to know:

- Each side of a module holds one expander. Some expanders can be chained: to
  do this, attach the second expander to the free side of the first expander.
- The MetaModule does not check that the two modules were designed to work
  together. You can attach any two modules, but only a real expander pair will
  do anything.
- Expander connections are saved with the patch, so remember to save the patch
  after making changes.

## Detaching an expander

<div class="grid cards" markdown>
-  __Click the red `X` next to the attached module__

    Turn the encoder until the `X` is highlighted, click, and then confirm by
    clicking `Detach`.

    Only the connection is removed. Both modules stay in the patch, along with
    their cables and mappings.

   [![Detach confirmation](./img/expander-detach.png){ .half }](./img/expander-detach.png)
</div>

Deleting a module from the patch also removes its expander connections. The same
is true when you [replace](action_menu.md#replace) a module, unless you turn on
`Keep cables and maps`: in that case the new module takes over the old module's
expander connections.
