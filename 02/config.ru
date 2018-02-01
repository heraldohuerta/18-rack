# config.ru
require 'rack'
class MiSegundaWebApp
 def call(env)
   case env['REQUEST_PATH']
     when '/'
       [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
     when '/index'
       [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en el Index!" </h1>']]
     when '/otro'
       [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en otro landing! </h1>']]
    else
       [404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
    end
 end
end
run MiSegundaWebApp.new
