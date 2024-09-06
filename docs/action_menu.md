# Module Action Menu

The Module Action Menu is found by clicking on a module in a patch and then clicking on the Tool icon at the top.
<div class="grid cards" markdown>
-   [![Module Action Menu icon](./img/module-action-icon.png){ .half }](./img/module-action-icon.png)

-   [![Module Action Menu](./img/module-action-menu.png){ .half }](./img/module-action-menu.png)
</div>

## Actions

### Auto-map All
This action attempts to maps all knobs and jacks in the order that they appear in the
module. Existing maps will be preserved, and new Knob Sets will be created if
needed.

Jacks will be mapped to In 1-6 and Out 1-8, skipping any jacks that are already mapped.

`Auto-map All` is a great way to try out a module or quickly create a single-module patch. 

Since this action will often fill all your jack mappings, it's recommended to
use `Auto-map knobs (new Knob Set)` for multi-module patches.

### Auto-map knobs (new Knob Set)

Similar to Auto-map All, but this will create a new Knob Set and only map the
knobs (not jacks). The new Knob Set will be given the name of the module (e.g.
"EnOsc" or "Plateau").

If there are more than 12 controls, then only the first 12 will be mapped.


### Randomize

This randomizes the value of all parameters. Note that in VCV Rack, modules can
exclude particular parameters from being randomized. This is not present in
MetaModule, but will be added in a future update.

### Delete

Delete the module from the patch, removing all cables and mappings. This cannot
be undone. (However, you can Revert the patch file it to restore the module).
