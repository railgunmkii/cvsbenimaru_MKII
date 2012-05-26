; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================

;-------------------------------------------------------------------------
;Stuffing
;-------------------------------------------------------------------------

[State AI, K throw Stuffing]
type = changestate
value = 899
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = statetype = S
triggerall = ctrl && stateno != 100
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H || var(16)
triggerall = random <= 500 || var(59)&2**0
trigger1 = enemynear,facing != facing
trigger1 = !(var(59)&2**1)
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-5)
trigger2 = enemynear,time = 1
trigger2 = enemynear, stateno < 2000

[State AI, P throw Stuffing]
type = changestate
value = 900
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = statetype = S
triggerall = ctrl && stateno != 100
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H || var(16)
triggerall = random <= 500 || var(59)&2**0
trigger1 = enemynear,facing != facing
trigger1 = !(var(59)&2**1)
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-5)
trigger2 = enemynear,time = 1
trigger2 = enemynear, stateno < 2000

[State AI, ScLP Stuffing]
type = changestate
value = 201
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = p2bodydist x = [0,20]
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype = S
triggerall = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
triggerall = p2bodydist x = [0,40]
trigger1 = !(var(59)&2**0)
trigger1 = random<=600
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
trigger2 = random<=300

[State AI, CLK Stuffing]
type = changestate
value = 430
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype != A
triggerall = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
triggerall = p2bodydist x = [0,40]
trigger1 = !(var(59)&2**0)
trigger1 = random<=600
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
trigger2 = random<=300

[State AI, ScMP Stuffing]
type = changestate
value = 410
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype != A
triggerall = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
triggerall = p2bodydist x = [0,60]
trigger1 = !(var(59)&2**0)
trigger1 = random<=600
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
trigger2 = random<=300

[State AI, CMK Stuffing]
type = changestate
value = 440
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = p2bodydist x = [0,60]
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype != A
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-6)
trigger1 = !(var(59)&2**0)
trigger1 = random<=600
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
trigger2 = random <= 300

[State AI, CHP Stuffing]
type = changestate
value = 440
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = p2bodydist x = [0,60]
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype != A
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-6)
trigger1 = !(var(59)&2**0)
trigger1 = random<=600
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
trigger2 = random <= 300

;-------------------------------------------------------------------------
;Dodging
;-------------------------------------------------------------------------

[State AI, Defensive Jump]
type = changestate
value = 41
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = var(20)<2 || var(0):=(var(0)-(var(0)&2**5))+2**5
triggerall = enemynear,facing != facing
trigger1 = enemynear,time=helper(11000),fvar(9)-3
trigger1 = numhelper(11000)
trigger2 = helper(11000),var(40)=3||enemynear, hitdefattr = sca, at
trigger2 = enemynear, statetype != A
trigger2 = p2bodydist x <= 90

[State AI, rolling]
type = changestate
value = 800
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = enemynear,animtime<=(-24-random%15) && !enemynear, ctrl
triggerall = inguarddist
triggerall = enemynear, hitdefattr = sca, aa, ap || ((var(59)/2**4)-(var(59)/(2**8)*(2**4))) || enemynear, numproj || helper(11000),var(51)
triggerall = var(20) = 0 || var(20) = 1 || var(20) = 4 || var(20) = 6
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || time <= 2 && StateNo = [200,450]
triggerall = enemynear,facing != facing
triggerall = enemynear,name!="hulk"||(enemynear,stateno!=[1301,1302])&&(enemynear,stateno!=3500)
trigger1 = !enemynear, numproj
trigger1 = !helper(11000),var(51)
trigger1 = p2bodydist x <= 90
trigger2 = helper(11000),var(51)
trigger2 = (abs(helper(11000), fvar(16))-29*abs(helper(11000),fvar(18))) <=118

[State AI, Dodge]
type = changestate
value = 830
triggerall = var(59)
triggerall = roundstate = 2
triggerall = !var(16)
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || time<=2 && stateno = [200,450]
triggerall = statetype != A
triggerall = helper(11000), var(40)!=3
triggerall = enemynear, animtime<=-15 && !enemynear, ctrl && enemynear,stateno>=200; || p2bodydist x >= 100
triggerall = enemynear,facing != facing
triggerall = random <= 600
trigger1 = helper(11000), var(51)
trigger1 = abs(helper(11000), fvar(16)) = [-40,40]
trigger1 = abs(helper(11000), fvar(16))-26*helper(11000),fvar(18) != [-40,40]
trigger1 = !enemynear, hitdefattr=sca,aa,at
;trigger1 = enemynear,vel x>=0
trigger1 = !enemynear,numproj
trigger2 = p2bodydist x < 70
trigger2 = enemynear, movetype = A
trigger2 = enemynear, vel x >= 0
trigger2 = enemynear, stateno != 200 && enemynear,stateno!=230 && enemynear,stateno != 400 && enemynear,stateno != 430
trigger2 = !enemynear,numproj
trigger2 = enemynear, hitdefattr = sca, aa

;-------------------------------------------------------------------------
;Counter
;-------------------------------------------------------------------------

[State AI, GCCD]
type = changestate
value = 2800
triggerall = var(59)
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153
triggerall = Power >= 1000 && (!var(20) || var(20) = 4 || var(20) = 6) ||Power >= 1500 && var(20) = 1 || var(14) && var(20) = 3
triggerall = (p2bodydist x = [0,40])&&enemynear,animtime<-12 || (p2bodydist x = [0,60])&&enemynear,animtime<-14
triggerall = enemynear,movetype = A
trigger1 = random <= 50
trigger2 = helper(11000),var(40)=4

[State AI, Electrigger Counter]
type = changestate
value = 3200
triggerall = var(59)
triggerall = !var(12)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = enemynear,statetype != A
triggerall = enemynear, hitdefattr = sca, aa, at || enemynear, numproj || helper(11000),var(51)
triggerall = enemynear,animtime<-5
triggerall = random <= 400
triggerall = !(var(59)&2**1)
triggerall = (stateno != 1300 && stateno != 2800)||(animelemtime(3)>0&&!var(36))
trigger1 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger1 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger1 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger1 = p2bodydist x = [0,35]
trigger1 = var(5):=2
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger2 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger2 = p2bodydist x = [0,35]
trigger2 = var(5):=2
trigger3 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger3 = (var(20) = 1 || var(20) = 6) && power >= 2000
trigger3 = p2bodydist x = [0,30]
trigger3 = var(5):=1
trigger4 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210, 50]
trigger4 = (var(20) = 1 || var(20) = 6) && power >= 2000 
trigger4 = p2bodydist x = [0,30]
trigger4 = var(5):=1
trigger5 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger5 = p2bodydist x = [0,27]
trigger5 =  ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
trigger5 = var(5):=0||1
trigger6 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger6 =  ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
trigger6 = p2bodydist x = [0,27]
trigger6 = var(5):=0||1

[State AI, Spark Counter]
type = changestate
value = 3100
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype!=A
triggerall = enemynear,movetype = A
triggerall = !(var(59)&2**0)
triggerall = enemynear, hitdefattr = sca, aa, at || enemynear, numproj || helper(11000),var(51)
triggerall = helper(11000),var(48)=0
triggerall = enemynear,time>=10+(random%5)-(15-ceil(10*life/const(data.life)))
triggerall = random <= 400
triggerall = (stateno != 1300 && stateno != 2800)||(animelemtime(3)>0&&!var(36))
trigger1 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger1 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger1 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger1 = p2bodydist x = [0,130]
trigger1 = var(5):=2
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger2 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger2 = p2bodydist x = [0,130]
trigger2 = var(5):=2
trigger3 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger3 = (var(20) = 1 || var(20) = 6) && power >= 2000
trigger3 = p2bodydist x = [0,110]
trigger3 = var(5):=1
trigger4 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210, 50]
trigger4 = (var(20) = 1 || var(20) = 6) && power >= 2000 
trigger4 = p2bodydist x = [0,110]
trigger4 = var(5):=1
trigger5 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger5 =  ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
trigger5 = p2bodydist x = [0,80]
trigger5 = random<= 500
trigger5 = var(5):=0||1
trigger6 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger6 =  ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
trigger6 = p2bodydist x = [0,80]
trigger6 = var(5):=0||1
trigger6 = random<= 500

