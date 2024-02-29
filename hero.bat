@echo off
::hero1 multiplayer save
MPQEditor.exe /console hero1.cmd
sv.exe -p "szqnlsk1" hero > hero1_decode
sv.exe -p "szqnlsk1" heroitems > hero1-items_decode
del hero
del heroitems
@echo off
::hero2 singleplayer save
MPQEditor.exe /console hero2.cmd
sv.exe hero > hero2_decode
sv.exe heroitems > hero2-items_decode
del hero
del heroitems
lua54.exe hero.lua > hero.html
