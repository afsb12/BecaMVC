using LeilaoTDD;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeilãoTDDTeste
{
    [TestClass]
    public class TesteDoAvaliador
    {
        [TestMethod]
        public void EndenterNumerosEmOrdemNumerica()
        {
            Usuario alisson = new Usuario("Alisson");
            Usuario renan = new Usuario("Renan");
            Usuario rodrigo = new Usuario("Rodrigo");

            Leilao leilao  = new Leilao("Playstation 4");

       
            
            leilao.Propoe(new Lance(rodrigo, 100));
            leilao.Propoe(new Lance(renan, 1350));
            leilao.Propoe(new Lance(alisson, 1400));

            Avaliador leiloeiro = new Avaliador();
            leiloeiro.AvaliaLeiilao(leilao);

            double valorMaximoEsperado = 1400;
            double valorMinimoEsperado = 100;

            Assert.AreEqual(valorMaximoEsperado, leiloeiro.MaiorDeTodos);
            Assert.AreEqual(valorMinimoEsperado, leiloeiro.MenorDeTodos);


        }
    }
}
