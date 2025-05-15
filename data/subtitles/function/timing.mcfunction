scoreboard players remove #calculated_time subtitle_time 5
function subtitles:actionbar with storage subtitles:main {}
execute if score #calculated_time subtitle_time matches 0.. run schedule function subtitles:timing 5t