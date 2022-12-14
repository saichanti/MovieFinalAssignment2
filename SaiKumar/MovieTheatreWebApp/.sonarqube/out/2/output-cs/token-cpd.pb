?E
OC:\Users\Tej\Downloads\SaiKumar\TheatreMovieApi\Controllers\MoviesController.cs
	namespace 	
TheatreMovieApi
 
. 
Controllers %
{ 
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 "
)

" #
]

# $
public 

class 
MoviesController !
:" #

Controller$ .
{ 
private #
ApiApplicationDbContext '
_context( 0
;0 1
public 
MoviesController 
(  #
ApiApplicationDbContext  7#
apiApplicationDbContext8 O
)O P
{ 	
_context 
= #
apiApplicationDbContext .
;. /
} 	
[ 	
HttpGet	 
] 
public 
ActionResult 
Index 
( 
) 
{ 
var 
theatre 
= 
_context 
. 
Movies !
!! "
." #
Where# (
(( )
t) *
=>+ -
t. /
./ 0
Status0 6
!=7 9
$num: ;
); <
.< =
ToList= C
(C D
)D E
;E F
return 

Ok 
( 
JsonConvert 
. 
SerializeObject )
() *
theatre* 1
)1 2
)2 3
;3 4
} 
[ 
HttpGet 
] 	
public 
ActionResult 
Details 
( 
int 
id  "
)" #
{ 
var 
movie 
= 
_context 
. 
Movies 
!  
.  !
Find! %
(% &
id& (
)( )
;) *
return   

Ok   
(   
JsonConvert   
.   
SerializeObject   )
(  ) *
movie  * /
)  / 0
)  0 1
;  1 2
}!! 
[$$ 
HttpPost$$ 	
]$$	 

public%% 
ActionResult%% 
Create%% 
(%% 
Movie%%  
movie%%! &
)%%& '
{&& 
if'' 
('' 
movie'' 
=='' 
null'' 
)'' 
{(( 
return)) 

BadRequest)) 
()) 
))) 
;)) 
}** 
var++ 
movieId++ 
=++ 
_context++ 
.++ 
Movies++ !
!++! "
.++" #
Where++# (
(++( )
m++) *
=>+++ -
m++. /
.++/ 0
Title++0 5
==++6 8
movie++9 >
.++> ?
Title++? D
&&++E G
m++H I
.++I J
Status++J P
==++Q S
$num++T U
)++U V
.++V W
FirstOrDefault++W e
(++e f
)++f g
;++g h
if,, 
(,, 
movieId,, 
==,, 
null,, 
),, 
{-- 
_context.. 
... 
Movies.. 
!.. 
... 
Add.. 
(.. 
movie.. "
).." #
;..# $
_context// 
.// 
SaveChanges// 
(// 
)// 
;// 
return00 
Ok00 
(00 
$str00 
)00 
;00 
}22 
else33 
{44 
movieId77 
.77 
Status77 
=77 
movie77 
.77 
Status77 %
;77% &
movieId88 
.88 
	StartDate88 
=88 
movie88 !
.88! "
	StartDate88" +
;88+ ,
movieId99 
.99 
EndDate99 
=99 
movie99 
.99  
EndDate99  '
;99' (
movieId:: 
.:: 
TheaterName:: 
=:: 
movie:: !
.::! "
TheaterName::" -
;::- .
_context>> 
.>> 
Movies>> 
!>> 
.>> 
Update>> 
(>>  
movieId>>  '
)>>' (
;>>( )
_context?? 
.?? 
SaveChanges?? 
(?? 
)?? 
;?? 
return@@ 
Ok@@ 
(@@ 
$str@@ 
)@@ 
;@@ 
}BB 
}DD 
[VV 
HttpGetVV 
]VV 	
publicWW 
ActionResultWW 
ByNameWW 
(WW 
stringWW !
nameWW" &
)WW& '
{XX 
varYY 
movieYY 
=YY 
_contextYY 
.YY 
MoviesYY 
!YY  
.YY  !
WhereYY! &
(YY& '
mYY' (
=>YY) +
mYY, -
.YY- .
TitleYY. 3
==YY4 6
nameYY7 ;
&&YY< >
mYY? @
.YY@ A
StatusYYA G
!=YYG I
$numYYI J
)YYJ K
.YYK L
FirstOrDefaultYYL Z
(YYZ [
)YY[ \
;YY\ ]
ifZZ 
(ZZ 
movieZZ 
==ZZ 
nullZZ 
)ZZ 
{[[ 
return\\ 

BadRequest\\ 
(\\ 
)\\ 
;\\ 
}]] 
return^^ 

Ok^^ 
(^^ 
JsonConvert^^ 
.^^ 
SerializeObject^^ )
(^^) *
movie^^* /
)^^/ 0
)^^0 1
;^^1 2
}`` 
[dd 	
HttpPutdd	 
]dd 
publicee 
ActionResultee 
Editee 
(ee 
Movieee 
movieee $
)ee$ %
{ff 
trygg 
{hh 
ifjj 

(jj 
moviejj 
==jj 
nulljj 
)jj 
{kk 	
returnll 

BadRequestll 
(ll 
)ll 
;ll  
}mm 	
elsenn 
{oo 	
_contextqq 
.qq 
Moviesqq 
!qq 
.qq 
Updateqq #
(qq# $
movieqq$ )
)qq) *
;qq* +
_contextrr 
.rr 
SaveChangesrr  
(rr  !
)rr! "
;rr" #
returnss 
Okss 
(ss 
)ss 
;ss 
}tt 	
}uu 
catchvv 	
{ww 
returnxx 

BadRequestxx 
(xx 
)xx 
;xx 
}yy 
}zz 
[}} 

