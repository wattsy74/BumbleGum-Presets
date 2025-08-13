# How to Create LED Presets

This guide helps you create color schemes for BumbleGum controllers.

##  Understanding the Format

Each .bgp file contains colors for different button states:

### Fret Buttons (5 buttons)
- green-fret-pressed / green-fret-released
- ed-fret-pressed / ed-fret-released  
- yellow-fret-pressed / yellow-fret-released
- lue-fret-pressed / lue-fret-released
- orange-fret-pressed / orange-fret-released

### Strum Bar (2 directions)
- strum-up-active / strum-up-released
- strum-down-active / strum-down-released

##  Basic Template

`json
{
  "name": "Your Theme Name",
  "author": "Your Name", 
  "description": "Describe your color scheme",
  "version": "1.0",
  "created": "2025-08-13",
  "preset": {
    "green-fret-pressed": "#00FF00",
    "red-fret-pressed": "#FF0000",
    "yellow-fret-pressed": "#FFFF00", 
    "blue-fret-pressed": "#0000FF",
    "orange-fret-pressed": "#FF4D00",
    "green-fret-released": "#YOUR_COLOR",
    "red-fret-released": "#YOUR_COLOR",
    "yellow-fret-released": "#YOUR_COLOR",
    "blue-fret-released": "#YOUR_COLOR", 
    "orange-fret-released": "#YOUR_COLOR",
    "strum-up-active": "#FFFFFF",
    "strum-down-active": "#FFFFFF",
    "strum-up-released": "#YOUR_COLOR",
    "strum-down-released": "#YOUR_COLOR"
  }
}
`

##  Design Tips

### Color Contrast
- Make pressed/released states visibly different
- Use brighter colors for pressed states
- Use darker/dimmer colors for released states

### Theme Consistency  
- Choose a color palette (2-4 main colors)
- Keep fret button pressed colors as standard (makes gameplay easier)
- Customize the released states for your theme
- Coordinate strum bar colors with your theme

### Popular Approaches
- **Monochrome**: All released states same color (blue, purple, red, etc.)
- **Gradient**: Released states use gradient of same hue
- **Accent**: Released states complement pressed colors
- **Themed**: Colors match a specific theme (ocean, fire, neon, etc.)

##  Color Examples

### Fire Theme
- Released states: #AA0000, #CC2200, #FF4400 (red/orange tones)
- Strum: #FF6600 released, #FFFFFF active

### Ocean Theme  
- Released states: #004080, #006699, #0080AA (blue tones)
- Strum: #003366 released, #00FFFF active

### Neon Theme
- Released states: #FF00FF, #8000FF, #C000FF (purple/pink)
- Strum: #6000AA released, #FFFFFF active

##  Testing Your Presets

1. Create your .bgp file
2. Open BumbleGum Configurator
3. File  Import Preset  
4. Test all button states
5. Adjust colors as needed
6. Save and share!

##  Sharing Guidelines

- Use descriptive names (ocean-blue.bgp, not preset1.bgp)
- Test on actual hardware
- Include meaningful descriptions
- Credit inspiration sources

Happy creating! 
