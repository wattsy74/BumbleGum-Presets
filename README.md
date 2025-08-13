# BumbleGum LED Presets - Community Sharing

Welcome to the BumbleGum Guitar Controller LED preset sharing community! This repository contains user-created color schemes and lighting configurations.

##  What are LED Presets?

LED presets are configuration files that contain:
- Individual fret button colors (pressed/released states)
- Strum bar colors (active/released states)  
- Color themes and schemes
- Custom button color combinations

##  Repository Structure

`
presets/
 electric-blue.bgp       # Bright blue theme
 fire-red.bgp           # Hot red and orange theme
 neon-purple.bgp        # Vibrant purple neon
 ocean-depths.bgp       # Deep blue underwater theme
 your-preset.bgp        # Your awesome creation!
`

##  How to Use LED Presets

1. **Download**: Browse the presets/ folder and download .bgp files
2. **Import**: Open BumbleGum Configurator  File  Import Preset
3. **Apply**: Select the preset and apply to your controller

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
4. Add commit message describing your color scheme

##  LED Preset File Format

Preset files (.bgp) are JSON-based with this structure:

`json
{
  "name": "Your Theme Name",
  "author": "Your Name",
  "description": "Description of your color scheme",
  "version": "1.0",
  "created": "2025-08-13",
  "preset": {
    "green-fret-pressed": "#00FF00",
    "red-fret-pressed": "#FF0000",
    "yellow-fret-pressed": "#FFFF00",
    "blue-fret-pressed": "#0000FF",
    "orange-fret-pressed": "#FF4D00",
    "green-fret-released": "#008000",
    "red-fret-released": "#800000",
    "yellow-fret-released": "#808000",
    "blue-fret-released": "#000080",
    "orange-fret-released": "#804000",
    "strum-up-active": "#FFFFFF",
    "strum-down-active": "#FFFFFF",
    "strum-up-released": "#808080",
    "strum-down-released": "#808080"
  }
}
`

##  Button States Explained

### Fret Buttons
- **pressed**: Color when button is held down
- **released**: Color when button is not pressed

### Strum Bar  
- **active**: Color when strumming/playing
- **released**: Color when not strumming

##  Color Format

Use hex colors: #RRGGBB
- Red: #FF0000
- Green: #00FF00
- Blue: #0000FF
- White: #FFFFFF
- Black/Off: #000000

##  Popular Color Themes

- **Electric Blue**: Bright blue backgrounds with white highlights
- **Fire Red**: Hot reds and oranges for intense themes
- **Neon Purple**: Vibrant purple and pink combinations
- **Ocean Depths**: Deep blues and teals for calming themes
- **Synthwave**: Pink, purple, and cyan retro colors
- **Toxic Slime**: Bright greens for alien themes

##  BumbleGum Configurator

Download the official configurator app:
- [Latest Release](https://github.com/wattsy74/BumbleGum-Guitars-Configurator/releases/latest)
- [Website](https://wattsy74.github.io/BumbleGum-Site/)

##  Contributing

1. **Quality**: Test your presets before sharing
2. **Description**: Provide clear descriptions of the color theme
3. **Naming**: Use descriptive file names (e.g., sunset-orange.bgp)
4. **Colors**: Ensure good contrast between pressed/released states

##  Support

- **Issues**: [Report bugs or request features](https://github.com/wattsy74/BumbleGum-Presets/issues)
- **Main Project**: [BumbleGum Configurator](https://github.com/wattsy74/BumbleGum-Guitars-Configurator)
- **Website**: [BumbleGum Site](https://github.com/wattsy74/BumbleGum-Site)

---

##  License

Community LED presets are shared under [Creative Commons](https://creativecommons.org/licenses/by-sa/4.0/) - feel free to modify and redistribute with attribution.

**Light up your game! **
