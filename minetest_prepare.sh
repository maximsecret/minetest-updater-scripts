#Получение игры из репозитория.
echo "Скачиваем игру..." &&
git clone --depth 1 https://github.com/minetest/minetest.git &&
mkdir -p minetest-game/games &&

cd minetest-game/games &&

echo "Получаем стандартный игровой режим..." &&
git clone https://github.com/minetest/minetest_game.git &&

echo "Успешно завершено"
