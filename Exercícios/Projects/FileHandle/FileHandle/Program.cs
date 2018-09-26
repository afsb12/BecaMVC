using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FileHandle
{
    class Program
    {
        static void Main(string[] args)
        {
            var existe = Directory.Exists("C:/becaDotNet");
            Console.WriteLine(existe);
            if (!existe)
                Directory.CreateDirectory("C:/becaDotNet");

            using (var fs = File.Create("C:/becaDotNet/arquivo1.txt"))
            {
                var texto = new UTF8Encoding(true).GetBytes("Já paguei");
                fs.Write(texto, 0, texto.Length);
            }

            using (var sr = File.OpenText("C:/becaDotNet/arquivo1.txt"))
            {
                string linha = string.Empty;
                while((linha = sr.ReadLine()) != null)
                {
                    Console.WriteLine(linha);
                }
            }
            Console.ReadKey();
        }
    }
}
