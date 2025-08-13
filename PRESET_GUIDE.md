# How to Create LED Presets

This guide helps you create your own LED presets for BumbleGum controllers.

##  LED Preset Structure

Each .bgp file is a JSON configuration with these main sections:

### Basic Information
`json
{
  "name": "Your Effect Name",
  "version": "1.0",
  "author": "Your Name",
  "description": "What your effect looks like and feels like",
  "created": "2025-08-13"
}
`

### LED Configuration
`json
"leds": {
  "pattern": "flame|pulse|strobe|swirl|static|gradient",
  "colors": ["#ff0000", "#00ff00", "#0000ff"],
  "speed": 50,        // 1-100 (higher = faster)
  "intensity": 80,    // 1-100 (higher = brighter)
  "direction": "up|down|left|right|clockwise|counter-clockwise"
}
`

### Animation Settings
`json
"animation": {
  "type": "continuous|breathing|strobe|pulse",
  "fade_in": 500,     // milliseconds
  "fade_out": 300,    // milliseconds
  "loop": true
}
`

##  Available Patterns

- **flame**: Flickering fire-like effect
- **pulse**: Breathing/pulsing lights
- **strobe**: Fast flashing
- **swirl**: Rotating/spinning effect
- **static**: Solid colors
- **gradient**: Smooth color transitions
- **wave**: Moving wave pattern
- **sparkle**: Random twinkling

##  Color Format

Use hex colors: #RRGGBB
- Red: #ff0000
- Green: #00ff00 
- Blue: #0000ff
- White: #ffffff
- Black/Off: #000000

##  Performance Tips

- Keep color arrays under 20 colors for smooth performance
- Use speeds between 20-80 for best visual effect
- Test on actual hardware before sharing
- Avoid extremely fast strobing (can cause seizures)

##  Testing Your Presets

1. Save your .bgp file
2. Open BumbleGum Configurator
3. File  Import LED Preset
4. Select your file and test
5. Adjust settings as needed

##  Sharing Guidelines

- Use descriptive names
- Include detailed descriptions
- Test on multiple controllers if possible
- Credit inspiration sources
- Be respectful of others' work

Happy creating! 
