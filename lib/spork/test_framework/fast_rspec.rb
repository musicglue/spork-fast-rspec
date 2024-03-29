class Spork::TestFramework::FastRSpec < Spork::TestFramework
  DEFAULT_PORT = 8990
  HELPER_FILE = File.join(Dir.pwd, "spec/fast_spec_helper.rb")

  def run_tests(argv, stderr, stdout)
    if rspec1?
      ::Spec::Runner::CommandLine.run(
        ::Spec::Runner::OptionParser.parse(argv, stderr, stdout)
      )
    else
      ::RSpec::Core::CommandLine.new(argv).run(stderr, stdout)
    end
  end

  def rspec1?
    defined?(Spec) && !defined?(RSpec)
  end

  def app_framework
    Spork::AppFramework[:FastRails]
  end

  def self.load_preference_index
    -1
  end
end
