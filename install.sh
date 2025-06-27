#!/usr/bin/env bash
set -euo pipefail

# --- Configuration ---
# Directory containing this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Assets directory (one level down)
ASSETS_DIR="$SCRIPT_DIR/assets"

# Source files
APPLE_SCRIPT="$SCRIPT_DIR/Ungoogled-Chromium Updater.scpt"
ICON_FILE="$ASSETS_DIR/applet.icns"
LAUNCH_PLIST_SRC="$ASSETS_DIR/com.paulscalise.ungoogled-chromium-updater.plist"

# Output .app bundle
APP_NAME="Ungoogled-Chromium Updater.app"
APP_DIR="$SCRIPT_DIR/$APP_NAME"

# LaunchAgents target directory
LAUNCH_DIR="$HOME/Library/LaunchAgents"

# --- 1) Compile the AppleScript into an .app bundle ---
echo "Compiling AppleScript → $APP_NAME"
osacompile -o "$APP_DIR" "$APPLE_SCRIPT"
file "$APP_DIR"


# --- 2) Copy in the custom icon (.icns) ---
echo "Installing icon into app bundle"
echo $APP_DIR
cp "$ICON_FILE" "$APP_DIR/Contents/Resources/applet.icns"

# --- 3) Update the app’s Info.plist ---
INFO_PLIST="$APP_DIR/Contents/Info.plist"
echo "Patching Info.plist"

# 3) Point Info.plist at your new icon (note: CFBundleIconFile is the name sans “.icns”):
#ICON_BASE="$(basename "$ICON_FILE" .icns)"
#/usr/libexec/PlistBuddy -c "Delete :CFBundleIconFile"    "$APP_DIR/Contents/Info.plist"  2>/dev/null || true
#/usr/libexec/PlistBuddy -c "Add    :CFBundleIconFile string ${ICON_BASE}" "$APP_DIR/Contents/Info.plist"


# CFBundleIconFile → base name only
#/usr/libexec/PlistBuddy -c "Delete :CFBundleIconFile" "$INFO_PLIST" 2>/dev/null || true
#/usr/libexec/PlistBuddy -c "Add :CFBundleIconFile string applet" "$INFO_PLIST"

# CFBundleIconName → base name only (macOS 11+)
#/usr/libexec/PlistBuddy -c "Delete :CFBundleIconName" "$INFO_PLIST" 2>/dev/null || true
#/usr/libexec/PlistBuddy -c "Add :CFBundleIconName string applet" "$INFO_PLIST"

# Hide Dock icon
/usr/libexec/PlistBuddy -c "Delete :LSUIElement" "$INFO_PLIST" 2>/dev/null || true
/usr/libexec/PlistBuddy -c "Add :LSUIElement bool true" "$INFO_PLIST"

# --- 4) Mark the bundle as having a custom icon ---
echo "Setting custom‐icon attribute"
#/usr/bin/SetFile -a C "$APP_DIR"

# 5) Force LaunchServices to re‐register that .app (so it picks up the new icon):
#/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister \
 #   -f "$APP_DIR"

# --- 5) Refresh Finder’s icon cache ---
echo "Refreshing Finder cache"
qlmanage -r
killall Finder >/dev/null 2>&1 || true

# --- 6) Install and load the LaunchAgent plist ---
echo "Installing LaunchAgent"
mkdir -p "$LAUNCH_DIR"
LAUNCH_PLIST_DST="$LAUNCH_DIR/$(basename "$LAUNCH_PLIST_SRC")"
cp "$LAUNCH_PLIST_SRC" "$LAUNCH_PLIST_DST"

# Unload if already loaded
launchctl unload "$LAUNCH_PLIST_DST" 2>/dev/null || true
# Load the new agent
launchctl load   "$LAUNCH_PLIST_DST"

echo -e "\nUngoogled-Chromium Updater installed and scheduled.\n"
