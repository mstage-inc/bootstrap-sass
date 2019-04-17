require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

desc 'Dumps output to a CSS file for testing'
task :debug do
  require 'sassc'
  path = './vendor/assets/stylesheets'
  %w(bootstrap bootstrap-responsive).each do |file|
    engine = SassC::Engine.new(File.read("#{path}/#{file}.scss"), syntax: :scss, load_paths: [path])
    File.open("./#{file}.css", 'w') { |f| f.write(engine.render) }
  end
end

task default: :test
