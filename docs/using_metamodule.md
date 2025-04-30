# Using the MetaModule: Knobs

## How to View Knob and Jack Mappings

<div class="grid cards" markdown>

-  __1. Click the Knob icon in the button bar__

   [![Patch View](./img/patch-view-knobset-icon.png){ .half }](./img/patch-view-knobset-icon.png)

</div>
<div class="grid cards" markdown>

-  __2. Knob mappings are shown__

      This is a "Knob Set" (see below).

      Turn some physical knobs and watch the knobs on the screen turn (the patch must be playing).

      Click `Jacks` to view jack mappings

   [![Patch View](./img/knobset-karplus-jackicon.png){ .half }](./img/knobset-karplus-jackicon.png)

</div>
<div class="grid cards" markdown>

-  __3. Jack mappings are shown__

   [![Patch View](./img/jackmap-karplus.png){ .half }](./img/jackmap-karplus.png)

</div>

---

## Knob Sets

-  A Knob Set is a group of knob mappings. Each Knob Set maps the 12 physical
   knobs to virtual module controls.
   For example, a patch might have a Knob Set for each module. Or there might
   be a Knob Set for controlling various timbre parameters, another Knob Set
   for controlling rhythmic elements, and another for overall mix. 

-  A patch can have up to eight Knob Sets, but only one Knob Set can be active at a time.

