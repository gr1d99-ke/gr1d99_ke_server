require 'gr1d99_ke/version'
require 'gr1d99_ke/services/ping/ping_services_pb'

module Gr1d99Ke
  class Error < StandardError; end

  class Server < Gr1d99Ke::Services::Ping::Service
    def ping(hello_req, _unused_call)
      if hello_req.message.eql?('ping')
        PingReply.new(message: 'pong')
      else
        PingReply.new(message: 'incorrect message received!, try again')
      end
    end
  end


  class << self
    def call
      server = GRPC::RpcServer.new
      server.add_http2_port('0.0.0.0:9090', :this_port_is_insecure)
      server.handle(Server)
      server.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])
    end
  end
end
