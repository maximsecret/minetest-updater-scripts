# minetest-updater-scripts
Эти скрипты позволяют вам установить самую последнюю разрабатываемую версию игры minetest.

Зависимости
===========

* Для Ubuntu/Debian-based дистрибутивов:

build-essential libirrlicht-dev libgmp-dev libleveldb-dev libluajit-5.1-dev libhiredis-dev cmake cmake-qt-gui libbz2-dev libpng12-dev git-core libjpeg8-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev libogg-dev libvorbis-dev libopenal-dev libcurl4-gnutls-dev libfreetype6-dev zlib1g-dev libjsoncpp-dev

* Для Gentoo-based дистрибутивов(Может быть не всё)

dev-vcs/git dev-games/irrlicht dev-util/cmake dev-libs/jsoncpp media-libs/openal media-libs/freetype


Установка
=========

* Зайдите в директорию, где хотите разместить папку с игрой.
Запустите команду `git clone https://github.com/maximsecret/minetest-updater-scripts.git`

* Папку minetest-updater-scripts можете переименовать.


* minetest_prepare.sh - Для подготовки minetest к установке.

* minetest_install.sh - Для установки minetest и для проверки обновления скриптов.
Желательно поcтавить CMAKE_CXX_FLAGS и CMAKE_C_FLAGS во время установки(в программе cmake-gui), для вашего процессора.
[AMD](http://gentoo-en.vfose.ru/wiki/Safe_Cflags/AMD)
[Intel](http://gentoo-en.vfose.ru/wiki/Safe_Cflags/Intel)


* minetest_prepare_mods.sh - Для подготовки модов в minetest-game (То есть после выполнения скрипта minetest_install.sh)

* minetest_update_mods.sh - Для обновления модов, сделанных скриптом minetest_prepare_mods.sh.

Идея:
=====

Сделать программу на C++ и файлик с репозиториями, которая эта программа будет смотреть.
