## Build Stage (user-defined name)
FROM mahendrshinde/dotnetsdk:2.1  as build
WORKDIR /app
COPY  . .
RUN ["dotnet","restore"]
RUN ["dotnet","publish","-o","dist"]

## Final Stage (no name!)
FROM mcr.microsoft.com/dotnet/core/aspnet:2.1-stretch-slim
WORKDIR /app
# Copy files from earlier stage (provide name) into workdirectory /app
COPY --from=build /app/dist .
# Set the startup command
CMD ["dotnet","WebApplication6.dll"]


