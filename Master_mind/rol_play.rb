class Pc_move < Mastermind
    def initialize
     until @comp_guess_mode = "Y" || @comp_guess_mode = "N"
         puts "Is the computer the code breaker? Y/N"
         @comp_guess_mode = gets.chomp.upcase
     end
     end 
     def game_mode
         if @comp_guess_mode == "Y"
           human_code_generator
         else
           code_generator
         end
       end
 end


 turn_pc = Pc_move.new

 turn_pc.game_mode

 