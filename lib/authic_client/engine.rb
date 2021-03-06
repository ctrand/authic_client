require 'omniauth'
require 'omniauth-authic'

module AuthicClient
  class Engine < ::Rails::Engine
    initializer 'myengine.app_controller' do |app|
      ActiveSupport.on_load(:action_controller) do
        include AuthicClient::ApplicationHelper
      end
    end    
  end
end
