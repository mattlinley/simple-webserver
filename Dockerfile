
FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine3.19


EXPOSE 5282


COPY SimpleWebserver/bin/Debug/net8.0/linux-x64 /usr/local/app

WORKDIR /usr/local/app

ENTRYPOINT ["dotnet", "SimpleWebserver.dll"]