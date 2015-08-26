part of mvc;

Map routes = {
    "get":
    {
        "/": HomeController,
        "/users": UserController
    },
    "post":
    {
        "/users/new": NewUserController
    }
};