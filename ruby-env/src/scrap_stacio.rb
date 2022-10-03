require "net/http"
require "open-uri"
require "fileutils"

module ScrapStacio
  def vimeo
    i = 1
    j = 0
    sessao = ["PG0085", "PG0090"]
    real_sessao = ["Fundamentos-segurança", "Segurança"]
    sessao.each do |sessao|
      begin
        while !File.directory?("/home/mateus/Pos-graduacao/#{sessao}")
          Dir.mkdir("/home/mateus/Pos-graduacao/#{sessao}")
          for i in 1..8
            puts "Baixando aula#{i} da #{sessao}"
            tempfile = URI.parse("http://pos.estacio.webaula.com.br/cursos/#{sessao}/videoaula/mp3/Aula_0#{i}.mp3").open
            tempfile.close
            FileUtils.mv tempfile.path, "/home/mateus/Pos-graduacao/#{sessao}/audio#{i}.mp3"
          end
        end
        begin
          case sessao
          when "PG0085"
            File.rename "/home/mateus/Pos-graduacao/#{sessao}", "/home/mateus/Pos-graduacao/#{real_sessao[0]}"
          when "PG0090"
            File.rename "/home/mateus/Pos-graduacao/#{sessao}", "/home/mateus/Pos-graduacao/#{real_sessao[1]}"
          end
          j += 1
        end while j < 1
      rescue
        puts "Não foi possivel obter url"
      end
    end
  end
end
