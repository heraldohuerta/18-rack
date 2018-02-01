# config.ru
require 'rack'

class  MiPrimeraWebApp
 def call(env)
        [200, {'Content-Type' => 'text/html;  charset=utf-8'}, ['<p>lorem</p>']]

  end
end

run MiPrimeraWebApp.new