[State AI, Raikou Ken Counter]
type = changestate
value = 3000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = enemynear, statetype != A || p2bodydist y > - 50
triggerall = enemynear, hitdefattr = sca, aa, ap, at || enemynear, numproj || helper(11000),var(51)
triggerall = p2bodydist x < 90
triggerall = enemynear,animtime<-6
triggerall = enemynear,time>=5+(random%5)-(10-ceil(10*life/const(data.life)))
triggerall = !(var(59)&2**2)
triggerall = helper(11000),var(48)=0
triggerall = (stateno != 1300 && stateno != 2800)||(animelemtime(3)>0&&!var(36))
trigger1 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger1 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger1 = var(5):=2
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger2 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger2 = var(5):=2
trigger3 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger3 = (var(20) = 1 || var(20) = 6) && power >= 2000
trigger3 = var(5):=1
trigger4 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger4 = (var(20) = 1 || var(20) = 6) && power >= 2000 
trigger4 = var(5):=1

[State AI, rolling]
type = changestate
value = ifelse(random<= 333, 830, 800)
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,at
triggerall = var(20) = 0 || var(20) = 1 || var(20) = 4 || var(20) = 6
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || time <= 2 && StateNo = [200,450]
triggerall = enemynear,facing != facing
trigger1 = var(59)%(2**3)
trigger1 = random<=600
trigger2 = helper(11000),var(40)=4
trigger2 = random<=800

