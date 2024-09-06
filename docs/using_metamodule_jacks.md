# Using the MetaModule: Jacks, MIDI, and Cables

## How to Patch Cables

There are two types of cables in the MetaModule: cables between virtual modules
(also called internal cables), and cables that go to the physical panel jacks
(also called Jack Mappings)

*Note: While VCV Rack supports polyphonic cables, only monophonic cables are
supported on the current version of the MetaModule*

### Patching cables between modules

<div class="grid cards" markdown>

-  __1. Click on a jack, and click New Cable__

      You can start a cable from the input or output. If the jack is already
      patched, then the new cable will "stack" on top of the existing cable
      (thus acting like a passive mult)

      If this is the first cable you're creating this session, a pop-up will
      give you instructions. Read them and click OK.

   [![New cable start](./img/new-cable-start.png){ .half }](./img/new-cable-start.png)

</div>
<div class="grid cards" markdown>
-  __2. Navigate to the jack you want to connect to__

     - Find the module you want to patch to, and click on it. 

     - Then scroll to the jack you want to patch to, and click on it.

     Only valid jacks will be shown. You cannot connect multiple outputs to to
     an input. 

     If you want to cancel making a cable, click "Cancel Cable" or press the
     Back button from the Patch View page.

   [![New Cable dest](./img/new-cable-dest.png){ .half }](./img/new-cable-dest.png)

</div>
<div class="grid cards" markdown>
-  __3. Done!__

     *Note: Keep in mind that the physical panel Input jacks are treated like
     outputs. This makes sense if you consider that they send signals to
     virtual modules. Therefore, if a panel Input (i.e. In 1-6 or GateIn 1-2)
     is patched to a virtual input jack, then you cannot patch another output to the
     same virtual input jack (because only one output can drive an input).*

   [![New Cable done](./img/new-cable-done.png){ .half }](./img/new-cable-done.png)

</div>

### Patching to a panel jack

Patching a virtual module jack to a panel jack is how you map the physical jacks on the
MetaModule to virtual module jacks.

<div class="grid cards" markdown>
-  __1. Click on a jack, and click New Panel Cable__

    If the jack is already connected to a panel jack, then this button will not
    be displayed.

   [![New panel cable](./img/new-panel-cable.png){ .half }](./img/new-panel-cable.png)
</div>
<div class="grid cards" markdown>
-  __2. Select a panel jack and click Connect__

     The drop-down menu will indicate if any panel jacks are already connected:

       - Connecting to a panel Out jack that's already connected to something else will disconnect the existing cable.

       - Connecting to a panel In jack that's already connected to something else will stack on top of the existing cable.

   [![New panel cable popup](./img/new-panel-cable-popup.png){ .half }](./img/new-panel-cable-popup.png)
</div>

### Patching to MIDI

You can patch MIDI signals to input jacks.

Note: at this time, you cannot send MIDI out from the MetaModule, there is no
CV->MIDI functionality.

<div class="grid cards" markdown>
-  __1. Click on an input jack, and click New MIDI Map__

    If the jack is already connected to a panel jack, then this button will not
    be displayed.

   [![New MIDI Map](./img/enosc-midi-map.png){ .half }](./img/enosc-midi-map.png)
</div>
<div class="grid cards" markdown>
-  __2. Select a MIDI signal__

    Choose from:

    - Note events (keyboard): select Pitch (key number), Gate (note on/off), Velocity,
      Aftertouch, or Retrigger (multiple note-on). Also select
      the polyphony channel. The maximum polyphony channel of all the MIDI
      mappings in the entire patch determines how MIDI note events are parsed.

    - CC: Continuous CV scaled to 0V to 10V. Select a CC number, or send a CC
      event to "learn" it.

    - Pitch Wheel

    - Gate on Note: fires a gate whenever a particular note is pressed. Select
      a note or play a note live to "learn" it.

    - Clock: Select the raw MIDI clock (24PPQN) or a divided version of that.

    - Transport: Sends a gate for Start, Stop, and Continue events.

   [![MIDI maps](./img/midi-map-top.png){ .half }](./img/midi-map-top.png)
</div>
<div class="grid cards" markdown>
-  __3. Click Map to create the mapping__

   [![MIDI maps](./img/midi-map-pw.png){ .half }](./img/midi-map-pw.png)
</div>



### Disconnecting a cable (Unpatching or removing a cable)

<div class="grid cards" markdown>
-  __1. Click on a jack, and then click Disconnect__

     This will disconnect all cables to this jack.

     For stacked cables (one output going to multiple inputs):

     - If the selected jack is an output, then all stacked cables will be removed.

     - If the selected jack is an input, then only the stacked cables that connect to this jack will be removed.

   [![Disconnect cable](./img/disconnect-cable.png){ .half }](./img/disconnect-cable.png)
</div>

### Following a Cable

You can "follow" a cable to trace the connections between modules.

<div class="grid cards" markdown>
-  __1. Click on a jack, and then click on an item in "Connected To:"__

     You will be taken to the jack on the other module.

     Clicking on a Panel connection does nothing.

   [![Click on connecting jack](./img/connecting-jack.png){ .half }](./img/connecting-jack.png)
</div>
<div class="grid cards" markdown>
-  __2. Module and jack on the other end of the cable will be shown__

     You can repeat the process to trace all connections on a jack.

     Pressing the Back button will re-trace your steps, first going to the
     module's list of controls and jacks, and then going back to the previously
     viewed module.

   [![Other end of connecting jack](./img/connecting-jack-end.png){ .half }](./img/connecting-jack-end.png)
</div>
