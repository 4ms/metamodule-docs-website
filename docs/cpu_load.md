# CPU load balancing

The MetaModule's processor has two cores. When a patch plays, its modules are
divided between the two cores so that they share the work. The way the modules
are divided up is called the patch's *load balance*. A patch uses the least CPU
when both cores have about the same amount of work to do.

The MetaModule has always balanced patches automatically. Starting in firmware
v2.4.0 you can see the balance, see how much CPU each module is using while the
patch plays, and have the MetaModule search for a better balance.

## Opening the CPU Load window

<div class="grid cards" markdown>
-  __Open the Patch Info window and click `CPU Load`__

    Click the `(i)` icon in the Patch View and scroll down to find the button.

   [![CPU Load button](./img/patch-info-cpu-load.png){ .half }](./img/patch-info-cpu-load.png)
</div>

## Reading the CPU Load window

[![CPU Load Balancing window](./img/cpu-load-panel.png){ .half }](./img/cpu-load-panel.png)

- __Core 1__ and __Core 2__: Each core has a bar, and a percentage showing how
  much of its time is spent running its modules.

- __Colored boxes__: Each box in a bar is one module. The wider the box, the more
  CPU that module is using. While the patch is playing, the boxes grow and
  shrink to follow the actual load.

- __Grey box__: The box at the end of each bar is the time that core spends
  processing cables.

- __White line__: If a core is asked to do more than it can, the bars are scaled
  down to fit on the screen and a white line marks the 100% point. Anything past
  the line is an overload.

- __Total CPU__: The patch's overall load, in the top-right corner. This is the
  same number that's shown in the status bar, so it's hidden here if the status
  bar is set to [stay on top](module_patch_settings.md#status-bar).

- __Mappings, MIDI, Sync, Overhead__: This line shows where the rest of the CPU
  time goes while the patch is playing. *Mappings* is the time spent on knob and
  jack mappings. *MIDI* is the time spent handling MIDI. *Sync* is the time
  Core 1 spends waiting for Core 2 to finish, shown as two numbers: the wait for
  Core 2's modules, then the wait for its cables. *Overhead* is everything else.

If the window says `Play this patch to calculate its load balance`, the patch
has never been played, so there is nothing to show yet. Press the Back button
and play the patch first.

### Seeing the load of a module

<div class="grid cards" markdown>
-  __Turn the encoder to highlight a box__

    The name of the module and its load are shown below the bars. If the patch
    has more than one of the same module, the name also tells you which one it
    is, for example `Ensemble Oscillator #2/4`.

    Highlight a grey box to see the cable load for that core.

    Click on a module's box to jump to that module.

   [![A module selected in the CPU Load window](./img/cpu-load-module.png){ .half }](./img/cpu-load-module.png)
</div>

While the patch is playing, the module's load is measured live. If the patch is
not playing, the number is the estimate from the last time the balance was
calculated.

## Re-balancing

The automatic balance is a good first guess: it measures each module on its own
and then divides them up evenly. But modules don't always use the same amount of
CPU when they run together as they do when measured alone, so there is often a
better balance to be found.

<div class="grid cards" markdown>
-  __Click `Re-balance`__

    The MetaModule tries several different ways of dividing the modules between
    the cores. It plays the patch with each one for a fraction of a second,
    measures the real load, and keeps the best one.

    The audio outputs are silent while this happens. It takes about a second,
    and the window shows its progress: `Trying arrangement 2 of 5...`

</div>

The balance the patch already had is included in the comparison, so
re-balancing keeps what you had if nothing better turns up.

Large patches often see their CPU load drop by 2% or more, and sometimes by as
much as 10%. Small patches usually have little to gain.

The other buttons are:

- __Save__: Save the patch, including its new balance. This is greyed out for a
  new patch that has never been saved: use the
  [Patch File Menu](module_patch_settings.md#patch-file-menu) instead.
- __Undo__: Go back to the balance the patch had when you opened the window.
- __Close__: Close the window. You can also press the Back button.

`Re-balance` is greyed out if the patch isn't loaded for playing, or if it has
fewer than two modules. It does work on a patch that was stopped for
overloading the CPU: re-balancing starts the patch playing again.

## The balance is saved in the patch

A patch's load balance is stored in the patch file when you save the patch. The
next time you load the patch, the saved balance is used.

A patch that doesn't have a balance saved in it, such as a patch that just came
from VCV Rack, gets one calculated the first time it's played. The balance is
also calculated again whenever you add, remove, or replace a module.

## Automatic re-balancing

The MetaModule can re-balance a patch for you, without opening the CPU Load
window. This is set by __Auto Re-balance__ in the Audio Settings section of the
[Preferences](preferences.md) page:

- __Off__: Never re-balance automatically.
- __After Overload__ (default): If a patch is stopped because it overloaded the
  CPU, it's re-balanced when you press Play to start it again.
- __Every Patch Load__: Every patch is re-balanced when it's loaded and played.
  This adds about a second of silence each time you load a patch.

You'll see the message `Optimizing CPU load balance...` when this happens.

[![Auto Re-balance preference](./img/prefs-auto-rebalance.png){ .half }](./img/prefs-auto-rebalance.png)
