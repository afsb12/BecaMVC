using System.Collections.Generic;
using Web1.Controller.DAO;
using Web1.Controller.Model;

namespace Web1.Controller.Controller
{
    public class UserController
    {
        public UserController()
        {

        }
        public Users InsertUser(string name, string cpf, string login, string password)
        {
            return new UserDB().InsertUsers(name, cpf, login, password);
        }   
        
        public List<Users> ConsultUsers()
        {
            return new UserDB().ConsultUsers();
        }
    }    
}
