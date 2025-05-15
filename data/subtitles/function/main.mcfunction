#数据接入命令存储subtitles:main
#根标签
# ┖（字符串）targets: 接受这个字幕的玩家。
# ┖content: 文本组件，字幕内容。
# ┖（整型）time: 字幕持续时长，必须为游戏刻。
execute store result score #original_time subtitle_time run data get storage subtitles:main time 1.0
execute if score #original_time subtitle_time matches ..60 run return run function subtitles:timing_within_60gt with storage subtitles:main {}
scoreboard players operation #calculated_time subtitle_time = #original_time subtitle_time
scoreboard players operation #calculated_time subtitle_time -= #actionbar_fixed_time subtitle_time
function subtitles:timing
