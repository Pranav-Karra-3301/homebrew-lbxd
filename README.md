# homebrew-lbxd

Homebrew tap for [lbxd](https://github.com/Pranav-Karra-3301/lbxd) - A beautiful command-line tool for Letterboxd.

## Installation

```bash
brew tap pranav-karra-3301/lbxd  
brew install lbxd
```

## Dependencies

The formula automatically installs all required dependencies:
- **Rust** (build-time dependency)
- **Python 3.12** with `letterboxdpy` package
- **curl** for network requests

## Usage

After installation, you can use lbxd directly:

```bash
# Show version and help
lbxd

# Browse a user's collection interactively  
lbxd browse username

# Show recent activity
lbxd recent username
```

## About

lbxd brings Letterboxd to your terminal with features like:
- 🎭 Interactive TUI for browsing complete collections
- 📽️ Recent activity viewing with rich display
- 🔍 Movie search and filtering capabilities
- 🎬 TMDB integration for detailed movie information
- 📤 Data export functionality

For more information, visit the [main repository](https://github.com/Pranav-Karra-3301/lbxd).