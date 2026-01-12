# webapp-manager

A modern Rofi-based interface for managing web applications with icon search and easy CRUD operations.

## Features

- 🚀 **Quick Launch** - Browse and open web apps with fuzzy search
- ➕ **Easy Creation** - Create new web apps with just name and URL
- ✏️ **Full Edit Support** - Edit name, URL, and isolated mode
- 🎨 **Icon Search** - Search and download icons from DuckDuckGo with live preview
- 📄 **Pagination** - Browse through unlimited icon results
- 🔔 **Visual Feedback** - Progress notifications for long operations
- 🔒 **Isolated Profiles** - Support for isolated browser profiles
- ⚡ **Fast Downloads** - Parallel icon downloads for speed

## Dependencies

- Python 3.6+
- rofi (with icon support)
- webkit2gtk (for web app rendering)
- Standard Python libraries: `urllib`, `json`, `subprocess`, `concurrent.futures`

## Installation

### Arch Linux (from PKGBUILD)

```bash
git clone https://github.com/winiciuscota/webapp-manager.git
cd webapp-manager
makepkg -si
```

### Manual Installation

```bash
git clone https://github.com/winiciuscota/webapp-manager.git
cd webapp-manager
chmod +x install.sh
./install.sh
```

## Usage

Simply run:

```bash
webapps
```

### Actions

- **Create Webapp** - Enter name and URL to create a new webapp
- **Open** - Launch the selected webapp
- **Edit** - Change name, URL, or isolated mode (empty = keep current)
- **Delete** - Remove a webapp
- **Change Icon** - Search DuckDuckGo for icons, browse with "More..." option

### Keyboard Shortcuts

- `Enter` - Select option
- `Esc` - Go back to previous menu
- Type to search/filter

## How It Works

The webapp manager creates desktop entries in `~/.local/share/applications/` and stores icons in `~/.local/share/icons/webapps/`. Each webapp runs in webkit2gtk, optionally with an isolated profile.

## License

MIT License - See LICENSE file for details
