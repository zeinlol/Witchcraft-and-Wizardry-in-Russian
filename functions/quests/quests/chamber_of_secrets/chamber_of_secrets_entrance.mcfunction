# This is the block animation for the Выручай-комната entrance door
execute if score chamberOfSecretsEntranceDirection global matches 1 if score chamberOfSecretsEntrance global matches 2 run playsound minecraft:custom.fx.chamber_of_secrets.open master @a 6528 52 938 5 1
execute if score chamberOfSecretsEntranceDirection global matches 0 if score chamberOfSecretsEntrance global matches 2 run playsound minecraft:custom.fx.chamber_of_secrets.slam master @a 6528 52 938 5 1

execute if score chamberOfSecretsEntranceDirection global matches 0 if score chamberOfSecretsEntrance global matches 1 run fill 6529 50 940 6529 54 936 minecraft:gray_terracotta replace air
execute if score chamberOfSecretsEntranceDirection global matches 0 if score chamberOfSecretsEntrance global matches 1 run fill 6528 50 940 6528 54 936 minecraft:barrier replace air

execute if score chamberOfSecretsEntranceDirection global matches 1 if score chamberOfSecretsEntrance global matches 1 run fill 6529 50 940 6529 54 936 minecraft:air replace gray_terracotta
execute if score chamberOfSecretsEntranceDirection global matches 1 if score chamberOfSecretsEntrance global matches 1 run fill 6528 50 940 6528 54 936 minecraft:air replace barrier

# I now realize how easily I could've just done positioned ~ ~ ~ rotated ~ ~ postioned ^ ^ ^3. What a waste of time. I did it with excel so it's not too bad


