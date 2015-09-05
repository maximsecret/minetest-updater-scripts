cd minetest-game/mods &&

git clone https://github.com/VanessaE/pipeworks.git  &&

git clone https://github.com/Jeija/minetest-mod-mesecons.git &&
mv minetest-mod-mesecons mesecons &&

git clone https://github.com/minetest-technic/technic.git &&

git clone https://github.com/Zeg9/minetest-inventory_plus.git &&
mv minetest-inventory_plus inventory_plus &&

git clone https://github.com/Zeg9/minetest-zcg.git &&
mv minetest-zcg zcg &&

git clone https://github.com/Jeija/minetest-mod-weather.git &&
mv minetest-mod-weather weather &&


git clone https://github.com/PilzAdam/nether.git &&

git clone https://github.com/BlockMen/hud.git &&

git clone https://github.com/BlockMen/hunger.git &&


git clone https://github.com/PilzAdam/carts.git &&



git clone https://github.com/LotekHeavy/creatures.git &&


git clone https://github.com/stujones11/minetest-3d_armor.git &&
mv minetest-3d_armor 3d_armor &&


git clone https://github.com/kaeza/minetest-intllib.git &&
mv minetest-intllib intllib &&


git clone https://bitbucket.org/LemonLake/factory.git &&

git clone https://github.com/cornernote/minetest-craft_guide.git &&
mv minetest-craft_guide craft_guide &&

git clone https://github.com/BlockMen/torches.git &&


git clone https://github.com/maximsecret/moreores.git &&
git clone https://github.com/maximsecret/simple_skins.git &&
mkdir mymods_test &&
echo "" >> mymods_test/modpack.txt &&
cd mymods_test &&
git clone https://github.com/maximsecret/extra_utilities.git &&

echo "END!"
