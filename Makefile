protoc:
	mkdir -p gen/go/auth
	# mkdir -p gen/go/chatting

	protoc \
	-I proto/auth \
	-I proto/chatting \
	--go_out=./gen/go/auth \
	--go_opt=paths=source_relative \
	--go-grpc_out=./gen/go/auth \
	--go-grpc_opt=paths=source_relative \
	proto/auth/auth.proto

	# protoc \
	# -I proto/auth \
	# -I proto/chatting \
	# --go_out=./gen/go/chatting \
	# --go_opt=paths=source_relative \
	# --go-grpc_out=./gen/go/chatting \
	# --go-grpc_opt=paths=source_relative \
	# proto/chatting/chatting.proto

clean:
	rm -rf gen/go/*