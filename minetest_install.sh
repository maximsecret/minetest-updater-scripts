#Проверка на новую версию

echo "Проверка на новую версию скриптов..."  &&
git pull &&

cd minetest &&
echo "Проверка на новую версию minetest'a" &&
git pull --rebase &&
git submodule foreach git pull --rebase origin master &&
cd .. &&
cd minetest-game/games/minetest_game &&
echo "Проверка на новую версию minetest_game" &&
git pull --rebase &&
git submodule foreach git pull --rebase origin master &&
cd ../../../ &&

#Сборка игры.
#rm -R build &&
echo "Начало компиляции" &&
mkdir build &&
cd build &&



cmake ../minetest -DCMAKE_INSTALL_PREFIX="/" -DRUN_IN_PLACE=TRUE -DBUILD_SERVER=TRUE -DENABLE_GETTEXT=TRUE -DENABLE_GLES=TRUE -DCMAKE_CXX_FLAGS="-march=bdver1 -O3 -pipe -mno-movbe -mno-fma -mno-bmi -mno-tbm --param l1-cache-size=16 --param l1-cache-line-size=64 --param l2-cache-size=2048 -mtune=bdver1" -DCMAKE_C_FLAGS="-march=bdver1 -O3 -pipe -mno-movbe -mno-fma -mno-bmi -mno-tbm --param l1-cache-size=16 --param l1-cache-line-size=64 --param l2-cache-size=2048 -mtune=bdver1"  &&
echo "Пожалуйста напишите флаги вашего процессора в minetest_install, либо в cmake-gui программе." &&
cmake-gui ../minetest  &&
make -j4 &&

#УСТАНОВКА ИГРЫ
echo "Установка в директорию minetest-game" &&

make install DESTDIR=../minetest-game  &&
cd .. &&

cp -R minetest/games/minetest_game minetest-game/games
rm -R build &&
#mv game minetest-game &&
echo "END"















