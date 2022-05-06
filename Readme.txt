How to run the project:

1. Initialize your PostgreSQL database by executing the provided initialization script “init_script.sql” in your own database server.
2. In the “App.config” file, change the values of each <add> element to your database credentials.
3. If Visual Studio is installed in your PC, open the “AMD_Project.sln” file in and then run the code in visual studio. Note that ASP.NET Core (v5.0.0) is used as the target framework.
4. If Visual Studio is not installed, please install the application to run the code. However, if you do not want to install Visual Studio into your PC, you can run the project with the command “dotnet run AMD_Project.csproj” (.NET has to be installed). The file AMD_Project.csproj is inside the folder AMD_Project. 
5. In case of project build error(s), try to restore the NuGet packages and build it again. 
6. As the project is written in Visual Studio for Mac community, if you use Visual Studio for Windows, you might have to run the command "dotnet clean" and "dotnet build" before running the code. Alternatively, deleting the "bin" and "obj" files and then reopening VS might also work. For more information, please check this link: https://stackoverflow.com/questions/55807079/i-found-invalid-data-while-decoding-error-updating-nuget-packages 
8. In case of persistent problem in building / running the code, please contact: calvin.liusnando@s2021.tu-chemnitz.de 
