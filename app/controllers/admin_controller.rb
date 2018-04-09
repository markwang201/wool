class AdminController < ApplicationController

  def index

  end

  def qqbot_api
    yaml = YAML.load_file( Rails.root + 'config/qqbot_data.yml' )
    hash  = HashWithIndifferentAccess.new(yaml)
    message = params[:message]

    value = hash.find { |key, _| message.size > 1 && key.include?(message) }
    render(inline:  "#{value && value[1]}" ) and return
  end
end