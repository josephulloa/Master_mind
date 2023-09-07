class Play
    $colors = ["B","N","A","NA","V","G"]  
    $arayC=[]
   def game_on
    puts "bienvenido a Mastermind!!"
    puts "ingresa tu nombre"
    @nombre=gets.chomp
    puts "#{@nombre} debes adivinar el codigo secreto con los colores"
    puts "los colores disponibles son #{$colors}"
    arrayPc = Secret_C.new
    array_pc=arrayPc.play_game

    12.times do

    $arayC=[]

    4.times do
   
    puts "elige la combinacion de colores "
    color= gets.chomp.upcase

    array_c =  $arayC.push(color)
  

     array_c
     array_pc
    

    valida=Colors_Value.new
    valida.value(array_c,array_pc)


    end

    


    end


   end
end 


class Colors_Value
    def value(array_c,array_pc)



      p array_c
    #   p array_pc

       if array_c == array_pc
        puts "felicidades ganaste "
         
     

       else puts "intentalo de nuevo"
        
       end
    end
end


class Secret_C
    def play_game
   p colores_ram= $colors.sample(4)
    colores_ram
    end
 
end

game = Play.new

game.game_on
