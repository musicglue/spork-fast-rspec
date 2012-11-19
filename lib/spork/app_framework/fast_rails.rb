class Spork::AppFramework::FastRails < Spork::AppFramework
  def preload(&block)
    STDERR.puts "Preloading Fast Rails environment"
    STDERR.flush
    ENV["RAILS_ENV"] ||= 'test'
    yield
  end
end
