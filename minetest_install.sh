#Проверка на новую версию

echo "Проверка на новую версию скриптов..."  &&
git pull &&

echo "Проверка на новую версию minetest'a" &&
cd minetest &&
git pull --rebase &&
git submodule foreach git pull --rebase origin master &&
cd .. &&

#Сборка игры.
#rm -R build &&
echo "Начало компиляции" &&
mkdir build &&
cd build &&

#С флагами.
#cmake ../minetest -DCMAKE_INSTALL_PREFIX="/" -DRUN_IN_PLACE=TRUE -DBUILD_SERVER=TRUE -DENABLE_GETTEXT=TRUE -DENABLE_GLES=TRUE -DCMAKE_CXX_FLAGS="ЗДЕСЬ МОГЛА БЫТЬ ВАША РЕКЛАМА" -DCMAKE_C_FLAGS="ЗДЕСЬ МОГЛА БЫТЬ ВАША РЕКЛАМА"  &&

#Без флагов компиляции.
cmake ../minetest -DCMAKE_INSTALL_PREFIX="/" -DRUN_IN_PLACE=TRUE -DBUILD_SERVER=TRUE -DENABLE_GETTEXT=TRUE -DENABLE_GLES=TRUE &&

echo "Пожалуйста напишите флаги вашего процессора в cmake-gui программе. CMAKE_CXX_FLAGS и CMAKE_C_FLAGS, чтобы игра была под ваш процессор. (Если вам это надо)" &&
cmake-gui ../minetest  &&
make -j4 &&

echo "Установка игры в директорию minetest-game" &&
make install DESTDIR=../minetest-game  &&
cd .. &&

echo "Удаление build файлов." &&
rm -R build &&

echo "END"