[State AI, Inazuma Counter]
type = changestate
value = 1300
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = enemynear, hitdefattr = sca, aa, ap, at || enemynear, numproj || helper(11000),var(51) || enemynear,time = [(((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-6)-1,(((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-6)]
triggerall = !enemynear, ctrl
triggerall = enemynear,animtime<-6
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
triggerall = !(var(59)&2**0)
triggerall = helper(11000),var(48)=0
triggerall = p2bodydist x-enemynear,vel x*8 <=60
triggerall = p2bodydist y-enemynear,vel y*8> -80
trigger1 = ctrl
trigger1 = enemynear,time>=10+(random%5)-(15-ceil(15*life/const(data.life)))
trigger1 = enemynear,statetype!=A && random<=200 || enemynear,statetype = A && random <= 500
trigger1 = var(5):=2
trigger2 = !ctrl
trigger2 = enemynear,time>=(random%5)
trigger2 = enemynear,statetype!=A && random<=500 || enemynear,statetype = A && random <= 800
trigger2 = var(5):=2

;-------------------------------------------------------------------------
;Guarding
;-------------------------------------------------------------------------

[State AI, Forward GCAB]
type = changestate
value = 810
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = enemynear,animtime<=-29 && !enemynear, ctrl
triggerall = inguarddist
triggerall = enemynear, hitdefattr = sca, aa, ap || ((var(59)/2**4)-(var(59)/(2**8)*(2**4))) || enemynear, numproj || helper(11000),var(51)
triggerall = stateno = [150,153]
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = var(20) = 4 || var(20) = 6
triggerall = Power >= 1000
triggerall = enemynear,facing != facing
triggerall = enemynear,name!="hulk"||(enemynear,stateno!=[1301,1302])&&(enemynear,stateno!=3500)
trigger1 = !enemynear, numproj
trigger1 = !helper(11000),var(51)
trigger1 = p2bodydist x <= 90
trigger2 = helper(11000),var(51)
trigger2 = (abs(helper(11000), fvar(16))-29*abs(helper(11000),fvar(18))) <=118

[State AI, Backward GCAB]
type = null;changestate
value = 820
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = enemynear,animtime<=-29 && !enemynear, ctrl
triggerall = inguarddist
triggerall = (enemynear, hitdefattr = sca, aa, ap || !((var(59)/2**4)-(var(59)/(2**8)*(2**4))) )&& !enemynear, numproj && !helper(11000),var(51)
triggerall = stateno = [150,153]
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = var(20) = 4 || var(20) = 6
triggerall = Power >= 1000
triggerall = enemynear,facing != facing
triggerall = enemynear,name!="hulk"||(enemynear,stateno!=[1301,1302])&&(enemynear,stateno!=3500)
trigger1 = !enemynear, numproj
trigger1 = !helper(11000),var(51)
trigger1 = p2bodydist x <= 90
trigger2 = helper(11000),var(51)
trigger2 = (abs(helper(11000), fvar(16))-29*abs(helper(11000),fvar(18))) <=118

[State AI, Guarding]
type = changestate
triggerall = var(59)
triggerall = ctrl || (stateno = [100,101])
trigger1 = var(59)&(2**3)
value = 120

;-------------------------------------------------------------------------
;Wakeup
;-------------------------------------------------------------------------

;-------------------------------------------------------------------------
;Link
;-------------------------------------------------------------------------

[State AI, CMP Link]
type = changestate
value = 410
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, statetype != A && enemynear,statetype != L
triggerall = ctrl
triggerall = enemynear,movetype = H && !enemynear,ctrl
trigger1 = p2bodydist x - helper(11000),fvar(23)*(1-helper(11000),fvar(22)**4)/(1-helper(11000),fvar(22)) <= 50
Trigger1 = EnemyNear,GetHitVar(hittime)>= 2

[State AI, CMK Link]
type = changestate
value = 440
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, statetype != A && enemynear,statetype != L
triggerall = ctrl
triggerall = enemynear,movetype = H && !enemynear,ctrl
trigger1 = p2bodydist x - helper(11000),fvar(23)*(1-helper(11000),fvar(22)**5)/(1-helper(11000),fvar(22)) <= 95
Trigger1 = EnemyNear,GetHitVar(hittime)>= 3

[State AI, CLK Link]
type = changestate
value = 400
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, statetype != A && enemynear,statetype != L
triggerall = ctrl
triggerall = enemynear,movetype = H && !enemynear,ctrl
trigger1 = p2bodydist x - helper(11000),fvar(23)*(1-helper(11000),fvar(22)**3)/(1-helper(11000),fvar(22)) <= 55
Trigger1 = EnemyNear,GetHitVar(hittime)>= 1

;-------------------------------------------------------------------------
;Cancel
;-------------------------------------------------------------------------

[State AI, Raikou Cancel]
type = changestate
value = 3000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 1 && (0&&stateno = 1300 && animelemtime(3)>0 || stateno = 1150 && animelem = 13) || stateno = 1000 && animelemtime(7)>0 && (var(28)+var(30)=var(5)+1)
triggerall = enemynear,stateno != [120,155]
triggerall = EnemyNear,GetHitVar(hittime)>1
trigger1 = (var(20) = 2 && Power >= 3000) || (var(20) = 6 && (Power >= 3000-2000*var(15)) && !var(16))
trigger1 = var(5):=2
trigger2 = (var(20) = 6 && Power = [2000,2999]) && !var(15)
trigger2 = var(5):=1
trigger3 = (var(20) = 6 && Power = [1000,1999]) && !var(15)
trigger3 = var(5):=0||1

[State AI, Inazuma Cancel]
type = changestate
value = 1300
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 3 && !var(16)
triggerall = (!var(20)||var(20)=6)
triggerall = EnemyNear,GetHitVar(hittime)>1
trigger1 = stateno = 3000 && var(5) = 1
trigger1 = var(28)+var(30)=7
trigger1 = var(5) := 2

[State AI, Iai Geri Cancel]
type = changestate
value = 1100
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 1 && !var(16)
triggerall = enemynear, statetype != A
triggerall = StateNo = 430 || stateno = 410 || stateno = 201 || stateno = 211 || stateno = 241
trigger1 = p2bodydist x + enemynear,vel x*(1-helper(11000),fvar(22)**10)/(1-helper(11000),fvar(22)) <= 24
trigger1 = EnemyNear,GetHitVar(hittime)>=8
trigger1 = var(5) := 2
trigger2 = p2bodydist x + enemynear,vel x*(1-helper(11000),fvar(22)**8)/(1-helper(11000),fvar(22)) <= 24
trigger2 = EnemyNear,GetHitVar(hittime)>=6
trigger2 = var(5) := 1
trigger3 = p2bodydist x + enemynear,vel x*(1-helper(11000),fvar(22)**6)/(1-helper(11000),fvar(22)) <= 24
trigger3 = EnemyNear,GetHitVar(hittime)>=4
trigger3 = var(5) := 0||1

[State AI, Shinkuu Cancel]
type = changestate
value = 1200
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 2 && random <= 600 || var(36) = 1 && random <= 200
triggerall = !var(16)
triggerall = StateNo = 430 || stateno = 410 || stateno = 201 || stateno = 211 || stateno = 241
triggerall = enemynear, statetype != A
trigger1 = p2bodydist x + enemynear,vel x*(1-helper(11000),fvar(22)**13)/(1-helper(11000),fvar(22)) <= 90
trigger1 = EnemyNear,GetHitVar(hittime)>=11
trigger1 = var(5) := 2

[State AI, Raijin Ken Cancel]
type = changestate
value = 1000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 1 || var(36) = 2 && random < 150
triggerall = !var(16)
triggerall = StateNo = 430 || stateno = 410 || stateno = 201 || stateno = 211 || stateno = 241
triggerall = enemynear, statetype != A
trigger1 = p2bodydist x + enemynear,vel x*(1-helper(11000),fvar(22)**19)/(1-helper(11000),fvar(22)) <= 85
trigger1 = EnemyNear,GetHitVar(hittime)>=15
trigger1 = var(5) := 2
trigger2 = p2bodydist x + enemynear,vel x*(1-helper(11000),fvar(22)**16)/(1-helper(11000),fvar(22)) <= 85
trigger2 = EnemyNear,GetHitVar(hittime)>=12
trigger2 = var(5) := 1
trigger3 = p2bodydist x + enemynear,vel x*(1-helper(11000),fvar(22)**13)/(1-helper(11000),fvar(22)) <= 85
trigger3 = EnemyNear,GetHitVar(hittime)>=9
trigger3 = var(5) := 0||1

[State AI, Spark Cancel]
type = changestate
value = 3100
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = var(36) = 1
triggerall = stateno = 220 || stateno = 240 || stateno = 440 || stateno = 420 || stateno = 410
triggerall = EnemyNear,GetHitVar(hittime)>1
trigger1 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger1 = helper(11000),var(47) <= 370 || random <= 500 || var(20)!=1 && var(20)!=6
trigger1 = var(5):=2
trigger2 = (var(20) = 1 || var(20) = 6) && power >= 2000 && random <= 500
trigger2 = p2bodydist x = [0,110]
trigger2 = var(5):=1
trigger3 =  ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
trigger3 = p2bodydist x = [0,80]
trigger3 = random < 1000-life/2
trigger3 = var(5):=0||1

;-------------------------------------------------------------------------
;Recovery Trap
;-------------------------------------------------------------------------

[State AI, Collider trap]
type = changestate
value = 1400
TriggerAll = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = !(var(59)&2**1)
TriggerAll = P2BodyDist X = [0,12]
triggerall = !var(16)
triggerall = !enemynear, ctrl
triggerall = enemynear, animtime < -6
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = random <= 200
trigger1 = enemynear, hitdefattr != SCA
trigger1 = p2movetype = A && (!inguarddist||prevstateno=800||prevstateno=810)
trigger1 = random <= 600
trigger1 = var(5):=2
trigger2 = p2movetype = A
trigger2 = enemynear,facing=facing
trigger2 = var(5):=2
trigger3 = p2movetype = I && !enemynear, ctrl
trigger3 = var(5):=2

[State AI, K throw trap]
type = changestate
value = 899
TriggerAll = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = !(var(59)&2**1)
TriggerAll = P2BodyDist X = [0,22]
triggerall = !var(16)
triggerall = !enemynear, ctrl
triggerall = enemynear, animtime < -5
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = random <= 100
trigger1 = enemynear, hitdefattr != SCA
trigger1 = p2movetype = A && (!inguarddist||prevstateno=800||prevstateno=810)
trigger1 = random <= 600
trigger2 = p2movetype = A
trigger2 = enemynear,facing=facing
trigger3 = p2movetype = I && !enemynear, ctrl

[State AI, P throw trap]
type = changestate
value = 900
TriggerAll = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = !(var(59)&2**1)
TriggerAll = P2BodyDist X = [0,22]
triggerall = !var(16)
triggerall = !enemynear, ctrl
triggerall = enemynear, animtime < -3
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = random <= 100
trigger1 = enemynear, hitdefattr != SCA
trigger1 = p2movetype = A && (!inguarddist||prevstateno=800||prevstateno=810)
trigger1 = random <= 600
trigger2 = p2movetype = A
trigger2 = enemynear,facing=facing
trigger3 = p2movetype = I && !enemynear, ctrl

[State AI, CLK trap]
type = changestate
value = 430
TriggerAll = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = !(var(59)&2**1)
TriggerAll = P2BodyDist X = [0,35]
triggerall = !var(16)
triggerall = !enemynear, ctrl
triggerall = enemynear, animtime < -4
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = random <= 500
trigger1 = enemynear, hitdefattr != SCA
trigger1 = p2movetype = A && (!inguarddist||prevstateno=800||prevstateno=810)
trigger2 = p2movetype = A
trigger2 = enemynear,facing=facing
trigger3 = p2movetype = I && !enemynear, ctrl

[State AI, Dodge cancel]
Type = changestate
value = 241
TriggerAll = var(59)
triggerall = roundstate = 2
TriggerAll = StateType != A
TriggerAll = P2BodyDist X = [0,45]
triggerall = !var(16)
;triggerall = enemynear,movetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = stateno = 830 && time = [14,24]
;triggerall = !inguarddist || enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-5) || enemynear, hitdefattr = SCA,AT
;triggerall = enemynear, animtime < -5
triggerall = !(var(59)&2**0)
trigger1 = p2movetype = A
trigger2 = p2movetype = I; && !enemynear, ctrl

;-------------------------------------------------------------------------
;Move
;-------------------------------------------------------------------------

[state AI, back step]
type = changestate
triggerall = var(59)
triggerall = ctrl
triggerall = roundstate = 2
triggerall = statetype = S
trigger1 = enemynear, statetype = L && enemynear,vel x <= 0 || var(40) = 1 || var(40) = 0 || enemynear,stateno=[3105,3107]
trigger1 = p2bodydist x <= 40
value = ifelse(helper(11000),fvar(11-ifelse(facing=1,1,0))>=100,105,ifelse(var(0):=(var(0)-(var(0)&2**5))+2**4,41,41))

[state AI, max]
type = changestate
triggerall = var(59)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = enemynear, movetype = I || var(40) = 1
triggerall = var(20) = 4 || var(20) = 6
triggerall = power = [2000,3000]
triggerall = !var(15) && !var(16) && !var(14)
triggerall = p2bodydist x > 30 && p2statetype=L || p2bodydist x > 100 && !helper(11000),var(53) || var(40) = 1 || var(40) = 0
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time <= 2
trigger3 = StateNo = 210 && time <= 2
trigger4 = StateNo = 211 && time <= 2
trigger5 = StateNo = 220 && time <= 2
trigger6 = StateNo = 221 && time <= 2
trigger7 = StateNo = 230 && time <= 2
trigger8 = StateNo = 231 && time <= 2
trigger9 = StateNo = 240 && time <= 2
trigger10 = StateNo = 250 && time <= 2
trigger11 = StateNo = 251 && time <= 2
trigger12 = StateNo = 400 && time <= 2
trigger13 = StateNo = 410 && time <= 2
trigger14 = StateNo = 420 && time <= 2
trigger15 = StateNo = 430 && time <= 2
trigger16 = StateNo = 440 && time <= 2
trigger17 = StateNo = 450 && time <= 2
trigger18 = StateNo = 300 && time <= 2
value = 860

[State AI, Offensive Jump]
type = changestate
value = 41
triggerall = var(59)
triggerall = roundstate = 2
triggerall = !InguardDist && !helper(11000),var(53) || (enemynear, hitdefattr = SC,AT || enemynear, hitdefattr = C,AA)
triggerall = ctrl
triggerall = !var(16)
triggerall = enemynear,stateno!=[3105,3107]
trigger1 = random%100 = [0,8]
trigger1 = p2bodydist x = [100,200]
trigger1 = enemynear,statetype = L || var(40) = 1 || var(40) = 0
trigger1 = statetype = S
trigger1 = enemynear, stateno = 5120
trigger1 = var(20)<2 || var(0):=(var(0)-(var(0)&2**5))+2**5
trigger2 = p2statetype != L && p2movetype != H
trigger2 = statetype = S
trigger2 = (p2bodydist x = [80,160])
trigger2 = random%100 = [0,16]
trigger2 = var(20)<2 || var(0):=(var(0)-(var(0)&2**5))+2**5
trigger3 = enemynear, statetype = A
trigger3 = enemynear, movetype = A
trigger3 = p2bodydist x >0 &&enemynear, facing=facing
trigger3 = enemynear, vel y>0 && p2bodydist x < 100

[state AI, run]
type = changestate
triggerall = var(59)
triggerall = roundstate = 2
triggerall = !InguardDist && !helper(11000),var(53)
triggerall = ctrl
triggerall = stateno != [120,159]
triggerall = prevstateno != [120,159]
triggerall = !var(16)
triggerall = var(40) != 1
triggerall = p2bodydist x >= 20
triggerall = enemynear,stateno!=[3105,3107]
;trigger1 = random%100 = [0,8]
trigger1 = p2bodydist x != [-1,90]
trigger1 = enemynear,statetype = L || var(40) = 1 || var(40) = 0
trigger1 = statetype = S
trigger2 = prevstateno = 200 || prevstateno = 201 || prevstateno = 400 || prevstateno = 430
trigger2 = (p2bodydist x != [-1,90])||enemynear,statetype != L
trigger3 = p2statetype != L
trigger3 = statetype = S
trigger3 = (p2bodydist x != [-1,90])||enemynear,statetype != L
value = ifelse(var(20)>=3,100,20)
trigger4 = prevstateno = 850
value = 100

[state AI, charge]
type = changestate
triggerall = var(59)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = enemynear, movetype = I || var(40) = 0 || var(40) = 1 || (enemynear,stateno = [3105,3107])&&numtarget
triggerall = (power < 1000 && var(20) = 3) || (power < 3000 && var(20) = 6)
triggerall = !var(15) && !var(16) && !var(14)
triggerall = !inguarddist
;triggerall = prevstateno != 850
triggerall = (p2bodydist x > 30 || enemynear, stateno!= 5120) && (p2statetype=L || var(40) = 1 || var(40) = 0) && !helper(11000),var(53) || (enemynear,stateno = [3105,3107])&&numtarget
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time <= 2
trigger3 = StateNo = 210 && time <= 2
trigger4 = StateNo = 211 && time <= 2
trigger5 = StateNo = 220 && time <= 2
trigger6 = StateNo = 221 && time <= 2
trigger7 = StateNo = 230 && time <= 2
trigger8 = StateNo = 231 && time <= 2
trigger9 = StateNo = 240 && time <= 2
trigger10 = StateNo = 250 && time <= 2
trigger11 = StateNo = 251 && time <= 2
trigger12 = StateNo = 400 && time <= 2
trigger13 = StateNo = 410 && time <= 2
trigger14 = StateNo = 420 && time <= 2
trigger15 = StateNo = 430 && time <= 2
trigger16 = StateNo = 440 && time <= 2
trigger17 = StateNo = 450 && time <= 2
trigger18 = StateNo = 300 && time <= 2
value = 850

;---------------------------------------------------------------------------
;éÛêgÅiínè„Åj
[State AI, recover]
type = changestate
value = 5200
triggerall = var(59)
triggerall = !(var(0)&2**10)
triggerall = var(20) = 1 || var(20) = 4 || var(20) = 5 || var(20) = 6
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = random <= 1000
persistent = 0

;-------------------------------------------------------------------------
;Start
;-------------------------------------------------------------------------

[State AI, Spinning knee drop start]
type = changestate
value = 920
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = P2bodydist X = [-const(size.ground.front),7]
triggerall = P2bodydist Y = [-70,-enemynear,const(size.head.pos.y)-62]
triggerall = !var(16)
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType = A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
trigger1 = random <= 500

[State AI, JHK start]
type = changestate
value = 650
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear,movetype = I || !enemynear,hitdefattr && !enemynear, numproj && !helper,var(51)
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[0,70]
triggerall = p2bodydist y = [-60,60]
triggerall = ctrl
trigger1 = enemynear, statetype = A
trigger1 = random <= 400
trigger2 = enemynear, statetype = S
trigger2 = vel y > 0
trigger2 = random <= 400

[State AI, K throw start]
type = changestate
value = 899
TriggerAll = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = !(var(59)&2**1)
TriggerAll = P2BodyDist X = [0,22]
triggerall = !var(16)
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
trigger1 = random <= 175+100*(prevstateno=[4000,4021])

[State AI, SMK anti-air start]
type = changestate
value = 240
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist x - 7*enemynear, vel x = [40,90]
triggerall = enemynear,pos y+7*enemynear, vel y+24.5*enemynear,const(movement.yaccel) = [-80, -10]
triggerall = enemynear,statetype = A
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I
triggerall = enemynear, stateno !=[5000,5999]
triggerall = prevstateno != 430
triggerall = enemynear,facing != facing
triggerall = !(var(59)&2**0)
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 800-600*helper(11000),var(46)+100*(prevstateno=[4000,4021])

[state AI, CLK start]
type = changestate
value = 430
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I || helper,var(51)&&helper(11000), fvar(16)<0 || enemynear,movetype = H && enemynear, stateno = [120,155]
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[0,35]
triggerall = !(var(59)&2**0)
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 400+400*(prevstateno=[4000,4021])

[state AI, CHP start]
type = changestate
value = 420
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno = 3106
triggerall = enemynear, anim = 5080
triggerall = P2BodyDist X =[20,65]
triggerall = !(var(59)&2**0)
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 100+100*(prevstateno=[4000,4021])

[state AI, CMP start]
type = changestate
value = 410
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = S
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I || helper,var(51)&&helper(11000), fvar(16)<0 || enemynear,movetype = H && enemynear, stateno = [120,155]
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[20,50]
triggerall = !(var(59)&2**0)
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 200+200*(prevstateno=[4000,4021])

[state AI, CMK start]
type = changestate
value = 440
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I || helper,var(51)&&helper(11000), fvar(16)<0 || enemynear,movetype = H && enemynear, stateno = [120,155]
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[40,85]
triggerall = !(var(59)&2**0)
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 100+200*(prevstateno=[4000,4021])

[state AI, SMK start]
type = changestate
value = 240
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = S
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I || helper,var(51)&&helper(11000), fvar(16)<0 || enemynear,movetype = H && enemynear, stateno = [120,155]
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[40,90]
triggerall = !(var(59)&2**0)
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 0

;-------------------------------------------------------------------------
;Omake
;-------------------------------------------------------------------------

[State -1, Taunt]
type = changestate
value = 195 + (var(33)=1)
triggerall = var(59)
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger1 = win

;-------------------------------------------------------------------------
[State AI, AI Switch Helper]
type = helper
trigger1=!NumHelper(11000)
helpertype=normal
name="AI Switch Helper"
stateno=11000
ID=11000
pos=9999,9999
keyctrl=1
pausemovetime=65535
supermovetime=65535
persistent = 0

[State AI, Switch]
type = Varadd
triggerall = !ishelper
triggerall = !(var(59)&(2**19))
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
trigger31  = command = "CPU31"
trigger32  = command = "CPU32"
trigger33  = command = "CPU33"
trigger34  = command = "CPU34"
trigger35  = command = "CPU35"
trigger36  = command = "CPU36"
trigger37  = command = "CPU37"
trigger38  = command = "CPU38"
trigger39  = command = "CPU39"
trigger40  = command = "CPU40"
trigger41  = command = "CPU41"
trigger42  = command = "CPU42"
trigger43  = command = "CPU43"
trigger44  = command = "CPU44"
trigger45  = command = "CPU45"
trigger46  = command = "CPU46"
trigger47  = command = "CPU47"
trigger48  = command = "CPU48"
trigger49  = command = "CPU49"
trigger50  = command = "CPU50"
trigger51 = command = "a" ^^ command = "aia"
trigger52 = command = "b" ^^ command = "aib"
trigger53 = command = "c" ^^ command = "aic"
trigger54 = command = "x" ^^ command = "aix"
trigger55 = command = "y" ^^ command = "aiy"
trigger56 = command = "z" ^^ command = "aiz"
trigger57 = Numhelper(11000)
trigger57 = Helper(11000),var(59)=1
var(59) = 2**19

[State AI, Safety]
type=changestate
trigger1= ishelper(11000)
trigger1= stateno!=11000
value=11000

;---------------------------------------------------------------------------
;エレクトリッガー
[State -1, hadouken]
type = changestate
value = 3200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
triggerall = Command = "エレクトリッガー1" || Command = "エレクトリッガー2" || Command = "エレクトリッガー3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2)) && prevstateno != 830
trigger7 = StateNo = 220 && (var(16) || time <= 2) && prevstateno = 830
trigger8 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger9 = StateNo = 240 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger10 = StateNo = 241 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 430
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = stateno = 300 && (var(16) || time <= 2)
trigger19 = stateno = 310 && (var(16) || time <= 2)
trigger20 = (StateNo = [195,196]) && var(36) && var(16)
trigger21 = (StateNo = [1000,1399]) && var(36) && var(16)
trigger22 = (StateNo = [3000,3100]) && var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger23 = StateNo = 3101 && var(5) = 1 && animelemtime(10) > 1
trigger24 = (StateNo = [195,196]) && (var(20) = 2 || var(20) = 6)
trigger25 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 3000 && (var(20) = 2 || var(20) = 6) && time > 51
trigger28 = StateNo = 3050 && (var(20) = 2 || var(20) = 6) && time > 51
trigger29 = StateNo = 3100 && (var(20) = 2 || var(20) = 6) && time > 50
ignorehitpause = 0

;---------------------------------------------------------------------------
;電影スパーク
[State -1, hadouken]
type = changestate
value = 3100
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
triggerall = Command = "電影スパーク1" || Command = "電影スパーク2" || Command = "電影スパーク3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2)) && prevstateno != 830
trigger7 = StateNo = 220 && (var(16) || time <= 2) && prevstateno = 830
trigger8 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger9 = StateNo = 240 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger10 = StateNo = 241 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 430
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = stateno = 300 && (var(16) || time <= 2)
trigger19 = stateno = 310 && (var(16) || time <= 2)
trigger20 = (StateNo = [195,196]) && var(36) && var(16)
trigger21 = (StateNo = [1000,1399]) && var(36) && var(16)
trigger22 = (StateNo = [3000,3100]) && var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger23 = StateNo = 3101 && var(5) = 1 && animelemtime(10) > 1
trigger24 = (StateNo = [195,196]) && (var(20) = 2 || var(20) = 6)
trigger25 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 3000 && (var(20) = 2 || var(20) = 6) && time > 51
trigger28 = StateNo = 3050 && (var(20) = 2 || var(20) = 6) && time > 51
trigger29 = StateNo = 3200 && (var(20) = 2 || var(20) = 6) && time > 50
ignorehitpause = 0

;---------------------------------------------------------------------------
;雷光拳
[State -1, hadouken]
type = changestate
value = 3000
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
triggerall = Command = "雷光拳1" || Command = "雷光拳2" || Command = "雷光拳3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2)) && prevstateno != 830
trigger7 = StateNo = 220 && (var(16) || time <= 2) && prevstateno = 830
trigger8 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger9 = StateNo = 240 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger10 = StateNo = 241 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 430
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = stateno = 300 && (var(16) || time <= 2)
trigger19 = stateno = 310 && (var(16) || time <= 2)
trigger20 = (StateNo = [195,196]) && var(36) && var(16)
trigger21 = (StateNo = [1000,1399]) && var(36) && var(16)
trigger22 = (StateNo = [3000,3100]) && var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger23 = StateNo = 3101 && var(5) = 1 && animelemtime(10) > 1
trigger24 = (StateNo = [195,196]) && (var(20) = 2 || var(20) = 6)
trigger25 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 3050 && (var(20) = 2 || var(20) = 6) && time > 51
trigger28 = StateNo = 3100 && (var(20) = 2 || var(20) = 6) && time > 50
trigger29 = StateNo = 3200 && (var(20) = 2 || var(20) = 6) && time > 50
ignorehitpause = 0

;---------------------------------------------------------------------------
;雷光拳・対空
[State -1, hadouken]
type = null;changestate
value = 3050
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
triggerall = Command = "雷光拳・対空1" || Command = "雷光拳・対空2" || Command = "雷光拳・対空3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2)) && prevstateno != 830
trigger7 = StateNo = 220 && (var(16) || time <= 2) && prevstateno = 830
trigger8 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger9 = StateNo = 240 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger10 = StateNo = 241 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 430
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = stateno = 300 && (var(16) || time <= 2)
trigger19 = stateno = 310 && (var(16) || time <= 2)
trigger20 = (StateNo = [195,196]) && var(36) && var(16)
trigger21 = (StateNo = [1000,1399]) && var(36) && var(16)
trigger22 = (StateNo = [3000,3100]) && var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger23 = StateNo = 3101 && var(5) = 1 && animelemtime(10) > 1
trigger24 = (StateNo = [195,196]) && (var(20) = 2 || var(20) = 6)
trigger25 = (StateNo = [1000,1399]) && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 3000 && (var(20) = 2 || var(20) = 6) && time > 51
trigger28 = StateNo = 3100 && (var(20) = 2 || var(20) = 6) && time > 50
trigger29 = StateNo = 3200 && (var(20) = 2 || var(20) = 6) && time > 50
ignorehitpause = 0

;===========================================================================
;---------------------------------------------------------------------------
;紅丸コレダー
[State -1, hadouken]
type = changestate
value = 1400
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "紅丸コレダー1" || Command = "紅丸コレダー2" || Command = "紅丸コレダー3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2)
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 240 && (var(16) || time <= 2)
trigger9 = StateNo = 241 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger10 = StateNo = 250 && (var(16) || time <= 2)
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger13 = StateNo = 420 && (var(16) || time <= 2)
trigger14 = StateNo = 430
trigger15 = StateNo = 440 && (var(16) || time <= 2)
trigger16 = StateNo = 450 && (var(16) || time <= 2)
trigger17 = stateno = 300 && (var(16) || time <= 2)
trigger18 = stateno = 310 && (var(16) || time <= 2)
trigger19 = (StateNo = [195,196]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1399]) && var(36) && var(16)
trigger21 = (StateNo = [3000,3100]) && var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger22 = StateNo = 3101 && var(5) = 1 && animelemtime(10) > 1
ignorehitpause = 0

;---------------------------------------------------------------------------
;雷靭拳・対空
[State -1, hadouken]
type = changestate
value = 1050
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "雷靭拳・対空1" || Command = "雷靭拳・対空2" || Command = "雷靭拳・対空3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2)
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 240 && (var(16) || time <= 2)
trigger9 = StateNo = 241 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger10 = StateNo = 250 && (var(16) || time <= 2)
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger13 = StateNo = 420 && (var(16) || time <= 2)
trigger14 = StateNo = 430
trigger15 = StateNo = 440 && (var(16) || time <= 2)
trigger16 = StateNo = 450 && (var(16) || time <= 2)
trigger17 = stateno = 300 && (var(16) || time <= 2)
trigger18 = stateno = 310 && (var(16) || time <= 2)
trigger19 = (StateNo = [195,196]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1399]) && var(36) && var(16)
trigger21 = (StateNo = [3000,3100]) && var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger22 = StateNo = 3101 && var(5) = 1 && animelemtime(10) > 1
ignorehitpause = 0

;---------------------------------------------------------------------------
;雷靭拳
[State -1, hadouken]
type = changestate
value = 1000
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "雷靭拳1" || Command = "雷靭拳2" || Command = "雷靭拳3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2)
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 240 && (var(16) || time <= 2)
trigger9 = StateNo = 241 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger10 = StateNo = 250 && (var(16) || time <= 2)
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger13 = StateNo = 420 && (var(16) || time <= 2)
trigger14 = StateNo = 430
trigger15 = StateNo = 440 && (var(16) || time <= 2)
trigger16 = StateNo = 450 && (var(16) || time <= 2)
trigger17 = stateno = 300 && (var(16) || time <= 2)
trigger18 = stateno = 310 && (var(16) || time <= 2)
trigger19 = (StateNo = [195,196]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1399]) && var(36) && var(16)
trigger21 = (StateNo = [3000,3100]) && var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger22 = StateNo = 3101 && var(5) = 1 && animelemtime(10) > 1
ignorehitpause = 0

