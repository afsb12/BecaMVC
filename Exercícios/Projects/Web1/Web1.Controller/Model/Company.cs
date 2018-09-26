namespace Web1.Controller.Model
{
    public class Company
    {
        public Company()
        {

        }
        private int _idCompany;

        public int IdCompany
        {
            get { return _idCompany; }
            set { _idCompany = value; }
        }

        private string _nameCompany;

        public string NameCompany
        {
            get { return _nameCompany; }
            set { _nameCompany = value; }
        }

        private string _cnpj;

        public string CNPJ
        {
            get { return _cnpj; }
            set { _cnpj = value; }
        }

        private string _addressCompany;

        public string AddressCompany
        {
            get { return _addressCompany; }
            set { _addressCompany = value; }
        }

        private string _emailCompany;

        public string EmailCompany
        {
            get { return _emailCompany; }
            set { _emailCompany = value; }
        }


        private string _phoneCompany;

        public string PhoneCompany
        {
            get { return _phoneCompany; }
            set { _phoneCompany = value; }
        }
    }
}
