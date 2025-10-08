# Technical Specification

---
### Power usage:

- +12V: 
    - 255mA typical, no USB or microSD card connected
    - 265mA typical while accessing included microSD card
    - 280mA typical with USB 3.0 thumb drive attached
    - With common USB MIDI controllers attached:
        - 275mA with Arturia MicroLab
        - 280mA with Arturia MiniLab 2
        - 290mA with Arturia MiniLab 3 
        - 290mA with Keith McMillen QuNexus
        - 300mA with Novation Launch Control XL
        - 360mA with Arturia BeatStep Pro
        - 495mA theoretical maximum with USB MIDI controller connected

- -12V: 24mA

- +5V: not used

### Dimensions
- Width: 26HP (5.2" = 132mm)
- Height: 5.059" = 128.5mm
- Clearance required under panel with power cable installed: 25mm

### USB
- USB-C jack
- USB Host for mass-storage drives (aka "USB flash drive", "thumb drive", "jump drive", "memory stick", "USB stick")
    - Compatible with USB 2.0 and 3.0 speeds
- USB Host for MIDI devices
    - Supplies up to 500mA of power at +5V

### microSD Card Slot
- microSD Card Slot
    - Compatible with all standard speed classes: C2, C4, C6, C10, U1, U3. 
    - Uses UHS-I bus, but compatible with UHS-II bus cards