;---------------------------------------------------------------------------
;スーパー稲妻キック
[State -1, hadouken]
type = changestate
value = 1300
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "スーパー稲妻キック1" || Command = "スーパー稲妻キック2" || Command = "スーパー稲妻キック3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2)
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 240 && (var(16) || time <= 2)
trigger9 = StateNo = 241 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger10 = StateNo = 250 && (var(16) || time <= 2)
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger13 = StateNo = 420 && (var(16) || time <= 2)
trigger14 = StateNo = 430
trigger15 = StateNo = 440 && (var(16) || time <= 2)
trigger16 = StateNo = 450 && (var(16) || time <= 2)
trigger17 = stateno = 300 && (var(16) || time <= 2)
trigger18 = stateno = 310 && (var(16) || time <= 2)
trigger19 = (StateNo = [195,196]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1399]) && var(36) && var(16)
trigger21 = (StateNo = [3000,3100]) && var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger22 = StateNo = 3101 && var(5) = 1 && animelemtime(10) > 1
ignorehitpause = 0

;---------------------------------------------------------------------------
;真空片手駒
[State -1, hadouken]
type = changestate
value = 1200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "真空片手駒1" || Command = "真空片手駒2" || Command = "真空片手駒3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2)
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 240 && (var(16) || time <= 2)
trigger9 = StateNo = 241 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger10 = StateNo = 250 && (var(16) || time <= 2)
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger13 = StateNo = 420 && (var(16) || time <= 2)
trigger14 = StateNo = 430
trigger15 = StateNo = 440 && (var(16) || time <= 2)
trigger16 = StateNo = 450 && (var(16) || time <= 2)
trigger17 = stateno = 300 && (var(16) || time <= 2)
trigger18 = stateno = 310 && (var(16) || time <= 2)
trigger19 = (StateNo = [195,196]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1399]) && var(36) && var(16)
trigger21 = (StateNo = [3000,3100]) && var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger22 = StateNo = 3101 && var(5) = 1 && animelemtime(10) > 1
ignorehitpause = 0

