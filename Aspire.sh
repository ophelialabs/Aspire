dotnet new install Aspire.ProjectTemplates
dotnet new aspire-starter —name app

# API Projects
dotnet new webapi -n AuthService -o AuthService
dotnet sln add AuthService/AuthService.csproj

dotnet new webapi -n AccountService -o AccountService
dotnet sln add AccountService/AccountService.csproj

# Library Projects
dotnet new classlib -n SqlServer -o Database/SqlServer
dotnet sln add Database/SqlServer/SqlServer.csproj
cd database/SqlServer
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
cd ../..

dotnet new classlib -n PSQL -o Database/PSQL
dotnet sln add Database/PSQL/PSQL.csproj
cd database/PSQL
dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL
cd ../..

dotnet new classlib -n SQLite -o Database/SQLite
dotnet sln add Database/SQLite/SQLite.csproj
cd database/SQLite
dotnet add package Microsoft.EntityFrameworkCore.SQLite 
cd ../..

# Oracle DB
dotnet new webapi -n OracleDb
dotnet sln add OracleDb/OracleDb.csproj
cd AspireApp.AppHost
dotnet add package package Aspire.Hosting.Oracle
cd ../OracleDb
dotnet add package Oracle.EntityFrameworkCore
cd ..

# Shared Project
# dotnet new classlib -n Shared 
# dotnet sln add Shared/Shared.csproj