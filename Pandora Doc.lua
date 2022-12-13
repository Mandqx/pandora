- sleep(int ms)

#function : put a delay on the script

ex :

say('hi')
sleep(1000) -- will wait 1 second
say('world')

--==============================================================================================--

- wear(itemid)

#function : wear a clothe

ex :

wear(48) -- wear Jeans on

--==============================================================================================--

- drop(id)

#function : drop item in inv

ex :

drop(2) -- drops dirt in inv

--==============================================================================================--

- enter()

#function : enter a door on current bot pos

ex :

enter()

--==============================================================================================--

- punch(x,y)

#function : hit a tile on x, y pos to bot local pos

ex :

punch(1,0) -- punch 1 block to right
punch(-1,0) -- punch 1 block to left
punch(0,1) -- punch 1 block down
punch(0,-1) -- punch 1 block up

--==============================================================================================--

- wrench(x,y)

#function : wrench a object on x, y pos to bot local pos

ex :

wrench(1,0) -- wrench 1 block to right
wrench(-1,0) -- wrench 1 block to left
wrench(0,1) -- wrench 1 block down
wrench(0,-1) -- wrench 1 block up

--==============================================================================================--

- move(x,y)

#function : move the bot on x, y pos to bot local pos

ex :

move(1,0) -- move 1 block to right
move(-1,0) -- move 1 block to left
move(0,1) -- move 1 block down
move(0,-1) -- move 1 block up

--==============================================================================================--

- place(itemid,x,y)

#function : wrench a object on x, y pos to bot local pos

ex :

place(2, 1,0) -- place 1 block to right
place(2,-1,0) -- place 1 block to left
place(2,0,1) -- place 1 block down
place(2,0,-1) -- place 1 block up

-- here ( 2 ) is dirt id

--==============================================================================================--

- say(text)

#function : say something in the chat

ex :

say("hello !") -- bot will say hello !

a = test

say(a) -- bot will say test

--==============================================================================================--

- sendPacket(2,"action")

#function : send packet to server

ex :

sendPacket(2, "action|respawn") -- bot will respawn

--==============================================================================================--

- collect

1) - collect(range)

#function : collect items in a specific range

ex :

collect(2) -- collect all items in 2 radius

2) - collectSet(boolean, range)

#function : collect item in a specific range and can be enabled and disabled

ex :

collectSet(true, 1) -- true = enabled / 1 = range

3) - collect(range, ignored item)

#function : collect items in a specific range and ignore specific item

ex :

collect(1, 112) -- collect all item in 2 radius and ignore gems

--==============================================================================================--

- findItem(itemid)

#function : gives amount of target item

ex :

findItem(2) -- 23

--==============================================================================================--

- addBot("user","pass")

#function : add a bot using a code

ex :

addBot("mandqbot","verystrongpasswordomg69") -- add mandqbot to bot account list

--==============================================================================================--

- removeBot("user")

#function : remove a bot using a code

ex :

removeBot("mandqbot") -- remove mandqbot to bot account list

--==============================================================================================--

- findPath(x,y)

#function : go to a x and y pos

ex :

findPath(0,0) -- go to top corner

--==============================================================================================--

- getBot()

1) - getBot("targetbotname") -- target a specific bot from bot list

2) - getBot().name -- bot name ~ ex : mandqbot

3) - getBot().world -- current World of bot ~ ex : mandqfarm12

4) - getBot().status -- status of bot ~ ex : online

5) - getBot().x -- pos x of bot ~ ex : 32

6) - getBot().y -- pos y of bot ~ ex : 12

ex :

say(getBot().name)

--==============================================================================================--

- getBots()

1) - bot.name -- bot name ~ ex : mandqbot

2) - bot.world -- current World of bot ~ ex : mandqfarm12

3) - bot.status -- status of bot ~ ex : online

4) - bot.x -- pos x of bot ~ ex : 32

5) - bot.y -- pos y of bot ~ ex : 12

ex : 

for _, bot in pairs(getBots()) do
    say(bot.name) -- says bot name
end

--==============================================================================================--

- getTile()

