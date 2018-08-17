class Fight

def start_fight
	puts "Нажмите Enter чтобы начать...."
	gets
	puts "Для нанесения удара в голову нажмите 1 в корпус 2 в ноги 3"
	user_choise = gets.to_i
	puts "Для блока головы нажмите 1 в корпуса 2 в ног 3"
	user_choise = gets.to_i








end








end
class Char

	attr_accessor :name, :empty_stats, :add_one_points, :start_stats,:hp, :dmg,
	:crit_chance, :crit_rate, :evasion_rate, :evasion_chance, :evasion_CUKA
		def initialize
		@name = name
		@empty_stats = empty_stats
		@add_one_points = add_one_points
		@start_stats = {"con"=>3, "dex"=>3,"str"=>3,"int"=>3 }
		@dmg = dmg
		@hp = hp
		@crit_rate = crit_rate
		@crit_chance = crit_chance
		@evasion_rate = evasion_rate
		@evasion_chance = evasion_chance
		@evasion_CUKA = evasion_CUKA
		
	end
	def add_name
		puts "Введите имя персонажа: "
		@name = gets.strip
	end

	
	def add_stats
		
@empty_stats = 2
		while @empty_stats > 0

		puts "Распределите характеристики. У вас осталось #{@empty_stats} очков."
		
		puts "Для добавления 1 очка к Выносливосте нажмите 1\n
		Для добавления 1 очка к Силе нажмите 2\n
		Для добавления 1 очка к Ловкости нажмите 3\n
		Для добавления 1 очка к Интуиции нажмите 4\n"
		@add_one_points = gets.to_i
		
			if @add_one_points == 1
				@start_stats["con"] += 1
				@empty_stats-=1
			elsif	@add_one_points == 3
				@start_stats["dex"] += 1
				@empty_stats-=1
			elsif	@add_one_points == 2
				@start_stats["str"] += 1
				@empty_stats-=1
			elsif	@add_one_points == 4
				@start_stats["int"] += 1
				@empty_stats-=1
			end
			@dmg = @start_stats["str"]*2
			@hp = @start_stats["con"]*5
			puts "Выносливость:#{@start_stats["con"]}\nЛовкость:#{@start_stats["dex"] }\n
Сила:#{@start_stats["str"]}\nИнтуиция:#{@start_stats["int"]}"
	
		end

		

	end
	
def puts1
	puts start_stats
		puts "выше хп #{@hp} #{@dmg} "
	end

def crit_chance

@crit_chance = rand(1..100)
@crit_rate = @start_stats["int"]
@crit_rate *=14

if @crit_chance<=@crit_rate
	puts "Crit!!!"
	@dmg = @start_stats["str"]*2
	@dmg = @dmg*2

end
end



			def evasion_chance

			@evasion_chance = rand(1..100)
			@evasion_rate = @start_stats["dex"]
			@evasion_rate *=20

			if @evasion_chance<@evasion_rate
				puts "Evasion!!!!"
			@evasion_CUKA = 1 #проверить в бою и вывести "увернулись"
			end
			end

end

char = Char.new
char.add_name
puts "#{char.name}"

char.add_stats
char.crit_chance
char.evasion_chance
char.puts1