;---------------------------------------------------------------------------
;居合い蹴り
[State -1, hadouken]
type = changestate
value = 1100
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "居合い蹴り1" || Command = "居合い蹴り2" || Command = "居合い蹴り3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2)
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 240 && (var(16) || time <= 2)
trigger9 = StateNo = 241 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger10 = StateNo = 250 && (var(16) || time <= 2)
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger13 = StateNo = 420 && (var(16) || time <= 2)
trigger14 = StateNo = 430
trigger15 = StateNo = 440 && (var(16) || time <= 2)
trigger16 = StateNo = 450 && (var(16) || time <= 2)
trigger17 = stateno = 300 && (var(16) || time <= 2)
trigger18 = stateno = 310 && (var(16) || time <= 2)
trigger19 = (StateNo = [195,196]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1399]) && var(36) && var(16)
trigger21 = (StateNo = [3000,3100]) && var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger22 = StateNo = 3101 && var(5) = 1 && animelemtime(10) > 1
ignorehitpause = 0

;===========================================================================
;---------------------------------------------------------------------------
;ガードキャンセル攻撃
[State -1]
type = changestate
value = 2800
triggerall = !var(59)
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153
triggerall = Command = "gc" && command != "holddown" && Command = "holdfwd"
trigger1 = Power >= 1000 && (!var(20) || var(20) = 4 || var(20) = 6)
trigger2 = Power >= 1500 && var(20) = 1
trigger3 = var(14) && var(20) = 3

