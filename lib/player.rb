
require 'rubocop'

class Player

    attr_accessor :names, :lp #life_points

    def initialize (names)   # méthode pour initialiser le nom des joueurs ainsi que leur point de vie.
        @names = names
        @lp = 1200
    end

    def show_state # méthode pour afficher l'état des joueurs "points de vie restant"
        puts "#{@names} a #{@lp} point de vie"
        
    end

    def gets_damage(damage) # méthode qui inflige des dégats et qui signagle au joueur sa fin de vie
       @lp = @lp - damage
       if @lp <= 0
            puts "Le joueur #{@names} est mort"
       end
    end

    def attack(attack_player)
        puts "#{name} charge #{attack_player.name} !"
        @damage = compute_damage
        attack_player.gets_damage(damage)
    end

    def compute_damage
        rand(100..600)
    end
    
        
        
    


end

