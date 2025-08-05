# Changelog

All notable changes to GiTerm will be documented in this file.

## [1.0.0] - 2025-01-05

### Added
- Initial release of GiTerm
- Full Git operations support (status, diff, log, branches, commit, push/pull)
- GitHub integration with repository browsing
- Organization color coding for visual distinction
- Right pane scrolling with Shift+Arrow keys
- Smart delayed fetching (0.5s) for smooth navigation
- Mode-specific index memory when switching with TAB
- Repository switching with `:cd` command
- Issues and Pull Request viewing
- Search functionality across repositories
- Command mode for git commands
- Shell mode for system commands

### Features
- Single-file implementation for easy deployment
- Minimal dependencies (only rcurses)
- Fast and responsive interface
- Vim-like keybindings
- Four-pane layout (top info, left list, right details, bottom command)
- Efficient diff-based rendering
- Context-sensitive help system

### Technical
- Built with Ruby and rcurses
- RuboCop compliant code
- Thread-safe implementation
- Supports full Unicode and emoji display