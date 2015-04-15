require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Squeeze < OmniAuth::Strategies::OAuth
      option :name, :squeeze

      option :client_options, {:authorize_path => '/oauth/authenticate',
                               :site => 'https://app.squeezecmm.com',
                               :proxy => ENV['http_proxy'] ? URI(ENV['http_proxy']) : nil}

      uid { access_token.params[:user_id] }

      info { raw_info }

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get('/1.0/account/verify_credentials.json?include_entities=false&skip_status=true').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

      def request_phase
      end
    end
  end
end