;---------------------------------------------------------------------------
;ガードキャンセル移動（前）
[State -1]
type = changestate
value = 810
triggerall = !var(59)
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = var(20) = 4 || var(20) = 6
triggerall = Power >= 1000
triggerall = Command = "recovery" && command != "holddown" && Command = "holdfwd"
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;ガードキャンセル移動（後）
[State -1]
type = changestate
value = 820
triggerall = !var(59)
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = var(20) = 4 || var(20) = 6
triggerall = Power >= 1000
triggerall = Command = "recovery" && command != "holddown" && Command = "holdback"
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = changestate
value = 195+(var(33)=1)
triggerall = !var(59)
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2)
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 240 && (var(16) || time <= 2)
trigger9 = StateNo = 241 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger10 = StateNo = 250 && (var(16) || time <= 2)
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger13 = StateNo = 420 && (var(16) || time <= 2)
trigger14 = StateNo = 430
trigger15 = StateNo = 440 && (var(16) || time <= 2)
trigger16 = StateNo = 450 && (var(16) || time <= 2)
trigger17 = stateno = 300 && (var(16) || time <= 2)
trigger18 = stateno = 310 && (var(16) || time <= 2)
trigger19 = (StateNo = [195,196]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1399]) && var(36) && var(16)
trigger21 = (StateNo = [3000,3100]) && var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger22 = StateNo = 3101 && var(5) = 1 && animelemtime(10) > 1
ignorehitpause = 0

;---------------------------------------------------------------------------
;ラン
[State -1, Run Fwd]
type = changestate
value = 100
triggerall = !var(59)
triggerall = var(20) = 3 || var(20) = 4 || var(20) = 5 || var(20) = 6
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ステップ
[State -1, Run Fwd]
type = changestate
value = 102
triggerall = !var(59)
triggerall = !var(20) || var(20) = 1 || var(20) = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = changestate
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;受身
[State -1]
type = changestate
value = 5200
triggerall = !var(59)
triggerall = !(var(0)&2**10)
triggerall = var(20) = 1 || var(20) = 4 || var(20) = 5 || var(20) = 6
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = command = "recovery"
persistent = 0

;---------------------------------------------------------------------------
;回り込み
[State -1]
type = changestate
value = 800
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = ((!var(20) || var(20) = 1 || var(20) = 4) && command = "recovery") || (var(20) = 6 && command = "holdfwd" && command = "recovery")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time <= 2
trigger3 = StateNo = 201 && time <= 2
trigger4 = StateNo = 210 && time <= 2
trigger5 = StateNo = 211 && time <= 2
trigger6 = StateNo = 220 && time <= 2
trigger7 = StateNo = 230 && time <= 2
trigger8 = StateNo = 240 && time <= 2
trigger9 = StateNo = 241 && time <= 2
trigger10 = StateNo = 250 && time <= 2
trigger11 = StateNo = 400 && time <= 2
trigger12 = StateNo = 410 && time <= 2
trigger13 = StateNo = 420 && time <= 2
trigger14 = StateNo = 430 && time <= 2
trigger15 = StateNo = 440 && time <= 2
trigger16 = StateNo = 450 && time <= 2
trigger17 = stateno = 300 && time <= 2
trigger18 = stateno = 310 && time <= 2
trigger19 = (StateNo = [195,799]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1399]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;避け
[State -1]
type = changestate
value = 830
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(20) = 3 || var(20) = 6
triggerall = command = "recovery"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time <= 2
trigger3 = StateNo = 201 && time <= 2
trigger4 = StateNo = 210 && time <= 2
trigger5 = StateNo = 211 && time <= 2
trigger6 = StateNo = 220 && time <= 2
trigger7 = StateNo = 230 && time <= 2
trigger8 = StateNo = 240 && time <= 2
trigger9 = StateNo = 241 && time <= 2
trigger10 = StateNo = 250 && time <= 2
trigger11 = StateNo = 400 && time <= 2
trigger12 = StateNo = 410 && time <= 2
trigger13 = StateNo = 420 && time <= 2
trigger14 = StateNo = 430 && time <= 2
trigger15 = StateNo = 440 && time <= 2
trigger16 = StateNo = 450 && time <= 2
trigger17 = stateno = 300 && time <= 2
trigger18 = stateno = 310 && time <= 2
trigger19 = (StateNo = [195,799]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1399]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;パワー溜め
[State -1]
type = changestate
value = 850
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = (power < 1000 && var(20) = 3) || (power < 3000 && var(20) = 6)
triggerall = !var(15) && !var(16) && !var(14)
triggerall = (command = "chargec" && command = "chargez")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time <= 2
trigger3 = StateNo = 201 && time <= 2
trigger4 = StateNo = 210 && time <= 2
trigger5 = StateNo = 211 && time <= 2
trigger6 = StateNo = 220 && time <= 2
trigger7 = StateNo = 230 && time <= 2
trigger8 = StateNo = 240 && time <= 2
trigger9 = StateNo = 241 && time <= 2
trigger10 = StateNo = 250 && time <= 2
trigger11 = StateNo = 400 && time <= 2
trigger12 = StateNo = 410 && time <= 2
trigger13 = StateNo = 420 && time <= 2
trigger14 = StateNo = 430 && time <= 2
trigger15 = StateNo = 440 && time <= 2
trigger16 = StateNo = 450 && time <= 2
trigger17 = stateno = 300 && time <= 2
trigger18 = stateno = 310 && time <= 2

