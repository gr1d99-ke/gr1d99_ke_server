# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: ping.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("ping.proto", :syntax => :proto3) do
    add_message "gr1d99_ke.services.ping.PingRequest" do
      optional :message, :string, 1
    end
    add_message "gr1d99_ke.services.ping.PingReply" do
      optional :message, :string, 1
    end
  end
end

module Gr1d99Ke
  module Services
    module Ping
      PingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gr1d99_ke.services.ping.PingRequest").msgclass
      PingReply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gr1d99_ke.services.ping.PingReply").msgclass
    end
  end
end