HttpDelete}} 
]}} 
public~~ 
ActionResult~~ 
Delete~~ 
(~~ 
int~~ 
id~~ !
)~~! "
{ 
var
?? 
movie
?? 
=
?? 
_context
?? 
.
?? 
Movies
?? 
!
??  
.
??  !
Find
??! %
(
??% &
id
??& (
)
??( )
;
??) *
if
?? 
(
?? 
movie
?? 
==
?? 
null
?? 
)
?? 
{
?? 
return
?? 

BadRequest
?? 
(
?? 
)
?? 
;
?? 
}
?? 
movie
?? 	
.
??	 

Status
??
 
=
?? 
$num
?? 
;
?? 
_context
?? 
.
?? 
Movies
?? 
!
?? 
.
?? 
Update
?? 
(
?? 
movie
?? !
)
??! "
;
??" #
_context
?? 
.
?? 
SaveChanges
?? 
(
?? 
)
?? 
;
?? 
return
?? 

Ok
?? 
(
?? 
)
?? 
;
?? 
}?? 
[
?? 	
HttpGet
??	 
]
?? 
public
?? 
List
?? 
<
?? 
string
?? 
>
?? 
OnlyMovieName
?? )
(
??) *
)
??* +
{
?? 	
return
?? 
_context
?? 
.
?? 
Movies
?? "
!
??" #
.
??# $
Where
??$ )
(
??) *
m
??* +
=>
??+ -
m
??- .
.
??. /
Status
??/ 5
!=
??5 7
$num
??7 8
)
??8 9
.
??9 :
Select
??: @
(
??@ A
mo
??A C
=>
??C E
mo
??E G
.
??G H
Title
??H M
)
??M N
.
??N O
ToList
??O U
(
??U V
)
??V W
!
??W X
;
??X Y
}
?? 	
}
?? 
}?? ?T
PC:\Users\Tej\Downloads\SaiKumar\TheatreMovieApi\Controllers\TheatreController.cs
	namespace 	
TheatreMovieApi
 
. 
Controllers %
{ 
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 "
)

" #
]

# $
public 

class 
TheatreController "
:# $

