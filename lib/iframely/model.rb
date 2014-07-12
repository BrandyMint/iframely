require 'hashie'

module Iframely
  class Model < Hashie::Dash
    property :id,   required: true
    property :url,  required: true

    property :meta
    property :links

    property :html, required: true
  end
end
