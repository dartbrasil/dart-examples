library mvc;

import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:http_server/http_server.dart';

part 'controllers/UserController.dart';

part 'models/User.dart';

List<User> users;
UserController uc;

void main(){
    
    // uc = new UserController();
    // users = uc.populateUsers();
    // users.forEach((u) => u.showInfo());
  
    //We create a web server by using dart:io HTTPServer class
    HttpServer.bind('127.0.0.1', 5000).then((HttpServer server) {
    
        //The server listens the request
        server.listen((request) {
      
            //The requestMethod vabiable's possible values
            //are GET, POST in lower case
            String requestMethod = request.method.toLowerCase();
            print(requestMethod);
            
            //The path variable's path possible values 
            //are the following:
            // '/'
            // '/employees'
            // '/newemployee'
            String path = request.uri.toString();
            print(path);
            
            //The Map class is a dictionary type class
            //that stores everything using the key value logic
            //Here we have all the controllers methods' name as values
            //and the keys are the paths
            //For more information http://api.dartlang.org/docs/releases/latest/dart_core/Map.html
            Map getControllers = routes[requestMethod];
            
            if(path.split('/')[1] != "favicon.ico"){
                if (requestMethod == "get"){
                  
                    print("Request method:" + requestMethod);   
                    print("Request path:" + path);
                    
                    try{
                        if(path.contains(new RegExp(r"(/assets/.)")))
                            getControllers["/"+path.split('/')[1]+"/asset"](request, path.split('/')[2]);
                        else if(path.contains(new RegExp(r"(employee/.)")) )
                            getControllers["/"+path.split('/')[1]+"/id"](request, path.split('/')[2]);
                        else
                            getControllers[path](request);
                    }
                    catch (e){
                        print(e.toString());
                        request.response.write("Couldn't load page!");
                        request.response.close();
                    }
                }
                
                if (requestMethod == "post")
                    getControllers[path](request);
            }

        },
        onError: (error) => print("Error starting HTTP server: $error"));
        print("Listening...");
    });
}