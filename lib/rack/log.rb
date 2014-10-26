module Rack
  class Log
    require_relative "log/version"
    RACK_KEY = "rack.logger"

    def initialize(stack, logger)
      @stack = stack
      @logger = logger
    end

    def call(previous_state)
      @state = previous_state
      state[RACK_KEY] = @logger
      stack.call(state)
    end

    private def stack
      @stack
    end

    private def state
      @state
    end

    private def headers
      @headers
    end

    private def status
      @status
    end

    private def body
      @body
    end
  end
end