;---------------------------------------------------------------------------
;パワーMAX発動
[State -1]
type = changestate
value = 860
triggerall = !var(59)
triggerall = (var(20) = 4 && Command = "oc") || (var(20) = 6 && Command = "gc")
triggerall = Power >= 1000
triggerall = !var(15) && !var(16)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time <= 2
trigger3 = StateNo = 201 && time <= 2
trigger4 = StateNo = 210 && time <= 2
trigger5 = StateNo = 211 && time <= 2
trigger6 = StateNo = 220 && time <= 2
trigger7 = StateNo = 230 && time <= 2
trigger8 = StateNo = 240 && time <= 2
trigger9 = StateNo = 241 && time <= 2
trigger10 = StateNo = 250 && time <= 2
trigger11 = StateNo = 400 && time <= 2
trigger12 = StateNo = 410 && time <= 2
trigger13 = StateNo = 420 && time <= 2
trigger14 = StateNo = 430 && time <= 2
trigger15 = StateNo = 440 && time <= 2
trigger16 = StateNo = 450 && time <= 2
trigger17 = stateno = 300 && time <= 2
trigger18 = stateno = 310 && time <= 2

;---------------------------------------------------------------------------
;オリコン発動（地上）
[State -1]
type = changestate
value = 870
triggerall = !var(59)
triggerall = var(20) = 1 || var(20) = 6
triggerall = Power >= 3000 && Command = "oc"
triggerall = !var(15) && !var(16)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time <= 2
trigger3 = StateNo = 201 && time <= 2
trigger4 = StateNo = 210 && time <= 2
trigger5 = StateNo = 211 && time <= 2
trigger6 = StateNo = 220 && time <= 2
trigger7 = StateNo = 230 && time <= 2
trigger8 = StateNo = 240 && time <= 2
trigger9 = StateNo = 241 && time <= 2
trigger10 = StateNo = 250 && time <= 2
trigger11 = StateNo = 400 && time <= 2
trigger12 = StateNo = 410 && time <= 2
trigger13 = StateNo = 420 && time <= 2
trigger14 = StateNo = 430 && time <= 2
trigger15 = StateNo = 440 && time <= 2
trigger16 = StateNo = 450 && time <= 2
trigger17 = stateno = 300 && time <= 2
trigger18 = stateno = 310 && time <= 2

;---------------------------------------------------------------------------
;オリコン発動（空中）
[State -1]
type = changestate
value = 875
triggerall = !var(59)
triggerall = !(var(0)&2**5)
triggerall = var(20) = 1 || var(20) = 6
triggerall = Power >= 3000 && Command = "oc"
triggerall = !var(15) && !var(16)
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && time <= 2
trigger3 = StateNo = 610 && time <= 2
trigger4 = StateNo = 620 && time <= 2
trigger5 = StateNo = 630 && time <= 2
trigger6 = StateNo = 640 && time <= 2
trigger7 = StateNo = 650 && time <= 2
trigger8 = StateNo = 700 && time <= 2

;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = changestate
value = 900
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = (command = "holdfwd" || command = "holdback") && (command = "z" || command = "c")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H || var(16)

;---------------------------------------------------------------------------
;スピニングニードロップ
[State -1, Throw]
type = changestate
value = 920
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = (command = "holdfwd" || command = "holdback" || command = "holddown") && command = "z"
triggerall = statetype = A
triggerall = ctrl
triggerall = P2bodydist X = [-const(size.ground.front),7]
triggerall = P2bodydist Y = [-70,-enemynear,const(size.head.pos.y)-62]
trigger1 = p2statetype = A
trigger1 = p2movetype != H || var(16)

;---------------------------------------------------------------------------
;ジャックナイフキック
[State -1, Taunt]
type = changestate
value = 300
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown" && Command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
trigger4 = StateNo = 221 && (var(36) = 1||var(36) = 2)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンピングソバット
[State -1, Taunt]
type = changestate
value = 310
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holddown" && (Command = "holdfwd" || Command = "holdback")
triggerall = P2BodyDist X > 25
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
trigger4 = StateNo = 221 && (var(36) = 1||var(36) = 2)
ignorehitpause = 0

;---------------------------------------------------------------------------
;フライングドリル
[State -1]
type = changestate
value = 700
triggerall = !var(59)
triggerall = !(var(0)&2**5)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype = A
triggerall = Pos Y < -90
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Taunt]
type = changestate
value = 201
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 201 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger7 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Taunt]
type = changestate
value = 200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 201 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger7 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち中パンチ
[State -1, Taunt]
type = changestate
value = 211
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;遠距離立ち中パンチ
[State -1, Taunt]
type = changestate
value = 210
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Taunt]
type = changestate
value = 220
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;カウンター攻撃（パンチ）
[State -1, Taunt]
type = changestate
value = 220
triggerall = roundstate = 2
triggerall = !var(59)
triggerall = command = "x" || command = "y" || command = "z" 
trigger1 = StateNo = 830 && Time =[14,24]

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Taunt]
type = changestate
value = 230
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 201 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger7 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち中キック
[State -1, Taunt]
type = changestate
value = 241
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;カウンター攻撃（キック）
[State -1, Taunt]
type = changestate
value = 241
triggerall = roundstate = 2
triggerall = !var(59)
triggerall = command = "a" || command = "b" || command = "c"
trigger1 = StateNo = 830 && Time =[14,24]

;---------------------------------------------------------------------------
;遠距離立ち中キック
[State -1, Taunt]
type = changestate
value = 240
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Taunt]
type = changestate
value = 250
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = changestate
value = 400
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 201 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger7 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = changestate
value = 410
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = changestate
value = 420
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = changestate
value = 430
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 201 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger7 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = changestate
value = 440
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = changestate
value = 450
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1799]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1]
type = changestate
value = 600
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ中パンチ
[State -1]
type = changestate
value = 610
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = changestate
value = 620
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = changestate
value = 630
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ中キック
[State -1]
type = changestate
value = 640
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0
 
;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = changestate
value = 650
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "エレクトリッガー1"
command = ~F, D, B, F, D, B, x
time = 30

[Command]
name = "エレクトリッガー1"
command = ~F, D, B, F, D, B, ~x
time = 30

[Command]
name = "エレクトリッガー2"
command = ~F, D, B, F, D, B, y
time = 30

[Command]
name = "エレクトリッガー2"
command = ~F, D, B, F, D, B, ~y
time = 30

[Command]
name = "エレクトリッガー3"
command = ~F, D, B, F, D, B, z
time = 30

[Command]
name = "エレクトリッガー3"
command = ~F, D, B, F, D, B, ~z
time = 30

[Command]
name = "雷光拳・対空1"
command = ~D, DB, B, D, DB, a
time = 21

[Command]
name = "雷光拳・対空1"
command = ~D, DB, B, D, DB, ~a
time = 21

[Command]
name = "雷光拳・対空2"
command = ~D, DB, B, D, DB, b
time = 21

[Command]
name = "雷光拳・対空2"
command = ~D, DB, B, D, DB, ~b
time = 21

[Command]
name = "雷光拳・対空3"
command = ~D, DB, B, D, DB, c
time = 21

