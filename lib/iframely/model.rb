require 'hashie'

module Iframely
  class Model < Hashie::Trash

    property :id # Оказывается бывает не всегда
    property :url,  required: true

    property :meta
    property :links

    property :rel

    property :status

    # Может не быть. Например по ссылке:
    # https://github.com/imakewebthings/jquery-waypoints
    property :html 

    def self.build json
      if json.is_a? Hash
        if json.include?('error')
          Iframely::ErrorModel.new json
        else
          new json
        end
      else
        Iframely::ErrorModel.new error: 'no data'
      end
    rescue StandardError => e
      Iframely::ErrorModel.new error: e.message
    end

  end

  class ErrorModel < Hashie::Dash
    # Если он установлен, значит это ошибка и больше смотреть нечего
    property :error, required: true
  end

end

