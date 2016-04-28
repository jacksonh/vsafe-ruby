require "vsafe/client"
require "vsafe/config"

module VSafe
  def self.configure(&block)
    yield config

    nil
  end

  def self.config
    Thread.current[:vsafe_config] ||= Config.new
  end
end