execute if score chamberOfSecretsEntrance global matches 1 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.00169799990933925 ~-1 ~2.99999951946601 ~0.0324294112044046 ~
execute if score chamberOfSecretsEntrance global matches 2 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.00673499434257336 ~-1 ~2.99999243996568 ~0.12862902500687 ~
execute if score chamberOfSecretsEntrance global matches 3 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.015020937237211 ~-1 ~2.99996239500506 ~0.286879968022003 ~
execute if score chamberOfSecretsEntrance global matches 4 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.0264776562362469 ~-1 ~2.99988315334452 ~0.505692549982465 ~
execute if score chamberOfSecretsEntrance global matches 5 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.0410147222023224 ~-1 ~2.99971961899153 ~0.783347897502862 ~
execute if score chamberOfSecretsEntrance global matches 6 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.0585442834997866 ~-1 ~2.99942870674892 ~1.11818443297731 ~
execute if score chamberOfSecretsEntrance global matches 7 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.0789808734312956 ~-1 ~2.99896015672633 ~1.50859787457946 ~
execute if score chamberOfSecretsEntrance global matches 8 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.102238199648778 ~-1 ~2.99825738563796 ~1.95298394048292 ~
execute if score chamberOfSecretsEntrance global matches 9 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.128225925714782 ~-1 ~2.99725843263049 ~2.44968105308184 ~
execute if score chamberOfSecretsEntrance global matches 10 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.156855445023981 ~-1 ~2.99589658856349 ~2.99708493054982 ~
execute if score chamberOfSecretsEntrance global matches 11 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.188030672141494 ~-1 ~2.99410161255994 ~3.5934766995015 ~
execute if score chamberOfSecretsEntrance global matches 12 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.221662812704765 ~-1 ~2.99179972549364 ~4.23730937389 ~
execute if score chamberOfSecretsEntrance global matches 13 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.257655189360088 ~-1 ~2.98891515493428 ~4.92692137610946 ~
execute if score chamberOfSecretsEntrance global matches 14 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.295909064054441 ~-1 ~2.98537063457964 ~5.66065112855399 ~
execute if score chamberOfSecretsEntrance global matches 15 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.336326471741997 ~-1 ~2.98108780555112 ~6.43689434939723 ~
execute if score chamberOfSecretsEntrance global matches 16 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.37880412411319 ~-1 ~2.97598848041367 ~7.2539894610333 ~
execute if score chamberOfSecretsEntrance global matches 17 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.423239283583223 ~-1 ~2.96999469845183 ~8.11033218163583 ~
execute if score chamberOfSecretsEntrance global matches 18 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.469523749028917 ~-1 ~2.96303011275583 ~9.00426093359894 ~
execute if score chamberOfSecretsEntrance global matches 19 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.517549778584543 ~-1 ~2.95501983524427 ~9.93417143509627 ~
execute if score chamberOfSecretsEntrance global matches 20 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.567207118670162 ~-1 ~2.94589139048436 ~10.8984594043014 ~
execute if score chamberOfSecretsEntrance global matches 21 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.618374245175162 ~-1 ~2.93557716521028 ~11.8953486720496 ~
execute if score chamberOfSecretsEntrance global matches 22 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.670942015416681 ~-1 ~2.92401039874153 ~12.9233495480733 ~
execute if score chamberOfSecretsEntrance global matches 23 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.724790221517636 ~-1 ~2.91113021604881 ~13.9808004547667 ~
execute if score chamberOfSecretsEntrance global matches 24 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.779793735597147 ~-1 ~2.89688138002291 ~15.0659825187445 ~
execute if score chamberOfSecretsEntrance global matches 25 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.835834328614387 ~-1 ~2.88121171993829 ~16.1773487539598 ~
execute if score chamberOfSecretsEntrance global matches 26 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.892786360518067 ~-1 ~2.86407620612178 ~17.3132375828066 ~
execute if score chamberOfSecretsEntrance global matches 27 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-0.950525761575402 ~-1 ~2.84543507685231 ~18.4720447234587 ~
execute if score chamberOfSecretsEntrance global matches 28 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.0089217768387 ~-1 ~2.82525695260106 ~19.6520513025306 ~
execute if score chamberOfSecretsEntrance global matches 29 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.06785153723771 ~-1 ~2.80351441844323 ~20.8517103339756 ~
execute if score chamberOfSecretsEntrance global matches 30 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.12718620371355 ~-1 ~2.7801890694983 ~22.0693602401876 ~
execute if score chamberOfSecretsEntrance global matches 31 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.18679434337552 ~-1 ~2.75527116388421 ~23.3032821477813 ~
execute if score chamberOfSecretsEntrance global matches 32 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.24655612991524 ~-1 ~2.72875389417418 ~24.5519863664894 ~
execute if score chamberOfSecretsEntrance global matches 33 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.30634163311701 ~-1 ~2.70064280081339 ~25.8137540229265 ~
execute if score chamberOfSecretsEntrance global matches 34 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.36602784449398 ~-1 ~2.67094888159005 ~27.0869808352663 ~
execute if score chamberOfSecretsEntrance global matches 35 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.42549092369848 ~-1 ~2.6396923355674 ~28.3700052259027 ~
execute if score chamberOfSecretsEntrance global matches 36 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.48460942037479 ~-1 ~2.60690139225373 ~29.66116561723 ~
execute if score chamberOfSecretsEntrance global matches 37 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.54326988561962 ~-1 ~2.57260919304499 ~30.9589150232013 ~
execute if score chamberOfSecretsEntrance global matches 38 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.60135429151836 ~-1 ~2.53686113790955 ~32.2615345704313 ~
execute if score chamberOfSecretsEntrance global matches 39 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.65875601042168 ~-1 ~2.4997056822534 ~33.567477272873 ~
execute if score chamberOfSecretsEntrance global matches 40 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.71536492267532 ~-1 ~2.4612036043479 ~34.875024257141 ~
execute if score chamberOfSecretsEntrance global matches 41 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.7710780935879 ~-1 ~2.42142156313457 ~36.1825139456295 ~
execute if score chamberOfSecretsEntrance global matches 42 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.82580474046769 ~-1 ~2.38042791314623 ~37.4884566480712 ~
execute if score chamberOfSecretsEntrance global matches 43 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.87944726615937 ~-1 ~2.33830664664112 ~38.7910761953012 ~
execute if score chamberOfSecretsEntrance global matches 44 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.9319233045599 ~-1 ~2.29514102950088 ~40.0888256012725 ~
execute if score chamberOfSecretsEntrance global matches 45 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-1.98314941032329 ~-1 ~2.25102608077614 ~41.3799859925998 ~
execute if score chamberOfSecretsEntrance global matches 46 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.03305522386389 ~-1 ~2.20605676643185 ~42.6630103832362 ~
execute if score chamberOfSecretsEntrance global matches 47 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.08157222444596 ~-1 ~2.16033725941463 ~43.9362371955759 ~
execute if score chamberOfSecretsEntrance global matches 48 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.12863859820995 ~-1 ~2.1139767544159 ~45.198004852013 ~
execute if score chamberOfSecretsEntrance global matches 49 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.17420145177367 ~-1 ~2.06708685040209 ~46.4467090707212 ~
execute if score chamberOfSecretsEntrance global matches 50 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.21821263584361 ~-1 ~2.01978531091394 ~47.6806882740944 ~
execute if score chamberOfSecretsEntrance global matches 51 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.26063100378252 ~-1 ~1.97219356675181 ~48.8982808845269 ~
execute if score chamberOfSecretsEntrance global matches 52 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.30142626351427 ~-1 ~1.92443164430612 ~50.0979399159718 ~
execute if score chamberOfSecretsEntrance global matches 53 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.34056906913646 ~-1 ~1.87662900771614 ~51.2779464950438 ~
execute if score chamberOfSecretsEntrance global matches 54 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.37804261399391 ~-1 ~1.82891042044957 ~52.4367536356959 ~
execute if score chamberOfSecretsEntrance global matches 55 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.41383108155052 ~-1 ~1.78140941665319 ~53.5726424645427 ~
execute if score chamberOfSecretsEntrance global matches 56 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.44792883323776 ~-1 ~1.73425615968438 ~54.684008699758 ~
execute if score chamberOfSecretsEntrance global matches 57 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.48033462931961 ~-1 ~1.68758410948846 ~55.7691907637358 ~
execute if score chamberOfSecretsEntrance global matches 58 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.5110564948113 ~-1 ~1.64152224470642 ~56.8266416704292 ~
execute if score chamberOfSecretsEntrance global matches 59 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.54009655892668 ~-1 ~1.59621723813797 ~57.8544133633349 ~
execute if score chamberOfSecretsEntrance global matches 60 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.56748482729063 ~-1 ~1.55178015892472 ~58.8513599268625 ~
execute if score chamberOfSecretsEntrance global matches 61 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.59323644442928 ~-1 ~1.50835166432891 ~59.8156478960677 ~
execute if score chamberOfSecretsEntrance global matches 62 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.61737437873795 ~-1 ~1.46606662929286 ~60.745558397565 ~
execute if score chamberOfSecretsEntrance global matches 63 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.63992561487743 ~-1 ~1.42505885770168 ~61.6393725579691 ~
execute if score chamberOfSecretsEntrance global matches 64 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.66093444170991 ~-1 ~1.38543419075826 ~62.4959444616897 ~
execute if score chamberOfSecretsEntrance global matches 65 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.68041952097951 ~-1 ~1.34734969163614 ~63.3129822775462 ~
execute if score chamberOfSecretsEntrance global matches 66 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.69842948854938 ~-1 ~1.31090743202071 ~64.0893400899485 ~
execute if score chamberOfSecretsEntrance global matches 67 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.71500035563721 ~-1 ~1.27623393971866 ~64.8232990255111 ~
execute if score chamberOfSecretsEntrance global matches 68 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.73015662333758 ~-1 ~1.24348092548537 ~65.5125672530535 ~
execute if score chamberOfSecretsEntrance global matches 69 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.74396059574221 ~-1 ~1.21271606281688 ~66.1565718147805 ~
execute if score chamberOfSecretsEntrance global matches 70 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.75643606438867 ~-1 ~1.1840862396538 ~66.7530208795117 ~
execute if score chamberOfSecretsEntrance global matches 71 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.76761822011672 ~-1 ~1.15770867997004 ~67.3001955738616 ~
execute if score chamberOfSecretsEntrance global matches 72 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.77755140986627 ~-1 ~1.13367021904515 ~67.7969499822401 ~
execute if score chamberOfSecretsEntrance global matches 73 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.78626497415424 ~-1 ~1.112082503145 ~68.2415652312616 ~
execute if score chamberOfSecretsEntrance global matches 74 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.79377358966241 ~-1 ~1.09308239840592 ~68.6317494897457 ~
execute if score chamberOfSecretsEntrance global matches 75 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.80012028039833 ~-1 ~1.07672021217306 ~68.9669297998972 ~
execute if score chamberOfSecretsEntrance global matches 76 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.80529878869407 ~-1 ~1.06315507154488 ~69.2442413727405 ~
execute if score chamberOfSecretsEntrance global matches 77 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.80933956319401 ~-1 ~1.05243109925206 ~69.4631112504805 ~
execute if score chamberOfSecretsEntrance global matches 78 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.81223356913439 ~-1 ~1.04467332340481 ~69.6212476019366 ~
execute if score chamberOfSecretsEntrance global matches 79 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.81398465086905 ~-1 ~1.03994729898845 ~69.7175045115186 ~
execute if score chamberOfSecretsEntrance global matches 80 positioned 6528 52 935 rotated 90 0 run tp bc9a946c-a0ff-4a75-9260-fccc6a387631 ~-2.81457696366558 ~-1 ~1.03834315888487 ~69.750163105841 ~

