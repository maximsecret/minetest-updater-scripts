#Проверка на новую версию

echo "Проверяем на новую версию скриптов... P.S. Если конечно есть папка .git"  &&
git pull &&

echo "Проверяем на наличие новой версию игры..." &&
cd minetest &&
git pull &&
git submodule foreach git pull --rebase origin master &&
cd .. &&

echo "Проверяем на новую версию игровой режима minetest_game"
cd minetest-game/games/minetest_game &&
git pull &&
cd ../../../ &&

echo "Начало компиляции" &&
mkdir build &&
cd build &&

#С флагами.
#cmake ../minetest -DCMAKE_INSTALL_PREFIX="/" -DRUN_IN_PLACE=TRUE -DBUILD_SERVER=TRUE -DENABLE_GETTEXT=TRUE -DENABLE_GLES=TRUE -DCMAKE_CXX_FLAGS="ЗДЕСЬ МОГЛА БЫТЬ ВАША РЕКЛАМА" -DCMAKE_C_FLAGS="ЗДЕСЬ МОГЛА БЫТЬ ВАША РЕКЛАМА"  &&

#Без флагов компиляции.
cmake ../minetest -DCMAKE_INSTALL_PREFIX="/" -DRUN_IN_PLACE=TRUE -DBUILD_SERVER=TRUE &&

echo "Напишите флаги вашего процессора в cmake-gui программе. CMAKE_CXX_FLAGS и CMAKE_C_FLAGS, чтобы игра была под ваш процессор. (Если вам это надо)" &&
echo "После этого нажмите на кнопки Configure и Generate и закройте окно."
cmake-gui ../minetest  &&
make -j$((`cat /proc/cpuinfo | grep processor | wc -l`+1)) && #Компилируем, определяя количество ваших ядер.

echo "Установка игры в директорию minetest-game" &&
make install DESTDIR=../minetest-game  &&
cd .. &&

echo "Удаление build файлов." &&
rm -R build &&

echo "END"
