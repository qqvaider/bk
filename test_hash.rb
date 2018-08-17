@start_stats = {"con"=>3,"str"=>3,"int"=>3, "dex"=>3 }
@dmg = @start_stats["str"]*=2
@hp = @start_stats["con"]*=5

#начальный крит 3 инты = 6% 
 #    если крит 4 инты = 8% 

  #   крит = dmg*2
def crit_chance

chance = rand(1..100)
crit_rate = @start_stats["int"]
crit_rate *=20

if chance<crit_rate
@dmg *=2
end
end


			def evasion_chance

			evasion_chance = rand(1..100)
			evasion_rate = @start_stats["dex"]
			evasion_rate *=20

			if evasion_chance<evasion_rate
			evasion_CUKA = 1 #проверить в бою и вывести "увернулись"
			end
			end
crit_chance
evasion_chance




		