1) - getTile(x,y).fg -- foreground ~ ex : 2 ( dirt )

2) - getTile(x,y).bg -- background ~ ex : 15 ( cavebackground  )

3) - getTile(x,y).data -- extra data, you can check the itemid inside of the vend

4) - getTile(x,y).ready -- true/fast if seed ready to harvest

5) - getTile(x,y).flags -- flags can be found in game

ex :

say(getTile(5,10).fg) -- bot will say id for the block

--==============================================================================================--

- getTiles()

1) - tile.fg -- foreground ~ ex : 2 ( dirt )

2) - tile.bg -- background ~ ex : 15 ( cavebackground  )

3) - tile.x -- pos x

4) - tile.y -- pos y

5) - tile.data -- extra data, you can check the itemid inside of the vend

6) - tile.ready -- true/fast if seed ready to harvest

7) - tile.flags  -- flags can be found in game

ex :

for _, tile in pairs(getTiles()) do
    if tile.fg == 242 then
    say("Found world lock at:"..tile.x..","..tile.y)
    end
end

--==============================================================================================--

- getObjects()

1) - object.id -- itemid

2) - object.count -- amount

3) - object.x -- pos x

4) - object.y -- pos y

5) - object.oid -- object id

ex :

for _, object in pairs(getObjects()) do
    if object.id == 242 then
    findPath(object.x, object.y)
    say("get scammed lmao")
end

--==============================================================================================--

- getPlayers()

1) - player.name -- player name ~ ex : Mandqbot1 Mandqbot2 Mandqbot3

2) - player.netid -- net id for the player ~ ex : 3 912 12

3) - player.userid -- player id ~ ex : 9491284 931824981 12931924

4) - player.country -- player country code ~ ex : us id jo ue

ex :

for _, player in pairs(getPlayers()) do
    say(players.name)
end

--==============================================================================================--

- getInventory()

1) - item.name -- item name ~ ex : Dirt

2) - item.id -- item id ~ ex : 2

3) - item.count -- item count ~ ex : 156

ex :

for _, item in pairs(getInventory()) do
    if item.id == 2 then
    say('i have ' ..item.count.. 'dirts in my inv !')
end

--==============================================================================================--

--================================= Only available on pandora! =================================--

- getPlayers()

1) - player.x -- get player x pos

2) - player.y -- get player y pos

--==============================================================================================--


getBot().slots -- amount of inventory slots

getBot().level -- bot level

getBot().captcha -- gives captcha status ( 1- Solved ~ 2 - Wrong answer ~ 3 - Couldnt solve )

--==============================================================================================--

wh = {}
wh.url = "" -- webhook
wh.username = "" -- username shown
wh.content = "" -- content in it
wh.avatar = "" -- avatar for the webhook
wh.embed = "" -- if embed add this if you want normal message dont add
wh.edit = "" --(true/false) (sends PATCH if true)

webhook(wh) -- sends discord webhook

--==============================================================================================--

pkt = {}
pkt.type =
pkt.flags =
pkt.int_data =
pkt.pos_x =
pkt.pos_y =
pkt.pos2_x =
pkt.pos2_y =
pkt.int_x = 
pkt.int_y = 

sendPacketRaw(pkt)

--==============================================================================================--


- disconnect()

--==============================================================================================--

- getClothes()

1) - clothe.name -- get all clothes name in inv

2) - clothe.id -- get all clothes id in inv

3) - findClothes(itemid) -- true / false if have or not

--==============================================================================================--

-setBool("boolname ", boolean)

--Bool name List--

1) - Select All

2) - Guest Account

3) - External

4) - Auto Access

5) - Auto Reconnect

6) - Auto Leave

7) -Ignore Gems

ex :

setBool("Auto Access", true)

--==============================================================================================--

- getSignal() -- returns geiger signal, possible returns; null / red / yellow / green / rapid green

- getPing() -- returns ping value of bot

- request(type, url) -- gets text from target url, example usage; request("GET", "https://www.google.com") possible types; "GET" / "POST" / "PATCH"

--================================= Only available on pandora! =================================--
