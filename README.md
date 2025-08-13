# BumbleGum LED Presets - Community Sharing

Welcome to the BumbleGum Guitar Controller LED preset sharing community! This repository contains user-created lighting effects and color patterns.

##  What are LED Presets?

LED presets are configuration files that contain:
- LED color patterns and effects
- Animation speeds and intensities
- Custom lighting themes
- Color combinations and transitions

##  Repository Structure

`
presets/
 blue-flame.bgp          # Blue flame effect
 rainbow-pulse.bgp       # Rainbow pulsing pattern
 red-strobe.bgp          # Red strobe lighting
 your-preset.bgp         # Your awesome creation!
`

##  How to Use LED Presets

1. **Download**: Browse the presets/ folder and download .bgp files
2. **Import**: Open BumbleGum Configurator  File  Import LED Preset
3. **Apply**: Select the preset and watch your controller light up!

##  How to Share Your LED Presets

### Method 1: Website Upload (Recommended)
1. Visit [BumbleGum Website](https://wattsy74.github.io/BumbleGum-Site/)
2. Go to "Community Presets" section
3. Click "Upload LED Preset"
4. Fill out the form and upload your .bgp file

### Method 2: Direct GitHub Upload
1. Navigate to the presets/ folder
2. Click "Add file"  "Upload files"
3. Upload your .bgp file with a descriptive name
4. Add commit message describing your LED effect

##  LED Preset File Format

Preset files (.bgp) are JSON-based with this structure:

`json
{
  "name": "Blue Flame Effect",
  "version": "1.0",
  "author": "YourUsername",
  "description": "Mesmerizing blue flame pattern with flickering effects",
  "created": "2025-08-13",
  "leds": {
    "pattern": "flame",
    "colors": ["#0066ff", "#003399", "#001166", "#000033"],
    "speed": 50,
    "intensity": 80,
    "direction": "up",
    "flicker": true
  },
  "animation": {
    "type": "continuous",
    "fade_in": 500,
    "fade_out": 300,
    "loop": true
  }
}
`

##  Popular LED Effects

- **Flame Effects**: Flickering fire-like patterns
- **Pulse Patterns**: Breathing/pulsing lights
- **Strobe Effects**: Fast flashing patterns
- **Rainbow Cycles**: Color-changing effects
- **Gradient Flows**: Smooth color transitions
- **Static Themes**: Solid color combinations

##  Featured Presets

Check out these community favorites:

- lue-flame.bgp - Mesmerizing blue fire effect
- ainbow-pulse.bgp - Smooth rainbow breathing
- ed-strobe.bgp - High-energy red strobing

##  BumbleGum Configurator

Download the official configurator app:
- [Latest Release](https://github.com/wattsy74/BumbleGum-Guitars-Configurator/releases/latest)
- [Website](https://wattsy74.github.io/BumbleGum-Site/)

##  Contributing

1. **Quality**: Test your LED presets before sharing
2. **Description**: Provide clear descriptions of the lighting effect
3. **Naming**: Use descriptive file names (e.g., purple-galaxy-swirl.bgp)
4. **Performance**: Ensure effects don't cause lag or flickering

##  Support

- **Issues**: [Report bugs or request features](https://github.com/wattsy74/BumbleGum-Presets/issues)
- **Main Project**: [BumbleGum Configurator](https://github.com/wattsy74/BumbleGum-Guitars-Configurator)
- **Website**: [BumbleGum Site](https://github.com/wattsy74/BumbleGum-Site)

---

##  License

Community LED presets are shared under [Creative Commons](https://creativecommons.org/licenses/by-sa/4.0/) - feel free to modify and redistribute with attribution.

**Light up your game! **
