# Changelog

All notable changes to GiTerm will be documented in this file.

## [2.0.3] - 2025-10-27

### ✨ Improvements
- Improved README display with markdown filtering to remove clutter
- Removed badge markdown, HTML image tags, and HTML break tags from README preview
- Replaced emoji with urxvt-compatible symbols for better terminal compatibility
- Added distinct symbols for different file types (directories, Ruby, Python, JS, config files)
- File display now uses: ▶ (directories), ★ (Ruby), ▪ (Python), ▷ (JS), ⚙ (config), • (markdown), ◦ (other)

## [2.0.2] - 2025-08-19

### 🐛 Bug Fixes
- Fixed branch selection issue where cursor would move but selection remained on top branch (Fixes #2)
- Fixed commit diff display being cut off at file statistics line - now shows full diff (Fixes #2)

### ✨ Improvements
- Implemented proper selection tracking for branches mode with optimized updates
- Added branch details view showing recent commits, tracking info, and ahead/behind status

## [2.0.1] - 2025-08-19

### 🐛 Bug Fixes
- Fixed macOS log history display issue where entries would briefly appear then vanish (Fixes #1)
- Corrected data type mismatch in `update_right_pane` when displaying log commit details

### ⌨️ Improved Accessibility
- Added 'f' and 'F' as alternative keybindings for PageDown/PageUp for keyboards without dedicated keys
- Updated help text and legends to reflect new keybindings
- Addresses accessibility concerns for Apple keyboard users

### 🧹 Cleanup
- Removed unnecessary temporary documentation files
- Cleaned up empty test directories

## [2.0.0] - 2025-08-18

### 💥 Breaking Changes
- Requires rcurses 6.0.0+ with explicit initialization for Ruby 3.4+ compatibility

## [1.1.1] - 2025-08-07

### 🐛 Bug Fixes
- Fixed search selection arrow visibility issue when starting new search after scrolling
- Search function now properly resets both selection index and scroll position to show first result

## [1.1.0] - 2025-08-06

### 🏠 Non-Git Directory Support
- GiTerm now runs successfully outside of git repositories
- Shows helpful GitHub integration setup when not in a git repo
- Seamless TAB switching between local Git and GitHub modes
- All git operations show appropriate messages when not in repo

### 📊 Enhanced Local Repository Display
- Repository overview displayed when working tree is clean
- Shows repository name, remote URL, current branch
- Statistics: total commits, branches, tags, stashes
- Last commit details (hash, message, time, author)
- Top 5 contributors with commit counts
- Working tree status summary

### 🔧 Bug Fixes
- Fixed crash when starting in non-git directory (NoMethodError)
- Fixed main loop error handling to continue after exceptions
- Fixed update_mode_info to handle nil branch/repo values
- Improved error handling throughout the application

### 📸 Documentation
- Added comprehensive screenshots showing all major features
- Updated README with new feature descriptions
- Enhanced help system with keyboard shortcuts

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