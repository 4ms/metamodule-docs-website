# Using the MetaModule

## How to View Knob and Jack Mappings

<div class="grid cards" markdown>

-  __1. Click Knob icon in button bar__

   ![Patch View](./img/patch-view-knobset-icon.png){ .half }

</div>
<div class="grid cards" markdown>

-  __2. Knob mappings are shown__

      This is a "Knob Set" (see below).

      Turn some physical knobs and watch the knobs on the screen turn (the patch must be playing).

      Click `Jacks` to view jack mappings

   ![Patch View](./img/knobset-karplus-jackicon.png){ .half }

</div>
<div class="grid cards" markdown>

-  __3. Jack mappings are shown__

   ![Patch View](./img/jackmap-karplus.png){ .half }

</div>

---

## Knob Sets

-  A Knob Set is a group of knob mappings. Each Knob Set maps the 12 physical
   knobs to virtual module controls.
   For example, a patch might have a Knob Set for each module. Or there might
   be a Knob Set for controlling various timbre parameters, another Knob Set
   for controlling rhythmic elements, and another for overall mix. 

-  A patch can have up to eight Knob Sets, but only one Knob Set can be active at a time.

-  A single physical knob can be mapped to up to 8 virtual knobs in a Knob Set. See [Multi-maps]

## How to Use a Different Knob Set


From the Knob Set page:

<div class="grid cards" markdown>

-  __1. Click `>>` to view the next Knob Set__

      If there is only one Knob Set in the patch, the >> button will not appear.

   ![Knob Set](./img/knobset-karplus.png){ .half }

</div>
<div class="grid cards" markdown>

-  __2. Click `Use` to activate a Knob Set__
        
     Now the physical knobs will control the parameters mapped in the new Knob
     Set.

   ![Knob Set](./img/knobset-use.png){ .half }


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



---

## Creating a new Knob Mapping

From the Patch View page:

<div class="grid cards" markdown>

-  __1. Open a module and click on a control__

   ![Knob Set](./img/plaits-freq-knob.png){ .half }

</div>
<div class="grid cards" markdown>

-  __2. Click on a knob set with no mappings__

   ![Knob Set](./img/plaits-mapping-pane.png){ .half }

</div>
<div class="grid cards" markdown>

-  __3. Wiggle the knob you want to map to__

   ![Knob Set](./img/plaits-mapping-add.png){ .half }

</div>
<div class="grid cards" markdown>

-  __4. Click OK and it's mapped!__

     Turning knob A on the MetaModule will turn the VCO's Frequency knob.

     If you want to adjust the minimum and maxium values of the mapping, or give your mapping a name, see [Edit a Knob Mapping](#editting-a-knob-mapping).

   ![Knob Set](./img/plaits-mapping-done.png){ .half }

</div>

---

## Editting a Knob Mapping


From the Knob Set page:

<div class="grid cards" markdown>

-  __1. Click on a mapping...__

   ![Knob Set](./img/knobset-karplus-knobA.png){ .half }

</div>
<div class="grid cards" markdown>

-  __2. ... to go to the Knob View page__

   ![Knob View](./img/knobview.png){ .half }

</div>
<div class="grid cards" markdown>

-  __3. Click on Min or Max to change the range__

     This changes the minimum and maximum positions of the the virtual knob as you turn the physical knob.
     You can even set the maximum to be less than the minimum, 

   ![Knob View Min](./img/knobview-min.png){ .half }

</div>
<div class="grid cards" markdown>

-  __4. Click on the knob name to type an alias__

     An alias is a name you pick for a knob mapping. If this is a multi-map, then the alias will apply to all mappings within the multi-map.

   ![Knob View Name](./img/knobview-name.png){ .half }

</div>

---

## Mapping to more than one knob (Multi-maps)

A single physical knob can be mapped to up to eight virtual knobs. This is
known as a "multi-map". Each virtual knob can have a different minimum and
maximum range. This allows the MetaModule's knobs to be used as macro
controller.


For example, if a reverb module has separate wet and dry level knobs, you could
map a physical knob to both of these, setting the maximum to 0% and minimum to
100% for the dry level knob. Then as you turn the physical knob up, the dry
level will go down, and the wet level will go up, creating a Dry/Wet blend
knob.


Another use of multi-maps is in polyphony, by controlling the pitch, timbre, or
envelope of all voices using a single knob.

Multi-maps exist with a Knob Set. So each Knob Set can have its own set of maps and multi-maps.


### How to create a multi-map

Multi-maps are created automatically if you create new knob map with a physical knob that's already mapped (in the current knob set).


