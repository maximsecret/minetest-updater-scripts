#Получение игры из репозитория.
git clone --depth 1 https://github.com/minetest/minetest.git 
mkdir minetest-game &&
mkdir minetest-game/games &&
cd minetest-game/games &&
git clone https://github.com/minetest/minetest_game.git

echo "It's Ok."
