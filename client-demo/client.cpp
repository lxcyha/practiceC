#include <iostream>
#include <memory>
#include <string>

#include <grpc++/grpc++.h>
#include "../protos/test.grpc.pb.h"
#include <unistd.h>

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;
using test::Request;
using test::Reply;
using test::testService;


class TestClient {
 public:
    TestClient(std::shared_ptr<Channel> channel)
    : stub_(testService::NewStub(channel)) {}

    int TestGrpc(int32_t param) {
        // Data we are sending to the server.
        Request request;
        request.set_param(param);

        // Container for the data we expect from the server.
        Reply reply;
        
        // Context for the client. It could be used to convey extra information to
        // the server and/or tweak certain RPC behaviors.
        ClientContext context;
        
        // The actual RPC.
        Status status = stub_->TestGrpc(&context, request, &reply);
        
        // Act upon its status.
        if (status.ok()) {
            return reply.result();
        } else {
            std::cout << status.error_code() << ": " << status.error_message()
            << std::endl;
            return 0;
        }
    }


private:
    std::unique_ptr<testService::Stub> stub_;
};

int main(int argc, char** argv) {
    TestClient client(grpc::CreateChannel("0.0.0.0:50051", grpc::InsecureChannelCredentials()));

    int reply = client.TestGrpc(2);
    

//
//    std::string reply3 = liveanalysis.AddInputSource(3,"rtmp://live.mudu.tv/watch/nnb3d4");
//    
    std::cout << reply << std::endl;

  return 0;
}
