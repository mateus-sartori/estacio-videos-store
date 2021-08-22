require 'net/http'
require "open-uri"
require "fileutils"

module ScrapStacio
    def main
        vimeo
    end

    def get_main_page
        # t = fetch("http://pos.estacio.webaula.com.br/cursos/PG0085/videoaula/mp3/Aula_01.mp3")
        # puts t.body
    end

    def vimeo
        i = 1
        j = 8
        sessao = ["PG0085", "PG0090"]
        sessao.each do |sessao|
            FileUtils.mkdir "/home/mateus/Pos-graduacao/#{sessao}"
            while i <= j do
                tempfile = URI.parse("http://pos.estacio.webaula.com.br/cursos/#{sessao}/videoaula/mp3/Aula_0#{i}.mp3").open
                tempfile.close
                FileUtils.mv tempfile.path, "/home/mateus/Pos-graduacao/PG0085/Aula#{i}.mp3"    
                i += 1
                break;
            end
        end
    end

    # def fetch(uri_str, limit = 10)
    #     # You should choose better exception.
    #     raise ArgumentError, 'HTTP redirect too deep' if limit == 0

    #     url = URI.parse(uri_str)
    #     req = Net::HTTP::Get.new(url.path)
    #     # Colocar cookie manualmente
    #     req["Cookie"] = "__utmz=150145975.1622316052.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); _ga=GA1.3.1151622717.1622316052; Idioma=1046%3BPT%2DBR%3BPortugu%EAs+%28Brasil%29%3BD%2FM%2FA%3BHH%3AMM%3ASS%3B%2E%3B%2C%3BR%24+%5BMILHAR%5D%2E%5BCENTENA%5D%2C%5BDECIMAL%5D; _gid=GA1.3.875371499.1629561096; ASPSESSIONIDACQSAAQD=LGOPADCBJKEHGGIGBGFKFMAI; __utma=150145975.1151622717.1622316052.1629646320.1629662725.11; __utmc=150145975; PrimeiroAcesso=302514%3BS; SegmentoTemplate=1298%3B1; TesteCookie=OK; Preferencias=302514%3BN%3BF%3BN%3BN%3BN%3B%3B%3B; AlunoInfo=302514%7C1298%7CMATEUS+SARTORI+ZANDONADI%7Cmateus%2Dsartori%40hotmail%2Ecom%7C202010090001%7C0%7C251172; ASPSESSIONIDAADQATDC=LFMBMCCBOEBOFLIMJPOBLFJD; __utmb=150145975.2.10.1629662725; Webaula=4944263D224DB9BC9EC9C9727A403A11369F80A724F3C394445EB60CFC3556E9E1C7B2485263EFE17EBB30E2D0D9E99EA06B5AF86B60E23BB6B099E8A82139AC560AA5ECE97BBC6FDE9F735ADD7142B5D32E82F4C4A79B6F1739988C1C5385A42C6A629F46E6A01C; accessApi=DD43F5C7E0555F778EB53141C88E8920D7E4A243F904807C72EB8982508EAD9861C6EF418E4EDC4B9A6B52CF02FDFBBD8E091F53D3DC5BD724F5D0A4C47886BD3F2AE647F224E643921AFF8A34AEF7DB648ADB61F46CACBCD9150948697594D5E4BA0F6DD1B176C47DD82946E36E1C3304A4CFCD68C7F73C3974BA614A4F441F193F9A6EF388795C165A646D7F6B8323D26DF75DF7FCAFD621FB90210332AF1D6CB31AFB02D20D241D7533A8CA1A31F3B2D5FA4E0A0E4E6DCAE4DB78EB6A032C2FD1238F3BF757E2F7CE2FA8394BAC1EB05E69485F3DBB8FC98708A2FD9FF12D4FEF6CBE848562D5A5AC66418406A79CD4EE3515469DEE063193ED327C6B2D991CF66A0BE109911E8C1C8ACD9CFCD0977CBD84A45311124A; ASPSESSIONIDASARQSRQ=DMCGEBCBKODNMFHAPDHNOKCB; ASPSESSIONIDAQCTSQQQ=EEBKPFCBCNJNLDBCJIOCFCHJ; ASPSESSIONIDCCSSDDTA=GKENHGCBFEOLDALKDCIIIKNP"
    #     response = Net::HTTP.start(url.host) { |http| http.request(req) }
    #     case response
    #         when Net::HTTPSuccess     then response
    #         when Net::HTTPRedirection then fetch(response['location'], limit - 1)
    #     else
    #         response.error!
    #     end
    # end
end