execute if score chamberOfSecretsEntranceDirection global matches 0 if score chamberOfSecretsEntrance global matches 74 run fill 6527 51 936 6524 53 936 minecraft:air replace barrier
execute if score chamberOfSecretsEntranceDirection global matches 0 if score chamberOfSecretsEntrance global matches 74 run fill 6526 50 936 6525 54 936 minecraft:air replace barrier
execute if score chamberOfSecretsEntranceDirection global matches 1 if score chamberOfSecretsEntrance global matches 75 run fill 6527 51 936 6524 53 936 minecraft:barrier replace air
execute if score chamberOfSecretsEntranceDirection global matches 1 if score chamberOfSecretsEntrance global matches 75 run fill 6526 50 936 6525 54 936 minecraft:barrier replace air
execute if score chamberOfSecretsEntranceDirection global matches 0 if score chamberOfSecretsEntrance global matches 75 run playsound minecraft:custom.fx.chamber_of_secrets.open master @a 6528 52 938 5 1



# Direction
execute if score chamberOfSecretsEntranceDirection global matches 1 unless score chamberOfSecretsEntrance global matches 90.. run scoreboard players add chamberOfSecretsEntrance global 1
execute if score chamberOfSecretsEntranceDirection global matches 0 unless score chamberOfSecretsEntrance global matches ..-10 run scoreboard players remove chamberOfSecretsEntrance global 1