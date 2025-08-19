Gem::Specification.new do |spec|
  spec.name          = "giterm"
  spec.version       = "2.0.2"
  spec.authors       = ["Geir Isene"]
  spec.email         = ["g@isene.com"]

  spec.summary       = "A full-featured Git and GitHub Terminal User Interface (TUI)"
  spec.description   = "GiTerm is a powerful terminal interface for Git and GitHub, providing an intuitive TUI for repository management, issue tracking, and pull request handling. Version 2.0.2: Fixed macOS branch selection and commit diff display issues."
  spec.homepage      = "https://github.com/isene/GiTerm"
  spec.license       = "Unlicense"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/isene/GiTerm"
  spec.metadata["changelog_uri"] = "https://github.com/isene/GiTerm/blob/main/CHANGELOG.md"

  # The gem will include these files
  spec.files = [
    "giterm",
    "README.md",
    "LICENSE"
  ]
  
  # The main executable
  spec.bindir        = "."
  spec.executables   = ["giterm"]
  spec.require_paths = ["."]

  # Runtime dependencies
  spec.add_runtime_dependency "rcurses", "~> 6.0"

  # Development dependencies
  spec.add_development_dependency "rubocop", "~> 1.50"
  spec.add_development_dependency "rake", "~> 13.0"
end