using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectConsole1
{
    class Program
    {
        static void Main(string[] args)
        {
            string nome = "adans";
            string adjetivo = "";

            switch (nome)
            {
                case "alisson":
                    adjetivo = "nossa senhora que lindo";
                    break;
                case "adans":
                    adjetivo = "pontual";
                    break;
                default:
                    break;
            }
            Console.WriteLine(adjetivo);
            Console.ReadKey();
        }
    }
}
