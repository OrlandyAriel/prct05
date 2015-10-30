task :default => :tu

desc "Pruebas unitarias de la clase Fraccionario"
task :tu do
  sh "ruby -I. test/tc_test.rb"
#end

desc "Ejecutar solo las pruebas simples"
#task :simple do
  sh "ruby -I. test/tc_test.rb -n /simple/"
  puts "ejecución simple"
end

#si descomento el primer end y el segundo task, no ejecuta la prueba simple