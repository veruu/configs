use strict;
use warnings;
use utf8;
use Irssi;

our %emoji = (
copyright => "\x{00A9}",
registered => "\x{00AE}",
bangbang => "\x{203C}",
interrobang => "\x{2049}",
tm => "\x{2122}",
information_source => "\x{2139}",
left_right_arrow => "\x{2194}",
arrow_up_down => "\x{2195}",
arrow_upper_left => "\x{2196}",
arrow_upper_right => "\x{2197}",
arrow_lower_right => "\x{2198}",
arrow_lower_left => "\x{2199}",
leftwards_arrow_with_hook => "\x{21A9}",
arrow_right_hook => "\x{21AA}",
watch => "\x{231A}",
hourglass => "\x{231B}",
fast_forward => "\x{23E9}",
rewind => "\x{23EA}",
arrow_double_up => "\x{23EB}",
arrow_double_down => "\x{23EC}",
alarm_clock => "\x{23F0}",
hourglass_flowing_sand => "\x{23F3}",
m => "\x{24C2}",
black_small_square => "\x{25AA}",
white_small_square => "\x{25AB}",
arrow_forward => "\x{25B6}",
arrow_backward => "\x{25C0}",
white_medium_square => "\x{25FB}",
black_medium_square => "\x{25FC}",
white_medium_small_square => "\x{25FD}",
black_medium_small_square => "\x{25FE}",
sunny => "\x{2600}",
cloud => "\x{2601}",
phone => "\x{260E}",
ballot_box_with_check => "\x{2611}",
umbrella => "\x{2614}",
coffee => "\x{2615}",
point_up => "\x{261D}",
relaxed => "\x{263A}",
aries => "\x{2648}",
taurus => "\x{2649}",
gemini => "\x{264A}",
cancer => "\x{264B}",
leo => "\x{264C}",
virgo => "\x{264D}",
libra => "\x{264E}",
scorpius => "\x{264F}",
sagittarius => "\x{2650}",
capricorn => "\x{2651}",
aquarius => "\x{2652}",
pisces => "\x{2653}",
spades => "\x{2660}",
clubs => "\x{2663}",
hearts => "\x{2665}",
diamonds => "\x{2666}",
hotsprings => "\x{2668}",
recycle => "\x{267B}",
wheelchair => "\x{267F}",
anchor => "\x{2693}",
warning => "\x{26A0}",
zap => "\x{26A1}",
white_circle => "\x{26AA}",
black_circle => "\x{26AB}",
soccer => "\x{26BD}",
baseball => "\x{26BE}",
snowman => "\x{26C4}",
partly_sunny => "\x{26C5}",
ophiuchus => "\x{26CE}",
no_entry => "\x{26D4}",
church => "\x{26EA}",
fountain => "\x{26F2}",
golf => "\x{26F3}",
boat => "\x{26F5}",
tent => "\x{26FA}",
fuelpump => "\x{26FD}",
scissors => "\x{2702}",
white_check_mark => "\x{2705}",
airplane => "\x{2708}",
email => "\x{2709}",
fist => "\x{270A}",
hand => "\x{270B}",
victory => "\x{270C}",
pencil2 => "\x{270F}",
black_nib => "\x{2712}",
heavy_check_mark => "\x{2714}",
heavy_multiplication_x => "\x{2716}",
sparkles => "\x{2728}",
eight_spoked_asterisk => "\x{2733}",
eight_pointed_black_star => "\x{2734}",
snowflake => "\x{2744}",
sparkle => "\x{2747}",
x => "\x{274C}",
negative_squared_cross_mark => "\x{274E}",
question => "\x{2753}",
grey_question => "\x{2754}",
grey_exclamation => "\x{2755}",
exclamation => "\x{2757}",
heart => "\x{2764}",
heavy_plus_sign => "\x{2795}",
heavy_minus_sign => "\x{2796}",
heavy_division_sign => "\x{2797}",
arrow_right => "\x{27A1}",
curly_loop => "\x{27B0}",
loop => "\x{27BF}",
arrow_heading_up => "\x{2934}",
arrow_heading_down => "\x{2935}",
arrow_left => "\x{2B05}",
arrow_up => "\x{2B06}",
arrow_down => "\x{2B07}",
black_large_square => "\x{2B1B}",
white_large_square => "\x{2B1C}",
star => "\x{2B50}",
o => "\x{2B55}",
wavy_dash => "\x{3030}",
part_alternation_mark => "\x{303D}",
congratulations => "\x{3297}",
secret => "\x{3299}",
mahjong => "\x{1F004}",
black_joker => "\x{1F0CF}",
a => "\x{1F170}",
b => "\x{1F171}",
o2 => "\x{1F17E}",
parking => "\x{1F17F}",
ab => "\x{1F18E}",
cl => "\x{1F191}",
cool => "\x{1F192}",
free => "\x{1F193}",
id => "\x{1F194}",
new => "\x{1F195}",
ng => "\x{1F196}",
ok => "\x{1F197}",
sos => "\x{1F198}",
up => "\x{1F199}",
vs => "\x{1F19A}",
koko => "\x{1F201}",
sa => "\x{1F202}",
u7121 => "\x{1F21A}",
u6307 => "\x{1F22F}",
u7981 => "\x{1F232}",
u7a7a => "\x{1F233}",
u5408 => "\x{1F234}",
u6e80 => "\x{1F235}",
u6709 => "\x{1F236}",
u6708 => "\x{1F237}",
u7533 => "\x{1F238}",
u5272 => "\x{1F239}",
u55b6 => "\x{1F23A}",
ideograph_advantage => "\x{1F250}",
accept => "\x{1F251}",
cyclone => "\x{1F300}",
foggy => "\x{1F301}",
closed_umbrella => "\x{1F302}",
stars => "\x{1F303}",
sunrise_over_mountains => "\x{1F304}",
sunrise => "\x{1F305}",
city_sunset => "\x{1F306}",
city_sunrise => "\x{1F307}",
rainbow => "\x{1F308}",
bridge_at_night => "\x{1F309}",
ocean => "\x{1F30A}",
volcano => "\x{1F30B}",
milky_way => "\x{1F30C}",
earth_africa => "\x{1F30D}",
earth_americas => "\x{1F30E}",
earth_asia => "\x{1F30F}",
globe_with_meridians => "\x{1F310}",
new_moon => "\x{1F311}",
waxing_crescent_moon => "\x{1F312}",
first_quarter_moon => "\x{1F313}",
moon => "\x{1F314}",
full_moon => "\x{1F315}",
waning_gibbous_moon => "\x{1F316}",
last_quarter_moon => "\x{1F317}",
waning_crescent_moon => "\x{1F318}",
crescent_moon => "\x{1F319}",
new_moon_with_face => "\x{1F31A}",
first_quarter_moon_with_face => "\x{1F31B}",
last_quarter_moon_with_face => "\x{1F31C}",
full_moon_with_face => "\x{1F31D}",
sun_with_face => "\x{1F31E}",
star2 => "\x{1F31F}",
chestnut => "\x{1F330}",
seedling => "\x{1F331}",
evergreen_tree => "\x{1F332}",
deciduous_tree => "\x{1F333}",
palm_tree => "\x{1F334}",
cactus => "\x{1F335}",
tulip => "\x{1F337}",
cherry_blossom => "\x{1F338}",
rose => "\x{1F339}",
hibiscus => "\x{1F33A}",
sunflower => "\x{1F33B}",
blossom => "\x{1F33C}",
corn => "\x{1F33D}",
ear_of_rice => "\x{1F33E}",
herb => "\x{1F33F}",
four_leaf_clover => "\x{1F340}",
maple_leaf => "\x{1F341}",
fallen_leaf => "\x{1F342}",
leaves => "\x{1F343}",
mushroom => "\x{1F344}",
tomato => "\x{1F345}",
eggplant => "\x{1F346}",
grapes => "\x{1F347}",
melon => "\x{1F348}",
watermelon => "\x{1F349}",
tangerine => "\x{1F34A}",
lemon => "\x{1F34B}",
banana => "\x{1F34C}",
pineapple => "\x{1F34D}",
apple => "\x{1F34E}",
green_apple => "\x{1F34F}",
pear => "\x{1F350}",
peach => "\x{1F351}",
cherries => "\x{1F352}",
strawberry => "\x{1F353}",
hamburger => "\x{1F354}",
pizza => "\x{1F355}",
meat_on_bone => "\x{1F356}",
poultry_leg => "\x{1F357}",
rice_cracker => "\x{1F358}",
rice_ball => "\x{1F359}",
rice => "\x{1F35A}",
curry => "\x{1F35B}",
ramen => "\x{1F35C}",
spaghetti => "\x{1F35D}",
bread => "\x{1F35E}",
fries => "\x{1F35F}",
sweet_potato => "\x{1F360}",
dango => "\x{1F361}",
oden => "\x{1F362}",
sushi => "\x{1F363}",
fried_shrimp => "\x{1F364}",
fish_cake => "\x{1F365}",
icecream => "\x{1F366}",
shaved_ice => "\x{1F367}",
ice_cream => "\x{1F368}",
doughnut => "\x{1F369}",
cookie => "\x{1F36A}",
chocolate_bar => "\x{1F36B}",
candy => "\x{1F36C}",
lollipop => "\x{1F36D}",
custard => "\x{1F36E}",
honey_pot => "\x{1F36F}",
cake => "\x{1F370}",
bento => "\x{1F371}",
stew => "\x{1F372}",
egg => "\x{1F373}",
fork_and_knife => "\x{1F374}",
tea => "\x{1F375}",
sake => "\x{1F376}",
wine_glass => "\x{1F377}",
cocktail => "\x{1F378}",
tropical_drink => "\x{1F379}",
beer => "\x{1F37A}",
beers => "\x{1F37B}",
baby_bottle => "\x{1F37C}",
ribbon => "\x{1F380}",
gift => "\x{1F381}",
birthday => "\x{1F382}",
jack_o_lantern => "\x{1F383}",
christmas_tree => "\x{1F384}",
santa => "\x{1F385}",
fireworks => "\x{1F386}",
sparkler => "\x{1F387}",
balloon => "\x{1F388}",
tada => "\x{1F389}",
confetti_ball => "\x{1F38A}",
tanabata_tree => "\x{1F38B}",
crossed_flags => "\x{1F38C}",
bamboo => "\x{1F38D}",
dolls => "\x{1F38E}",
flags => "\x{1F38F}",
wind_chime => "\x{1F390}",
rice_scene => "\x{1F391}",
school_satchel => "\x{1F392}",
mortar_board => "\x{1F393}",
carousel_horse => "\x{1F3A0}",
ferris_wheel => "\x{1F3A1}",
roller_coaster => "\x{1F3A2}",
fishing_pole_and_fish => "\x{1F3A3}",
microphone => "\x{1F3A4}",
movie_camera => "\x{1F3A5}",
cinema => "\x{1F3A6}",
headphones => "\x{1F3A7}",
art => "\x{1F3A8}",
tophat => "\x{1F3A9}",
circus_tent => "\x{1F3AA}",
ticket => "\x{1F3AB}",
clapper => "\x{1F3AC}",
performing_arts => "\x{1F3AD}",
video_game => "\x{1F3AE}",
dart => "\x{1F3AF}",
slot_machine => "\x{1F3B0}",
"8ball" => "\x{1F3B1}",
game_die => "\x{1F3B2}",
bowling => "\x{1F3B3}",
flower_playing_cards => "\x{1F3B4}",
musical_note => "\x{1F3B5}",
notes => "\x{1F3B6}",
saxophone => "\x{1F3B7}",
guitar => "\x{1F3B8}",
musical_keyboard => "\x{1F3B9}",
trumpet => "\x{1F3BA}",
violin => "\x{1F3BB}",
musical_score => "\x{1F3BC}",
running_shirt_with_sash => "\x{1F3BD}",
tennis => "\x{1F3BE}",
ski => "\x{1F3BF}",
basketball => "\x{1F3C0}",
checkered_flag => "\x{1F3C1}",
snowboarder => "\x{1F3C2}",
runner => "\x{1F3C3}",
surfer => "\x{1F3C4}",
trophy => "\x{1F3C6}",
horse_racing => "\x{1F3C7}",
football => "\x{1F3C8}",
rugby_football => "\x{1F3C9}",
swimmer => "\x{1F3CA}",
house => "\x{1F3E0}",
house_with_garden => "\x{1F3E1}",
office => "\x{1F3E2}",
post_office => "\x{1F3E3}",
european_post_office => "\x{1F3E4}",
hospital => "\x{1F3E5}",
bank => "\x{1F3E6}",
atm => "\x{1F3E7}",
hotel => "\x{1F3E8}",
love_hotel => "\x{1F3E9}",
convenience_store => "\x{1F3EA}",
school => "\x{1F3EB}",
department_store => "\x{1F3EC}",
factory => "\x{1F3ED}",
izakaya_lantern => "\x{1F3EE}",
japanese_castle => "\x{1F3EF}",
european_castle => "\x{1F3F0}",
rat => "\x{1F400}",
mouse2 => "\x{1F401}",
ox => "\x{1F402}",
water_buffalo => "\x{1F403}",
cow2 => "\x{1F404}",
tiger2 => "\x{1F405}",
leopard => "\x{1F406}",
rabbit2 => "\x{1F407}",
cat2 => "\x{1F408}",
dragon => "\x{1F409}",
crocodile => "\x{1F40A}",
whale2 => "\x{1F40B}",
snail => "\x{1F40C}",
snake => "\x{1F40D}",
racehorse => "\x{1F40E}",
ram => "\x{1F40F}",
goat => "\x{1F410}",
sheep => "\x{1F411}",
monkey => "\x{1F412}",
rooster => "\x{1F413}",
chicken => "\x{1F414}",
dog2 => "\x{1F415}",
pig2 => "\x{1F416}",
boar => "\x{1F417}",
elephant => "\x{1F418}",
octopus => "\x{1F419}",
shell => "\x{1F41A}",
bug => "\x{1F41B}",
ant => "\x{1F41C}",
bee => "\x{1F41D}",
beetle => "\x{1F41E}",
fish => "\x{1F41F}",
tropical_fish => "\x{1F420}",
blowfish => "\x{1F421}",
turtle => "\x{1F422}",
hatching_chick => "\x{1F423}",
baby_chick => "\x{1F424}",
hatched_chick => "\x{1F425}",
bird => "\x{1F426}",
penguin => "\x{1F427}",
koala => "\x{1F428}",
poodle => "\x{1F429}",
dromedary_camel => "\x{1F42A}",
camel => "\x{1F42B}",
dolphin => "\x{1F42C}",
mouse => "\x{1F42D}",
cow => "\x{1F42E}",
tiger => "\x{1F42F}",
rabbit => "\x{1F430}",
cat => "\x{1F431}",
dragon_face => "\x{1F432}",
whale => "\x{1F433}",
horse => "\x{1F434}",
monkey_face => "\x{1F435}",
dog => "\x{1F436}",
pig => "\x{1F437}",
frog => "\x{1F438}",
hamster => "\x{1F439}",
wolf => "\x{1F43A}",
bear => "\x{1F43B}",
panda_face => "\x{1F43C}",
pig_nose => "\x{1F43D}",
feet => "\x{1F43E}",
eyes => "\x{1F440}",
ear => "\x{1F442}",
nose => "\x{1F443}",
lips => "\x{1F444}",
tongue => "\x{1F445}",
point_up_2 => "\x{1F446}",
point_down => "\x{1F447}",
point_left => "\x{1F448}",
point_right => "\x{1F449}",
facepunch => "\x{1F44A}",
wave => "\x{1F44B}",
ok_hand => "\x{1F44C}",
"+1" => "\x{1F44D}",
"thumbs_up" => "\x{1F44D}",
"-1" => "\x{1F44E}",
"thumbs_down" => "\x{1F44E}",
clap => "\x{1F44F}",
open_hands => "\x{1F450}",
crown => "\x{1F451}",
womans_hat => "\x{1F452}",
eyeglasses => "\x{1F453}",
necktie => "\x{1F454}",
shirt => "\x{1F455}",
jeans => "\x{1F456}",
dress => "\x{1F457}",
kimono => "\x{1F458}",
bikini => "\x{1F459}",
womans_clothes => "\x{1F45A}",
purse => "\x{1F45B}",
handbag => "\x{1F45C}",
pouch => "\x{1F45D}",
mans_shoe => "\x{1F45E}",
athletic_shoe => "\x{1F45F}",
high_heel => "\x{1F460}",
sandal => "\x{1F461}",
boot => "\x{1F462}",
footprints => "\x{1F463}",
bust_in_silhouette => "\x{1F464}",
busts_in_silhouette => "\x{1F465}",
boy => "\x{1F466}",
girl => "\x{1F467}",
man => "\x{1F468}",
woman => "\x{1F469}",
family => "\x{1F46A}",
couple => "\x{1F46B}",
two_men_holding_hands => "\x{1F46C}",
two_women_holding_hands => "\x{1F46D}",
cop => "\x{1F46E}",
dancers => "\x{1F46F}",
bride_with_veil => "\x{1F470}",
person_with_blond_hair => "\x{1F471}",
man_with_gua_pi_mao => "\x{1F472}",
man_with_turban => "\x{1F473}",
older_man => "\x{1F474}",
older_woman => "\x{1F475}",
baby => "\x{1F476}",
construction_worker => "\x{1F477}",
princess => "\x{1F478}",
japanese_ogre => "\x{1F479}",
japanese_goblin => "\x{1F47A}",
ghost => "\x{1F47B}",
angel => "\x{1F47C}",
alien => "\x{1F47D}",
space_invader => "\x{1F47E}",
imp => "\x{1F47F}",
skull => "\x{1F480}",
information_desk_person => "\x{1F481}",
guardsman => "\x{1F482}",
dancer => "\x{1F483}",
lipstick => "\x{1F484}",
nail_care => "\x{1F485}",
massage => "\x{1F486}",
haircut => "\x{1F487}",
barber => "\x{1F488}",
syringe => "\x{1F489}",
pill => "\x{1F48A}",
kiss => "\x{1F48B}",
love_letter => "\x{1F48C}",
ring => "\x{1F48D}",
gem => "\x{1F48E}",
couplekiss => "\x{1F48F}",
bouquet => "\x{1F490}",
couple_with_heart => "\x{1F491}",
wedding => "\x{1F492}",
heartbeat => "\x{1F493}",
broken_heart => "\x{1F494}",
two_hearts => "\x{1F495}",
sparkling_heart => "\x{1F496}",
heartpulse => "\x{1F497}",
cupid => "\x{1F498}",
blue_heart => "\x{1F499}",
green_heart => "\x{1F49A}",
yellow_heart => "\x{1F49B}",
purple_heart => "\x{1F49C}",
gift_heart => "\x{1F49D}",
revolving_hearts => "\x{1F49E}",
heart_decoration => "\x{1F49F}",
diamond_shape_with_a_dot_inside => "\x{1F4A0}",
bulb => "\x{1F4A1}",
anger => "\x{1F4A2}",
bomb => "\x{1F4A3}",
zzz => "\x{1F4A4}",
boom => "\x{1F4A5}",
sweat_drops => "\x{1F4A6}",
droplet => "\x{1F4A7}",
dash => "\x{1F4A8}",
hankey => "\x{1F4A9}",
poop => "\x{1F4A9}",
muscle => "\x{1F4AA}",
dizzy => "\x{1F4AB}",
speech_balloon => "\x{1F4AC}",
thought_balloon => "\x{1F4AD}",
white_flower => "\x{1F4AE}",
100 => "\x{1F4AF}",
moneybag => "\x{1F4B0}",
currency_exchange => "\x{1F4B1}",
heavy_dollar_sign => "\x{1F4B2}",
credit_card => "\x{1F4B3}",
yen => "\x{1F4B4}",
dollar => "\x{1F4B5}",
euro => "\x{1F4B6}",
pound => "\x{1F4B7}",
money_with_wings => "\x{1F4B8}",
chart => "\x{1F4B9}",
seat => "\x{1F4BA}",
computer => "\x{1F4BB}",
briefcase => "\x{1F4BC}",
minidisc => "\x{1F4BD}",
floppy_disk => "\x{1F4BE}",
cd => "\x{1F4BF}",
dvd => "\x{1F4C0}",
file_folder => "\x{1F4C1}",
open_file_folder => "\x{1F4C2}",
page_with_curl => "\x{1F4C3}",
page_facing_up => "\x{1F4C4}",
date => "\x{1F4C5}",
calendar => "\x{1F4C6}",
card_index => "\x{1F4C7}",
chart_with_upwards_trend => "\x{1F4C8}",
chart_with_downwards_trend => "\x{1F4C9}",
bar_chart => "\x{1F4CA}",
clipboard => "\x{1F4CB}",
pushpin => "\x{1F4CC}",
round_pushpin => "\x{1F4CD}",
paperclip => "\x{1F4CE}",
straight_ruler => "\x{1F4CF}",
triangular_ruler => "\x{1F4D0}",
bookmark_tabs => "\x{1F4D1}",
ledger => "\x{1F4D2}",
notebook => "\x{1F4D3}",
notebook_with_decorative_cover => "\x{1F4D4}",
closed_book => "\x{1F4D5}",
book => "\x{1F4D6}",
green_book => "\x{1F4D7}",
blue_book => "\x{1F4D8}",
orange_book => "\x{1F4D9}",
books => "\x{1F4DA}",
name_badge => "\x{1F4DB}",
scroll => "\x{1F4DC}",
memo => "\x{1F4DD}",
telephone_receiver => "\x{1F4DE}",
pager => "\x{1F4DF}",
fax => "\x{1F4E0}",
satellite => "\x{1F4E1}",
loudspeaker => "\x{1F4E2}",
mega => "\x{1F4E3}",
outbox_tray => "\x{1F4E4}",
inbox_tray => "\x{1F4E5}",
package => "\x{1F4E6}",
"e-mail" => "\x{1F4E7}",
incoming_envelope => "\x{1F4E8}",
envelope_with_arrow => "\x{1F4E9}",
mailbox_closed => "\x{1F4EA}",
mailbox => "\x{1F4EB}",
mailbox_with_mail => "\x{1F4EC}",
mailbox_with_no_mail => "\x{1F4ED}",
postbox => "\x{1F4EE}",
postal_horn => "\x{1F4EF}",
newspaper => "\x{1F4F0}",
iphone => "\x{1F4F1}",
calling => "\x{1F4F2}",
vibration_mode => "\x{1F4F3}",
mobile_phone_off => "\x{1F4F4}",
no_mobile_phones => "\x{1F4F5}",
signal_strength => "\x{1F4F6}",
camera => "\x{1F4F7}",
video_camera => "\x{1F4F9}",
tv => "\x{1F4FA}",
radio => "\x{1F4FB}",
vhs => "\x{1F4FC}",
twisted_rightwards_arrows => "\x{1F500}",
repeat => "\x{1F501}",
repeat_one => "\x{1F502}",
arrows_clockwise => "\x{1F503}",
arrows_counterclockwise => "\x{1F504}",
low_brightness => "\x{1F505}",
high_brightness => "\x{1F506}",
mute => "\x{1F507}",
sound => "\x{1F509}",
speaker => "\x{1F50A}",
battery => "\x{1F50B}",
electric_plug => "\x{1F50C}",
mag => "\x{1F50D}",
mag_right => "\x{1F50E}",
lock_with_ink_pen => "\x{1F50F}",
closed_lock_with_key => "\x{1F510}",
key => "\x{1F511}",
lock => "\x{1F512}",
unlock => "\x{1F513}",
bell => "\x{1F514}",
no_bell => "\x{1F515}",
bookmark => "\x{1F516}",
link => "\x{1F517}",
radio_button => "\x{1F518}",
back => "\x{1F519}",
end => "\x{1F51A}",
on => "\x{1F51B}",
soon => "\x{1F51C}",
top => "\x{1F51D}",
underage => "\x{1F51E}",
keycap_ten => "\x{1F51F}",
capital_abcd => "\x{1F520}",
abcd => "\x{1F521}",
1234 => "\x{1F522}",
symbols => "\x{1F523}",
abc => "\x{1F524}",
fire => "\x{1F525}",
flashlight => "\x{1F526}",
wrench => "\x{1F527}",
hammer => "\x{1F528}",
nut_and_bolt => "\x{1F529}",
hocho => "\x{1F52A}",
gun => "\x{1F52B}",
microscope => "\x{1F52C}",
telescope => "\x{1F52D}",
crystal_ball => "\x{1F52E}",
six_pointed_star => "\x{1F52F}",
beginner => "\x{1F530}",
trident => "\x{1F531}",
black_square_button => "\x{1F532}",
white_square_button => "\x{1F533}",
red_circle => "\x{1F534}",
large_blue_circle => "\x{1F535}",
large_orange_diamond => "\x{1F536}",
large_blue_diamond => "\x{1F537}",
small_orange_diamond => "\x{1F538}",
small_blue_diamond => "\x{1F539}",
small_red_triangle => "\x{1F53A}",
small_red_triangle_down => "\x{1F53B}",
arrow_up_small => "\x{1F53C}",
arrow_down_small => "\x{1F53D}",
clock1 => "\x{1F550}",
clock2 => "\x{1F551}",
clock3 => "\x{1F552}",
clock4 => "\x{1F553}",
clock5 => "\x{1F554}",
clock6 => "\x{1F555}",
clock7 => "\x{1F556}",
clock8 => "\x{1F557}",
clock9 => "\x{1F558}",
clock10 => "\x{1F559}",
clock11 => "\x{1F55A}",
clock12 => "\x{1F55B}",
clock130 => "\x{1F55C}",
clock230 => "\x{1F55D}",
clock330 => "\x{1F55E}",
clock430 => "\x{1F55F}",
clock530 => "\x{1F560}",
clock630 => "\x{1F561}",
clock730 => "\x{1F562}",
clock830 => "\x{1F563}",
clock930 => "\x{1F564}",
clock1030 => "\x{1F565}",
clock1130 => "\x{1F566}",
clock1230 => "\x{1F567}",
mount_fuji => "\x{1F5FB}",
tokyo_tower => "\x{1F5FC}",
statue_of_liberty => "\x{1F5FD}",
japan => "\x{1F5FE}",
moyai => "\x{1F5FF}",
grinning => "\x{1F600}",
grin => "\x{1F601}",
joy => "\x{1F602}",
smiley => "\x{1F603}",
smile => "\x{1F604}",
sweat_smile => "\x{1F605}",
laughing => "\x{1F606}",
innocent => "\x{1F607}",
smiling_imp => "\x{1F608}",
wink => "\x{1F609}",
blush => "\x{1F60A}",
yum => "\x{1F60B}",
relieved => "\x{1F60C}",
heart_eyes => "\x{1F60D}",
sunglasses => "\x{1F60E}",
smirk => "\x{1F60F}",
neutral_face => "\x{1F610}",
expressionless => "\x{1F611}",
unamused => "\x{1F612}",
sweat => "\x{1F613}",
pensive => "\x{1F614}",
confused => "\x{1F615}",
confounded => "\x{1F616}",
kissing => "\x{1F617}",
kissing_heart => "\x{1F618}",
kissing_smiling_eyes => "\x{1F619}",
kissing_closed_eyes => "\x{1F61A}",
stuck_out_tongue => "\x{1F61B}",
stuck_out_tongue_winking_eye => "\x{1F61C}",
stuck_out_tongue_closed_eyes => "\x{1F61D}",
disappointed => "\x{1F61E}",
worried => "\x{1F61F}",
angry => "\x{1F620}",
rage => "\x{1F621}",
cry => "\x{1F622}",
persevere => "\x{1F623}",
triumph => "\x{1F624}",
disappointed_relieved => "\x{1F625}",
frowning => "\x{1F626}",
anguished => "\x{1F627}",
fearful => "\x{1F628}",
weary => "\x{1F629}",
sleepy => "\x{1F62A}",
tired_face => "\x{1F62B}",
grimacing => "\x{1F62C}",
sob => "\x{1F62D}",
open_mouth => "\x{1F62E}",
hushed => "\x{1F62F}",
cold_sweat => "\x{1F630}",
scream => "\x{1F631}",
astonished => "\x{1F632}",
flushed => "\x{1F633}",
sleeping => "\x{1F634}",
dizzy_face => "\x{1F635}",
no_mouth => "\x{1F636}",
mask => "\x{1F637}",
smile_cat => "\x{1F638}",
joy_cat => "\x{1F639}",
smiley_cat => "\x{1F63A}",
heart_eyes_cat => "\x{1F63B}",
smirk_cat => "\x{1F63C}",
kissing_cat => "\x{1F63D}",
pouting_cat => "\x{1F63E}",
crying_cat_face => "\x{1F63F}",
scream_cat => "\x{1F640}",
no_good => "\x{1F645}",
ok_woman => "\x{1F646}",
bow => "\x{1F647}",
see_no_evil => "\x{1F648}",
hear_no_evil => "\x{1F649}",
speak_no_evil => "\x{1F64A}",
raising_hand => "\x{1F64B}",
raised_hands => "\x{1F64C}",
person_frowning => "\x{1F64D}",
person_with_pouting_face => "\x{1F64E}",
pray => "\x{1F64F}",
rocket => "\x{1F680}",
helicopter => "\x{1F681}",
steam_locomotive => "\x{1F682}",
railway_car => "\x{1F683}",
bullettrain_side => "\x{1F684}",
bullettrain_front => "\x{1F685}",
train2 => "\x{1F686}",
metro => "\x{1F687}",
light_rail => "\x{1F688}",
station => "\x{1F689}",
tram => "\x{1F68A}",
bus => "\x{1F68C}",
oncoming_bus => "\x{1F68D}",
trolleybus => "\x{1F68E}",
busstop => "\x{1F68F}",
minibus => "\x{1F690}",
ambulance => "\x{1F691}",
fire_engine => "\x{1F692}",
police_car => "\x{1F693}",
oncoming_police_car => "\x{1F694}",
taxi => "\x{1F695}",
oncoming_taxi => "\x{1F696}",
car => "\x{1F697}",
oncoming_automobile => "\x{1F698}",
blue_car => "\x{1F699}",
truck => "\x{1F69A}",
articulated_lorry => "\x{1F69B}",
tractor => "\x{1F69C}",
monorail => "\x{1F69D}",
mountain_railway => "\x{1F69E}",
suspension_railway => "\x{1F69F}",
mountain_cableway => "\x{1F6A0}",
aerial_tramway => "\x{1F6A1}",
ship => "\x{1F6A2}",
rowboat => "\x{1F6A3}",
speedboat => "\x{1F6A4}",
traffic_light => "\x{1F6A5}",
vertical_traffic_light => "\x{1F6A6}",
construction => "\x{1F6A7}",
rotating_light => "\x{1F6A8}",
triangular_flag_on_post => "\x{1F6A9}",
door => "\x{1F6AA}",
no_entry_sign => "\x{1F6AB}",
smoking => "\x{1F6AC}",
no_smoking => "\x{1F6AD}",
put_litter_in_its_place => "\x{1F6AE}",
do_not_litter => "\x{1F6AF}",
potable_water => "\x{1F6B0}",
"non-potable_water" => "\x{1F6B1}",
bike => "\x{1F6B2}",
no_bicycles => "\x{1F6B3}",
bicyclist => "\x{1F6B4}",
mountain_bicyclist => "\x{1F6B5}",
walking => "\x{1F6B6}",
no_pedestrians => "\x{1F6B7}",
children_crossing => "\x{1F6B8}",
mens => "\x{1F6B9}",
womens => "\x{1F6BA}",
restroom => "\x{1F6BB}",
baby_symbol => "\x{1F6BC}",
toilet => "\x{1F6BD}",
wc => "\x{1F6BE}",
shower => "\x{1F6BF}",
bath => "\x{1F6C0}",
bathtub => "\x{1F6C1}",
passport_control => "\x{1F6C2}",
customs => "\x{1F6C3}",
baggage_claim => "\x{1F6C4}",
left_luggage => "\x{1F6C5}",
facepalm => "\x{1F926}",
thinking => "\x{1F914}",
middle_finger => "\x{1F595}"
);

sub complete {
    my ($strings, $window, $word, $linestart, $want_space) = @_;

    return unless ($word =~ /:/);

    if ($word =~ /^:([a-zA-Z_\+\-1-9]+)$/) {
        # get all the keys in %emoji and filter by $word, then add the `:`
        @$strings = map {":" . $_ . ":" } grep {/^\Q$1\E/} keys %emoji;
        $$want_space = 0;
    }
}

sub replace {
    my ($line, $server, $window) = @_;

    while ($line =~ /:([a-zA-Z_\+\-1-9]+):/g) {
        if (exists($emoji{$1})) {
            my $saved_key = $1;
            $line =~ s/:$saved_key:/$emoji{$saved_key}/g;
        }
    }
    Irssi::signal_continue($line, $server, $window);
}

Irssi::signal_add_first('complete word', \&complete);
Irssi::signal_add_first('send text', \&replace);
