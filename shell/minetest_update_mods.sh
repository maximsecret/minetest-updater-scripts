echo "Проверка на новую версию minetest_game" &&
cd minetest-game/games/minetest_game &&
git pull &&
cd ../../../ &&


cd minetest-game/mods &&

echo "Pipeworks" &&
cd pipeworks &&
git pull &&
cd .. &&

echo "Mesecons" &&
cd mesecons &&
git pull &&
cd .. &&

echo "Technic" &&
cd technic &&
git pull &&
cd .. &&

echo "Inventory Plus" &&
cd inventory_plus &&
git pull &&
cd .. &&

echo "zcg" &&
cd zcg &&
git pull &&
cd .. &&

echo "Weather" &&
cd weather &&
git pull &&
cd .. &&

echo "Nether" &&
cd nether &&
git pull &&
cd .. &&

echo "Hud" &&
cd hud &&
git pull &&
cd .. &&

echo "Hunger" &&
cd hunger &&
git pull &&
cd .. &&

echo "Carts" &&
cd carts &&
git pull &&
cd .. &&

echo "Creatures" &&
cd creatures &&
git pull &&
cd .. &&

echo "moreores" &&
cd moreores &&
git pull &&
cd .. &&

echo "3d armor" &&
cd 3d_armor &&
git pull &&
cd .. &&

echo "Intllib" &&
cd intllib &&
git pull &&
cd .. &&

echo "craft guide" &&
cd craft_guide &&
git pull &&
cd .. &&

echo "Torches" &&
cd torches &&
git pull &&
cd .. &&

echo "simple skins" &&
cd simple_skins &&
git pull &&
cd .. &&


cd mymods_test &&
cd extra_utilities &&
echo "Extra Utilities" &&
git pull &&
cd .. &&

echo "END!"