Controller% /
{ 
private #
ApiApplicationDbContext '
_context( 0
;0 1
public 
TheatreController  
(  !#
ApiApplicationDbContext! 8#
apiApplicationDbcontext9 P
)P Q
{ 	
_context 
= #
apiApplicationDbcontext .
;. /
} 	
private 
bool 
check 
( 
Theater "
theatre# *
)* +
{ 	
if 
( 
theatre 
== 
null 
)  
{ 
return 
false 
; 
} 
var 
	theaterId 
= 
_context $
.$ %
Theaters% -
!- .
.. /
Where/ 4
(4 5
t5 6
=>7 9
t: ;
.; <
Name< @
==A C
theatreD K
.K L
NameL P
&&Q S
tT U
.U V
StatusV \
==] _
$num` a
)a b
.b c
FirstOrDefaultc q
(q r
)r s
;s t
if 
( 
	theaterId 
!= 
null !
)! "
{ 
	theaterId 
. 
Status  
=! "
$num# $
;$ %
_context 
. 
Theaters !
!! "
." #
Update# )
() *
	theaterId* 3
)3 4
;4 5
_context 
. 
SaveChanges $
($ %
)% &
;& '
return   
true   
;   
}"" 
else## 
{$$ 
_context,, 
.,, 
Theaters,, !
!,,! "
.,," #
Update,,# )
(,,) *
theatre,,* 1
),,1 2
;,,2 3
_context-- 
.-- 
SaveChanges-- $
(--$ %
)--% &
;--& '
return.. 
true.. 
;.. 
}00 
}11 	
[22 	
HttpGet22	 
]22 
public33 
ActionResult33 
Index33 !
(33! "
)33" #
{44 	
var55 
theatre55 
=55 
_context55 "
.55" #
Theaters55# +
!55+ ,
.55, -
Where55- 2
(552 3
t553 4
=>554 6
t556 7
.557 8
Status558 >
!=55> @
$num55@ A
)55A B
.55B C
ToList55C I
(55I J
)55J K
;55K L
return66 
Ok66 
(66 
JsonConvert66 !
.66! "
SerializeObject66" 1
(661 2
theatre662 9
)669 :
)66: ;
;66; <
}77 	
[:: 	
HttpGet::	 
]:: 
public;; 
ActionResult;; 
Details;; #
(;;# $
int;;$ '
id;;( *
);;* +
{<< 	
var== 
theatre== 
=== 
_context== "
.==" #
Theaters==# +
!==+ ,
.==, -
Find==- 1
(==1 2
id==2 4
)==4 5
;==5 6
return?? 
Ok?? 
(?? 
JsonConvert?? !
.??! "
SerializeObject??" 1
(??1 2
theatre??2 9
)??9 :
)??: ;
;??; <
}@@ 	
[CC 	
HttpPostCC	 
]CC 
publicDD 
ActionResultDD 
CreateDD "
(DD" #
TheaterDD# *
theatreDD+ 2
)DD2 3
{EE 	
ifFF 
(FF 
theatreFF 
==FF 
nullFF 
)FF  
{GG 
returnHH 

BadRequestHH !
(HH! "
)HH" #
;HH# $
}II 
varJJ 
	theaterIdJJ 
=JJ 
_contextJJ $
.JJ$ %
TheatersJJ% -
!JJ- .
.JJ. /
WhereJJ/ 4
(JJ4 5
tJJ5 6
=>JJ7 9
tJJ: ;
.JJ; <
NameJJ< @
==JJA C
theatreJJD K
.JJK L
NameJJL P
&&JJQ S
tJJT U
.JJU V
StatusJJV \
==JJ\ ^
$numJJ^ _
)JJ_ `
.JJ` a
FirstOrDefaultJJa o
(JJo p
)JJp q
;JJq r
ifKK 
(KK 
	theaterIdKK 
==KK 
nullKK !
)KK! "
{LL 
_contextMM 
.MM 
TheatersMM !
!MM! "
.MM" #
AddMM# &
(MM& '
theatreMM' .
)MM. /
;MM/ 0
_contextSS 
.SS 
SaveChangesSS $
(SS$ %
)SS% &
;SS& '
returnTT 
OkTT 
(TT 
$strTT #
)TT# $
;TT$ %
}VV 
elseWW 
{XX 
	theaterId[[ 
.[[ 
Status[[  
=[[! "
theatre[[# *
.[[* +
Status[[+ 1
;[[1 2
	theaterId\\ 
.\\ 
Rate\\ 
=\\ 
theatre\\ &
.\\& '
Rate\\' +
;\\+ ,
	theaterId]] 
.]] 
City]] 
=]] 
theatre]] &
.]]& '
City]]' +
;]]+ ,
	theaterId^^ 
.^^ 
NumberOfSeat^^ &
=^^& '
theatre^^' .
.^^. /
NumberOfSeat^^/ ;
;^^; <
_context`` 
.`` 
Theaters`` !
!``! "
.``" #
Update``# )
(``) *
	theaterId``* 3
)``3 4
;``4 5
_contextaa 
.aa 
SaveChangesaa $
(aa$ %
)aa% &
;aa& '
returnbb 
Okbb 
(bb 
$strbb #
)bb# $
;bb$ %
}dd 
}ff 	
[xx 	
HttpGetxx	 
]xx 
publicyy 
ActionResultyy 
ByNameyy "
(yy" #
stringyy# )
nameyy* .
)yy. /
{zz 	
var{{ 
theater{{ 
={{ 
_context{{  
.{{  !
Theaters{{! )
!{{) *
.{{* +
Where{{+ 0
({{0 1
t{{1 2
=>{{2 4
t{{4 5
.{{5 6
Name{{6 :
=={{: <
name{{< @
){{@ A
.{{A B
FirstOrDefault{{B P
({{P Q
){{Q R
;{{R S
if|| 
(|| 
theater|| 
==|| 
null|| 
)||  
{}} 
return~~ 

BadRequest~~ !
(~~! "
)~~" #
;~~# $
} 
return
?? 
Ok
?? 
(
?? 
JsonConvert
?? !
.
??! "
SerializeObject
??" 1
(
??1 2
theater
??2 9
)
??9 :
)
??: ;
;
??; <
}
?? 	
[
?? 	
HttpPut
??	 
]
?? 
public
?? 
ActionResult
?? 
Edit
??  
(
??  !
Theater
??! (
theater
??) 0
)
??0 1
{
?? 	
try
?? 
{
?? 
if
?? 
(
?? 
theater
?? 
==
?? 
null
?? #
)
??# $
{
?? 
return
?? 

BadRequest
?? %
(
??% &
)
??& '
;
??' (
}
?? 
else
?? 
{
?? 
_context
?? 
.
?? 
Update
?? #
(
??# $
theater
??$ +
)
??+ ,
;
??, -
_context
?? 
.
?? 
SaveChanges
?? (
(
??( )
)
??) *
;
??* +
return
?? 
Ok
?? 
(
?? 
)
?? 
;
??  
}
?? 
}
?? 
catch
?? 
{
?? 
return
?? 

BadRequest
?? !
(
??! "
)
??" #
;
??# $
}
?? 
}
?? 	
[
?? 	

HttpDelete
??	 
]
?? 
public
?? 
ActionResult
?? 
Delete
?? "
(
??" #
int
??# &
id
??' )
)
??) *
{
?? 	
var
?? 
theater
?? 
=
?? 
_context
?? "
.
??" #
Theaters
??# +
!
??+ ,
.
??, -
Find
??- 1
(
??1 2
id
??2 4
)
??4 5
;
??5 6
if
?? 
(
?? 
theater
?? 
==
?? 
null
?? 
)
?? 
{
?? 
return
?? 

BadRequest
?? !
(
??! "
)
??" #
;
??# $
}
?? 
theater
?? 
.
?? 
Status
?? 
=
?? 
$num
?? 
;
?? 
_context
?? 
.
?? 
Theaters
?? 
.
?? 
Update
?? $
(
??$ %
theater
??% ,
)
??, -
;
??- .
_context
?? 
.
?? 
SaveChanges
??  
(
??  !
)
??! "
;
??" #
return
?? 
Ok
?? 
(
?? 
)
?? 
;
?? 
}
?? 	
[
?? 	
HttpGet
??	 
]
?? 
public
?? 
List
?? 
<
?? 
string
?? 
>
?? 
OnlyTheatreName
?? +
(
??+ ,
)
??, -
{
?? 	
var
?? 
list
?? 
=
?? 
_context
?? 
.
??  
Theaters
??  (
!
??( )
.
??) *
Where
??* /
(
??/ 0
th
??0 2
=>
??3 5
th
??6 8
.
??8 9
Status
??9 ?
!=
??@ B
$num
??C D
)
??D E
.
??E F
Select
??F L
(
??L M
t
??M N
=>
??O Q
t
??R S
.
??S T
Name
??T X
)
??X Y
.
??Y Z
ToList
??Z `
(
??` a
)
??a b
;
??b c
return
?? 
list
?? 
;
?? 
}
?? 	
}
?? 
}?? ?+
OC:\Users\Tej\Downloads\SaiKumar\TheatreMovieApi\Controllers\TicketController.cs
	namespace 	
TheatreMovieApi
 
. 
Controllers %
{ 
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 "
)

" #
]

# $
public 

class 
TicketController !
:" #

Controller$ .
{ 
private #
ApiApplicationDbContext '
_context( 0
;0 1
public 
TicketController 
(  #
ApiApplicationDbContext  7#
apiApplicationDbContext8 O
)O P
{ 	
_context 
= #
apiApplicationDbContext .
;. /
} 	
[ 	
HttpGet	 
] 
public 
ActionResult 
Index !
(! "
string" (
email) .
). /
{ 	
var 
ticket 
= 
_context !
.! "
Tickets" )
!) *
.* +
Where+ 0
(0 1
t1 2
=>3 5
t6 7
.7 8
Status8 >
!=? A
$numB C
&&C E
tF G
.G H
WhoAddedH P
==P R
emailR W
)W X
.X Y
ToListY _
(_ `
)` a
;a b
return 
Ok 
( 
JsonConvert !
.! "
SerializeObject" 1
(1 2
ticket2 8
)8 9
)9 :
;: ;
} 	
[ 	
HttpGet	 
] 
public 
ActionResult 
Details #
(# $
int$ '
id( *
)* +
{ 	
return   
View   
(   
)   
;   
}!! 	
[$$ 	
HttpPost$$	 
]$$ 
public%% 
ActionResult%% 
Create%% "
(%%" #
Ticket%%# )
ticket%%* 0
)%%0 1
{&& 	
if'' 
('' 
ticket'' 
=='' 
null'' 
)'' 
{(( 
return)) 

BadRequest)) !
())! "
)))" #
;))# $
}** 
var++ 
tkt++ 
=++ 
_context++ 
.++ 
Tickets++ &
!++& '
.++' (
Where++( -
(++- .
t++. /
=>++0 2
t++3 4
.++4 5
Title++5 :
==++; =
ticket++> D
.++D E
Title++E J
&&++K M
t++N O
.++O P
Status++P V
==++W Y
$num++Z [
)++[ \
.++\ ]
FirstOrDefault++] k
(++k l
)++l m
;++m n
if,, 
(,, 
tkt,, 
==,, 
null,, 
),, 
{-- 
_context.. 
... 
Tickets..  
!..  !
...! "
Add.." %
(..% &
ticket..& ,
).., -
;..- .
_context// 
.// 
SaveChanges// $
(//$ %
)//% &
;//& '
return00 
Ok00 
(00 
$str00 #
)00# $
;00$ %
}22 
else33 
{44 
tkt77 
.77 
Status77 
=77 
ticket77 #
.77# $
Status77$ *
;77* +
tkt88 
.88 
TheatreName88 
=88  !
ticket88" (
.88( )
TheatreName88) 4
;884 5
tkt99 
.99 
WhoAdded99 
=99 
ticket99 %
.99% &
WhoAdded99& .
;99. /
tkt:: 
.:: 
NoOfSeat:: 
=:: 
ticket:: %
.::% &
NoOfSeat::& .
;::. /
_context<< 
.<< 
Tickets<<  
!<<  !
.<<! "
Update<<" (
(<<( )
tkt<<) ,
)<<, -
;<<- .
_context== 
.== 
SaveChanges== $
(==$ %
)==% &
;==& '
return>> 
Ok>> 
(>> 
$str>> #
)>># $
;>>$ %
}@@ 
}AA 	
[FF 

HttpDeleteFF 
]FF 
publicGG 
ActionResultGG 
DeleteGG  &
(GG& '
intGG' *
idGG+ -
)GG- .
{HH 
varII 
movieII 
=II 
_contextII $
.II$ %
TicketsII% ,
!II, -
.II- .
FindII. 2
(II2 3
idII3 5
)II5 6
;II6 7
ifJJ 
(JJ 
movieJJ 
==JJ 
nullJJ !
)JJ! "
{KK 
returnLL 

BadRequestLL %
(LL% &
)LL& '
;LL' (
}MM 
movieNN 
.NN 
StatusNN 
=NN 
$numNN  
;NN  !
_contextPP 
.PP 
TicketsPP  
!PP  !
.PP! "
UpdatePP" (
(PP( )
moviePP) .
)PP. /
;PP/ 0
_contextQQ 
.QQ 
SaveChangesQQ $
(QQ$ %
)QQ% &
;QQ& '
returnRR 
OkRR 
(RR 
)RR 
;RR 
}SS 
}VV 
}XX ?
:C:\Users\Tej\Downloads\SaiKumar\TheatreMovieApi\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var 
connectionString 
= 
builder 
. 
Configuration ,
., -
GetConnectionString- @
(@ A
$strA T
)T U
;U V
builder		 
.		 
Services		 
.		 
AddDbContext		 
<		 #
ApiApplicationDbContext		 5
>		5 6
(		6 7
option		7 =
=>		> @
option		A G
.		G H
UseSqlServer		H T
(		T U
connectionString		U e
)		e f
)		f g
;		g h
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. 
AddCors 
( 
option 
=>  "
option# )
.) *
	AddPolicy* 3
(3 4
$str4 D
,D E
builderF M
=>N P
builderQ X
.X Y
WithOriginsY d
(d e
$stre }
)} ~
.~ 
AllowAnyHeader	 ?
(
? ?
)
? ?
.
? ?
AllowAnyMethod
? ?
(
? ?
)
? ?
)
? ?
)
? ?
;
? ?
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
} 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
UseCors 
( 
$str 
) 
; 
app!! 
.!! 
MapControllers!! 
(!! 
)!! 
;!! 
app## 
.## 
Run## 
(## 
)## 	
;##	 
