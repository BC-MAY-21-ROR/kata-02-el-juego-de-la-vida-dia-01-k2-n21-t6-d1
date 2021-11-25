=begin
celulas vecinas < 2  -- muere
celulas vecinas > 3 -- muere
celulas vecinas 2 o 3 sigue viva
celulas vecinas = 3 -- revive
=end


class Life
    def initialize height, width
        @grid = []
        @width = width
        @height = height
    end

    def fill_grid
        
        @height.times do |row|
            newRow = ""
            @width.times do |e|
                if(@heigh.times && @width.times == @cel1[0] && @cel1[1])
                    newRow << '*'
                end
                newRow << '.'
            end
            @grid.push(newRow)
        end
    end

    def create_life
    
        @cel1 = [rand(0...(@height), rand(0...(@width)]
        puts @cel1
        
=begin
@cel2 = [rand(0...(@height), rand(0...(@width)]
@cel3 = [rand(0...(@height), rand(0...(@width)]
=end
        

    def get_grid
        puts @grid
    end

end

puts "Chose your height: "
userHeight = gets
puts "Choose your width: "
userWidth = gets



newLife = Life.new(userHeight.to_i,userWidth.to_i)

newLife.fill_grid
newLife.get_grid