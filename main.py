#!/usr/bin/env python3
# coding: utf-8

from scripts import core



def main():
	core.clear()
	while True:
		print("Путь установки игры:")
		core.get_path();
		print("Скрипты для minetest")
		print("[1] Получить исходный код")
		print("[2] Скомпилировать исходный код")
		print("[3] Получить игровой режим")
		print("[all] 1,2,3 сразу")
		print("[4] Проверить обновления исходного кода")
		print("[5] Проверить обновления игрового режима")
		print("[update] Проверить все обновления")
		print("[q] Выход")
		inValue = raw_input()
		if inValue in ['all', 'ALL', 'All', 'aLL']:
			core.get_source()
			core.compile_source()
			core.get_game_mode()

			break
		elif inValue in ['update', 'UPDATE', 'Update', "uPDATE"]:
			print("It's Work! update")
			break
		elif inValue in ['1']:
			core.get_source()
			break
		elif inValue in ['2']:
			core.compile_source()
			break
		elif inValue in ['3']:
			core.get_game_mode()
			break
		elif inValue in ['4']:
			core.check_source()
			break
		elif inValue in ['5']:
			core.check_game_mode()
			break
		elif inValue in ['q','exit', 'quit']:
			break
		else:
			print("try again...")
			continue

	#minetest_get_source()
	#minetest_compile_source()
	#minetest_get_game_mode()
	#core.minetest_check_source()
	#core.minetest_check_game_mode()

main()
