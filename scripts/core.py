# coding: utf-8

import os
import shutil
import colorama

def get_path():
	print(os.path.abspath(".") + "/minetest-game")

def clear():
	os.system("clear")

def createDIR(n=""):
	newpath = n
	if not os.path.exists(newpath):
		os.makedirs(newpath)


def get_source():
	print("Скачиваем игру...")
	os.system("git clone --depth 1 https://github.com/minetest/minetest.git")
	#createDIR("minetest-game/games")

def compile_source():
	print("Создаем директорию build")
	createDIR("build")

	print("Конфигурируем...")
	os.system("cd build && cmake ../minetest -DCMAKE_INSTALL_PREFIX=\"/\" -DRUN_IN_PLACE=TRUE -DBUILD_SERVER=TRUE")

	print("Можете сконфигурировать самостоятельно... Configure > Generate")
	print("И потом просто закрыть окно.")
	os.system("cd build && cmake-gui ../minetest")

	print("Компилируем...")
	os.system("cd build && make -j$((`cat /proc/cpuinfo | grep processor | wc -l`+1)) ")

	print("Установка...")
	os.system("cd build && make install DESTDIR=../minetest-game")

	print("Удаляем папку build")
	shutil.rmtree("build")
def check_source():
	print("Проверяем есть ли новая версия исходников")
	os.system("cd minetest && git pull && git submodule foreach git pull --rebase origin master")

def check_game_mode():
	print("Проверяем есть ли новая версия игрового режима")
	os.system("cd minetest-game/games/minetest_game && git pull")


def get_game_mode():
	print("Скачиваем стандартный игровой режим...")
	os.system("cd minetest-game/games && git clone https://github.com/minetest/minetest_game.git")
