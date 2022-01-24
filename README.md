# How to run

## Server

### Build
```
docker build . -t cognimbus/dotnet6-grpc
```

### Run
```
docker run --rm -it -p 8090:80 cognimbus/dotnet6-grpc
```
GRPC is listening on port **8090**


## Client
Use grpcui to test the API:
```
docker run -it -e GRPCUI_SERVER=localhost:8090 --network=host --rm wongnai/grpcui
```