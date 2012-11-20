class Spork::AppFramework::FastRails < Spork::AppFramework
  def preload(&block)
    STDERR.puts "Preloading Fast Rails environment"
    STDERR.flush
    ENV["RAILS_ENV"] ||= 'test'
    yield
  end

  def self.present?
    File.exist?("config/environment.rb") &&
      (File.read("config/environment.rb").include?('RAILS_GEM_VERSION') ||
       (File.exist?("config/application.rb") &&
        File.read("config/application.rb").include?("Rails::Application")))
  end
end