[Command]
name = "雷光拳・対空3"
command = ~D, DB, B, D, DB, ~c
time = 21

[Command]
name = "電影スパーク1"
command = ~D, DF, F, D, DF, a
time = 21

[Command]
name = "電影スパーク1"
command = ~D, DF, F, D, DF, ~a
time = 21

[Command]
name = "電影スパーク2"
command = ~D, DF, F, D, DF, b
time = 21

[Command]
name = "電影スパーク2"
command = ~D, DF, F, D, DF, ~b
time = 21

[Command]
name = "電影スパーク3"
command = ~D, DF, F, D, DF, c
time = 21

[Command]
name = "電影スパーク3"
command = ~D, DF, F, D, DF, ~c
time = 21

[Command]
name = "雷光拳1"
command = ~D, DF, F, D, DF, x
time = 21

[Command]
name = "雷光拳1"
command = ~D, DF, F, D, DF, ~x
time = 21

[Command]
name = "雷光拳2"
command = ~D, DF, F, D, DF, y
time = 21

[Command]
name = "雷光拳2"
command = ~D, DF, F, D, DF, ~y
time = 21

[Command]
name = "雷光拳3"
command = ~D, DF, F, D, DF, z
time = 21

[Command]
name = "雷光拳3"
command = ~D, DF, F, D, DF, ~z
time = 21

;-| 必殺技 |------------------------------------------------------
[Command]
name = "雷靭拳1"
command = ~D, DF, F, x
time = 12

[Command]
name = "雷靭拳1"
command = ~D, DF, F, ~x
time = 12

[Command]
name = "雷靭拳2"
command = ~D, DF, F, y
time = 12

[Command]
name = "雷靭拳2"
command = ~D, DF, F, ~y
time = 12

[Command]
name = "雷靭拳3"
command = ~D, DF, F, z
time = 12

[Command]
name = "雷靭拳3"
command = ~D, DF, F, ~z
time = 12

[Command]
name = "雷靭拳・対空1"
command = ~F, D, DF, x
time = 12

[Command]
name = "雷靭拳・対空1"
command = ~F, D, DF, ~x
time = 12

[Command]
name = "雷靭拳・対空2"
command = ~F, D, DF, y
time = 12

[Command]
name = "雷靭拳・対空2"
command = ~F, D, DF, ~y
time = 12

[Command]
name = "雷靭拳・対空3"
command = ~F, D, DF, z
time = 12

[Command]
name = "雷靭拳・対空3"
command = ~F, D, DF, ~z
time = 12

[Command]
name = "真空片手駒1"
command = ~F, DF, D, DB, B, a
time = 18

[Command]
name = "真空片手駒1"
command = ~F, DF, D, DB, B, ~a
time = 18

[Command]
name = "真空片手駒2"
command = ~F, DF, D, DB, B, b
time = 18

[Command]
name = "真空片手駒2"
command = ~F, DF, D, DB, B, ~b
time = 18

[Command]
name = "真空片手駒3"
command = ~F, DF, D, DB, B, c
time = 18

[Command]
name = "真空片手駒3"
command = ~F, DF, D, DB, B, ~c
time = 18

[Command]
name = "スーパー稲妻キック1"
command = ~F, D, DF, a
time = 12

[Command]
name = "スーパー稲妻キック1"
command = ~F, D, DF, ~a
time = 12

[Command]
name = "スーパー稲妻キック2"
command = ~F, D, DF, b
time = 12

[Command]
name = "スーパー稲妻キック2"
command = ~F, D, DF, ~b
time = 12

[Command]
name = "スーパー稲妻キック3"
command = ~F, D, DF, c
time = 12

[Command]
name = "スーパー稲妻キック3"
command = ~F, D, DF, ~c
time = 12

[Command]
name = "居合い蹴り1"
command = ~D, DF, F, a
time = 12

[Command]
name = "居合い蹴り1"
command = ~D, DF, F, ~a
time = 12

[Command]
name = "居合い蹴り2"
command = ~D, DF, F, b
time = 12

[Command]
name = "居合い蹴り2"
command = ~D, DF, F, ~b
time = 12

[Command]
name = "居合い蹴り3"
command = ~D, DF, F, c
time = 12

[Command]
name = "居合い蹴り3"
command = ~D, DF, F, ~c
time = 12

[Command]
name = "紅丸コレダー1"
command = ~F, DF, D, DB, B, F, x
time = 18

[Command]
name = "紅丸コレダー1"
command = ~F, DF, D, DB, B, F, ~x
time = 18

[Command]
name = "紅丸コレダー2"
command = ~F, DF, D, DB, B, F, y
time = 18

[Command]
name = "紅丸コレダー2"
command = ~F, DF, D, DB, B, F, ~y
time = 18

[Command]
name = "紅丸コレダー3"
command = ~F, DF, D, DB, B, F, z
time = 18

[Command]
name = "紅丸コレダー3"
command = ~F, DF, D, DB, B, F, ~z
time = 18

[Command]
name = "反動三段蹴り1"
command = ~$D, $U, a
time = 12

[Command]
name = "反動三段蹴り1"
command = ~$D, $U, ~a
time = 12

[Command]
name = "反動三段蹴り2"
command = ~$D, $U, b
time = 12

[Command]
name = "反動三段蹴り2"
command = ~$D, $U, ~b
time = 12

[Command]
name = "反動三段蹴り3"
command = ~$D, $U, c
time = 12

[Command]
name = "反動三段蹴り3"
command = ~$D, $U, ~c
time = 12

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "longjump"
command = D, $U
time = 10

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 10

[Command]
name = "gc"
command = y+b
time = 10

[Command]
name = "oc"
command = z+c
time = 10

[Command]
name = "強制停止"
command = a+b
time = 1

[Command]
name = "強制停止"
command = b+c
time = 1

[Command]
name = "強制停止"
command = c+a
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "chargec"
command = /c
time = 1

[Command]
name = "chargez"
command = /z
time = 1

[Command];（前ブロッキングコマンド）
name = "block"
command = F
time = 1

[Command];（下ブロッキングコマンド）
name = "block2"
command = D
time = 1

[Command];（グルーヴセレクト用）
name = "up"
command = U
time = 3

[Command];（グルーヴセレクト用）
name = "down"
command = D
time = 3

[Command]
name = "back"
command = B
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "downback"
command = DB
time = 1
;-| AI |------------------------------------------------------

[command]
name = "aix"
command = x
time = 1

[command]
name = "aiy"
command = y
time = 1

[command]
name = "aiz"
command = z
time = 1

[command]
name = "aia"
command = a
time = 1

[command]
name = "aib"
command = b
time = 1

[command]
name = "aic"
command = c
time = 1

[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1

[Command]
name = "CPU31"
command = U, D, F, U, D
time = 1

[Command]
name = "CPU32"
command = U, B, F, U, D
time = 1

[Command]
name = "CPU33"
command = U, D, D, U, D
time = 1

[Command]
name = "CPU34"
command = F, B, U, U, D
time = 1

[Command]
name = "CPU35"
command = U, F, U, B, U, D
time = 1

[Command]
name = "CPU36"
command = U, D, B, U, D
time = 1

[Command]
name = "CPU37"
command = F, F, B, U, D
time = 1

[Command]
name = "CPU38"
command = U, D, U, U, D
time = 1

[Command]
name = "CPU39"
command = F, B, B, U, D
time = 1

[Command]
name = "CPU40"
command = F, F, B, B, U, D
time = 1

[Command]
name = "CPU41"
command = U, U, F, U, D
time = 1

[Command]
name = "CPU42"
command = U, B, B, U, D
time = 1

[Command]
name = "CPU43"
command = U, B, F, F, U, D
time = 1

[Command]
name = "CPU44"
command = U, F, B, U, U, D
time = 1

[Command]
name = "CPU45"
command = U, B, F, U, U, D
time = 1

[Command]
name = "CPU46"
command = U, B, B, B, U, D
time = 1

[Command]
name = "CPU47"
command = U, D, B, F, U, D
time = 1

[Command]
name = "CPU48"
command = U, D, B, D, U, D
time = 1

[Command]
name = "CPU49"
command = U, D, F, U, U, D
time = 1

[Command]
name = "CPU50"
command = U, D, U, B, U, D
time = 1
