# frozen_string_literal: true

# Easy access links:
#   Faraday repo: https://github.com/lostisland/faraday
#   Faraday docs: https://lostisland.github.io/faraday/usage/

require 'faraday'
require 'faraday/net_http'
require 'pry-byebug'

Faraday.default_adapter = :net_http

def foo
  'bar'
end

class Test
  def print(message)
    "message: #{message}"
  end
end