-  A single physical knob can be mapped to up to 8 virtual knobs in a Knob Set. See [Multi-maps](#mapping-to-more-than-one-knob-multi-maps)

## How to Use a Different Knob Set


From the Knob Set page:

<div class="grid cards" markdown>

-  __1. Click `>>` to view the next Knob Set__

      If there is only one Knob Set in the patch, the >> button will not appear.

   [![Knob Set](./img/knobset-karplus.png){ .half }](./img/knobset-karplus.png)

</div>
<div class="grid cards" markdown>

-  __2. Click `Use` to activate a Knob Set__
        
     Now the physical knobs will control the parameters mapped in the new Knob
     Set.

   [![Knob Set](./img/knobset-use.png){ .half }](./img/knobset-use.png)


</div>

### **Knob Set Shortcut**

A fast way to change Knobs Sets is to hold down the Back button and turn the encoder.

A pop-up will tell you the name of the Knob Set that was just made active.

The Back button's color will always indicate the Knob Set number:

<div class="circlenum whitenum">1</div>
<div class="circlenum rednum">2</div>
<div class="circlenum orangenum"><p>3</p></div>
<div class="circlenum yellownum"><p>4</p></div>
<div class="circlenum greennum"><p>5</p></div>
<div class="circlenum cyannum"><p>6</p></div>
<div class="circlenum bluenum"><p>7</p></div>
<div class="circlenum purplenum"><p>8</p></div>
<div style="clear:both"></div>


## Creating a new Knob Set

You can create a new knob set in several ways:

 -  With VCV Rack, when you make the patch. See [Creating Knob Sets in VCV Rack](using_rack.md#creating-knob-sets-in-vcv-rack)

 -  By clicking `(new knobset)` when you creating a new knob mapping (see next section)

 -  By selecting `Auto-map knobs (new Knob Set)` from the module [Action
    menu](action_menu.md#auto-map-knobs-new-knob-set).

 Note: While Knob Sets can have a name, currently the only way to provide a
 name is when you create the patch with VCV Rack. Future firmware release will
 allow editing the name from within the MetaModule


---

## Creating a new Knob Mapping or MIDI CC/Note Mapping

From the Patch View page:

<div class="grid cards" markdown>

-  __1. Open a module and click a control__

   [![Knob Set](./img/plaits-freq-knob.png){ .half }](./img/plaits-freq-knob.png)

</div>
<div class="grid cards" markdown>

-  __2. Click on a Knob Set that doesn't already have a mapping__

    If you want to create a new Knob Set, click `(new knobset)`

    If you want to map a MIDI CC to this knob, click `MIDI`

   [![Knob Set](./img/plaits-mapping-pane.png){ .half }](./img/plaits-mapping-pane.png)

</div>
<div class="grid cards" markdown>

-  __3. Wiggle the knob you want to map to__

    If you're mapping with MIDI, then send MIDI CC or MIDI Notes

   [![Knob Set](./img/plaits-mapping-add.png){ .half }](./img/plaits-mapping-add.png)

</div>
<div class="grid cards" markdown>

-  __4. Click OK. It's mapped!__

     If you want to adjust the minimum and maximum values of the mapping, or
     give the mapping a name, see [Edit a Knob
     Mapping](#editting-a-knob-mapping).

   [![Knob Set](./img/plaits-mapping-done.png){ .half }](./img/plaits-mapping-done.png)

</div>


---

## Editting a Knob Mapping


From the Knob Set page:

<div class="grid cards" markdown>

-  __1. Click on a mapping...__

   [![Knob Set](./img/knobset-karplus-knobA.png){ .half }](./img/knobset-karplus-knobA.png)

</div>
<div class="grid cards" markdown>

-  __2. ... to go to the Knob View page__

   [![Knob View](./img/knobview.png){ .half }](./img/knobview.png)

</div>
<div class="grid cards" markdown>

-  __3. Click on MIN or MAX to change the range__

     When the physical knob is all the way down, the virtual knob will be set
     to the MIN value. Likewise, when the physical knob is all the way up, the
     virtual knob will be at the MAX value.

     If you set MAX to be less than the MIN, the virtual knob will turn the
     opposite direction as the physical knob.

   [![Knob View Min](./img/knobview-min.png){ .half }](./img/knobview-min.png)

</div>
<div class="grid cards" markdown>

-  __4. Click on the knob name to type an alias__

     An alias is a name you pick for a knob mapping. If this is a multi-map,
     then the alias will apply to all mappings within the multi-map.

   [![Knob View Name](./img/knobview-name.png){ .half }](./img/knobview-name.png)

</div>

---

## Changing a Knob Set name


From the Knob Set page:

<div class="grid cards" markdown>

-  __1. Click on the knob set name...__

   [![Knob Set name](./img/knobset-name.png){ .half }](./img/knobset-name.png)

</div>
<div class="grid cards" markdown>

-  __2. Type a new name__

   [![Edit Knob Set name](./img/edit-knobset-name.png){ .half }](./img/edit-knobset-name.png)

</div>

---

## Mapping to more than one knob (Multi-maps)

A single physical knob can be mapped to up to eight virtual knobs. This is
known as a "multi-map". As you turn the physical knob, all the mapped virtual
knobs will turn. Each virtual knob can have different minimum and maximum
values. In this way, mulit-maps allow the MetaModule to act like a macro
controller.

For example, if a reverb module has separate wet and dry level knobs, you could
map a physical knob to both of these. Then you could set the MIN and MAX values
such that as you turn the physical knob up, the dry level will go down, and the
wet level will go up, creating a crossfade between the dry and wet signals.


Another example is using multi-maps in a polyphonic patch. One physical knob
can control the pitch knobs of all the voices; another physical knob can
control the waveshape knobs; another can control the envelope shapes, etc...

Multi-maps exist within a Knob Set. So each Knob Set can have its own set of maps
and multi-maps. Since there are a maximum of eight Knob Sets, and each Knob Set
has twelve knob multi-maps, and each multi-map can have up to eight virtual
knobs, a maximum of 768 virtual knobs can be mapped in a single MetaModule
patch. 

### How to create a multi-map

Multi-maps are created automatically if you create new knob map with a physical knob that's already mapped (in the current knob set).
See [Creating a New Knob Mapping](using_metamodule.md#creating-a-new-knob-mapping-or-midi-cc-mapping).

### How to view a multi-map

Viewing any module that has a mapping that's a part of a multi-map will display that mapping normally.

If you want to see all the virtual knobs that map to a specific physical knob:

<div class="grid cards" markdown>

-  __1. Click the knob icon to go to the Knob Set page__


   [![Knob Set icon](./img/patch-enosc4-knobset-icon.png){ .half }](./img/patch-enosc4-knobset-icon.png)

</div>

<div class="grid cards" markdown>

-  __2. Multi-maps are shown with a scroll bar under the knob__

      Scroll left and right to view all the mapped knobs.

   [![Multi-map](./img/knobset-multimap.png){ .half }](./img/knobset-multimap.png)

</div>

