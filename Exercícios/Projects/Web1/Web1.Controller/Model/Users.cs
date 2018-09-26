namespace Web1.Controller.Model
{
    public class Users
    {
        public Users()
        {

        }
        #region


        private int _idUser;

        public int IdUser
        {
            get { return _idUser; }
            set { _idUser = value; }
        }

        private string _fullName;

        public string FullName
        {
            get { return _fullName; }
            set { _fullName = value; }
        }

        private string _cpf;

        public string Cpf
        {
            get { return _cpf; }
            set { _cpf = value; }
        }

        private string _userlogin;

        public string Userlogin
        {
            get { return _userlogin; }
            set { _userlogin = value; }
        }

        private string _userSenha;

        public string UserSenha
        {
            get { return _userSenha; }
            set { _userSenha = value; }
        }
        private string _cadastryDate;

        public string CadastryDate
        {
            get { return _cadastryDate; }
            set { _cadastryDate = value; }
        }

        #endregion
    }
}
