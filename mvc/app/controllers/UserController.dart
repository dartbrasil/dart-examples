part of mvc;

class UserController{
    
    UserController(){}
    
    List<User> listUsers(){
        users = new List<User>;
        users.add(new User());
        return users;
    }
    
    void addUser(){
        print("User added");
    }
    
    void deleteUsers(id){
        print("$id removed");
    }
    
    List<User> populateUsers(){
        User user1 = new User();
        
        user1.setId(1);
        user1.setNome('Zé');
        user1.setRg(105551118);
        user1.setCpf('000.000.000-00');
        
        User user2 = new User();
        
        user2.setId(2);
        user2.setNome('Tonho');
        user2.setRg(654231980);
        user2.setCpf('000.111.000-00');
        
        User user3 = new User();
        
        user3.setId(3);
        user3.setNome('Chapinha');
        user3.setRg(199551118);
        user3.setCpf('000.000.111-00');
        
        List<User> usersList = new List<User>();
        
        usersList.add(user1);
        usersList.add(user2);
        usersList.add(user3);
        
        return usersList;
    }
}