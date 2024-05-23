# frozen_string_literal: true

unless defined?(Gem::Net)
  begin
    require "rubygems/vendored_net_http"
  rescue LoadError
    begin
      require "rubygems/net/http"
    rescue LoadError
      require "net/http"
      Gem::Net = Net
    end
  end
end
