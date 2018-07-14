proto:
	protoc --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` ./protos/test.proto && \
	protoc --cpp_out=. ./protos/test.proto