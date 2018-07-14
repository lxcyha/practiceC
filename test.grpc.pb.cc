// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: test.proto

#include "test.pb.h"
#include "test.grpc.pb.h"

#include <grpcpp/impl/codegen/async_stream.h>
#include <grpcpp/impl/codegen/async_unary_call.h>
#include <grpcpp/impl/codegen/channel_interface.h>
#include <grpcpp/impl/codegen/client_unary_call.h>
#include <grpcpp/impl/codegen/method_handler_impl.h>
#include <grpcpp/impl/codegen/rpc_service_method.h>
#include <grpcpp/impl/codegen/service_type.h>
#include <grpcpp/impl/codegen/sync_stream.h>
namespace test {

static const char* testService_method_names[] = {
  "/test.testService/TestGrpc",
};

std::unique_ptr< testService::Stub> testService::NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options) {
  (void)options;
  std::unique_ptr< testService::Stub> stub(new testService::Stub(channel));
  return stub;
}

testService::Stub::Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel)
  : channel_(channel), rpcmethod_TestGrpc_(testService_method_names[0], ::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  {}

::grpc::Status testService::Stub::TestGrpc(::grpc::ClientContext* context, const ::test::Request& request, ::test::Reply* response) {
  return ::grpc::internal::BlockingUnaryCall(channel_.get(), rpcmethod_TestGrpc_, context, request, response);
}

::grpc::ClientAsyncResponseReader< ::test::Reply>* testService::Stub::AsyncTestGrpcRaw(::grpc::ClientContext* context, const ::test::Request& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderFactory< ::test::Reply>::Create(channel_.get(), cq, rpcmethod_TestGrpc_, context, request, true);
}

::grpc::ClientAsyncResponseReader< ::test::Reply>* testService::Stub::PrepareAsyncTestGrpcRaw(::grpc::ClientContext* context, const ::test::Request& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderFactory< ::test::Reply>::Create(channel_.get(), cq, rpcmethod_TestGrpc_, context, request, false);
}

testService::Service::Service() {
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      testService_method_names[0],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< testService::Service, ::test::Request, ::test::Reply>(
          std::mem_fn(&testService::Service::TestGrpc), this)));
}

testService::Service::~Service() {
}

::grpc::Status testService::Service::TestGrpc(::grpc::ServerContext* context, const ::test::Request* request, ::test::Reply* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}


}  // namespace test

