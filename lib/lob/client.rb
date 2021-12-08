
module Lob
  class Client

    attr_reader :config

    def initialize(config = nil)
      if config.nil? || config[:api_key].nil?
        raise ArgumentError.new(":api_key is a required argument to initialize Lob")
      end

      @config = config
    end

    def welcome
      "hi!"
    end

    

  end
end
