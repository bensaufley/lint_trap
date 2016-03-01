require 'linte/ruby_base_linter'

module Linte
  # Ruby Linter
  class RubyLinter < RubyBaseLinter
    def initialize(files, options)
      @options = options
      @type = :ruby
      @spec = {
        color: :yellow,
        command: 'rubocop -f json',
        extension: '.rb'
      }
      super(files)
    end
  end
end
