FROM mcr.microsoft.com/dotnet/sdk:6.0 as BUILDER
COPY . /app
WORKDIR /app
RUN dotnet publish -c Release

FROM mcr.microsoft.com/dotnet/aspnet:6.0
COPY --from=BUILDER /app/bin/Release/net6.0/publish /app
WORKDIR /app
CMD ./dotnet6-grpc