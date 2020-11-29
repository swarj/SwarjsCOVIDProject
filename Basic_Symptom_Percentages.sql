USE COVID_DB;

SELECT 	
		# Rounding the functions to two decimal places
		ROUND((sum(Fever) * 100.00 / count(Fever)), 2) as `Fever %`,
        ROUND((sum(Tiredness) * 100.00 / count(Tiredness)), 2) as `Tiredness %`,
        ROUND((sum(`Dry-Cough`) * 100.00 / count(`Dry-Cough`)), 2) as `Dry Cough %`,
        ROUND((sum(`Difficulty-in-Breathing`) * 100.00 / count(`Difficulty-in-Breathing`)), 2) as `Difficulty Breathing %`,
		ROUND((sum(`Sore-Throat`) * 100.00 / count(`Sore-Throat`)), 2) as `Sore Throat %`,
        ROUND((sum(Pains) * 100.00 / count(Pains)), 2) as `Pain/Ache %`,
        ROUND((sum(`Nasal-Congestion`) * 100.00 / count(`Nasal-Congestion`)), 2) as `Nasal Congestion %`,
        ROUND((sum(`Runny-Nose`) * 100.00 / count(`Runny-Nose`)), 2) as `Runny Nose %`,
        ROUND((sum(Diarrhea) * 100.00 / count(Diarrhea)), 2) as `Diarrhea %`,
        ROUND((sum(`None_Experiencing`) * 100.00 / count(`None_Experiencing`)), 2) as `Asymptomatic %`
		
				FROM `cleaned-data`;
                







