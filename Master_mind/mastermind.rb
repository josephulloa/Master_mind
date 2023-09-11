require 'colorize'
class Mastermind 
    COLORS = ["R".red, "W".white, "G".green, "Y".yellow, "Pi".light_red, "Pu".magenta ]
    
    def initialize
      @secret_code = generate_secret_code
      @attempts = 10

    end
  
    def play

      puts "¡Bienvenido a Mastermind!"
      puts "Adivina el código secreto de 4 colores en el orden correcto."
      puts "Los colores disponibles son: #{COLORS.join(', ')}"
  
      @attempts.times do |attempt|
        puts "Intento ##{attempt + 1}"
        guess = get_guess
        result = check_guess(guess)
  
        if result[:exact] == 4
          puts "¡Felicidades! Has adivinado el código secreto."
          break
        else
          puts "Resultado: #{result[:exact]} bien, #{result[:partial]} parcialmente bien."
        end
      end
  
      puts "El código secreto era: #{@secret_code.join(', ')}"
      puts "Fin del juego."
    end
  

    def generate_secret_code
     COLORS.sample(4)
    end
  
    def get_guess
      puts "Ingresa tu adivinanza (ejemplo: red blue green yellow):"
    p  gets.chomp.upcase.split
    end
  
    def check_guess(guess)
      exact = 0
      partial = 0
  
      guess.each_with_index do |color, index|
        if color == @secret_code[index]
          exact += 1
        elsif @secret_code.include?(color)
          partial += 1
        end
      end
  
      { exact: exact, partial: partial }
    end
  end

  
  game = Mastermind.new
  game.play
