# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: ping.proto for package ''

require 'grpc'
require 'ping_pb'

module Gr1d99KeServer
  class Service

    include GRPC::GenericService

    self.marshal_class_method = :encode
    self.unmarshal_class_method = :decode
    self.service_name = 'Gr1d99KeServer'

    rpc :Ping, PingRequest, PingReply
  end

  Stub = Service.rpc_stub_class
end
