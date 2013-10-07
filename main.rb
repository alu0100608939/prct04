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

#Se imprimen ambas matrices
imprimir a
imprimir b
