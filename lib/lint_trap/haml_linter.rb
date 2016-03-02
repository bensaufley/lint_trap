require 'lint_trap/ruby_base_linter'

module LintTrap
  # HAML Linter
  class HamlLinter < RubyBaseLinter
    def initialize(files, options)
      @type = :haml
      @spec = {
        color: :magenta,
        command: 'haml-lint -r json',
        filter: ->(file) { File.extname(file) == '.haml' }
      }
      super(files, options)
    end
  end
end
