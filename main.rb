#!/usr/bin/ruby

#Se definen las matrices
a = [[1,2,3],[4,5,6],[7,8,9]]
b = [[3,6,9],[2,5,8],[1,4,7]]

#Se define el tamaño de las matrices
$rows = 3
$cols = 3

#Procedimiento que imprime una matriz
def imprimir(matriz)
   $rows.times do |i|
      $cols.times do |j|
         print "#{matriz[i][j]} "
      end
      print "\n"
   end
   print "\n"
end

def multiplicar(m1, m2)
   
   #Se inicializa la variable temporal para almacenar el resultado
   res = Array.new($cols) { Array.new($rows) }
   
   #Se recorren las filas de m1
   $rows.times do |i|
      $cols.times do |j|
         #Se multiplican cada uno de los elementos de la fila actual de m1 por los de la columna correspondiente de m2
         #y se acumulan los resultados parciales en tmp.
         tmp = 0
         $rows.times do |k|
            tmp += m1[i][k] * m2[k][j]
         end
         #Se guarda el resultado en la fila y columna correspondiente del resultado
         res[i][j] = tmp
      end
   end
   
   #Se devuelve el resultado
   return res
end

#Se imprimen ambas matrices
puts "Matriz A:"
imprimir a
puts "Matriz B:"
imprimir b
puts "Resultado de multiplicar A x B"
imprimir (multiplicar(a,b))
