require 'test_helper'

class CompilationTest < Test::Unit::TestCase
  def test_compilation
    path = 'vendor/assets/stylesheets'
    %w(bootstrap bootstrap-responsive).each do |file|
      engine = SassC::Engine.new(File.read("#{path}/#{file}.scss"), syntax: :scss, load_paths: [path])
      assert_nothing_raised do
        engine.render
      end
    end
  end
end
