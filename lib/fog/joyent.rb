require 'fog/core'

module Fog
  module Joyent
    extend Fog::Provider

    service(:analytics, 'Analytics')
    service(:compute, 'Compute')
  end

  module Compute
    autoload :Compute, File.expand_path('../joyent/compute', __FILE__)
  end

  module Errors
    autoload :Errors, File.expand_path('../joyent/errors', __FILE__)
  end
end
