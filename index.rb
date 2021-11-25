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
                newRow << '.'
            end
            @grid.push(newRow)
        end
    end

    def create_life
        cel1 = rand(0...(@height * @width))
        cel2 = rand(0...(@height * @width))
        cel3 = rand(0...(@height * @width))
        edit_grid([cel1,cel2,cel3])
    end

    def edit_grid arr
      arr.each do |cel|
        row = cel/@width
        pos = (@width * (row + 1) ) - cel
        pos = @width - pos
        @grid[row][pos - 1] = '*'
      end
      puts ">>>>>>>>>>>>>>>>>"
      get_grid
    end



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
newLife.create_life