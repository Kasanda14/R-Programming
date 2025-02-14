#PLAYER PERFORMANNCE

#POINTS PER GAMES (PPG)
PPG <- round(Points/Games)
PPG

#FIELD GOAL ACCURACY FGA
FGA <- round(FieldGoals/FieldGoalAttempts,2)
FGA

#MOST MINUTES PLAYED MMP
MMP <- round(MinutesPlayed/Games,1)
MMP

#WAGES PER GAME/MINUTES PLAYED
round(Salary/MinutesPlayed)
round(Salary/Games)
