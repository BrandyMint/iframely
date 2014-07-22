require 'hashie'

module Iframely
  class Model < Hashie::Dash
    property :id,   required: true
    property :url,  required: true

    property :meta
    property :links

    # Может не быть. Например по ссылке:
    # https://github.com/imakewebthings/jquery-waypoints
    property :html 
  end
end
