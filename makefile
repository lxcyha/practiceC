proto:
	protoc --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` test.proto && \
	protoc --cpp_out=. test.proto