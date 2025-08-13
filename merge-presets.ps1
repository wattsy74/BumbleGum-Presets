# Merge Community Presets Script
# This script merges individual .bgp files from the community into the main presets.json

param(
    [string]$PresetsJsonPath = "..\BGG-Windows-App v3.0\bgg-firmware-updates\presets.json",
    [string]$CommunityPresetsDir = ".\presets",
    [string]$OutputPath = ".\merged-presets.json"
)

Write-Host " BumbleGum Preset Merger" -ForegroundColor Yellow
Write-Host "=============================" -ForegroundColor Yellow

# Load existing presets.json
if (Test-Path $PresetsJsonPath) {
    Write-Host " Loading existing presets from: $PresetsJsonPath" -ForegroundColor Green
    $existingPresets = Get-Content $PresetsJsonPath | ConvertFrom-Json
} else {
    Write-Host " Could not find presets.json at: $PresetsJsonPath" -ForegroundColor Red
    exit 1
}

# Initialize merged presets with existing data
$mergedPresets = @{
    "_metadata" = @{
        "version" = $existingPresets._metadata.version
        "description" = $existingPresets._metadata.description
        "lastUpdated" = (Get-Date -Format "yyyy-MM-dd")
        "communityPresets" = 0
    }
    "presets" = @{}
}

# Copy existing presets
foreach ($preset in $existingPresets.presets.PSObject.Properties) {
    $mergedPresets.presets[$preset.Name] = $preset.Value
    Write-Host " Existing preset: $($preset.Name)" -ForegroundColor Cyan
}

$communityCount = 0

# Process community .bgp files
if (Test-Path $CommunityPresetsDir) {
    $bgpFiles = Get-ChildItem -Path $CommunityPresetsDir -Filter "*.bgp"
    
    foreach ($bgpFile in $bgpFiles) {
        try {
            Write-Host " Processing: $($bgpFile.Name)" -ForegroundColor Blue
            $bgpContent = Get-Content $bgpFile.FullName | ConvertFrom-Json
            
            # Extract preset name and data
            $presetName = $bgpContent.name
            $presetData = $bgpContent.preset
            
            # Add community prefix to avoid conflicts
            $communityPresetName = "Community - $presetName"
            
            # Add to merged presets
            $mergedPresets.presets[$communityPresetName] = $presetData
            $communityCount++
            
            Write-Host " Added: $communityPresetName" -ForegroundColor Green
            
        } catch {
            Write-Host " Failed to process $($bgpFile.Name): $($_.Exception.Message)" -ForegroundColor Red
        }
    }
} else {
    Write-Host " Community presets directory not found: $CommunityPresetsDir" -ForegroundColor Red
}

# Update metadata
$mergedPresets._metadata.communityPresets = $communityCount

# Save merged presets
$mergedJson = $mergedPresets | ConvertTo-Json -Depth 10
$mergedJson | Out-File -FilePath $OutputPath -Encoding UTF8

Write-Host "" -ForegroundColor White
Write-Host " Merge Complete!" -ForegroundColor Green
Write-Host " Original presets: $($existingPresets.presets.PSObject.Properties.Count)" -ForegroundColor Cyan
Write-Host " Community presets added: $communityCount" -ForegroundColor Cyan  
Write-Host " Total presets: $($mergedPresets.presets.Count)" -ForegroundColor Cyan
Write-Host " Output saved to: $OutputPath" -ForegroundColor Yellow
Write-Host ""
Write-Host " To use the merged presets:"
Write-Host "1. Backup your current presets.json"
Write-Host "2. Copy $OutputPath to replace presets.json"
Write-Host "3. Restart BumbleGum Configurator"
