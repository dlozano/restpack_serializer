require 'kaminari/core'
require 'kaminari/activerecord'

require_relative 'restpack_serializer/version'
require_relative 'restpack_serializer/configuration'
require_relative 'restpack_serializer/serializable'
require_relative 'restpack_serializer/factory'
require_relative 'restpack_serializer/result'

module RestPack
  module Serializer
    mattr_accessor :config
    @@config = Configuration.new

    def self.setup
      yield @@config
    end
  end
end
