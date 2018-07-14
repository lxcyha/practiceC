
#include <memory>
#include <string>
#include <grpc++/grpc++.h>
#include "test.grpc.pb.h"


using grpc::Status;
using grpc::ServerContext;
using grpc::ServerBuilder;
using grpc::Server;

using test::Request;
using test::Reply;
using test::testService;

class RouteGuideImpl final : public testService::Service {
    Status TestGrpc(ServerContext *context, const Request* request,
                    Reply* reply) override {
        reply->set_result(request->param());
        return Status::OK;
    }
};

void RunServer() {
    std::string server_address("0.0.0.0:50051");
    RouteGuideImpl service;
    ServerBuilder builder ;
    builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
    builder.RegisterService(&service);
    std::unique_ptr<Server> server(builder.BuildAndStart());
    std::cout << "Server listening on " << server_address << std::endl;
    server->Wait();
}




int main() {
    std::cout << "Hello, World!" << std::endl;
    RunServer();
    return 0;

}