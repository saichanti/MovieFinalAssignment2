�A
RC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\ApiDataServices\MovieApiData.cs
	namespace 	
MovieTheatreWebApp
 
. 
ApiDataServices ,
{ 
public 

class 
MovieApiData 
{		 
readonly

 
Uri

 
baseAddress

  
;

  !
readonly 

HttpClient 

httpClient &
;& '
private 
readonly 
IMapper  
_mapper! (
;( )
public 
MovieApiData 
( 
IMapper #
mapper$ *
)* +
{ 	
this 
. 
baseAddress 
= 
new "
Uri# &
(& '
$str' @
)@ A
;A B
this 
. 

httpClient 
= 
new !

HttpClient" ,
(, -
)- .
;. /
_mapper 
= 
mapper 
; 
} 	
public 
List 
< 
Movie 
> 
	GetMovies $
($ %
)% &
{ 	
HttpResponseMessage 
Response  (
=) *

httpClient+ 5
.5 6
GetAsync6 >
(> ?
baseAddress? J
+K L
$strM [
)[ \
.\ ]
Result] c
;c d
if 
( 
Response 
. 
IsSuccessStatusCode ,
), -
{ 
string 
data 
= 
Response &
.& '
Content' .
.. /
ReadAsStringAsync/ @
(@ A
)A B
.B C
ResultC I
;I J
var 
list 
= 
JsonConvert &
.& '
DeserializeObject' 8
<8 9
List9 =
<= >
MovieApiModel> K
>K L
>L M
(M N
dataN R
)R S
;S T
var 
movie 
= 
_mapper #
.# $
Map$ '
<' (
List( ,
<, -
Movie- 2
>2 3
>3 4
(4 5
list5 9
)9 :
;: ;
return 
movie 
; 
} 
return 
new 
List 
< 
Movie !
>! "
(" #
)# $
;$ %
}"" 	
public%% 
bool%% 
AddMovie%% 
(%% 
Movie%% "
movie%%# (
)%%( )
{&& 	
var'' 
movieApiModel'' 
='' 
_mapper''  '
.''' (
Map''( +
<''+ ,
MovieApiModel'', 9
>''9 :
('': ;
movie''; @
)''@ A
;''A B
var)) 
data)) 
=)) 
JsonConvert)) "
.))" #
SerializeObject))# 2
())2 3
movieApiModel))3 @
)))@ A
;))A B
var** 
contentData** 
=** 
new** !
StringContent**" /
(**/ 0
data**0 4
,**4 5
System**6 <
.**< =
Text**= A
.**A B
Encoding**B J
.**J K
UTF8**K O
,**O P
$str**Q c
)**c d
;**d e
HttpResponseMessage++ 
response++  (
=++) *

httpClient+++ 5
.++5 6
	PostAsync++6 ?
(++? @
baseAddress++@ K
+++L M
$str++N ]
,++] ^
contentData++_ j
)++j k
.++k l
Result++l r
;++r s
if,, 
(,, 
response,, 
.,, 
IsSuccessStatusCode,, ,
),,, -
{-- 
return.. 
true.. 
;.. 
}// 
else00 
{11 
return22 
false22 
;22 
}33 
}44 	
public55 
bool55 
Update55 
(55 
Movie55  
movie55! &
)55& '
{66 	
var77 
movieApi77 
=77 
_mapper77 "
.77" #
Map77# &
<77& '
MovieApiModel77' 4
>774 5
(775 6
movie776 ;
)77; <
;77< =
string88 

stringData88 
=88 
JsonConvert88  +
.88+ ,
SerializeObject88, ;
(88; <
movieApi88< D
)88D E
;88E F
var99 
contentData99 
=99 
new99 !
StringContent99" /
(99/ 0

stringData990 :
,99: ;
System99< B
.99B C
Text99C G
.99G H
Encoding99H P
.99P Q
UTF899Q U
,99U V
$str99W i
)99i j
;99j k
HttpResponseMessage:: 
response::  (
=::) *

httpClient::+ 5
.::5 6
PutAsync::6 >
(::> ?
baseAddress::? J
+::K L
$str::M Z
,::Z [
contentData::\ g
)::g h
.::h i
Result::i o
;::o p
if;; 
(;; 
response;; 
.;; 
IsSuccessStatusCode;; ,
);;, -
{<< 
return== 
true== 
;== 
}>> 
else?? 
{@@ 
returnAA 
falseAA 
;AA 
}BB 
}CC 	
publicDD 
MovieDD 
FindByIdDD 
(DD 
intDD !
idDD" $
)DD$ %
{EE 	
HttpResponseMessageFF 
responseFF  (
=FF) *

httpClientFF+ 5
.FF5 6
GetAsyncFF6 >
(FF> ?
baseAddressFF? J
+FFK L
$strFFM a
+FFb c
idFFd f
)FFf g
.FFg h
ResultFFh n
;FFn o
stringGG 

stringDataGG 
=GG 
responseGG  (
.GG( )
ContentGG) 0
.GG0 1
ReadAsStringAsyncGG1 B
(GGB C
)GGC D
.GGD E
ResultGGE K
;GGK L
MovieApiModelHH 
dataHH 
=HH  
JsonConvertHH! ,
.HH, -
DeserializeObjectHH- >
<HH> ?
MovieApiModelHH? L
>HHL M
(HHM N

stringDataHHN X
)HHX Y
!HHY Z
;HHZ [
varII 
movieII 
=II 
_mapperII 
.II  
MapII  #
<II# $
MovieII$ )
>II) *
(II* +
dataII+ /
)II/ 0
;II0 1
returnJJ 
(JJ 
movieJJ 
)JJ 
;JJ 
}KK 	
publicLL 
ListLL 
<LL 
stringLL 
>LL 
OnlyNameLL $
(LL$ %
)LL% &
{MM 	
HttpResponseMessageNN 
ResponseNN  (
=NN) *

httpClientNN+ 5
.NN5 6
GetAsyncNN6 >
(NN> ?
baseAddressNN? J
+NNK L
$strNNM c
)NNc d
.NNd e
ResultNNe k
;NNk l
ifOO 
(OO 
ResponseOO 
.OO 
IsSuccessStatusCodeOO ,
)OO, -
{PP 
stringQQ 
dataQQ 
=QQ 
ResponseQQ &
.QQ& '
ContentQQ' .
.QQ. /
ReadAsStringAsyncQQ/ @
(QQ@ A
)QQA B
.QQB C
ResultQQC I
;QQI J
varRR 
listRR 
=RR 
JsonConvertRR &
.RR& '
DeserializeObjectRR' 8
<RR8 9
ListRR9 =
<RR= >
stringRR> D
>RRD E
>RRE F
(RRF G
dataRRG K
)RRK L
;RRL M
returnTT 
listTT 
;TT 
}VV 
returnXX 
newXX 
ListXX 
<XX 
stringXX "
>XX" #
(XX# $
)XX$ %
;XX% &
}ZZ 	
}[[ 
}\\ �A
TC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\ApiDataServices\TheatreApiData.cs
	namespace 	
MovieTheatreWebApp
 
. 
ApiDataServices ,
{ 
public 

class 
TheatreApiData 
{		 
readonly

 
Uri

 
baseAddress

  
;

  !
readonly 

HttpClient 

httpClient &
;& '
private 
readonly 
IMapper  
_mapper! (
;( )
public 
TheatreApiData 
( 
IMapper %
mapper& ,
), -
{ 	
this 
. 
baseAddress 
= 
new "
Uri# &
(& '
$str' @
)@ A
;A B
this 
. 

httpClient 
= 
new !

HttpClient" ,
(, -
)- .
;. /
_mapper 
= 
mapper 
; 
} 	
public 
List 
< 
Theatre 
> 

GetTheatre '
(' (
)( )
{ 	
HttpResponseMessage 
Response  (
=) *

httpClient+ 5
.5 6
GetAsync6 >
(> ?
baseAddress? J
+K L
$strM \
)\ ]
.] ^
Result^ d
;d e
if 
( 
Response 
. 
IsSuccessStatusCode ,
), -
{ 
string 
data 
= 
Response &
.& '
Content' .
.. /
ReadAsStringAsync/ @
(@ A
)A B
.B C
ResultC I
;I J
var 
list 
= 
JsonConvert &
.& '
DeserializeObject' 8
<8 9
List9 =
<= >
TheatreApiModel> M
>M N
>N O
(O P
dataP T
)T U
;U V
var 
airlines 
= 
_mapper &
.& '
Map' *
<* +
List+ /
</ 0
Theatre0 7
>7 8
>8 9
(9 :
list: >
)> ?
;? @
return 
airlines 
;  
} 
return 
new 
List 
< 
Theatre #
># $
($ %
)% &
;& '
}"" 	
public%% 
bool%% 

AddTheatre%% 
(%% 
Theatre%% &
theatre%%' .
)%%. /
{&& 	
var'' 
TheatreApiModel'' 
=''  !
_mapper''" )
.'') *
Map''* -
<''- .
TheatreApiModel''. =
>''= >
(''> ?
theatre''? F
)''F G
;''G H
var)) 
data)) 
=)) 
JsonConvert)) "
.))" #
SerializeObject))# 2
())2 3
TheatreApiModel))3 B
)))B C
;))C D
var** 
contentData** 
=** 
new** !
StringContent**" /
(**/ 0
data**0 4
,**4 5
System**6 <
.**< =
Text**= A
.**A B
Encoding**B J
.**J K
UTF8**K O
,**O P
$str**Q c
)**c d
;**d e
HttpResponseMessage++ 
response++  (
=++) *

httpClient+++ 5
.++5 6
	PostAsync++6 ?
(++? @
baseAddress++@ K
+++L M
$str++N ^
,++^ _
contentData++` k
)++k l
.++l m
Result++m s
;++s t
if,, 
(,, 
response,, 
.,, 
IsSuccessStatusCode,, ,
),,, -
{-- 
return.. 
true.. 
;.. 
}// 
else00 
{11 
return22 
false22 
;22 
}33 
}44 	
public55 
bool55 
Update55 
(55 
Theatre55 "
theatre55# *
)55* +
{66 	
var77 

theatreApi77 
=77 
_mapper77 $
.77$ %
Map77% (
<77( )
TheatreApiModel77) 8
>778 9
(779 :
theatre77: A
)77A B
;77B C
string88 

stringData88 
=88 
JsonConvert88  +
.88+ ,
SerializeObject88, ;
(88; <

theatreApi88< F
)88F G
;88G H
var99 
contentData99 
=99 
new99 !
StringContent99" /
(99/ 0

stringData990 :
,99: ;
System99< B
.99B C
Text99C G
.99G H
Encoding99H P
.99P Q
UTF899Q U
,99U V
$str99W i
)99i j
;99j k
HttpResponseMessage:: 
response::  (
=::) *

httpClient::+ 5
.::5 6
PutAsync::6 >
(::> ?
baseAddress::? J
+::K L
$str::M [
,::[ \
contentData::] h
)::h i
.::i j
Result::j p
;::p q
if;; 
(;; 
response;; 
.;; 
IsSuccessStatusCode;; ,
);;, -
{<< 
return== 
true== 
;== 
}>> 
else?? 
{@@ 
returnAA 
falseAA 
;AA 
}BB 
}CC 	
publicDD 
ListDD 
<DD 
stringDD 
>DD 
TheatreNamesDD (
(DD( )
)DD) *
{EE 	
HttpResponseMessageGG 
ResponseGG  (
=GG) *

httpClientGG+ 5
.GG5 6
GetAsyncGG6 >
(GG> ?
baseAddressGG? J
+GGK L
$strGGM f
)GGf g
.GGg h
ResultGGh n
;GGn o
ifHH 
(HH 
ResponseHH 
.HH 
IsSuccessStatusCodeHH ,
)HH, -
{II 
stringJJ 
dataJJ 
=JJ 
ResponseJJ &
.JJ& '
ContentJJ' .
.JJ. /
ReadAsStringAsyncJJ/ @
(JJ@ A
)JJA B
.JJB C
ResultJJC I
;JJI J
varKK 
listKK 
=KK 
JsonConvertKK &
.KK& '
DeserializeObjectKK' 8
<KK8 9
ListKK9 =
<KK= >
stringKK> D
>KKD E
>KKE F
(KKF G
dataKKG K
)KKK L
;KKL M
returnMM 
listMM 
;MM 
}OO 
returnQQ 
newQQ 
ListQQ 
<QQ 
stringQQ "
>QQ" #
(QQ# $
)QQ$ %
;QQ% &
}SS 	
publicUU 
TheatreUU 
FindByIdUU 
(UU  
intUU  #
?UU# $
idUU% '
)UU' (
{VV 	
HttpResponseMessageWW 
responseWW  (
=WW) *

httpClientWW+ 5
.WW5 6
GetAsyncWW6 >
(WW> ?
baseAddressWW? J
+WWK L
$strWWM b
+WWc d
idWWe g
)WWg h
.WWh i
ResultWWi o
;WWo p
stringXX 

stringDataXX 
=XX 
responseXX  (
.XX( )
ContentXX) 0
.XX0 1
ReadAsStringAsyncXX1 B
(XXB C
)XXC D
.XXD E
ResultXXE K
;XXK L
TheatreApiModelYY 
dataYY  
=YY! "
JsonConvertYY# .
.YY. /
DeserializeObjectYY/ @
<YY@ A
TheatreApiModelYYA P
>YYP Q
(YYQ R

stringDataYYR \
)YY\ ]
!YY] ^
;YY^ _
varZZ 
theatreZZ 
=ZZ 
_mapperZZ !
.ZZ! "
MapZZ" %
<ZZ% &
TheatreZZ& -
>ZZ- .
(ZZ. /
dataZZ/ 3
)ZZ3 4
;ZZ4 5
return[[ 
theatre[[ 
;[[ 
}\\ 	
}]] 
}^^ �!
SC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\ApiDataServices\TicketApiData.cs
	namespace 	
MovieTheatreWebApp
 
. 
ApiDataServices ,
{ 
public 

class 
TicketApiData 
{		 
readonly

 
Uri

 
baseAddress

  
;

  !
readonly 

HttpClient 

httpClient &
;& '
private 
readonly 
IMapper  
_mapper! (
;( )
public 
TicketApiData 
( 
IMapper $
mapper% +
)+ ,
{ 	
this 
. 
baseAddress 
= 
new "
Uri# &
(& '
$str' @
)@ A
;A B
this 
. 

httpClient 
= 
new !

HttpClient" ,
(, -
)- .
;. /
_mapper 
= 
mapper 
; 
} 	
public 
List 
< 
Ticket 
> 
	GetTicket %
(% &
string& ,
email- 2
)2 3
{ 	
HttpResponseMessage 
Response  (
=) *

httpClient+ 5
.5 6
GetAsync6 >
(> ?
baseAddress? J
+K L
$strM b
+b c
emailc h
)h i
.i j
Resultj p
;p q
if 
( 
Response 
. 
IsSuccessStatusCode ,
), -
{ 
string 
data 
= 
Response &
.& '
Content' .
.. /
ReadAsStringAsync/ @
(@ A
)A B
.B C
ResultC I
;I J
var 
list 
= 
JsonConvert &
.& '
DeserializeObject' 8
<8 9
List9 =
<= >
TicketApiModel> L
>L M
>M N
(N O
dataO S
)S T
;T U
var 
tkts 
= 
_mapper "
." #
Map# &
<& '
List' +
<+ ,
Ticket, 2
>2 3
>3 4
(4 5
list5 9
)9 :
;: ;
return 
tkts 
; 
} 
return 
new 
List 
< 
Ticket "
>" #
(# $
)$ %
;% &
}"" 	
public%% 
bool%% 
	AddTicket%% 
(%% 
Ticket%% $
ticket%%% +
)%%+ ,
{&& 	
var'' 
ticketApiModel'' 
=''  
_mapper''! (
.''( )
Map'') ,
<'', -
TicketApiModel''- ;
>''; <
(''< =
ticket''= C
)''C D
;''D E
var)) 
data)) 
=)) 
JsonConvert)) "
.))" #
SerializeObject))# 2
())2 3
ticketApiModel))3 A
)))A B
;))B C
var** 
contentData** 
=** 
new** !
StringContent**" /
(**/ 0
data**0 4
,**4 5
System**6 <
.**< =
Text**= A
.**A B
Encoding**B J
.**J K
UTF8**K O
,**O P
$str**Q c
)**c d
;**d e
HttpResponseMessage++ 
response++  (
=++) *

httpClient+++ 5
.++5 6
	PostAsync++6 ?
(++? @
baseAddress++@ K
+++L M
$str++N ]
,++] ^
contentData++_ j
)++j k
.++k l
Result++l r
;++r s
if,, 
(,, 
response,, 
.,, 
IsSuccessStatusCode,, ,
),,, -
{-- 
return.. 
true.. 
;.. 
}// 
else00 
{11 
return22 
false22 
;22 
}33 
}44 	
}66 
}77 �	
LC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\ApiModel\MovieApiModel.cs
	namespace 	
MovieTheatreWebApp
 
. 
ApiModel %
{ 
public 

class 
MovieApiModel 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
? 
Title 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 
TheaterName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
DateTime		 
	StartDate		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
DateTime

 
EndDate

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
int 
Status 
{ 
get 
;  
set! $
;$ %
}& '
} 
} �	
NC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\ApiModel\TheatreApiModel.cs
	namespace 	
MovieTheatreWebApp
 
. 
ApiModel %
{ 
public 

class 
TheatreApiModel  
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public

 
string

 
?

 
Name

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
? 
City 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
NumberOfSeat 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Rate 
{ 
get 
; 
set "
;" #
}$ %
public 
int 
Status 
{ 
get 
;  
set! $
;$ %
}& '
} 
} �	
MC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\ApiModel\TicketApiModel.cs
	namespace 	
MovieTheatreWebApp
 
. 
ApiModel %
{ 
public 

class 
TicketApiModel 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
? 
Title 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 
TheatreName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
int		 
NoOfSeat		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
string

 
?

 
WhoAdded

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
int 
Status 
{ 
get 
;  
set! $
;$ %
}& '
} 
} �
fC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\AccessDenied.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
public 

class 
AccessDeniedModel "
:# $
	PageModel% .
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} �
fC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\ConfirmEmail.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
public 

class 
ConfirmEmailModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ConfirmEmailModel  
(  !
UserManager! ,
<, -
IdentityUser- 9
>9 :
userManager; F
)F G
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   
async   
Task   
<   
IActionResult   '
>  ' (

OnGetAsync  ) 3
(  3 4
string  4 :
userId  ; A
,  A B
string  C I
code  J N
)  N O
{!! 	
if"" 
("" 
userId"" 
=="" 
null"" 
||"" !
code""" &
==""' )
null""* .
)"". /
{## 
return$$ 
RedirectToPage$$ %
($$% &
$str$$& .
)$$. /
;$$/ 0
}%% 
var'' 
user'' 
='' 
await'' 
_userManager'' )
.'') *
FindByIdAsync''* 7
(''7 8
userId''8 >
)''> ?
;''? @
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
$"**  "
$str**" ?
{**? @
userId**@ F
}**F G
$str**G I
"**I J
)**J K
;**K L
}++ 
code-- 
=-- 
Encoding-- 
.-- 
UTF8--  
.--  !
	GetString--! *
(--* +
WebEncoders--+ 6
.--6 7
Base64UrlDecode--7 F
(--F G
code--G K
)--K L
)--L M
;--M N
var.. 
result.. 
=.. 
await.. 
_userManager.. +
...+ ,
ConfirmEmailAsync.., =
(..= >
user..> B
,..B C
code..D H
)..H I
;..I J
StatusMessage// 
=// 
result// "
.//" #
	Succeeded//# ,
?//- .
$str/// U
://V W
$str//X v
;//v w
return00 
Page00 
(00 
)00 
;00 
}11 	
}22 
}33 �#
lC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\ConfirmEmailChange.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
public 

class #
ConfirmEmailChangeModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public #
ConfirmEmailChangeModel &
(& '
UserManager' 2
<2 3
IdentityUser3 ?
>? @
userManagerA L
,L M
SignInManagerN [
<[ \
IdentityUser\ h
>h i
signInManagerj w
)w x
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (

OnGetAsync"") 3
(""3 4
string""4 :
userId""; A
,""A B
string""C I
email""J O
,""O P
string""Q W
code""X \
)""\ ]
{## 	
if$$ 
($$ 
userId$$ 
==$$ 
null$$ 
||$$ !
email$$" '
==$$( *
null$$+ /
||$$0 2
code$$3 7
==$$8 :
null$$; ?
)$$? @
{%% 
return&& 
RedirectToPage&& %
(&&% &
$str&&& .
)&&. /
;&&/ 0
}'' 
var)) 
user)) 
=)) 
await)) 
_userManager)) )
.))) *
FindByIdAsync))* 7
())7 8
userId))8 >
)))> ?
;))? @
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
$",,  "
$str,," ?
{,,? @
userId,,@ F
},,F G
$str,,G I
",,I J
),,J K
;,,K L
}-- 
code// 
=// 
Encoding// 
.// 
UTF8//  
.//  !
	GetString//! *
(//* +
WebEncoders//+ 6
.//6 7
Base64UrlDecode//7 F
(//F G
code//G K
)//K L
)//L M
;//M N
var00 
result00 
=00 
await00 
_userManager00 +
.00+ ,
ChangeEmailAsync00, <
(00< =
user00= A
,00A B
email00C H
,00H I
code00J N
)00N O
;00O P
if11 
(11 
!11 
result11 
.11 
	Succeeded11 !
)11! "
{22 
StatusMessage33 
=33 
$str33  7
;337 8
return44 
Page44 
(44 
)44 
;44 
}55 
var99 
setUserNameResult99 !
=99" #
await99$ )
_userManager99* 6
.996 7
SetUserNameAsync997 G
(99G H
user99H L
,99L M
email99N S
)99S T
;99T U
if:: 
(:: 
!:: 
setUserNameResult:: "
.::" #
	Succeeded::# ,
)::, -
{;; 
StatusMessage<< 
=<< 
$str<<  ;
;<<; <
return== 
Page== 
(== 
)== 
;== 
}>> 
await@@ 
_signInManager@@  
.@@  !
RefreshSignInAsync@@! 3
(@@3 4
user@@4 8
)@@8 9
;@@9 :
StatusMessageAA 
=AA 
$strAA I
;AAI J
returnBB 
PageBB 
(BB 
)BB 
;BB 
}CC 	
}DD 
}EE Ō
gC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\ExternalLogin.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
[ 
AllowAnonymous 
] 
public 

class 
ExternalLoginModel #
:$ %
	PageModel& /
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 

IUserStore #
<# $
IdentityUser$ 0
>0 1

_userStore2 <
;< =
private 
readonly 
IUserEmailStore (
<( )
IdentityUser) 5
>5 6
_emailStore7 B
;B C
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
private 
readonly 
ILogger  
<  !
ExternalLoginModel! 3
>3 4
_logger5 <
;< =
public!! 
ExternalLoginModel!! !
(!!! "
SignInManager"" 
<"" 
IdentityUser"" &
>""& '
signInManager""( 5
,""5 6
UserManager## 
<## 
IdentityUser## $
>##$ %
userManager##& 1
,##1 2

IUserStore$$ 
<$$ 
IdentityUser$$ #
>$$# $
	userStore$$% .
,$$. /
ILogger%% 
<%% 
ExternalLoginModel%% &
>%%& '
logger%%( .
,%%. /
IEmailSender&& 
emailSender&& $
)&&$ %
{'' 	
_signInManager(( 
=(( 
signInManager(( *
;((* +
_userManager)) 
=)) 
userManager)) &
;))& '

_userStore** 
=** 
	userStore** "
;**" #
_emailStore++ 
=++ 
GetEmailStore++ '
(++' (
)++( )
;++) *
_logger,, 
=,, 
logger,, 
;,, 
_emailSender-- 
=-- 
emailSender-- &
;--& '
}.. 	
[44 	
BindProperty44	 
]44 
public55 

InputModel55 
Input55 
{55  !
get55" %
;55% &
set55' *
;55* +
}55, -
public;; 
string;; 
ProviderDisplayName;; )
{;;* +
get;;, /
;;;/ 0
set;;1 4
;;;4 5
};;6 7
publicAA 
stringAA 
	ReturnUrlAA 
{AA  !
getAA" %
;AA% &
setAA' *
;AA* +
}AA, -
[GG 	
TempDataGG	 
]GG 
publicHH 
stringHH 
ErrorMessageHH "
{HH# $
getHH% (
;HH( )
setHH* -
;HH- .
}HH/ 0
publicNN 
classNN 

InputModelNN 
{OO 	
[TT 
RequiredTT 
]TT 
[UU 
EmailAddressUU 
]UU 
publicVV 
stringVV 
EmailVV 
{VV  !
getVV" %
;VV% &
setVV' *
;VV* +
}VV, -
}WW 	
publicYY 
IActionResultYY 
OnGetYY "
(YY" #
)YY# $
=>YY% '
RedirectToPageYY( 6
(YY6 7
$strYY7 @
)YY@ A
;YYA B
public[[ 
IActionResult[[ 
OnPost[[ #
([[# $
string[[$ *
provider[[+ 3
,[[3 4
string[[5 ;
	returnUrl[[< E
=[[F G
null[[H L
)[[L M
{\\ 	
var^^ 
redirectUrl^^ 
=^^ 
Url^^ !
.^^! "
Page^^" &
(^^& '
$str^^' 8
,^^8 9
pageHandler^^: E
:^^E F
$str^^G Q
,^^Q R
values^^S Y
:^^Y Z
new^^[ ^
{^^_ `
	returnUrl^^a j
}^^k l
)^^l m
;^^m n
var__ 

properties__ 
=__ 
_signInManager__ +
.__+ ,5
)ConfigureExternalAuthenticationProperties__, U
(__U V
provider__V ^
,__^ _
redirectUrl__` k
)__k l
;__l m
return`` 
new`` 
ChallengeResult`` &
(``& '
provider``' /
,``/ 0

properties``1 ;
)``; <
;``< =
}aa 	
publiccc 
asynccc 
Taskcc 
<cc 
IActionResultcc '
>cc' (
OnGetCallbackAsynccc) ;
(cc; <
stringcc< B
	returnUrlccC L
=ccM N
nullccO S
,ccS T
stringccU [
remoteErrorcc\ g
=cch i
nullccj n
)ccn o
{dd 	
	returnUrlee 
=ee 
	returnUrlee !
??ee" $
Urlee% (
.ee( )
Contentee) 0
(ee0 1
$stree1 5
)ee5 6
;ee6 7
ifff 
(ff 
remoteErrorff 
!=ff 
nullff #
)ff# $
{gg 
ErrorMessagehh 
=hh 
$"hh !
$strhh! ?
{hh? @
remoteErrorhh@ K
}hhK L
"hhL M
;hhM N
returnii 
RedirectToPageii %
(ii% &
$strii& /
,ii/ 0
newii1 4
{ii5 6
	ReturnUrlii7 @
=iiA B
	returnUrliiC L
}iiM N
)iiN O
;iiO P
}jj 
varkk 
infokk 
=kk 
awaitkk 
_signInManagerkk +
.kk+ ,%
GetExternalLoginInfoAsynckk, E
(kkE F
)kkF G
;kkG H
ifll 
(ll 
infoll 
==ll 
nullll 
)ll 
{mm 
ErrorMessagenn 
=nn 
$strnn J
;nnJ K
returnoo 
RedirectToPageoo %
(oo% &
$stroo& /
,oo/ 0
newoo1 4
{oo5 6
	ReturnUrloo7 @
=ooA B
	returnUrlooC L
}ooM N
)ooN O
;ooO P
}pp 
varss 
resultss 
=ss 
awaitss 
_signInManagerss -
.ss- .$
ExternalLoginSignInAsyncss. F
(ssF G
infossG K
.ssK L
LoginProviderssL Y
,ssY Z
infoss[ _
.ss_ `
ProviderKeyss` k
,ssk l
isPersistentssm y
:ssy z
false	ss{ �
,
ss� �
bypassTwoFactor
ss� �
:
ss� �
true
ss� �
)
ss� �
;
ss� �
iftt 
(tt 
resulttt 
.tt 
	Succeededtt  
)tt  !
{uu 
_loggervv 
.vv 
LogInformationvv &
(vv& '
$strvv' X
,vvX Y
infovvZ ^
.vv^ _
	Principalvv_ h
.vvh i
Identityvvi q
.vvq r
Namevvr v
,vvv w
infovvx |
.vv| }
LoginProvider	vv} �
)
vv� �
;
vv� �
returnww 
LocalRedirectww $
(ww$ %
	returnUrlww% .
)ww. /
;ww/ 0
}xx 
ifyy 
(yy 
resultyy 
.yy 
IsLockedOutyy "
)yy" #
{zz 
return{{ 
RedirectToPage{{ %
({{% &
$str{{& 1
){{1 2
;{{2 3
}|| 
else}} 
{~~ 
	ReturnUrl
�� 
=
�� 
	returnUrl
�� %
;
��% &!
ProviderDisplayName
�� #
=
��$ %
info
��& *
.
��* +!
ProviderDisplayName
��+ >
;
��> ?
if
�� 
(
�� 
info
�� 
.
�� 
	Principal
�� "
.
��" #
HasClaim
��# +
(
��+ ,
c
��, -
=>
��. 0
c
��1 2
.
��2 3
Type
��3 7
==
��8 :

ClaimTypes
��; E
.
��E F
Email
��F K
)
��K L
)
��L M
{
�� 
Input
�� 
=
�� 
new
�� 

InputModel
��  *
{
�� 
Email
�� 
=
�� 
info
��  $
.
��$ %
	Principal
��% .
.
��. /
FindFirstValue
��/ =
(
��= >

ClaimTypes
��> H
.
��H I
Email
��I N
)
��N O
}
�� 
;
�� 
}
�� 
return
�� 
Page
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (%
OnPostConfirmationAsync
��) @
(
��@ A
string
��A G
	returnUrl
��H Q
=
��R S
null
��T X
)
��X Y
{
�� 	
	returnUrl
�� 
=
�� 
	returnUrl
�� !
??
��" $
Url
��% (
.
��( )
Content
��) 0
(
��0 1
$str
��1 5
)
��5 6
;
��6 7
var
�� 
info
�� 
=
�� 
await
�� 
_signInManager
�� +
.
��+ ,'
GetExternalLoginInfoAsync
��, E
(
��E F
)
��F G
;
��G H
if
�� 
(
�� 
info
�� 
==
�� 
null
�� 
)
�� 
{
�� 
ErrorMessage
�� 
=
�� 
$str
�� ^
;
��^ _
return
�� 
RedirectToPage
�� %
(
��% &
$str
��& /
,
��/ 0
new
��1 4
{
��5 6
	ReturnUrl
��7 @
=
��A B
	returnUrl
��C L
}
��M N
)
��N O
;
��O P
}
�� 
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
user
�� 
=
�� 

CreateUser
�� %
(
��% &
)
��& '
;
��' (
await
�� 

_userStore
��  
.
��  !
SetUserNameAsync
��! 1
(
��1 2
user
��2 6
,
��6 7
Input
��8 =
.
��= >
Email
��> C
,
��C D
CancellationToken
��E V
.
��V W
None
��W [
)
��[ \
;
��\ ]
await
�� 
_emailStore
�� !
.
��! "
SetEmailAsync
��" /
(
��/ 0
user
��0 4
,
��4 5
Input
��6 ;
.
��; <
Email
��< A
,
��A B
CancellationToken
��C T
.
��T U
None
��U Y
)
��Y Z
;
��Z [
var
�� 
result
�� 
=
�� 
await
�� "
_userManager
��# /
.
��/ 0
CreateAsync
��0 ;
(
��; <
user
��< @
)
��@ A
;
��A B
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
result
�� 
=
�� 
await
�� "
_userManager
��# /
.
��/ 0
AddLoginAsync
��0 =
(
��= >
user
��> B
,
��B C
info
��D H
)
��H I
;
��I J
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� (
)
��( )
{
�� 
_logger
�� 
.
��  
LogInformation
��  .
(
��. /
$str
��/ _
,
��_ `
info
��a e
.
��e f
LoginProvider
��f s
)
��s t
;
��t u
var
�� 
userId
�� "
=
��# $
await
��% *
_userManager
��+ 7
.
��7 8
GetUserIdAsync
��8 F
(
��F G
user
��G K
)
��K L
;
��L M
var
�� 
code
��  
=
��! "
await
��# (
_userManager
��) 5
.
��5 61
#GenerateEmailConfirmationTokenAsync
��6 Y
(
��Y Z
user
��Z ^
)
��^ _
;
��_ `
code
�� 
=
�� 
WebEncoders
�� *
.
��* +
Base64UrlEncode
��+ :
(
��: ;
Encoding
��; C
.
��C D
UTF8
��D H
.
��H I
GetBytes
��I Q
(
��Q R
code
��R V
)
��V W
)
��W X
;
��X Y
var
�� 
callbackUrl
�� '
=
��( )
Url
��* -
.
��- .
Page
��. 2
(
��2 3
$str
�� 3
,
��3 4
pageHandler
�� '
:
��' (
null
��) -
,
��- .
values
�� "
:
��" #
new
��$ '
{
��( )
area
��* .
=
��/ 0
$str
��1 ;
,
��; <
userId
��= C
=
��D E
userId
��F L
,
��L M
code
��N R
=
��S T
code
��U Y
}
��Z [
,
��[ \
protocol
�� $
:
��$ %
Request
��& -
.
��- .
Scheme
��. 4
)
��4 5
;
��5 6
await
�� 
_emailSender
�� *
.
��* +
SendEmailAsync
��+ 9
(
��9 :
Input
��: ?
.
��? @
Email
��@ E
,
��E F
$str
��G [
,
��[ \
$"
�� 
$str
�� F
{
��F G
HtmlEncoder
��G R
.
��R S
Default
��S Z
.
��Z [
Encode
��[ a
(
��a b
callbackUrl
��b m
)
��m n
}
��n o
$str��o �
"��� �
)��� �
;��� �
if
�� 
(
�� 
_userManager
�� (
.
��( )
Options
��) 0
.
��0 1
SignIn
��1 7
.
��7 8%
RequireConfirmedAccount
��8 O
)
��O P
{
�� 
return
�� "
RedirectToPage
��# 1
(
��1 2
$str
��2 J
,
��J K
new
��L O
{
��P Q
Email
��R W
=
��X Y
Input
��Z _
.
��_ `
Email
��` e
}
��f g
)
��g h
;
��h i
}
�� 
await
�� 
_signInManager
�� ,
.
��, -
SignInAsync
��- 8
(
��8 9
user
��9 =
,
��= >
isPersistent
��? K
:
��K L
false
��M R
,
��R S
info
��T X
.
��X Y
LoginProvider
��Y f
)
��f g
;
��g h
return
�� 
LocalRedirect
�� ,
(
��, -
	returnUrl
��- 6
)
��6 7
;
��7 8
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
error
�� "
in
��# %
result
��& ,
.
��, -
Errors
��- 3
)
��3 4
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
string
��- 3
.
��3 4
Empty
��4 9
,
��9 :
error
��; @
.
��@ A
Description
��A L
)
��L M
;
��M N
}
�� 
}
�� !
ProviderDisplayName
�� 
=
��  !
info
��" &
.
��& '!
ProviderDisplayName
��' :
;
��: ;
	ReturnUrl
�� 
=
�� 
	returnUrl
�� !
;
��! "
return
�� 
Page
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
IdentityUser
�� 

CreateUser
�� '
(
��' (
)
��( )
{
�� 	
try
�� 
{
�� 
return
�� 
	Activator
��  
.
��  !
CreateInstance
��! /
<
��/ 0
IdentityUser
��0 <
>
��< =
(
��= >
)
��> ?
;
��? @
}
�� 
catch
�� 
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
��4 6
$str
��6 S
{
��S T
nameof
��T Z
(
��Z [
IdentityUser
��[ g
)
��g h
}
��h i
$str
��i l
"
��l m
+
��n o
$"
�� 
$str
�� #
{
��# $
nameof
��$ *
(
��* +
IdentityUser
��+ 7
)
��7 8
}
��8 9
$str��9 �
"��� �
+��� �
$"
�� 
$str
�� l
"
��l m
)
��m n
;
��n o
}
�� 
}
�� 	
private
�� 
IUserEmailStore
�� 
<
��  
IdentityUser
��  ,
>
��, -
GetEmailStore
��. ;
(
��; <
)
��< =
{
�� 	
if
�� 
(
�� 
!
�� 
_userManager
�� 
.
�� 
SupportsUserEmail
�� /
)
��/ 0
{
�� 
throw
�� 
new
�� #
NotSupportedException
�� /
(
��/ 0
$str
��0 j
)
��j k
;
��k l
}
�� 
return
�� 
(
�� 
IUserEmailStore
�� #
<
��# $
IdentityUser
��$ 0
>
��0 1
)
��1 2

_userStore
��2 <
;
��< =
}
�� 	
}
�� 
}�� �#
hC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\ForgotPassword.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
public 

class 
ForgotPasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
ForgotPasswordModel "
(" #
UserManager# .
<. /
IdentityUser/ ;
>; <
userManager= H
,H I
IEmailSenderJ V
emailSenderW b
)b c
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
["" 	
BindProperty""	 
]"" 
public## 

InputModel## 
Input## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
public)) 
class)) 

InputModel)) 
{** 	
[// 
Required// 
]// 
[00 
EmailAddress00 
]00 
public11 
string11 
Email11 
{11  !
get11" %
;11% &
set11' *
;11* +
}11, -
}22 	
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
OnPostAsync44) 4
(444 5
)445 6
{55 	
if66 
(66 

ModelState66 
.66 
IsValid66 "
)66" #
{77 
var88 
user88 
=88 
await88  
_userManager88! -
.88- .
FindByEmailAsync88. >
(88> ?
Input88? D
.88D E
Email88E J
)88J K
;88K L
if99 
(99 
user99 
==99 
null99  
||99! #
!99$ %
(99% &
await99& +
_userManager99, 8
.998 9!
IsEmailConfirmedAsync999 N
(99N O
user99O S
)99S T
)99T U
)99U V
{:: 
return<< 
RedirectToPage<< )
(<<) *
$str<<* H
)<<H I
;<<I J
}== 
varAA 
codeAA 
=AA 
awaitAA  
_userManagerAA! -
.AA- .+
GeneratePasswordResetTokenAsyncAA. M
(AAM N
userAAN R
)AAR S
;AAS T
codeBB 
=BB 
WebEncodersBB "
.BB" #
Base64UrlEncodeBB# 2
(BB2 3
EncodingBB3 ;
.BB; <
UTF8BB< @
.BB@ A
GetBytesBBA I
(BBI J
codeBBJ N
)BBN O
)BBO P
;BBP Q
varCC 
callbackUrlCC 
=CC  !
UrlCC" %
.CC% &
PageCC& *
(CC* +
$strDD ,
,DD, -
pageHandlerEE 
:EE  
nullEE! %
,EE% &
valuesFF 
:FF 
newFF 
{FF  !
areaFF" &
=FF' (
$strFF) 3
,FF3 4
codeFF5 9
}FF: ;
,FF; <
protocolGG 
:GG 
RequestGG %
.GG% &
SchemeGG& ,
)GG, -
;GG- .
awaitII 
_emailSenderII "
.II" #
SendEmailAsyncII# 1
(II1 2
InputJJ 
.JJ 
EmailJJ 
,JJ  
$strKK $
,KK$ %
$"LL 
$strLL =
{LL= >
HtmlEncoderLL> I
.LLI J
DefaultLLJ Q
.LLQ R
EncodeLLR X
(LLX Y
callbackUrlLLY d
)LLd e
}LLe f
$strLLf z
"LLz {
)LL{ |
;LL| }
returnNN 
RedirectToPageNN %
(NN% &
$strNN& D
)NND E
;NNE F
}OO 
returnQQ 
PageQQ 
(QQ 
)QQ 
;QQ 
}RR 	
}SS 
}TT �
tC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\ForgotPasswordConfirmation.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{		 
[ 
AllowAnonymous 
] 
public 

class &
ForgotPasswordConfirmation +
:, -
	PageModel. 7
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} �
aC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Lockout.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{		 
[ 
AllowAnonymous 
] 
public 

class 
LockoutModel 
: 
	PageModel  )
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} �<
_C:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 

LoginModel 
( 
SignInManager '
<' (
IdentityUser( 4
>4 5
signInManager6 C
,C D
ILoggerE L
<L M

LoginModelM W
>W X
loggerY _
)_ `
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public** 
IList** 
<**  
AuthenticationScheme** )
>**) *
ExternalLogins**+ 9
{**: ;
get**< ?
;**? @
set**A D
;**D E
}**F G
public00 
string00 
	ReturnUrl00 
{00  !
get00" %
;00% &
set00' *
;00* +
}00, -
[66 	
TempData66	 
]66 
public77 
string77 
ErrorMessage77 "
{77# $
get77% (
;77( )
set77* -
;77- .
}77/ 0
public== 
class== 

InputModel== 
{>> 	
[CC 
RequiredCC 
]CC 
[DD 
EmailAddressDD 
]DD 
publicEE 
stringEE 
EmailEE 
{EE  !
getEE" %
;EE% &
setEE' *
;EE* +
}EE, -
[KK 
RequiredKK 
]KK 
[LL 
DataTypeLL 
(LL 
DataTypeLL 
.LL 
PasswordLL '
)LL' (
]LL( )
publicMM 
stringMM 
PasswordMM "
{MM# $
getMM% (
;MM( )
setMM* -
;MM- .
}MM/ 0
[SS 
DisplaySS 
(SS 
NameSS 
=SS 
$strSS *
)SS* +
]SS+ ,
publicTT 
boolTT 

RememberMeTT "
{TT# $
getTT% (
;TT( )
setTT* -
;TT- .
}TT/ 0
}UU 	
publicWW 
asyncWW 
TaskWW 

OnGetAsyncWW $
(WW$ %
stringWW% +
	returnUrlWW, 5
=WW6 7
nullWW8 <
)WW< =
{XX 	
ifYY 
(YY 
!YY 
stringYY 
.YY 
IsNullOrEmptyYY %
(YY% &
ErrorMessageYY& 2
)YY2 3
)YY3 4
{ZZ 

ModelState[[ 
.[[ 
AddModelError[[ (
([[( )
string[[) /
.[[/ 0
Empty[[0 5
,[[5 6
ErrorMessage[[7 C
)[[C D
;[[D E
}\\ 
	returnUrl^^ 
??=^^ 
Url^^ 
.^^ 
Content^^ %
(^^% &
$str^^& *
)^^* +
;^^+ ,
awaitaa 
HttpContextaa 
.aa 
SignOutAsyncaa *
(aa* +
IdentityConstantsaa+ <
.aa< =
ExternalSchemeaa= K
)aaK L
;aaL M
ExternalLoginscc 
=cc 
(cc 
awaitcc #
_signInManagercc$ 2
.cc2 31
%GetExternalAuthenticationSchemesAsynccc3 X
(ccX Y
)ccY Z
)ccZ [
.cc[ \
ToListcc\ b
(ccb c
)ccc d
;ccd e
	ReturnUrlee 
=ee 
	returnUrlee !
;ee! "
}ff 	
publichh 
asynchh 
Taskhh 
<hh 
IActionResulthh '
>hh' (
OnPostAsynchh) 4
(hh4 5
stringhh5 ;
	returnUrlhh< E
=hhF G
nullhhH L
)hhL M
{ii 	
	returnUrljj 
??=jj 
Urljj 
.jj 
Contentjj %
(jj% &
$strjj& *
)jj* +
;jj+ ,
ExternalLoginsll 
=ll 
(ll 
awaitll #
_signInManagerll$ 2
.ll2 31
%GetExternalAuthenticationSchemesAsyncll3 X
(llX Y
)llY Z
)llZ [
.ll[ \
ToListll\ b
(llb c
)llc d
;lld e
ifnn 
(nn 

ModelStatenn 
.nn 
IsValidnn "
)nn" #
{oo 
varrr 
resultrr 
=rr 
awaitrr "
_signInManagerrr# 1
.rr1 2
PasswordSignInAsyncrr2 E
(rrE F
InputrrF K
.rrK L
EmailrrL Q
,rrQ R
InputrrS X
.rrX Y
PasswordrrY a
,rra b
Inputrrc h
.rrh i

RememberMerri s
,rrs t
lockoutOnFailure	rru �
:
rr� �
false
rr� �
)
rr� �
;
rr� �
ifss 
(ss 
resultss 
.ss 
	Succeededss $
)ss$ %
{tt 
_loggeruu 
.uu 
LogInformationuu *
(uu* +
$struu+ <
)uu< =
;uu= >
HttpContextvv 
.vv  
Sessionvv  '
.vv' (
	SetStringvv( 1
(vv1 2
$strvv2 <
,vv< =
Inputvv> C
.vvC D
EmailvvD I
)vvI J
;vvJ K
returnww 
LocalRedirectww (
(ww( )
	returnUrlww) 2
)ww2 3
;ww3 4
}xx 
ifyy 
(yy 
resultyy 
.yy 
RequiresTwoFactoryy ,
)yy, -
{zz 
return{{ 
RedirectToPage{{ )
({{) *
$str{{* :
,{{: ;
new{{< ?
{{{@ A
	ReturnUrl{{B K
={{L M
	returnUrl{{N W
,{{W X

RememberMe{{Y c
={{d e
Input{{f k
.{{k l

RememberMe{{l v
}{{w x
){{x y
;{{y z
}|| 
if}} 
(}} 
result}} 
.}} 
IsLockedOut}} &
)}}& '
{~~ 
_logger 
. 

LogWarning &
(& '
$str' A
)A B
;B C
return
�� 
RedirectToPage
�� )
(
��) *
$str
��* 5
)
��5 6
;
��6 7
}
�� 
else
�� 
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
string
��- 3
.
��3 4
Empty
��4 9
,
��9 :
$str
��; S
)
��S T
;
��T U
return
�� 
Page
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 
return
�� 
Page
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �>
fC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\LoginWith2fa.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
public 

class 
LoginWith2faModel "
:# $
	PageModel% .
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
LoginWith2faModel! 2
>2 3
_logger4 ;
;; <
public 
LoginWith2faModel  
(  !
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
LoginWith2faModel %
>% &
logger' -
)- .
{ 	
_signInManager 
= 
signInManager *
;* +
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[%% 	
BindProperty%%	 
]%% 
public&& 

InputModel&& 
Input&& 
{&&  !
get&&" %
;&&% &
set&&' *
;&&* +
}&&, -
public,, 
bool,, 

RememberMe,, 
{,,  
get,,! $
;,,$ %
set,,& )
;,,) *
},,+ ,
public22 
string22 
	ReturnUrl22 
{22  !
get22" %
;22% &
set22' *
;22* +
}22, -
public88 
class88 

InputModel88 
{99 	
[>> 
Required>> 
]>> 
[?? 
StringLength?? 
(?? 
$num?? 
,?? 
ErrorMessage?? )
=??* +
$str??, j
,??j k
MinimumLength??l y
=??z {
$num??| }
)??} ~
]??~ 
[@@ 
DataType@@ 
(@@ 
DataType@@ 
.@@ 
Text@@ #
)@@# $
]@@$ %
[AA 
DisplayAA 
(AA 
NameAA 
=AA 
$strAA 0
)AA0 1
]AA1 2
publicBB 
stringBB 
TwoFactorCodeBB '
{BB( )
getBB* -
;BB- .
setBB/ 2
;BB2 3
}BB4 5
[HH 
DisplayHH 
(HH 
NameHH 
=HH 
$strHH 3
)HH3 4
]HH4 5
publicII 
boolII 
RememberMachineII '
{II( )
getII* -
;II- .
setII/ 2
;II2 3
}II4 5
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (

OnGetAsyncLL) 3
(LL3 4
boolLL4 8

rememberMeLL9 C
,LLC D
stringLLE K
	returnUrlLLL U
=LLV W
nullLLX \
)LL\ ]
{MM 	
varOO 
userOO 
=OO 
awaitOO 
_signInManagerOO +
.OO+ ,/
#GetTwoFactorAuthenticationUserAsyncOO, O
(OOO P
)OOP Q
;OOQ R
ifQQ 
(QQ 
userQQ 
==QQ 
nullQQ 
)QQ 
{RR 
throwSS 
newSS %
InvalidOperationExceptionSS 3
(SS3 4
$"SS4 6
$strSS6 d
"SSd e
)SSe f
;SSf g
}TT 
	ReturnUrlVV 
=VV 
	returnUrlVV !
;VV! "

RememberMeWW 
=WW 

rememberMeWW #
;WW# $
returnYY 
PageYY 
(YY 
)YY 
;YY 
}ZZ 	
public\\ 
async\\ 
Task\\ 
<\\ 
IActionResult\\ '
>\\' (
OnPostAsync\\) 4
(\\4 5
bool\\5 9

rememberMe\\: D
,\\D E
string\\F L
	returnUrl\\M V
=\\W X
null\\Y ]
)\\] ^
{]] 	
if^^ 
(^^ 
!^^ 

ModelState^^ 
.^^ 
IsValid^^ #
)^^# $
{__ 
return`` 
Page`` 
(`` 
)`` 
;`` 
}aa 
	returnUrlcc 
=cc 
	returnUrlcc !
??cc" $
Urlcc% (
.cc( )
Contentcc) 0
(cc0 1
$strcc1 5
)cc5 6
;cc6 7
varee 
useree 
=ee 
awaitee 
_signInManageree +
.ee+ ,/
#GetTwoFactorAuthenticationUserAsyncee, O
(eeO P
)eeP Q
;eeQ R
ifff 
(ff 
userff 
==ff 
nullff 
)ff 
{gg 
throwhh 
newhh %
InvalidOperationExceptionhh 3
(hh3 4
$"hh4 6
$strhh6 d
"hhd e
)hhe f
;hhf g
}ii 
varkk 
authenticatorCodekk !
=kk" #
Inputkk$ )
.kk) *
TwoFactorCodekk* 7
.kk7 8
Replacekk8 ?
(kk? @
$strkk@ C
,kkC D
stringkkE K
.kkK L
EmptykkL Q
)kkQ R
.kkR S
ReplacekkS Z
(kkZ [
$strkk[ ^
,kk^ _
stringkk` f
.kkf g
Emptykkg l
)kkl m
;kkm n
varmm 
resultmm 
=mm 
awaitmm 
_signInManagermm -
.mm- .-
!TwoFactorAuthenticatorSignInAsyncmm. O
(mmO P
authenticatorCodemmP a
,mma b

rememberMemmc m
,mmm n
Inputmmo t
.mmt u
RememberMachine	mmu �
)
mm� �
;
mm� �
varoo 
userIdoo 
=oo 
awaitoo 
_userManageroo +
.oo+ ,
GetUserIdAsyncoo, :
(oo: ;
useroo; ?
)oo? @
;oo@ A
ifqq 
(qq 
resultqq 
.qq 
	Succeededqq  
)qq  !
{rr 
_loggerss 
.ss 
LogInformationss &
(ss& '
$strss' T
,ssT U
userssV Z
.ssZ [
Idss[ ]
)ss] ^
;ss^ _
returntt 
LocalRedirecttt $
(tt$ %
	returnUrltt% .
)tt. /
;tt/ 0
}uu 
elsevv 
ifvv 
(vv 
resultvv 
.vv 
IsLockedOutvv '
)vv' (
{ww 
_loggerxx 
.xx 

LogWarningxx "
(xx" #
$strxx# P
,xxP Q
userxxR V
.xxV W
IdxxW Y
)xxY Z
;xxZ [
returnyy 
RedirectToPageyy %
(yy% &
$stryy& 1
)yy1 2
;yy2 3
}zz 
else{{ 
{|| 
_logger}} 
.}} 

LogWarning}} "
(}}" #
$str}}# d
,}}d e
user}}f j
.}}j k
Id}}k m
)}}m n
;}}n o

ModelState~~ 
.~~ 
AddModelError~~ (
(~~( )
string~~) /
.~~/ 0
Empty~~0 5
,~~5 6
$str~~7 T
)~~T U
;~~U V
return 
Page 
( 
) 
; 
}
�� 
}
�� 	
}
�� 
}�� �5
oC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\LoginWithRecoveryCode.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
public 

class &
LoginWithRecoveryCodeModel +
:, -
	PageModel. 7
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !&
LoginWithRecoveryCodeModel! ;
>; <
_logger= D
;D E
public &
LoginWithRecoveryCodeModel )
() *
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< &
LoginWithRecoveryCodeModel .
>. /
logger0 6
)6 7
{ 	
_signInManager 
= 
signInManager *
;* +
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public** 
string** 
	ReturnUrl** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public00 
class00 

InputModel00 
{11 	
[66 
BindProperty66 
]66 
[77 
Required77 
]77 
[88 
DataType88 
(88 
DataType88 
.88 
Text88 #
)88# $
]88$ %
[99 
Display99 
(99 
Name99 
=99 
$str99 +
)99+ ,
]99, -
public:: 
string:: 
RecoveryCode:: &
{::' (
get::) ,
;::, -
set::. 1
;::1 2
}::3 4
};; 	
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (

OnGetAsync==) 3
(==3 4
string==4 :
	returnUrl==; D
===E F
null==G K
)==K L
{>> 	
var@@ 
user@@ 
=@@ 
await@@ 
_signInManager@@ +
.@@+ ,/
#GetTwoFactorAuthenticationUserAsync@@, O
(@@O P
)@@P Q
;@@Q R
ifAA 
(AA 
userAA 
==AA 
nullAA 
)AA 
{BB 
throwCC 
newCC %
InvalidOperationExceptionCC 3
(CC3 4
$"CC4 6
$strCC6 d
"CCd e
)CCe f
;CCf g
}DD 
	ReturnUrlFF 
=FF 
	returnUrlFF !
;FF! "
returnHH 
PageHH 
(HH 
)HH 
;HH 
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
IActionResultKK '
>KK' (
OnPostAsyncKK) 4
(KK4 5
stringKK5 ;
	returnUrlKK< E
=KKF G
nullKKH L
)KKL M
{LL 	
ifMM 
(MM 
!MM 

ModelStateMM 
.MM 
IsValidMM #
)MM# $
{NN 
returnOO 
PageOO 
(OO 
)OO 
;OO 
}PP 
varRR 
userRR 
=RR 
awaitRR 
_signInManagerRR +
.RR+ ,/
#GetTwoFactorAuthenticationUserAsyncRR, O
(RRO P
)RRP Q
;RRQ R
ifSS 
(SS 
userSS 
==SS 
nullSS 
)SS 
{TT 
throwUU 
newUU %
InvalidOperationExceptionUU 3
(UU3 4
$"UU4 6
$strUU6 d
"UUd e
)UUe f
;UUf g
}VV 
varXX 
recoveryCodeXX 
=XX 
InputXX $
.XX$ %
RecoveryCodeXX% 1
.XX1 2
ReplaceXX2 9
(XX9 :
$strXX: =
,XX= >
stringXX? E
.XXE F
EmptyXXF K
)XXK L
;XXL M
varZZ 
resultZZ 
=ZZ 
awaitZZ 
_signInManagerZZ -
.ZZ- .,
 TwoFactorRecoveryCodeSignInAsyncZZ. N
(ZZN O
recoveryCodeZZO [
)ZZ[ \
;ZZ\ ]
var\\ 
userId\\ 
=\\ 
await\\ 
_userManager\\ +
.\\+ ,
GetUserIdAsync\\, :
(\\: ;
user\\; ?
)\\? @
;\\@ A
if^^ 
(^^ 
result^^ 
.^^ 
	Succeeded^^  
)^^  !
{__ 
_logger`` 
.`` 
LogInformation`` &
(``& '
$str``' `
,``` a
user``b f
.``f g
Id``g i
)``i j
;``j k
returnaa 
LocalRedirectaa $
(aa$ %
	returnUrlaa% .
??aa/ 1
Urlaa2 5
.aa5 6
Contentaa6 =
(aa= >
$straa> B
)aaB C
)aaC D
;aaD E
}bb 
ifcc 
(cc 
resultcc 
.cc 
IsLockedOutcc "
)cc" #
{dd 
_loggeree 
.ee 

LogWarningee "
(ee" #
$stree# =
)ee= >
;ee> ?
returnff 
RedirectToPageff %
(ff% &
$strff& 1
)ff1 2
;ff2 3
}gg 
elsehh 
{ii 
_loggerjj 
.jj 

LogWarningjj "
(jj" #
$strjj# _
,jj_ `
userjja e
.jje f
Idjjf h
)jjh i
;jji j

ModelStatekk 
.kk 
AddModelErrorkk (
(kk( )
stringkk) /
.kk/ 0
Emptykk0 5
,kk5 6
$strkk7 W
)kkW X
;kkX Y
returnll 
Pagell 
(ll 
)ll 
;ll 
}mm 
}nn 	
}oo 
}pp �
`C:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )
IdentityUser) 5
>5 6
signInManager7 D
,D E
ILoggerF M
<M N
LogoutModelN Y
>Y Z
logger[ a
)a b
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger 
. 
LogInformation "
(" #
$str# 5
)5 6
;6 7
if 
( 
	returnUrl 
!= 
null !
)! "
{ 
return   
LocalRedirect   $
(  $ %
	returnUrl  % .
)  . /
;  / 0
}!! 
else"" 
{## 
return&& 
RedirectToPage&& %
(&&% &
)&&& '
;&&' (
}'' 
}(( 	
})) 
}** �>
oC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\ChangePassword.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class 
ChangePasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
ChangePasswordModel! 4
>4 5
_logger6 =
;= >
public 
ChangePasswordModel "
(" #
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< 
ChangePasswordModel '
>' (
logger) /
)/ 0
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
[** 	
TempData**	 
]** 
public++ 
string++ 
StatusMessage++ #
{++$ %
get++& )
;++) *
set+++ .
;++. /
}++0 1
public11 
class11 

InputModel11 
{22 	
[77 
Required77 
]77 
[88 
DataType88 
(88 
DataType88 
.88 
Password88 '
)88' (
]88( )
[99 
Display99 
(99 
Name99 
=99 
$str99 .
)99. /
]99/ 0
public:: 
string:: 
OldPassword:: %
{::& '
get::( +
;::+ ,
set::- 0
;::0 1
}::2 3
[@@ 
Required@@ 
]@@ 
[AA 
StringLengthAA 
(AA 
$numAA 
,AA 
ErrorMessageAA +
=AA, -
$strAA. l
,AAl m
MinimumLengthAAn {
=AA| }
$numAA~ 
)	AA �
]
AA� �
[BB 
DataTypeBB 
(BB 
DataTypeBB 
.BB 
PasswordBB '
)BB' (
]BB( )
[CC 
DisplayCC 
(CC 
NameCC 
=CC 
$strCC *
)CC* +
]CC+ ,
publicDD 
stringDD 
NewPasswordDD %
{DD& '
getDD( +
;DD+ ,
setDD- 0
;DD0 1
}DD2 3
[JJ 
DataTypeJJ 
(JJ 
DataTypeJJ 
.JJ 
PasswordJJ '
)JJ' (
]JJ( )
[KK 
DisplayKK 
(KK 
NameKK 
=KK 
$strKK 2
)KK2 3
]KK3 4
[LL 
CompareLL 
(LL 
$strLL "
,LL" #
ErrorMessageLL$ 0
=LL1 2
$strLL3 m
)LLm n
]LLn o
publicMM 
stringMM 
ConfirmPasswordMM )
{MM* +
getMM, /
;MM/ 0
setMM1 4
;MM4 5
}MM6 7
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (

OnGetAsyncPP) 3
(PP3 4
)PP4 5
{QQ 	
varRR 
userRR 
=RR 
awaitRR 
_userManagerRR )
.RR) *
GetUserAsyncRR* 6
(RR6 7
UserRR7 ;
)RR; <
;RR< =
ifSS 
(SS 
userSS 
==SS 
nullSS 
)SS 
{TT 
returnUU 
NotFoundUU 
(UU  
$"UU  "
$strUU" ?
{UU? @
_userManagerUU@ L
.UUL M
	GetUserIdUUM V
(UUV W
UserUUW [
)UU[ \
}UU\ ]
$strUU] _
"UU_ `
)UU` a
;UUa b
}VV 
varXX 
hasPasswordXX 
=XX 
awaitXX #
_userManagerXX$ 0
.XX0 1
HasPasswordAsyncXX1 A
(XXA B
userXXB F
)XXF G
;XXG H
ifYY 
(YY 
!YY 
hasPasswordYY 
)YY 
{ZZ 
return[[ 
RedirectToPage[[ %
([[% &
$str[[& 5
)[[5 6
;[[6 7
}\\ 
return^^ 
Page^^ 
(^^ 
)^^ 
;^^ 
}__ 	
publicaa 
asyncaa 
Taskaa 
<aa 
IActionResultaa '
>aa' (
OnPostAsyncaa) 4
(aa4 5
)aa5 6
{bb 	
ifcc 
(cc 
!cc 

ModelStatecc 
.cc 
IsValidcc #
)cc# $
{dd 
returnee 
Pageee 
(ee 
)ee 
;ee 
}ff 
varhh 
userhh 
=hh 
awaithh 
_userManagerhh )
.hh) *
GetUserAsynchh* 6
(hh6 7
Userhh7 ;
)hh; <
;hh< =
ifii 
(ii 
userii 
==ii 
nullii 
)ii 
{jj 
returnkk 
NotFoundkk 
(kk  
$"kk  "
$strkk" ?
{kk? @
_userManagerkk@ L
.kkL M
	GetUserIdkkM V
(kkV W
UserkkW [
)kk[ \
}kk\ ]
$strkk] _
"kk_ `
)kk` a
;kka b
}ll 
varnn  
changePasswordResultnn $
=nn% &
awaitnn' ,
_userManagernn- 9
.nn9 :
ChangePasswordAsyncnn: M
(nnM N
usernnN R
,nnR S
InputnnT Y
.nnY Z
OldPasswordnnZ e
,nne f
Inputnng l
.nnl m
NewPasswordnnm x
)nnx y
;nny z
ifoo 
(oo 
!oo  
changePasswordResultoo %
.oo% &
	Succeededoo& /
)oo/ 0
{pp 
foreachqq 
(qq 
varqq 
errorqq "
inqq# % 
changePasswordResultqq& :
.qq: ;
Errorsqq; A
)qqA B
{rr 

ModelStatess 
.ss 
AddModelErrorss ,
(ss, -
stringss- 3
.ss3 4
Emptyss4 9
,ss9 :
errorss; @
.ss@ A
DescriptionssA L
)ssL M
;ssM N
}tt 
returnuu 
Pageuu 
(uu 
)uu 
;uu 
}vv 
awaitxx 
_signInManagerxx  
.xx  !
RefreshSignInAsyncxx! 3
(xx3 4
userxx4 8
)xx8 9
;xx9 :
_loggeryy 
.yy 
LogInformationyy "
(yy" #
$stryy# N
)yyN O
;yyO P
StatusMessagezz 
=zz 
$strzz =
;zz= >
return|| 
RedirectToPage|| !
(||! "
)||" #
;||# $
}}} 	
}~~ 
} �2
sC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\DeletePersonalData.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class #
DeletePersonalDataModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !#
DeletePersonalDataModel! 8
>8 9
_logger: A
;A B
public #
DeletePersonalDataModel &
(& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< #
DeletePersonalDataModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public** 
class** 

InputModel** 
{++ 	
[00 
Required00 
]00 
[11 
DataType11 
(11 
DataType11 
.11 
Password11 '
)11' (
]11( )
public22 
string22 
Password22 "
{22# $
get22% (
;22( )
set22* -
;22- .
}22/ 0
}33 	
public99 
bool99 
RequirePassword99 #
{99$ %
get99& )
;99) *
set99+ .
;99. /
}990 1
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (
OnGet;;) .
(;;. /
);;/ 0
{<< 	
var== 
user== 
=== 
await== 
_userManager== )
.==) *
GetUserAsync==* 6
(==6 7
User==7 ;
)==; <
;==< =
if>> 
(>> 
user>> 
==>> 
null>> 
)>> 
{?? 
return@@ 
NotFound@@ 
(@@  
$"@@  "
$str@@" ?
{@@? @
_userManager@@@ L
.@@L M
	GetUserId@@M V
(@@V W
User@@W [
)@@[ \
}@@\ ]
$str@@] _
"@@_ `
)@@` a
;@@a b
}AA 
RequirePasswordCC 
=CC 
awaitCC #
_userManagerCC$ 0
.CC0 1
HasPasswordAsyncCC1 A
(CCA B
userCCB F
)CCF G
;CCG H
returnDD 
PageDD 
(DD 
)DD 
;DD 
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
OnPostAsyncGG) 4
(GG4 5
)GG5 6
{HH 	
varII 
userII 
=II 
awaitII 
_userManagerII )
.II) *
GetUserAsyncII* 6
(II6 7
UserII7 ;
)II; <
;II< =
ifJJ 
(JJ 
userJJ 
==JJ 
nullJJ 
)JJ 
{KK 
returnLL 
NotFoundLL 
(LL  
$"LL  "
$strLL" ?
{LL? @
_userManagerLL@ L
.LLL M
	GetUserIdLLM V
(LLV W
UserLLW [
)LL[ \
}LL\ ]
$strLL] _
"LL_ `
)LL` a
;LLa b
}MM 
RequirePasswordOO 
=OO 
awaitOO #
_userManagerOO$ 0
.OO0 1
HasPasswordAsyncOO1 A
(OOA B
userOOB F
)OOF G
;OOG H
ifPP 
(PP 
RequirePasswordPP 
)PP  
{QQ 
ifRR 
(RR 
!RR 
awaitRR 
_userManagerRR '
.RR' (
CheckPasswordAsyncRR( :
(RR: ;
userRR; ?
,RR? @
InputRRA F
.RRF G
PasswordRRG O
)RRO P
)RRP Q
{SS 

ModelStateTT 
.TT 
AddModelErrorTT ,
(TT, -
stringTT- 3
.TT3 4
EmptyTT4 9
,TT9 :
$strTT; P
)TTP Q
;TTQ R
returnUU 
PageUU 
(UU  
)UU  !
;UU! "
}VV 
}WW 
varYY 
resultYY 
=YY 
awaitYY 
_userManagerYY +
.YY+ ,
DeleteAsyncYY, 7
(YY7 8
userYY8 <
)YY< =
;YY= >
varZZ 
userIdZZ 
=ZZ 
awaitZZ 
_userManagerZZ +
.ZZ+ ,
GetUserIdAsyncZZ, :
(ZZ: ;
userZZ; ?
)ZZ? @
;ZZ@ A
if[[ 
([[ 
![[ 
result[[ 
.[[ 
	Succeeded[[ !
)[[! "
{\\ 
throw]] 
new]] %
InvalidOperationException]] 3
(]]3 4
$"]]4 6
$str]]6 ^
"]]^ _
)]]_ `
;]]` a
}^^ 
await`` 
_signInManager``  
.``  !
SignOutAsync``! -
(``- .
)``. /
;``/ 0
_loggerbb 
.bb 
LogInformationbb "
(bb" #
$strbb# P
,bbP Q
userIdbbR X
)bbX Y
;bbY Z
returndd 
Redirectdd 
(dd 
$strdd  
)dd  !
;dd! "
}ee 	
}ff 
}gg �$
kC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\Disable2fa.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class 
Disable2faModel  
:! "
	PageModel# ,
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
Disable2faModel! 0
>0 1
_logger2 9
;9 :
public 
Disable2faModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
Disable2faModel #
># $
logger% +
)+ ,
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (
OnGet"") .
("". /
)""/ 0
{## 	
var$$ 
user$$ 
=$$ 
await$$ 
_userManager$$ )
.$$) *
GetUserAsync$$* 6
($$6 7
User$$7 ;
)$$; <
;$$< =
if%% 
(%% 
user%% 
==%% 
null%% 
)%% 
{&& 
return'' 
NotFound'' 
(''  
$"''  "
$str''" ?
{''? @
_userManager''@ L
.''L M
	GetUserId''M V
(''V W
User''W [
)''[ \
}''\ ]
$str''] _
"''_ `
)''` a
;''a b
}(( 
if** 
(** 
!** 
await** 
_userManager** #
.**# $$
GetTwoFactorEnabledAsync**$ <
(**< =
user**= A
)**A B
)**B C
{++ 
throw,, 
new,, %
InvalidOperationException,, 3
(,,3 4
$",,4 6
$str,,6 p
",,p q
),,q r
;,,r s
}-- 
return// 
Page// 
(// 
)// 
;// 
}00 	
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
OnPostAsync22) 4
(224 5
)225 6
{33 	
var44 
user44 
=44 
await44 
_userManager44 )
.44) *
GetUserAsync44* 6
(446 7
User447 ;
)44; <
;44< =
if55 
(55 
user55 
==55 
null55 
)55 
{66 
return77 
NotFound77 
(77  
$"77  "
$str77" ?
{77? @
_userManager77@ L
.77L M
	GetUserId77M V
(77V W
User77W [
)77[ \
}77\ ]
$str77] _
"77_ `
)77` a
;77a b
}88 
var:: 
disable2faResult::  
=::! "
await::# (
_userManager::) 5
.::5 6$
SetTwoFactorEnabledAsync::6 N
(::N O
user::O S
,::S T
false::U Z
)::Z [
;::[ \
if;; 
(;; 
!;; 
disable2faResult;; !
.;;! "
	Succeeded;;" +
);;+ ,
{<< 
throw== 
new== %
InvalidOperationException== 3
(==3 4
$"==4 6
$str==6 ^
"==^ _
)==_ `
;==` a
}>> 
_logger@@ 
.@@ 
LogInformation@@ "
(@@" #
$str@@# N
,@@N O
_userManager@@P \
.@@\ ]
	GetUserId@@] f
(@@f g
User@@g k
)@@k l
)@@l m
;@@m n
StatusMessageAA 
=AA 
$strAA m
;AAm n
returnBB 
RedirectToPageBB !
(BB! "
$strBB" =
)BB= >
;BB> ?
}CC 	
}DD 
}EE �*
uC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\DownloadPersonalData.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class %
DownloadPersonalDataModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !%
DownloadPersonalDataModel! :
>: ;
_logger< C
;C D
public %
DownloadPersonalDataModel (
(( )
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< %
DownloadPersonalDataModel -
>- .
logger/ 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
OnGet "
(" #
)# $
{   	
return!! 
NotFound!! 
(!! 
)!! 
;!! 
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
IActionResult$$ '
>$$' (
OnPostAsync$$) 4
($$4 5
)$$5 6
{%% 	
var&& 
user&& 
=&& 
await&& 
_userManager&& )
.&&) *
GetUserAsync&&* 6
(&&6 7
User&&7 ;
)&&; <
;&&< =
if'' 
('' 
user'' 
=='' 
null'' 
)'' 
{(( 
return)) 
NotFound)) 
())  
$"))  "
$str))" ?
{))? @
_userManager))@ L
.))L M
	GetUserId))M V
())V W
User))W [
)))[ \
}))\ ]
$str))] _
"))_ `
)))` a
;))a b
}** 
_logger,, 
.,, 
LogInformation,, "
(,," #
$str,,# [
,,,[ \
_userManager,,] i
.,,i j
	GetUserId,,j s
(,,s t
User,,t x
),,x y
),,y z
;,,z {
var// 
personalData// 
=// 
new// "

Dictionary//# -
<//- .
string//. 4
,//4 5
string//6 <
>//< =
(//= >
)//> ?
;//? @
var00 
personalDataProps00 !
=00" #
typeof00$ *
(00* +
IdentityUser00+ 7
)007 8
.008 9
GetProperties009 F
(00F G
)00G H
.00H I
Where00I N
(00N O
prop11  
=>11! #
	Attribute11$ -
.11- .
	IsDefined11. 7
(117 8
prop118 <
,11< =
typeof11> D
(11D E!
PersonalDataAttribute11E Z
)11Z [
)11[ \
)11\ ]
;11] ^
foreach22 
(22 
var22 
p22 
in22 
personalDataProps22 /
)22/ 0
{33 
personalData44 
.44 
Add44  
(44  !
p44! "
.44" #
Name44# '
,44' (
p44) *
.44* +
GetValue44+ 3
(443 4
user444 8
)448 9
?449 :
.44: ;
ToString44; C
(44C D
)44D E
??44F H
$str44I O
)44O P
;44P Q
}55 
var77 
logins77 
=77 
await77 
_userManager77 +
.77+ ,
GetLoginsAsync77, :
(77: ;
user77; ?
)77? @
;77@ A
foreach88 
(88 
var88 
l88 
in88 
logins88 $
)88$ %
{99 
personalData:: 
.:: 
Add::  
(::  !
$"::! #
{::# $
l::$ %
.::% &
LoginProvider::& 3
}::3 4
$str::4 P
"::P Q
,::Q R
l::S T
.::T U
ProviderKey::U `
)::` a
;::a b
};; 
personalData== 
.== 
Add== 
(== 
$"== 
$str== 0
"==0 1
,==1 2
await==3 8
_userManager==9 E
.==E F$
GetAuthenticatorKeyAsync==F ^
(==^ _
user==_ c
)==c d
)==d e
;==e f
Response?? 
.?? 
Headers?? 
.?? 
Add??  
(??  !
$str??! 6
,??6 7
$str??8 `
)??` a
;??a b
return@@ 
new@@ 
FileContentResult@@ (
(@@( )
JsonSerializer@@) 7
.@@7 8 
SerializeToUtf8Bytes@@8 L
(@@L M
personalData@@M Y
)@@Y Z
,@@Z [
$str@@\ n
)@@n o
;@@o p
}AA 	
}BB 
}CC �`
fC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\Email.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class 

EmailModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 

EmailModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
IEmailSender 
emailSender $
)$ %
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_emailSender 
= 
emailSender &
;& '
}   	
public&& 
string&& 
Email&& 
{&& 
get&& !
;&&! "
set&&# &
;&&& '
}&&( )
public,, 
bool,, 
IsEmailConfirmed,, $
{,,% &
get,,' *
;,,* +
set,,, /
;,,/ 0
},,1 2
[22 	
TempData22	 
]22 
public33 
string33 
StatusMessage33 #
{33$ %
get33& )
;33) *
set33+ .
;33. /
}330 1
[99 	
BindProperty99	 
]99 
public:: 

InputModel:: 
Input:: 
{::  !
get::" %
;::% &
set::' *
;::* +
}::, -
public@@ 
class@@ 

InputModel@@ 
{AA 	
[FF 
RequiredFF 
]FF 
[GG 
EmailAddressGG 
]GG 
[HH 
DisplayHH 
(HH 
NameHH 
=HH 
$strHH '
)HH' (
]HH( )
publicII 
stringII 
NewEmailII "
{II# $
getII% (
;II( )
setII* -
;II- .
}II/ 0
}JJ 	
privateLL 
asyncLL 
TaskLL 
	LoadAsyncLL $
(LL$ %
IdentityUserLL% 1
userLL2 6
)LL6 7
{MM 	
varNN 
emailNN 
=NN 
awaitNN 
_userManagerNN *
.NN* +
GetEmailAsyncNN+ 8
(NN8 9
userNN9 =
)NN= >
;NN> ?
EmailOO 
=OO 
emailOO 
;OO 
InputQQ 
=QQ 
newQQ 

InputModelQQ "
{RR 
NewEmailSS 
=SS 
emailSS  
,SS  !
}TT 
;TT 
IsEmailConfirmedVV 
=VV 
awaitVV $
_userManagerVV% 1
.VV1 2!
IsEmailConfirmedAsyncVV2 G
(VVG H
userVVH L
)VVL M
;VVM N
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
IActionResultYY '
>YY' (

OnGetAsyncYY) 3
(YY3 4
)YY4 5
{ZZ 	
var[[ 
user[[ 
=[[ 
await[[ 
_userManager[[ )
.[[) *
GetUserAsync[[* 6
([[6 7
User[[7 ;
)[[; <
;[[< =
if\\ 
(\\ 
user\\ 
==\\ 
null\\ 
)\\ 
{]] 
return^^ 
NotFound^^ 
(^^  
$"^^  "
$str^^" ?
{^^? @
_userManager^^@ L
.^^L M
	GetUserId^^M V
(^^V W
User^^W [
)^^[ \
}^^\ ]
$str^^] _
"^^_ `
)^^` a
;^^a b
}__ 
awaitaa 
	LoadAsyncaa 
(aa 
useraa  
)aa  !
;aa! "
returnbb 
Pagebb 
(bb 
)bb 
;bb 
}cc 	
publicee 
asyncee 
Taskee 
<ee 
IActionResultee '
>ee' ("
OnPostChangeEmailAsyncee) ?
(ee? @
)ee@ A
{ff 	
vargg 
usergg 
=gg 
awaitgg 
_userManagergg )
.gg) *
GetUserAsyncgg* 6
(gg6 7
Usergg7 ;
)gg; <
;gg< =
ifhh 
(hh 
userhh 
==hh 
nullhh 
)hh 
{ii 
returnjj 
NotFoundjj 
(jj  
$"jj  "
$strjj" ?
{jj? @
_userManagerjj@ L
.jjL M
	GetUserIdjjM V
(jjV W
UserjjW [
)jj[ \
}jj\ ]
$strjj] _
"jj_ `
)jj` a
;jja b
}kk 
ifmm 
(mm 
!mm 

ModelStatemm 
.mm 
IsValidmm #
)mm# $
{nn 
awaitoo 
	LoadAsyncoo 
(oo  
useroo  $
)oo$ %
;oo% &
returnpp 
Pagepp 
(pp 
)pp 
;pp 
}qq 
varss 
emailss 
=ss 
awaitss 
_userManagerss *
.ss* +
GetEmailAsyncss+ 8
(ss8 9
userss9 =
)ss= >
;ss> ?
iftt 
(tt 
Inputtt 
.tt 
NewEmailtt 
!=tt !
emailtt" '
)tt' (
{uu 
varvv 
userIdvv 
=vv 
awaitvv "
_userManagervv# /
.vv/ 0
GetUserIdAsyncvv0 >
(vv> ?
uservv? C
)vvC D
;vvD E
varww 
codeww 
=ww 
awaitww  
_userManagerww! -
.ww- .)
GenerateChangeEmailTokenAsyncww. K
(wwK L
userwwL P
,wwP Q
InputwwR W
.wwW X
NewEmailwwX `
)ww` a
;wwa b
codexx 
=xx 
WebEncodersxx "
.xx" #
Base64UrlEncodexx# 2
(xx2 3
Encodingxx3 ;
.xx; <
UTF8xx< @
.xx@ A
GetBytesxxA I
(xxI J
codexxJ N
)xxN O
)xxO P
;xxP Q
varyy 
callbackUrlyy 
=yy  !
Urlyy" %
.yy% &
Pageyy& *
(yy* +
$strzz 1
,zz1 2
pageHandler{{ 
:{{  
null{{! %
,{{% &
values|| 
:|| 
new|| 
{||  !
area||" &
=||' (
$str||) 3
,||3 4
userId||5 ;
=||< =
userId||> D
,||D E
email||F K
=||L M
Input||N S
.||S T
NewEmail||T \
,||\ ]
code||^ b
=||c d
code||e i
}||j k
,||k l
protocol}} 
:}} 
Request}} %
.}}% &
Scheme}}& ,
)}}, -
;}}- .
await~~ 
_emailSender~~ "
.~~" #
SendEmailAsync~~# 1
(~~1 2
Input 
. 
NewEmail "
," #
$str
�� (
,
��( )
$"
�� 
$str
�� >
{
��> ?
HtmlEncoder
��? J
.
��J K
Default
��K R
.
��R S
Encode
��S Y
(
��Y Z
callbackUrl
��Z e
)
��e f
}
��f g
$str
��g {
"
��{ |
)
��| }
;
��} ~
StatusMessage
�� 
=
�� 
$str
��  b
;
��b c
return
�� 
RedirectToPage
�� %
(
��% &
)
��& '
;
��' (
}
�� 
StatusMessage
�� 
=
�� 
$str
�� 6
;
��6 7
return
�� 
RedirectToPage
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (.
 OnPostSendVerificationEmailAsync
��) I
(
��I J
)
��J K
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
GetUserAsync
��* 6
(
��6 7
User
��7 ;
)
��; <
;
��< =
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
NotFound
�� 
(
��  
$"
��  "
$str
��" ?
{
��? @
_userManager
��@ L
.
��L M
	GetUserId
��M V
(
��V W
User
��W [
)
��[ \
}
��\ ]
$str
��] _
"
��_ `
)
��` a
;
��a b
}
�� 
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
await
�� 
	LoadAsync
�� 
(
��  
user
��  $
)
��$ %
;
��% &
return
�� 
Page
�� 
(
�� 
)
�� 
;
�� 
}
�� 
var
�� 
userId
�� 
=
�� 
await
�� 
_userManager
�� +
.
��+ ,
GetUserIdAsync
��, :
(
��: ;
user
��; ?
)
��? @
;
��@ A
var
�� 
email
�� 
=
�� 
await
�� 
_userManager
�� *
.
��* +
GetEmailAsync
��+ 8
(
��8 9
user
��9 =
)
��= >
;
��> ?
var
�� 
code
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *1
#GenerateEmailConfirmationTokenAsync
��* M
(
��M N
user
��N R
)
��R S
;
��S T
code
�� 
=
�� 
WebEncoders
�� 
.
�� 
Base64UrlEncode
�� .
(
��. /
Encoding
��/ 7
.
��7 8
UTF8
��8 <
.
��< =
GetBytes
��= E
(
��E F
code
��F J
)
��J K
)
��K L
;
��L M
var
�� 
callbackUrl
�� 
=
�� 
Url
�� !
.
��! "
Page
��" &
(
��& '
$str
�� '
,
��' (
pageHandler
�� 
:
�� 
null
�� !
,
��! "
values
�� 
:
�� 
new
�� 
{
�� 
area
�� "
=
��# $
$str
��% /
,
��/ 0
userId
��1 7
=
��8 9
userId
��: @
,
��@ A
code
��B F
=
��G H
code
��I M
}
��N O
,
��O P
protocol
�� 
:
�� 
Request
�� !
.
��! "
Scheme
��" (
)
��( )
;
��) *
await
�� 
_emailSender
�� 
.
�� 
SendEmailAsync
�� -
(
��- .
email
�� 
,
�� 
$str
�� $
,
��$ %
$"
�� 
$str
�� :
{
��: ;
HtmlEncoder
��; F
.
��F G
Default
��G N
.
��N O
Encode
��O U
(
��U V
callbackUrl
��V a
)
��a b
}
��b c
$str
��c w
"
��w x
)
��x y
;
��y z
StatusMessage
�� 
=
�� 
$str
�� O
;
��O P
return
�� 
RedirectToPage
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
}
�� 
}�� �g
tC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\EnableAuthenticator.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class $
EnableAuthenticatorModel )
:* +
	PageModel, 5
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !$
EnableAuthenticatorModel! 9
>9 :
_logger; B
;B C
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
const 
string "
AuthenticatorUriFormat 3
=4 5
$str6 m
;m n
public $
EnableAuthenticatorModel '
(' (
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< $
EnableAuthenticatorModel ,
>, -
logger. 4
,4 5

UrlEncoder 

urlEncoder !
)! "
{ 	
_userManager   
=   
userManager   &
;  & '
_logger!! 
=!! 
logger!! 
;!! 
_urlEncoder"" 
="" 

urlEncoder"" $
;""$ %
}## 	
public)) 
string)) 
	SharedKey)) 
{))  !
get))" %
;))% &
set))' *
;))* +
})), -
public// 
string// 
AuthenticatorUri// &
{//' (
get//) ,
;//, -
set//. 1
;//1 2
}//3 4
[55 	
TempData55	 
]55 
public66 
string66 
[66 
]66 
RecoveryCodes66 %
{66& '
get66( +
;66+ ,
set66- 0
;660 1
}662 3
[<< 	
TempData<<	 
]<< 
public== 
string== 
StatusMessage== #
{==$ %
get==& )
;==) *
set==+ .
;==. /
}==0 1
[CC 	
BindPropertyCC	 
]CC 
publicDD 

InputModelDD 
InputDD 
{DD  !
getDD" %
;DD% &
setDD' *
;DD* +
}DD, -
publicJJ 
classJJ 

InputModelJJ 
{KK 	
[PP 
RequiredPP 
]PP 
[QQ 
StringLengthQQ 
(QQ 
$numQQ 
,QQ 
ErrorMessageQQ )
=QQ* +
$strQQ, j
,QQj k
MinimumLengthQQl y
=QQz {
$numQQ| }
)QQ} ~
]QQ~ 
[RR 
DataTypeRR 
(RR 
DataTypeRR 
.RR 
TextRR #
)RR# $
]RR$ %
[SS 
DisplaySS 
(SS 
NameSS 
=SS 
$strSS /
)SS/ 0
]SS0 1
publicTT 
stringTT 
CodeTT 
{TT  
getTT! $
;TT$ %
setTT& )
;TT) *
}TT+ ,
}UU 	
publicWW 
asyncWW 
TaskWW 
<WW 
IActionResultWW '
>WW' (

OnGetAsyncWW) 3
(WW3 4
)WW4 5
{XX 	
varYY 
userYY 
=YY 
awaitYY 
_userManagerYY )
.YY) *
GetUserAsyncYY* 6
(YY6 7
UserYY7 ;
)YY; <
;YY< =
ifZZ 
(ZZ 
userZZ 
==ZZ 
nullZZ 
)ZZ 
{[[ 
return\\ 
NotFound\\ 
(\\  
$"\\  "
$str\\" ?
{\\? @
_userManager\\@ L
.\\L M
	GetUserId\\M V
(\\V W
User\\W [
)\\[ \
}\\\ ]
$str\\] _
"\\_ `
)\\` a
;\\a b
}]] 
await__ *
LoadSharedKeyAndQrCodeUriAsync__ 0
(__0 1
user__1 5
)__5 6
;__6 7
returnaa 
Pageaa 
(aa 
)aa 
;aa 
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
IActionResultdd '
>dd' (
OnPostAsyncdd) 4
(dd4 5
)dd5 6
{ee 	
varff 
userff 
=ff 
awaitff 
_userManagerff )
.ff) *
GetUserAsyncff* 6
(ff6 7
Userff7 ;
)ff; <
;ff< =
ifgg 
(gg 
usergg 
==gg 
nullgg 
)gg 
{hh 
returnii 
NotFoundii 
(ii  
$"ii  "
$strii" ?
{ii? @
_userManagerii@ L
.iiL M
	GetUserIdiiM V
(iiV W
UseriiW [
)ii[ \
}ii\ ]
$strii] _
"ii_ `
)ii` a
;iia b
}jj 
ifll 
(ll 
!ll 

ModelStatell 
.ll 
IsValidll #
)ll# $
{mm 
awaitnn *
LoadSharedKeyAndQrCodeUriAsyncnn 4
(nn4 5
usernn5 9
)nn9 :
;nn: ;
returnoo 
Pageoo 
(oo 
)oo 
;oo 
}pp 
varss 
verificationCodess  
=ss! "
Inputss# (
.ss( )
Codess) -
.ss- .
Replacess. 5
(ss5 6
$strss6 9
,ss9 :
stringss; A
.ssA B
EmptyssB G
)ssG H
.ssH I
ReplacessI P
(ssP Q
$strssQ T
,ssT U
stringssV \
.ss\ ]
Emptyss] b
)ssb c
;ssc d
varuu 
is2faTokenValiduu 
=uu  !
awaituu" '
_userManageruu( 4
.uu4 5%
VerifyTwoFactorTokenAsyncuu5 N
(uuN O
uservv 
,vv 
_userManagervv "
.vv" #
Optionsvv# *
.vv* +
Tokensvv+ 1
.vv1 2&
AuthenticatorTokenProvidervv2 L
,vvL M
verificationCodevvN ^
)vv^ _
;vv_ `
ifxx 
(xx 
!xx 
is2faTokenValidxx  
)xx  !
{yy 

ModelStatezz 
.zz 
AddModelErrorzz (
(zz( )
$strzz) 5
,zz5 6
$strzz7 V
)zzV W
;zzW X
await{{ *
LoadSharedKeyAndQrCodeUriAsync{{ 4
({{4 5
user{{5 9
){{9 :
;{{: ;
return|| 
Page|| 
(|| 
)|| 
;|| 
}}} 
await 
_userManager 
. $
SetTwoFactorEnabledAsync 7
(7 8
user8 <
,< =
true> B
)B C
;C D
var
�� 
userId
�� 
=
�� 
await
�� 
_userManager
�� +
.
��+ ,
GetUserIdAsync
��, :
(
��: ;
user
��; ?
)
��? @
;
��@ A
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$str
��# g
,
��g h
userId
��i o
)
��o p
;
��p q
StatusMessage
�� 
=
�� 
$str
�� G
;
��G H
if
�� 
(
�� 
await
�� 
_userManager
�� "
.
��" #%
CountRecoveryCodesAsync
��# :
(
��: ;
user
��; ?
)
��? @
==
��A C
$num
��D E
)
��E F
{
�� 
var
�� 
recoveryCodes
�� !
=
��" #
await
��$ )
_userManager
��* 6
.
��6 74
&GenerateNewTwoFactorRecoveryCodesAsync
��7 ]
(
��] ^
user
��^ b
,
��b c
$num
��d f
)
��f g
;
��g h
RecoveryCodes
�� 
=
�� 
recoveryCodes
��  -
.
��- .
ToArray
��. 5
(
��5 6
)
��6 7
;
��7 8
return
�� 
RedirectToPage
�� %
(
��% &
$str
��& ;
)
��; <
;
��< =
}
�� 
else
�� 
{
�� 
return
�� 
RedirectToPage
�� %
(
��% &
$str
��& A
)
��A B
;
��B C
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� ,
LoadSharedKeyAndQrCodeUriAsync
�� 9
(
��9 :
IdentityUser
��: F
user
��G K
)
��K L
{
�� 	
var
�� 
unformattedKey
�� 
=
��  
await
��! &
_userManager
��' 3
.
��3 4&
GetAuthenticatorKeyAsync
��4 L
(
��L M
user
��M Q
)
��Q R
;
��R S
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
unformattedKey
��% 3
)
��3 4
)
��4 5
{
�� 
await
�� 
_userManager
�� "
.
��" #(
ResetAuthenticatorKeyAsync
��# =
(
��= >
user
��> B
)
��B C
;
��C D
unformattedKey
�� 
=
��  
await
��! &
_userManager
��' 3
.
��3 4&
GetAuthenticatorKeyAsync
��4 L
(
��L M
user
��M Q
)
��Q R
;
��R S
}
�� 
	SharedKey
�� 
=
�� 
	FormatKey
�� !
(
��! "
unformattedKey
��" 0
)
��0 1
;
��1 2
var
�� 
email
�� 
=
�� 
await
�� 
_userManager
�� *
.
��* +
GetEmailAsync
��+ 8
(
��8 9
user
��9 =
)
��= >
;
��> ?
AuthenticatorUri
�� 
=
�� 
GenerateQrCodeUri
�� 0
(
��0 1
email
��1 6
,
��6 7
unformattedKey
��8 F
)
��F G
;
��G H
}
�� 	
private
�� 
string
�� 
	FormatKey
��  
(
��  !
string
��! '
unformattedKey
��( 6
)
��6 7
{
�� 	
var
�� 
result
�� 
=
�� 
new
�� 
StringBuilder
�� *
(
��* +
)
��+ ,
;
��, -
int
�� 
currentPosition
�� 
=
��  !
$num
��" #
;
��# $
while
�� 
(
�� 
currentPosition
�� "
+
��# $
$num
��% &
<
��' (
unformattedKey
��) 7
.
��7 8
Length
��8 >
)
��> ?
{
�� 
result
�� 
.
�� 
Append
�� 
(
�� 
unformattedKey
�� ,
.
��, -
AsSpan
��- 3
(
��3 4
currentPosition
��4 C
,
��C D
$num
��E F
)
��F G
)
��G H
.
��H I
Append
��I O
(
��O P
$char
��P S
)
��S T
;
��T U
currentPosition
�� 
+=
��  "
$num
��# $
;
��$ %
}
�� 
if
�� 
(
�� 
currentPosition
�� 
<
��  !
unformattedKey
��" 0
.
��0 1
Length
��1 7
)
��7 8
{
�� 
result
�� 
.
�� 
Append
�� 
(
�� 
unformattedKey
�� ,
.
��, -
AsSpan
��- 3
(
��3 4
currentPosition
��4 C
)
��C D
)
��D E
;
��E F
}
�� 
return
�� 
result
�� 
.
�� 
ToString
�� "
(
��" #
)
��# $
.
��$ %
ToLowerInvariant
��% 5
(
��5 6
)
��6 7
;
��7 8
}
�� 	
private
�� 
string
�� 
GenerateQrCodeUri
�� (
(
��( )
string
��) /
email
��0 5
,
��5 6
string
��7 =
unformattedKey
��> L
)
��L M
{
�� 	
return
�� 
string
�� 
.
�� 
Format
��  
(
��  !
CultureInfo
�� 
.
�� 
InvariantCulture
�� ,
,
��, -$
AuthenticatorUriFormat
�� &
,
��& '
_urlEncoder
�� 
.
�� 
Encode
�� "
(
��" #
$str
��# E
)
��E F
,
��F G
_urlEncoder
�� 
.
�� 
Encode
�� "
(
��" #
email
��# (
)
��( )
,
��) *
unformattedKey
�� 
)
�� 
;
��  
}
�� 	
}
�� 
}�� �T
oC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\ExternalLogins.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class 
ExternalLoginsModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 

IUserStore #
<# $
IdentityUser$ 0
>0 1

_userStore2 <
;< =
public 
ExternalLoginsModel "
(" #
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6

IUserStore 
< 
IdentityUser #
># $
	userStore% .
). /
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +

_userStore 
= 
	userStore "
;" #
} 	
public%% 
IList%% 
<%% 
UserLoginInfo%% "
>%%" #
CurrentLogins%%$ 1
{%%2 3
get%%4 7
;%%7 8
set%%9 <
;%%< =
}%%> ?
public++ 
IList++ 
<++  
AuthenticationScheme++ )
>++) *
OtherLogins+++ 6
{++7 8
get++9 <
;++< =
set++> A
;++A B
}++C D
public11 
bool11 
ShowRemoveButton11 $
{11% &
get11' *
;11* +
set11, /
;11/ 0
}111 2
[77 	
TempData77	 
]77 
public88 
string88 
StatusMessage88 #
{88$ %
get88& )
;88) *
set88+ .
;88. /
}880 1
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (

OnGetAsync::) 3
(::3 4
)::4 5
{;; 	
var<< 
user<< 
=<< 
await<< 
_userManager<< )
.<<) *
GetUserAsync<<* 6
(<<6 7
User<<7 ;
)<<; <
;<<< =
if== 
(== 
user== 
==== 
null== 
)== 
{>> 
return?? 
NotFound?? 
(??  
$"??  "
$str??" ?
{??? @
_userManager??@ L
.??L M
	GetUserId??M V
(??V W
User??W [
)??[ \
}??\ ]
$str??] _
"??_ `
)??` a
;??a b
}@@ 
CurrentLoginsBB 
=BB 
awaitBB !
_userManagerBB" .
.BB. /
GetLoginsAsyncBB/ =
(BB= >
userBB> B
)BBB C
;BBC D
OtherLoginsCC 
=CC 
(CC 
awaitCC  
_signInManagerCC! /
.CC/ 01
%GetExternalAuthenticationSchemesAsyncCC0 U
(CCU V
)CCV W
)CCW X
.DD 
WhereDD 
(DD 
authDD 
=>DD 
CurrentLoginsDD ,
.DD, -
AllDD- 0
(DD0 1
ulDD1 3
=>DD4 6
authDD7 ;
.DD; <
NameDD< @
!=DDA C
ulDDD F
.DDF G
LoginProviderDDG T
)DDT U
)DDU V
.EE 
ToListEE 
(EE 
)EE 
;EE 
stringGG 
passwordHashGG 
=GG  !
nullGG" &
;GG& '
ifHH 
(HH 

_userStoreHH 
isHH 
IUserPasswordStoreHH 0
<HH0 1
IdentityUserHH1 =
>HH= >
userPasswordStoreHH? P
)HHP Q
{II 
passwordHashJJ 
=JJ 
awaitJJ $
userPasswordStoreJJ% 6
.JJ6 7 
GetPasswordHashAsyncJJ7 K
(JJK L
userJJL P
,JJP Q
HttpContextJJR ]
.JJ] ^
RequestAbortedJJ^ l
)JJl m
;JJm n
}KK 
ShowRemoveButtonMM 
=MM 
passwordHashMM +
!=MM, .
nullMM/ 3
||MM4 6
CurrentLoginsMM7 D
.MMD E
CountMME J
>MMK L
$numMMM N
;MMN O
returnNN 
PageNN 
(NN 
)NN 
;NN 
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IActionResultQQ '
>QQ' ("
OnPostRemoveLoginAsyncQQ) ?
(QQ? @
stringQQ@ F
loginProviderQQG T
,QQT U
stringQQV \
providerKeyQQ] h
)QQh i
{RR 	
varSS 
userSS 
=SS 
awaitSS 
_userManagerSS )
.SS) *
GetUserAsyncSS* 6
(SS6 7
UserSS7 ;
)SS; <
;SS< =
ifTT 
(TT 
userTT 
==TT 
nullTT 
)TT 
{UU 
returnVV 
NotFoundVV 
(VV  
$"VV  "
$strVV" ?
{VV? @
_userManagerVV@ L
.VVL M
	GetUserIdVVM V
(VVV W
UserVVW [
)VV[ \
}VV\ ]
$strVV] _
"VV_ `
)VV` a
;VVa b
}WW 
varYY 
resultYY 
=YY 
awaitYY 
_userManagerYY +
.YY+ ,
RemoveLoginAsyncYY, <
(YY< =
userYY= A
,YYA B
loginProviderYYC P
,YYP Q
providerKeyYYR ]
)YY] ^
;YY^ _
ifZZ 
(ZZ 
!ZZ 
resultZZ 
.ZZ 
	SucceededZZ !
)ZZ! "
{[[ 
StatusMessage\\ 
=\\ 
$str\\  E
;\\E F
return]] 
RedirectToPage]] %
(]]% &
)]]& '
;]]' (
}^^ 
await`` 
_signInManager``  
.``  !
RefreshSignInAsync``! 3
(``3 4
user``4 8
)``8 9
;``9 :
StatusMessageaa 
=aa 
$straa =
;aa= >
returnbb 
RedirectToPagebb !
(bb! "
)bb" #
;bb# $
}cc 	
publicee 
asyncee 
Taskee 
<ee 
IActionResultee '
>ee' ( 
OnPostLinkLoginAsyncee) =
(ee= >
stringee> D
providereeE M
)eeM N
{ff 	
awaithh 
HttpContexthh 
.hh 
SignOutAsynchh *
(hh* +
IdentityConstantshh+ <
.hh< =
ExternalSchemehh= K
)hhK L
;hhL M
varkk 
redirectUrlkk 
=kk 
Urlkk !
.kk! "
Pagekk" &
(kk& '
$strkk' 9
,kk9 :
pageHandlerkk; F
:kkF G
$strkkH [
)kk[ \
;kk\ ]
varll 

propertiesll 
=ll 
_signInManagerll +
.ll+ ,5
)ConfigureExternalAuthenticationPropertiesll, U
(llU V
providerllV ^
,ll^ _
redirectUrlll` k
,llk l
_userManagerllm y
.lly z
	GetUserId	llz �
(
ll� �
User
ll� �
)
ll� �
)
ll� �
;
ll� �
returnmm 
newmm 
ChallengeResultmm &
(mm& '
providermm' /
,mm/ 0

propertiesmm1 ;
)mm; <
;mm< =
}nn 	
publicpp 
asyncpp 
Taskpp 
<pp 
IActionResultpp '
>pp' ('
OnGetLinkLoginCallbackAsyncpp) D
(ppD E
)ppE F
{qq 	
varrr 
userrr 
=rr 
awaitrr 
_userManagerrr )
.rr) *
GetUserAsyncrr* 6
(rr6 7
Userrr7 ;
)rr; <
;rr< =
ifss 
(ss 
userss 
==ss 
nullss 
)ss 
{tt 
returnuu 
NotFounduu 
(uu  
$"uu  "
$struu" ?
{uu? @
_userManageruu@ L
.uuL M
	GetUserIduuM V
(uuV W
UseruuW [
)uu[ \
}uu\ ]
$struu] _
"uu_ `
)uu` a
;uua b
}vv 
varxx 
userIdxx 
=xx 
awaitxx 
_userManagerxx +
.xx+ ,
GetUserIdAsyncxx, :
(xx: ;
userxx; ?
)xx? @
;xx@ A
varyy 
infoyy 
=yy 
awaityy 
_signInManageryy +
.yy+ ,%
GetExternalLoginInfoAsyncyy, E
(yyE F
userIdyyF L
)yyL M
;yyM N
ifzz 
(zz 
infozz 
==zz 
nullzz 
)zz 
{{{ 
throw|| 
new|| %
InvalidOperationException|| 3
(||3 4
$"||4 6
$str||6 l
"||l m
)||m n
;||n o
}}} 
var 
result 
= 
await 
_userManager +
.+ ,
AddLoginAsync, 9
(9 :
user: >
,> ?
info@ D
)D E
;E F
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
StatusMessage
�� 
=
�� 
$str
��  |
;
��| }
return
�� 
RedirectToPage
�� %
(
��% &
)
��& '
;
��' (
}
�� 
await
�� 
HttpContext
�� 
.
�� 
SignOutAsync
�� *
(
��* +
IdentityConstants
��+ <
.
��< =
ExternalScheme
��= K
)
��K L
;
��L M
StatusMessage
�� 
=
�� 
$str
�� ;
;
��; <
return
�� 
RedirectToPage
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
}
�� 
}�� �+
vC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\GenerateRecoveryCodes.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class &
GenerateRecoveryCodesModel +
:, -
	PageModel. 7
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !&
GenerateRecoveryCodesModel! ;
>; <
_logger= D
;D E
public &
GenerateRecoveryCodesModel )
() *
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< &
GenerateRecoveryCodesModel .
>. /
logger0 6
)6 7
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[   	
TempData  	 
]   
public!! 
string!! 
[!! 
]!! 
RecoveryCodes!! %
{!!& '
get!!( +
;!!+ ,
set!!- 0
;!!0 1
}!!2 3
['' 	
TempData''	 
]'' 
public(( 
string(( 
StatusMessage(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (

OnGetAsync**) 3
(**3 4
)**4 5
{++ 	
var,, 
user,, 
=,, 
await,, 
_userManager,, )
.,,) *
GetUserAsync,,* 6
(,,6 7
User,,7 ;
),,; <
;,,< =
if-- 
(-- 
user-- 
==-- 
null-- 
)-- 
{.. 
return// 
NotFound// 
(//  
$"//  "
$str//" ?
{//? @
_userManager//@ L
.//L M
	GetUserId//M V
(//V W
User//W [
)//[ \
}//\ ]
$str//] _
"//_ `
)//` a
;//a b
}00 
var22 
isTwoFactorEnabled22 "
=22# $
await22% *
_userManager22+ 7
.227 8$
GetTwoFactorEnabledAsync228 P
(22P Q
user22Q U
)22U V
;22V W
if33 
(33 
!33 
isTwoFactorEnabled33 #
)33# $
{44 
throw55 
new55 %
InvalidOperationException55 3
(553 4
$"554 6
$str	556 �
"
55� �
)
55� �
;
55� �
}66 
return88 
Page88 
(88 
)88 
;88 
}99 	
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (
OnPostAsync;;) 4
(;;4 5
);;5 6
{<< 	
var== 
user== 
=== 
await== 
_userManager== )
.==) *
GetUserAsync==* 6
(==6 7
User==7 ;
)==; <
;==< =
if>> 
(>> 
user>> 
==>> 
null>> 
)>> 
{?? 
return@@ 
NotFound@@ 
(@@  
$"@@  "
$str@@" ?
{@@? @
_userManager@@@ L
.@@L M
	GetUserId@@M V
(@@V W
User@@W [
)@@[ \
}@@\ ]
$str@@] _
"@@_ `
)@@` a
;@@a b
}AA 
varCC 
isTwoFactorEnabledCC "
=CC# $
awaitCC% *
_userManagerCC+ 7
.CC7 8$
GetTwoFactorEnabledAsyncCC8 P
(CCP Q
userCCQ U
)CCU V
;CCV W
varDD 
userIdDD 
=DD 
awaitDD 
_userManagerDD +
.DD+ ,
GetUserIdAsyncDD, :
(DD: ;
userDD; ?
)DD? @
;DD@ A
ifEE 
(EE 
!EE 
isTwoFactorEnabledEE #
)EE# $
{FF 
throwGG 
newGG %
InvalidOperationExceptionGG 3
(GG3 4
$"GG4 6
$strGG6 ~
"GG~ 
)	GG �
;
GG� �
}HH 
varJJ 
recoveryCodesJJ 
=JJ 
awaitJJ  %
_userManagerJJ& 2
.JJ2 32
&GenerateNewTwoFactorRecoveryCodesAsyncJJ3 Y
(JJY Z
userJJZ ^
,JJ^ _
$numJJ` b
)JJb c
;JJc d
RecoveryCodesKK 
=KK 
recoveryCodesKK )
.KK) *
ToArrayKK* 1
(KK1 2
)KK2 3
;KK3 4
_loggerMM 
.MM 
LogInformationMM "
(MM" #
$strMM# b
,MMb c
userIdMMd j
)MMj k
;MMk l
StatusMessageNN 
=NN 
$strNN D
;NND E
returnOO 
RedirectToPageOO !
(OO! "
$strOO" 7
)OO7 8
;OO8 9
}PP 	
}QQ 
}RR �4
fC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\Index.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class 

IndexModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 

IndexModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public   
string   
Username   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
StatusMessage'' #
{''$ %
get''& )
;'') *
set''+ .
;''. /
}''0 1
[-- 	
BindProperty--	 
]-- 
public.. 

InputModel.. 
Input.. 
{..  !
get.." %
;..% &
set..' *
;..* +
}.., -
public44 
class44 

InputModel44 
{55 	
[:: 
Phone:: 
]:: 
[;; 
Display;; 
(;; 
Name;; 
=;; 
$str;; *
);;* +
];;+ ,
public<< 
string<< 
PhoneNumber<< %
{<<& '
get<<( +
;<<+ ,
set<<- 0
;<<0 1
}<<2 3
}== 	
private?? 
async?? 
Task?? 
	LoadAsync?? $
(??$ %
IdentityUser??% 1
user??2 6
)??6 7
{@@ 	
varAA 
userNameAA 
=AA 
awaitAA  
_userManagerAA! -
.AA- .
GetUserNameAsyncAA. >
(AA> ?
userAA? C
)AAC D
;AAD E
varBB 
phoneNumberBB 
=BB 
awaitBB #
_userManagerBB$ 0
.BB0 1
GetPhoneNumberAsyncBB1 D
(BBD E
userBBE I
)BBI J
;BBJ K
UsernameDD 
=DD 
userNameDD 
;DD  
InputFF 
=FF 
newFF 

InputModelFF "
{GG 
PhoneNumberHH 
=HH 
phoneNumberHH )
}II 
;II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (

OnGetAsyncLL) 3
(LL3 4
)LL4 5
{MM 	
varNN 
userNN 
=NN 
awaitNN 
_userManagerNN )
.NN) *
GetUserAsyncNN* 6
(NN6 7
UserNN7 ;
)NN; <
;NN< =
ifOO 
(OO 
userOO 
==OO 
nullOO 
)OO 
{PP 
returnQQ 
NotFoundQQ 
(QQ  
$"QQ  "
$strQQ" ?
{QQ? @
_userManagerQQ@ L
.QQL M
	GetUserIdQQM V
(QQV W
UserQQW [
)QQ[ \
}QQ\ ]
$strQQ] _
"QQ_ `
)QQ` a
;QQa b
}RR 
awaitTT 
	LoadAsyncTT 
(TT 
userTT  
)TT  !
;TT! "
returnUU 
PageUU 
(UU 
)UU 
;UU 
}VV 	
publicXX 
asyncXX 
TaskXX 
<XX 
IActionResultXX '
>XX' (
OnPostAsyncXX) 4
(XX4 5
)XX5 6
{YY 	
varZZ 
userZZ 
=ZZ 
awaitZZ 
_userManagerZZ )
.ZZ) *
GetUserAsyncZZ* 6
(ZZ6 7
UserZZ7 ;
)ZZ; <
;ZZ< =
if[[ 
([[ 
user[[ 
==[[ 
null[[ 
)[[ 
{\\ 
return]] 
NotFound]] 
(]]  
$"]]  "
$str]]" ?
{]]? @
_userManager]]@ L
.]]L M
	GetUserId]]M V
(]]V W
User]]W [
)]][ \
}]]\ ]
$str]]] _
"]]_ `
)]]` a
;]]a b
}^^ 
if`` 
(`` 
!`` 

ModelState`` 
.`` 
IsValid`` #
)``# $
{aa 
awaitbb 
	LoadAsyncbb 
(bb  
userbb  $
)bb$ %
;bb% &
returncc 
Pagecc 
(cc 
)cc 
;cc 
}dd 
varff 
phoneNumberff 
=ff 
awaitff #
_userManagerff$ 0
.ff0 1
GetPhoneNumberAsyncff1 D
(ffD E
userffE I
)ffI J
;ffJ K
ifgg 
(gg 
Inputgg 
.gg 
PhoneNumbergg !
!=gg" $
phoneNumbergg% 0
)gg0 1
{hh 
varii 
setPhoneResultii "
=ii# $
awaitii% *
_userManagerii+ 7
.ii7 8
SetPhoneNumberAsyncii8 K
(iiK L
useriiL P
,iiP Q
InputiiR W
.iiW X
PhoneNumberiiX c
)iic d
;iid e
ifjj 
(jj 
!jj 
setPhoneResultjj #
.jj# $
	Succeededjj$ -
)jj- .
{kk 
StatusMessagell !
=ll" #
$strll$ W
;llW X
returnmm 
RedirectToPagemm )
(mm) *
)mm* +
;mm+ ,
}nn 
}oo 
awaitqq 
_signInManagerqq  
.qq  !
RefreshSignInAsyncqq! 3
(qq3 4
userqq4 8
)qq8 9
;qq9 :
StatusMessagerr 
=rr 
$strrr ;
;rr; <
returnss 
RedirectToPagess !
(ss! "
)ss" #
;ss# $
}tt 	
}uu 
}vv �)
hC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\ManageNavPages.cs
	namespace 	
MovieTheatreWebApp 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{		 
public 

static 
class 
ManageNavPages &
{ 
public 
static 
string 
Index "
=># %
$str& -
;- .
public 
static 
string 
Email "
=># %
$str& -
;- .
public   
static   
string   
ChangePassword   +
=>  , .
$str  / ?
;  ? @
public&& 
static&& 
string&&  
DownloadPersonalData&& 1
=>&&2 4
$str&&5 K
;&&K L
public,, 
static,, 
string,, 
DeletePersonalData,, /
=>,,0 2
$str,,3 G
;,,G H
public22 
static22 
string22 
ExternalLogins22 +
=>22, .
$str22/ ?
;22? @
public88 
static88 
string88 
PersonalData88 )
=>88* ,
$str88- ;
;88; <
public>> 
static>> 
string>> #
TwoFactorAuthentication>> 4
=>>>5 7
$str>>8 Q
;>>Q R
publicDD 
staticDD 
stringDD 
IndexNavClassDD *
(DD* +
ViewContextDD+ 6
viewContextDD7 B
)DDB C
=>DDD F
PageNavClassDDG S
(DDS T
viewContextDDT _
,DD_ `
IndexDDa f
)DDf g
;DDg h
publicJJ 
staticJJ 
stringJJ 
EmailNavClassJJ *
(JJ* +
ViewContextJJ+ 6
viewContextJJ7 B
)JJB C
=>JJD F
PageNavClassJJG S
(JJS T
viewContextJJT _
,JJ_ `
EmailJJa f
)JJf g
;JJg h
publicPP 
staticPP 
stringPP "
ChangePasswordNavClassPP 3
(PP3 4
ViewContextPP4 ?
viewContextPP@ K
)PPK L
=>PPM O
PageNavClassPPP \
(PP\ ]
viewContextPP] h
,PPh i
ChangePasswordPPj x
)PPx y
;PPy z
publicVV 
staticVV 
stringVV (
DownloadPersonalDataNavClassVV 9
(VV9 :
ViewContextVV: E
viewContextVVF Q
)VVQ R
=>VVS U
PageNavClassVVV b
(VVb c
viewContextVVc n
,VVn o!
DownloadPersonalData	VVp �
)
VV� �
;
VV� �
public\\ 
static\\ 
string\\ &
DeletePersonalDataNavClass\\ 7
(\\7 8
ViewContext\\8 C
viewContext\\D O
)\\O P
=>\\Q S
PageNavClass\\T `
(\\` a
viewContext\\a l
,\\l m
DeletePersonalData	\\n �
)
\\� �
;
\\� �
publicbb 
staticbb 
stringbb "
ExternalLoginsNavClassbb 3
(bb3 4
ViewContextbb4 ?
viewContextbb@ K
)bbK L
=>bbM O
PageNavClassbbP \
(bb\ ]
viewContextbb] h
,bbh i
ExternalLoginsbbj x
)bbx y
;bby z
publichh 
statichh 
stringhh  
PersonalDataNavClasshh 1
(hh1 2
ViewContexthh2 =
viewContexthh> I
)hhI J
=>hhK M
PageNavClasshhN Z
(hhZ [
viewContexthh[ f
,hhf g
PersonalDatahhh t
)hht u
;hhu v
publicnn 
staticnn 
stringnn +
TwoFactorAuthenticationNavClassnn <
(nn< =
ViewContextnn= H
viewContextnnI T
)nnT U
=>nnV X
PageNavClassnnY e
(nne f
viewContextnnf q
,nnq r$
TwoFactorAuthentication	nns �
)
nn� �
;
nn� �
publictt 
statictt 
stringtt 
PageNavClasstt )
(tt) *
ViewContexttt* 5
viewContexttt6 A
,ttA B
stringttC I
pagettJ N
)ttN O
{uu 	
varvv 

activePagevv 
=vv 
viewContextvv (
.vv( )
ViewDatavv) 1
[vv1 2
$strvv2 >
]vv> ?
asvv@ B
stringvvC I
??ww 
Systemww 
.ww 
IOww 
.ww 
Pathww !
.ww! "'
GetFileNameWithoutExtensionww" =
(ww= >
viewContextww> I
.wwI J
ActionDescriptorwwJ Z
.wwZ [
DisplayNameww[ f
)wwf g
;wwg h
returnxx 
stringxx 
.xx 
Equalsxx  
(xx  !

activePagexx! +
,xx+ ,
pagexx- 1
,xx1 2
StringComparisonxx3 C
.xxC D
OrdinalIgnoreCasexxD U
)xxU V
?xxW X
$strxxY a
:xxb c
nullxxd h
;xxh i
}yy 	
}zz 
}{{ �
mC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\PersonalData.cshtml.cs
	namespace

 	
MovieTheatreWebApp


 
.

 
Areas

 "
.

" #
Identity

# +
.

+ ,
Pages

, 1
.

1 2
Account

2 9
.

9 :
Manage

: @
{ 
public 

class 
PersonalDataModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
PersonalDataModel! 2
>2 3
_logger4 ;
;; <
public 
PersonalDataModel  
(  !
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
PersonalDataModel %
>% &
logger' -
)- .
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
$"  "
$str" ?
{? @
_userManager@ L
.L M
	GetUserIdM V
(V W
UserW [
)[ \
}\ ]
$str] _
"_ `
)` a
;a b
} 
return!! 
Page!! 
(!! 
)!! 
;!! 
}"" 	
}## 
}$$ �%
sC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\ResetAuthenticator.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class #
ResetAuthenticatorModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !#
ResetAuthenticatorModel! 8
>8 9
_logger: A
;A B
public #
ResetAuthenticatorModel &
(& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< #
ResetAuthenticatorModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
["" 	
TempData""	 
]"" 
public## 
string## 
StatusMessage## #
{##$ %
get##& )
;##) *
set##+ .
;##. /
}##0 1
public%% 
async%% 
Task%% 
<%% 
IActionResult%% '
>%%' (
OnGet%%) .
(%%. /
)%%/ 0
{&& 	
var'' 
user'' 
='' 
await'' 
_userManager'' )
.'') *
GetUserAsync''* 6
(''6 7
User''7 ;
)''; <
;''< =
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
$"**  "
$str**" ?
{**? @
_userManager**@ L
.**L M
	GetUserId**M V
(**V W
User**W [
)**[ \
}**\ ]
$str**] _
"**_ `
)**` a
;**a b
}++ 
return-- 
Page-- 
(-- 
)-- 
;-- 
}.. 	
public00 
async00 
Task00 
<00 
IActionResult00 '
>00' (
OnPostAsync00) 4
(004 5
)005 6
{11 	
var22 
user22 
=22 
await22 
_userManager22 )
.22) *
GetUserAsync22* 6
(226 7
User227 ;
)22; <
;22< =
if33 
(33 
user33 
==33 
null33 
)33 
{44 
return55 
NotFound55 
(55  
$"55  "
$str55" ?
{55? @
_userManager55@ L
.55L M
	GetUserId55M V
(55V W
User55W [
)55[ \
}55\ ]
$str55] _
"55_ `
)55` a
;55a b
}66 
await88 
_userManager88 
.88 $
SetTwoFactorEnabledAsync88 7
(887 8
user888 <
,88< =
false88> C
)88C D
;88D E
await99 
_userManager99 
.99 &
ResetAuthenticatorKeyAsync99 9
(999 :
user99: >
)99> ?
;99? @
var:: 
userId:: 
=:: 
await:: 
_userManager:: +
.::+ ,
GetUserIdAsync::, :
(::: ;
user::; ?
)::? @
;::@ A
_logger;; 
.;; 
LogInformation;; "
(;;" #
$str;;# d
,;;d e
user;;f j
.;;j k
Id;;k m
);;m n
;;;n o
await== 
_signInManager==  
.==  !
RefreshSignInAsync==! 3
(==3 4
user==4 8
)==8 9
;==9 :
StatusMessage>> 
=>> 
$str	>> �
;
>>� �
return@@ 
RedirectToPage@@ !
(@@! "
$str@@" 9
)@@9 :
;@@: ;
}AA 	
}BB 
}CC �5
lC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\SetPassword.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class 
SetPasswordModel !
:" #
	PageModel$ -
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 
SetPasswordModel 
(  
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
BindProperty	 
] 
public   

InputModel   
Input   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
StatusMessage'' #
{''$ %
get''& )
;'') *
set''+ .
;''. /
}''0 1
public-- 
class-- 

InputModel-- 
{.. 	
[33 
Required33 
]33 
[44 
StringLength44 
(44 
$num44 
,44 
ErrorMessage44 +
=44, -
$str44. l
,44l m
MinimumLength44n {
=44| }
$num44~ 
)	44 �
]
44� �
[55 
DataType55 
(55 
DataType55 
.55 
Password55 '
)55' (
]55( )
[66 
Display66 
(66 
Name66 
=66 
$str66 *
)66* +
]66+ ,
public77 
string77 
NewPassword77 %
{77& '
get77( +
;77+ ,
set77- 0
;770 1
}772 3
[== 
DataType== 
(== 
DataType== 
.== 
Password== '
)==' (
]==( )
[>> 
Display>> 
(>> 
Name>> 
=>> 
$str>> 2
)>>2 3
]>>3 4
[?? 
Compare?? 
(?? 
$str?? "
,??" #
ErrorMessage??$ 0
=??1 2
$str??3 m
)??m n
]??n o
public@@ 
string@@ 
ConfirmPassword@@ )
{@@* +
get@@, /
;@@/ 0
set@@1 4
;@@4 5
}@@6 7
}AA 	
publicCC 
asyncCC 
TaskCC 
<CC 
IActionResultCC '
>CC' (

OnGetAsyncCC) 3
(CC3 4
)CC4 5
{DD 	
varEE 
userEE 
=EE 
awaitEE 
_userManagerEE )
.EE) *
GetUserAsyncEE* 6
(EE6 7
UserEE7 ;
)EE; <
;EE< =
ifFF 
(FF 
userFF 
==FF 
nullFF 
)FF 
{GG 
returnHH 
NotFoundHH 
(HH  
$"HH  "
$strHH" ?
{HH? @
_userManagerHH@ L
.HHL M
	GetUserIdHHM V
(HHV W
UserHHW [
)HH[ \
}HH\ ]
$strHH] _
"HH_ `
)HH` a
;HHa b
}II 
varKK 
hasPasswordKK 
=KK 
awaitKK #
_userManagerKK$ 0
.KK0 1
HasPasswordAsyncKK1 A
(KKA B
userKKB F
)KKF G
;KKG H
ifMM 
(MM 
hasPasswordMM 
)MM 
{NN 
returnOO 
RedirectToPageOO %
(OO% &
$strOO& 8
)OO8 9
;OO9 :
}PP 
returnRR 
PageRR 
(RR 
)RR 
;RR 
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
IActionResultUU '
>UU' (
OnPostAsyncUU) 4
(UU4 5
)UU5 6
{VV 	
ifWW 
(WW 
!WW 

ModelStateWW 
.WW 
IsValidWW #
)WW# $
{XX 
returnYY 
PageYY 
(YY 
)YY 
;YY 
}ZZ 
var\\ 
user\\ 
=\\ 
await\\ 
_userManager\\ )
.\\) *
GetUserAsync\\* 6
(\\6 7
User\\7 ;
)\\; <
;\\< =
if]] 
(]] 
user]] 
==]] 
null]] 
)]] 
{^^ 
return__ 
NotFound__ 
(__  
$"__  "
$str__" ?
{__? @
_userManager__@ L
.__L M
	GetUserId__M V
(__V W
User__W [
)__[ \
}__\ ]
$str__] _
"___ `
)__` a
;__a b
}`` 
varbb 
addPasswordResultbb !
=bb" #
awaitbb$ )
_userManagerbb* 6
.bb6 7
AddPasswordAsyncbb7 G
(bbG H
userbbH L
,bbL M
InputbbN S
.bbS T
NewPasswordbbT _
)bb_ `
;bb` a
ifcc 
(cc 
!cc 
addPasswordResultcc "
.cc" #
	Succeededcc# ,
)cc, -
{dd 
foreachee 
(ee 
varee 
erroree "
inee# %
addPasswordResultee& 7
.ee7 8
Errorsee8 >
)ee> ?
{ff 

ModelStategg 
.gg 
AddModelErrorgg ,
(gg, -
stringgg- 3
.gg3 4
Emptygg4 9
,gg9 :
errorgg; @
.gg@ A
DescriptionggA L
)ggL M
;ggM N
}hh 
returnii 
Pageii 
(ii 
)ii 
;ii 
}jj 
awaitll 
_signInManagerll  
.ll  !
RefreshSignInAsyncll! 3
(ll3 4
userll4 8
)ll8 9
;ll9 :
StatusMessagemm 
=mm 
$strmm 9
;mm9 :
returnoo 
RedirectToPageoo !
(oo! "
)oo" #
;oo# $
}pp 	
}qq 
}rr �
rC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\ShowRecoveryCodes.cshtml.cs
	namespace

 	
MovieTheatreWebApp


 
.

 
Areas

 "
.

" #
Identity

# +
.

+ ,
Pages

, 1
.

1 2
Account

2 9
.

9 :
Manage

: @
{ 
public 

class "
ShowRecoveryCodesModel '
:( )
	PageModel* 3
{ 
[ 	
TempData	 
] 
public 
string 
[ 
] 
RecoveryCodes %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public$$ 
IActionResult$$ 
OnGet$$ "
($$" #
)$$# $
{%% 	
if&& 
(&& 
RecoveryCodes&& 
==&&  
null&&! %
||&&& (
RecoveryCodes&&) 6
.&&6 7
Length&&7 =
==&&> @
$num&&A B
)&&B C
{'' 
return(( 
RedirectToPage(( %
(((% &
$str((& A
)((A B
;((B C
})) 
return++ 
Page++ 
(++ 
)++ 
;++ 
},, 	
}-- 
}.. �+
xC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Manage\TwoFactorAuthentication.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{ 
public 

class (
TwoFactorAuthenticationModel -
:. /
	PageModel0 9
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !(
TwoFactorAuthenticationModel! =
>= >
_logger? F
;F G
public (
TwoFactorAuthenticationModel +
(+ ,
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager3 @
<@ A
IdentityUserA M
>M N
signInManagerO \
,\ ]
ILogger^ e
<e f)
TwoFactorAuthenticationModel	f �
>
� �
logger
� �
)
� �
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public   
bool   
HasAuthenticator   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
public&& 
int&& 
RecoveryCodesLeft&& $
{&&% &
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
[,, 	
BindProperty,,	 
],, 
public-- 
bool-- 
Is2faEnabled--  
{--! "
get--# &
;--& '
set--( +
;--+ ,
}--- .
public33 
bool33 
IsMachineRemembered33 '
{33( )
get33* -
;33- .
set33/ 2
;332 3
}334 5
[99 	
TempData99	 
]99 
public:: 
string:: 
StatusMessage:: #
{::$ %
get::& )
;::) *
set::+ .
;::. /
}::0 1
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (

OnGetAsync<<) 3
(<<3 4
)<<4 5
{== 	
var>> 
user>> 
=>> 
await>> 
_userManager>> )
.>>) *
GetUserAsync>>* 6
(>>6 7
User>>7 ;
)>>; <
;>>< =
if?? 
(?? 
user?? 
==?? 
null?? 
)?? 
{@@ 
returnAA 
NotFoundAA 
(AA  
$"AA  "
$strAA" ?
{AA? @
_userManagerAA@ L
.AAL M
	GetUserIdAAM V
(AAV W
UserAAW [
)AA[ \
}AA\ ]
$strAA] _
"AA_ `
)AA` a
;AAa b
}BB 
HasAuthenticatorDD 
=DD 
awaitDD $
_userManagerDD% 1
.DD1 2$
GetAuthenticatorKeyAsyncDD2 J
(DDJ K
userDDK O
)DDO P
!=DDQ S
nullDDT X
;DDX Y
Is2faEnabledEE 
=EE 
awaitEE  
_userManagerEE! -
.EE- .$
GetTwoFactorEnabledAsyncEE. F
(EEF G
userEEG K
)EEK L
;EEL M
IsMachineRememberedFF 
=FF  !
awaitFF" '
_signInManagerFF( 6
.FF6 7,
 IsTwoFactorClientRememberedAsyncFF7 W
(FFW X
userFFX \
)FF\ ]
;FF] ^
RecoveryCodesLeftGG 
=GG 
awaitGG  %
_userManagerGG& 2
.GG2 3#
CountRecoveryCodesAsyncGG3 J
(GGJ K
userGGK O
)GGO P
;GGP Q
returnII 
PageII 
(II 
)II 
;II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
OnPostAsyncLL) 4
(LL4 5
)LL5 6
{MM 	
varNN 
userNN 
=NN 
awaitNN 
_userManagerNN )
.NN) *
GetUserAsyncNN* 6
(NN6 7
UserNN7 ;
)NN; <
;NN< =
ifOO 
(OO 
userOO 
==OO 
nullOO 
)OO 
{PP 
returnQQ 
NotFoundQQ 
(QQ  
$"QQ  "
$strQQ" ?
{QQ? @
_userManagerQQ@ L
.QQL M
	GetUserIdQQM V
(QQV W
UserQQW [
)QQ[ \
}QQ\ ]
$strQQ] _
"QQ_ `
)QQ` a
;QQa b
}RR 
awaitTT 
_signInManagerTT  
.TT  !&
ForgetTwoFactorClientAsyncTT! ;
(TT; <
)TT< =
;TT= >
StatusMessageUU 
=UU 
$str	UU �
;
UU� �
returnVV 
RedirectToPageVV !
(VV! "
)VV" #
;VV# $
}WW 	
}XX 
}YY �w
bC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 

IUserStore #
<# $
IdentityUser$ 0
>0 1

_userStore2 <
;< =
private 
readonly 
IUserEmailStore (
<( )
IdentityUser) 5
>5 6
_emailStore7 B
;B C
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
private   
RoleManager   
<   
IdentityRole   (
>  ( )
_roleManager  * 6
;  6 7
public"" 
RegisterModel"" 
("" 
UserManager## 
<## 
IdentityUser## $
>##$ %
userManager##& 1
,##1 2
RoleManager$$ 
<$$ 
IdentityRole$$ $
>$$$ %
roleManager$$& 1
,$$1 2

IUserStore%% 
<%% 
IdentityUser%% #
>%%# $
	userStore%%% .
,%%. /
SignInManager&& 
<&& 
IdentityUser&& &
>&&& '
signInManager&&( 5
,&&5 6
ILogger'' 
<'' 
RegisterModel'' !
>''! "
logger''# )
,'') *
IEmailSender(( 
emailSender(( $
)(($ %
{)) 	
_userManager** 
=** 
userManager** &
;**& '

_userStore++ 
=++ 
	userStore++ "
;++" #
_emailStore,, 
=,, 
GetEmailStore,, '
(,,' (
),,( )
;,,) *
_signInManager-- 
=-- 
signInManager-- *
;--* +
_logger.. 
=.. 
logger.. 
;.. 
_emailSender// 
=// 
emailSender// &
;//& '
_roleManager00 
=00 
roleManager00 &
;00& '
}11 	
[77 	
BindProperty77	 
]77 
public88 

InputModel88 
Input88 
{88  !
get88" %
;88% &
set88' *
;88* +
}88, -
public>> 
string>> 
	ReturnUrl>> 
{>>  !
get>>" %
;>>% &
set>>' *
;>>* +
}>>, -
publicDD 
IListDD 
<DD  
AuthenticationSchemeDD )
>DD) *
ExternalLoginsDD+ 9
{DD: ;
getDD< ?
;DD? @
setDDA D
;DDD E
}DDF G
publicJJ 
classJJ 

InputModelJJ 
{KK 	
[PP 
RequiredPP 
]PP 
[QQ 
EmailAddressQQ 
]QQ 
[RR 
DisplayRR 
(RR 
NameRR 
=RR 
$strRR #
)RR# $
]RR$ %
publicSS 
stringSS 
EmailSS 
{SS  !
getSS" %
;SS% &
setSS' *
;SS* +
}SS, -
[YY 
RequiredYY 
]YY 
[ZZ 
StringLengthZZ 
(ZZ 
$numZZ 
,ZZ 
ErrorMessageZZ *
=ZZ+ ,
$strZZ- k
,ZZk l
MinimumLengthZZm z
=ZZ{ |
$numZZ} ~
)ZZ~ 
]	ZZ �
[[[ 
DataType[[ 
([[ 
DataType[[ 
.[[ 
Password[[ '
)[[' (
][[( )
[\\ 
Display\\ 
(\\ 
Name\\ 
=\\ 
$str\\ &
)\\& '
]\\' (
public]] 
string]] 
Password]] "
{]]# $
get]]% (
;]]( )
set]]* -
;]]- .
}]]/ 0
publicee 
stringee 
roleIdee  
{ee! "
getee# &
;ee& '
setee( +
;ee+ ,
}ee- .
[gg 
Requiredgg 
]gg 
[hh 
DataTypehh 
(hh 
DataTypehh 
.hh 
Passwordhh '
)hh' (
]hh( )
[ii 
Displayii 
(ii 
Nameii 
=ii 
$strii .
)ii. /
]ii/ 0
[jj 
Comparejj 
(jj 
$strjj 
,jj  
ErrorMessagejj! -
=jj. /
$strjj0 f
)jjf g
]jjg h
publickk 
stringkk 
ConfirmPasswordkk )
{kk* +
getkk, /
;kk/ 0
setkk1 4
;kk4 5
}kk6 7
[ll 
Requiredll 
,ll 
	MaxLengthll 
(ll  
$numll  "
)ll" #
,ll# $
	MinLengthll$ -
(ll- .
$numll. 0
)ll0 1
]ll1 2
[mm 
DataTypemm 
(mm 
DataTypemm 
.mm 
PhoneNumbermm *
)mm* +
]mm+ ,
[nn 
Displaynn 
(nn 
Namenn 
=nn 
$strnn )
)nn) *
]nn* +
publicoo 
stringoo 
PhoneNumberoo %
{oo& '
getoo( +
;oo+ ,
setoo- 0
;oo0 1
}oo2 3
}rr 	
publicuu 
asyncuu 
Taskuu 

OnGetAsyncuu $
(uu$ %
stringuu% +
	returnUrluu, 5
=uu6 7
nulluu8 <
)uu< =
{vv 	
	ReturnUrlww 
=ww 
	returnUrlww !
;ww! "
ExternalLoginsxx 
=xx 
(xx 
awaitxx #
_signInManagerxx$ 2
.xx2 31
%GetExternalAuthenticationSchemesAsyncxx3 X
(xxX Y
)xxY Z
)xxZ [
.xx[ \
ToListxx\ b
(xxb c
)xxc d
;xxd e
}yy 	
public{{ 
async{{ 
Task{{ 
<{{ 
IActionResult{{ '
>{{' (
OnPostAsync{{) 4
({{4 5
string{{5 ;
	returnUrl{{< E
={{F G
null{{H L
){{L M
{|| 	
	returnUrl}} 
??=}} 
Url}} 
.}} 
Content}} %
(}}% &
$str}}& *
)}}* +
;}}+ ,
ExternalLogins~~ 
=~~ 
(~~ 
await~~ #
_signInManager~~$ 2
.~~2 31
%GetExternalAuthenticationSchemesAsync~~3 X
(~~X Y
)~~Y Z
)~~Z [
.~~[ \
ToList~~\ b
(~~b c
)~~c d
;~~d e
var 
role 
= 
_roleManager #
.# $
FindByIdAsync$ 1
(1 2
Input2 7
.7 8
roleId8 >
)> ?
.? @
Result@ F
;F G
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
user
�� 
=
�� 

CreateUser
�� %
(
��% &
)
��& '
;
��' (
user
�� 
.
�� 
PhoneNumber
��  
=
��! "
Input
��# (
.
��( )
PhoneNumber
��) 4
;
��4 5
await
�� 

_userStore
��  
.
��  !
SetUserNameAsync
��! 1
(
��1 2
user
��2 6
,
��6 7
Input
��8 =
.
��= >
Email
��> C
,
��C D
CancellationToken
��E V
.
��V W
None
��W [
)
��[ \
;
��\ ]
await
�� 
_emailStore
�� !
.
��! "
SetEmailAsync
��" /
(
��/ 0
user
��0 4
,
��4 5
Input
��6 ;
.
��; <
Email
��< A
,
��A B
CancellationToken
��C T
.
��T U
None
��U Y
)
��Y Z
;
��Z [
var
�� 
result
�� 
=
�� 
await
�� "
_userManager
��# /
.
��/ 0
CreateAsync
��0 ;
(
��; <
user
��< @
,
��@ A
Input
��B G
.
��G H
Password
��H P
)
��P Q
;
��Q R
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
_logger
�� 
.
�� 
LogInformation
�� *
(
��* +
$str
��+ V
)
��V W
;
��W X
await
�� 
_userManager
�� &
.
��& '
AddToRoleAsync
��' 5
(
��5 6
user
��6 :
,
��: ;
role
��; ?
.
��? @
Name
��@ D
.
��D E
Trim
��E I
(
��I J
)
��J K
)
��K L
;
��L M
var
�� 
userId
�� 
=
��  
await
��! &
_userManager
��' 3
.
��3 4
GetUserIdAsync
��4 B
(
��B C
user
��C G
)
��G H
;
��H I
var
�� 
code
�� 
=
�� 
await
�� $
_userManager
��% 1
.
��1 21
#GenerateEmailConfirmationTokenAsync
��2 U
(
��U V
user
��V Z
)
��Z [
;
��[ \
code
�� 
=
�� 
WebEncoders
�� &
.
��& '
Base64UrlEncode
��' 6
(
��6 7
Encoding
��7 ?
.
��? @
UTF8
��@ D
.
��D E
GetBytes
��E M
(
��M N
code
��N R
)
��R S
)
��S T
;
��T U
var
�� 
callbackUrl
�� #
=
��$ %
Url
��& )
.
��) *
Page
��* .
(
��. /
$str
�� /
,
��/ 0
pageHandler
�� #
:
��# $
null
��% )
,
��) *
values
�� 
:
�� 
new
��  #
{
��$ %
area
��& *
=
��+ ,
$str
��- 7
,
��7 8
userId
��9 ?
=
��@ A
userId
��B H
,
��H I
code
��J N
=
��O P
code
��Q U
,
��U V
	returnUrl
��W `
=
��a b
	returnUrl
��c l
}
��m n
,
��n o
protocol
��  
:
��  !
Request
��" )
.
��) *
Scheme
��* 0
)
��0 1
;
��1 2
await
�� 
_emailSender
�� &
.
��& '
SendEmailAsync
��' 5
(
��5 6
Input
��6 ;
.
��; <
Email
��< A
,
��A B
$str
��C W
,
��W X
$"
�� 
$str
�� B
{
��B C
HtmlEncoder
��C N
.
��N O
Default
��O V
.
��V W
Encode
��W ]
(
��] ^
callbackUrl
��^ i
)
��i j
}
��j k
$str
��k 
"�� �
)��� �
;��� �
if
�� 
(
�� 
_userManager
�� $
.
��$ %
Options
��% ,
.
��, -
SignIn
��- 3
.
��3 4%
RequireConfirmedAccount
��4 K
)
��K L
{
�� 
return
�� 
RedirectToPage
�� -
(
��- .
$str
��. D
,
��D E
new
��F I
{
��J K
email
��L Q
=
��R S
Input
��T Y
.
��Y Z
Email
��Z _
,
��_ `
	returnUrl
��a j
=
��k l
	returnUrl
��m v
}
��w x
)
��x y
;
��y z
}
�� 
else
�� 
{
�� 
await
�� 
_signInManager
�� ,
.
��, -
SignInAsync
��- 8
(
��8 9
user
��9 =
,
��= >
isPersistent
��? K
:
��K L
false
��M R
)
��R S
;
��S T
return
�� 
LocalRedirect
�� ,
(
��, -
	returnUrl
��- 6
)
��6 7
;
��7 8
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
error
�� "
in
��# %
result
��& ,
.
��, -
Errors
��- 3
)
��3 4
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
string
��- 3
.
��3 4
Empty
��4 9
,
��9 :
error
��; @
.
��@ A
Description
��A L
)
��L M
;
��M N
}
�� 
}
�� 
return
�� 
Page
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
IdentityUser
�� 

CreateUser
�� '
(
��' (
)
��( )
{
�� 	
try
�� 
{
�� 
return
�� 
	Activator
��  
.
��  !
CreateInstance
��! /
<
��/ 0
IdentityUser
��0 <
>
��< =
(
��= >
)
��> ?
;
��? @
}
�� 
catch
�� 
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
��4 6
$str
��6 S
{
��S T
nameof
��T Z
(
��Z [
IdentityUser
��[ g
)
��g h
}
��h i
$str
��i l
"
��l m
+
��n o
$"
�� 
$str
�� #
{
��# $
nameof
��$ *
(
��* +
IdentityUser
��+ 7
)
��7 8
}
��8 9
$str��9 �
"��� �
+��� �
$"
�� 
$str
�� a
"
��a b
)
��b c
;
��c d
}
�� 
}
�� 	
private
�� 
IUserEmailStore
�� 
<
��  
IdentityUser
��  ,
>
��, -
GetEmailStore
��. ;
(
��; <
)
��< =
{
�� 	
if
�� 
(
�� 
!
�� 
_userManager
�� 
.
�� 
SupportsUserEmail
�� /
)
��/ 0
{
�� 
throw
�� 
new
�� #
NotSupportedException
�� /
(
��/ 0
$str
��0 j
)
��j k
;
��k l
}
�� 
return
�� 
(
�� 
IUserEmailStore
�� #
<
��# $
IdentityUser
��$ 0
>
��0 1
)
��1 2

_userStore
��2 <
;
��< =
}
�� 	
}
�� 
}�� �%
nC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\RegisterConfirmation.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
[ 
AllowAnonymous 
] 
public 

class %
RegisterConfirmationModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_sender& -
;- .
public %
RegisterConfirmationModel (
(( )
UserManager) 4
<4 5
IdentityUser5 A
>A B
userManagerC N
,N O
IEmailSenderP \
sender] c
)c d
{ 	
_userManager 
= 
userManager &
;& '
_sender 
= 
sender 
; 
} 	
public!! 
string!! 
Email!! 
{!! 
get!! !
;!!! "
set!!# &
;!!& '
}!!( )
public'' 
bool'' %
DisplayConfirmAccountLink'' -
{''. /
get''0 3
;''3 4
set''5 8
;''8 9
}'': ;
public-- 
string--  
EmailConfirmationUrl-- *
{--+ ,
get--- 0
;--0 1
set--2 5
;--5 6
}--7 8
public// 
async// 
Task// 
<// 
IActionResult// '
>//' (

OnGetAsync//) 3
(//3 4
string//4 :
email//; @
,//@ A
string//B H
	returnUrl//I R
=//S T
null//U Y
)//Y Z
{00 	
if11 
(11 
email11 
==11 
null11 
)11 
{22 
return33 
RedirectToPage33 %
(33% &
$str33& .
)33. /
;33/ 0
}44 
	returnUrl55 
=55 
	returnUrl55 !
??55" $
Url55% (
.55( )
Content55) 0
(550 1
$str551 5
)555 6
;556 7
var77 
user77 
=77 
await77 
_userManager77 )
.77) *
FindByEmailAsync77* :
(77: ;
email77; @
)77@ A
;77A B
if88 
(88 
user88 
==88 
null88 
)88 
{99 
return:: 
NotFound:: 
(::  
$"::  "
$str::" B
{::B C
email::C H
}::H I
$str::I K
"::K L
)::L M
;::M N
};; 
Email== 
=== 
email== 
;== %
DisplayConfirmAccountLink?? %
=??& '
true??( ,
;??, -
if@@ 
(@@ %
DisplayConfirmAccountLink@@ )
)@@) *
{AA 
varBB 
userIdBB 
=BB 
awaitBB "
_userManagerBB# /
.BB/ 0
GetUserIdAsyncBB0 >
(BB> ?
userBB? C
)BBC D
;BBD E
varCC 
codeCC 
=CC 
awaitCC  
_userManagerCC! -
.CC- ./
#GenerateEmailConfirmationTokenAsyncCC. Q
(CCQ R
userCCR V
)CCV W
;CCW X
codeDD 
=DD 
WebEncodersDD "
.DD" #
Base64UrlEncodeDD# 2
(DD2 3
EncodingDD3 ;
.DD; <
UTF8DD< @
.DD@ A
GetBytesDDA I
(DDI J
codeDDJ N
)DDN O
)DDO P
;DDP Q 
EmailConfirmationUrlEE $
=EE% &
UrlEE' *
.EE* +
PageEE+ /
(EE/ 0
$strFF +
,FF+ ,
pageHandlerGG 
:GG  
nullGG! %
,GG% &
valuesHH 
:HH 
newHH 
{HH  !
areaHH" &
=HH' (
$strHH) 3
,HH3 4
userIdHH5 ;
=HH< =
userIdHH> D
,HHD E
codeHHF J
=HHK L
codeHHM Q
,HHQ R
	returnUrlHHS \
=HH] ^
	returnUrlHH_ h
}HHi j
,HHj k
protocolII 
:II 
RequestII %
.II% &
SchemeII& ,
)II, -
;II- .
}JJ 
returnLL 
PageLL 
(LL 
)LL 
;LL 
}MM 	
}NN 
}OO �'
qC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\ResendEmailConfirmation.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
[ 
AllowAnonymous 
] 
public 

class (
ResendEmailConfirmationModel -
:. /
	PageModel0 9
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public (
ResendEmailConfirmationModel +
(+ ,
UserManager, 7
<7 8
IdentityUser8 D
>D E
userManagerF Q
,Q R
IEmailSenderS _
emailSender` k
)k l
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public** 
class** 

InputModel** 
{++ 	
[00 
Required00 
]00 
[11 
EmailAddress11 
]11 
public22 
string22 
Email22 
{22  !
get22" %
;22% &
set22' *
;22* +
}22, -
}33 	
public55 
void55 
OnGet55 
(55 
)55 
{66 	
}77 	
public99 
async99 
Task99 
<99 
IActionResult99 '
>99' (
OnPostAsync99) 4
(994 5
)995 6
{:: 	
if;; 
(;; 
!;; 

ModelState;; 
.;; 
IsValid;; #
);;# $
{<< 
return== 
Page== 
(== 
)== 
;== 
}>> 
var@@ 
user@@ 
=@@ 
await@@ 
_userManager@@ )
.@@) *
FindByEmailAsync@@* :
(@@: ;
Input@@; @
.@@@ A
Email@@A F
)@@F G
;@@G H
ifAA 
(AA 
userAA 
==AA 
nullAA 
)AA 
{BB 

ModelStateCC 
.CC 
AddModelErrorCC (
(CC( )
stringCC) /
.CC/ 0
EmptyCC0 5
,CC5 6
$strCC7 j
)CCj k
;CCk l
returnDD 
PageDD 
(DD 
)DD 
;DD 
}EE 
varGG 
userIdGG 
=GG 
awaitGG 
_userManagerGG +
.GG+ ,
GetUserIdAsyncGG, :
(GG: ;
userGG; ?
)GG? @
;GG@ A
varHH 
codeHH 
=HH 
awaitHH 
_userManagerHH )
.HH) */
#GenerateEmailConfirmationTokenAsyncHH* M
(HHM N
userHHN R
)HHR S
;HHS T
codeII 
=II 
WebEncodersII 
.II 
Base64UrlEncodeII .
(II. /
EncodingII/ 7
.II7 8
UTF8II8 <
.II< =
GetBytesII= E
(IIE F
codeIIF J
)IIJ K
)IIK L
;IIL M
varJJ 
callbackUrlJJ 
=JJ 
UrlJJ !
.JJ! "
PageJJ" &
(JJ& '
$strKK '
,KK' (
pageHandlerLL 
:LL 
nullLL !
,LL! "
valuesMM 
:MM 
newMM 
{MM 
userIdMM $
=MM% &
userIdMM' -
,MM- .
codeMM/ 3
=MM4 5
codeMM6 :
}MM; <
,MM< =
protocolNN 
:NN 
RequestNN !
.NN! "
SchemeNN" (
)NN( )
;NN) *
awaitOO 
_emailSenderOO 
.OO 
SendEmailAsyncOO -
(OO- .
InputPP 
.PP 
EmailPP 
,PP 
$strQQ $
,QQ$ %
$"RR 
$strRR :
{RR: ;
HtmlEncoderRR; F
.RRF G
DefaultRRG N
.RRN O
EncodeRRO U
(RRU V
callbackUrlRRV a
)RRa b
}RRb c
$strRRc w
"RRw x
)RRx y
;RRy z

ModelStateTT 
.TT 
AddModelErrorTT $
(TT$ %
stringTT% +
.TT+ ,
EmptyTT, 1
,TT1 2
$strTT3 f
)TTf g
;TTg h
returnUU 
PageUU 
(UU 
)UU 
;UU 
}VV 	
}WW 
}XX �-
gC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\ResetPassword.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{ 
public 

class 
ResetPasswordModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ResetPasswordModel !
(! "
UserManager" -
<- .
IdentityUser. :
>: ;
userManager< G
)G H
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public%% 
class%% 

InputModel%% 
{&& 	
[++ 
Required++ 
]++ 
[,, 
EmailAddress,, 
],, 
public-- 
string-- 
Email-- 
{--  !
get--" %
;--% &
set--' *
;--* +
}--, -
[33 
Required33 
]33 
[44 
StringLength44 
(44 
$num44 
,44 
ErrorMessage44 +
=44, -
$str44. l
,44l m
MinimumLength44n {
=44| }
$num44~ 
)	44 �
]
44� �
[55 
DataType55 
(55 
DataType55 
.55 
Password55 '
)55' (
]55( )
public66 
string66 
Password66 "
{66# $
get66% (
;66( )
set66* -
;66- .
}66/ 0
[<< 
DataType<< 
(<< 
DataType<< 
.<< 
Password<< '
)<<' (
]<<( )
[== 
Display== 
(== 
Name== 
=== 
$str== .
)==. /
]==/ 0
[>> 
Compare>> 
(>> 
$str>> 
,>>  
ErrorMessage>>! -
=>>. /
$str>>0 f
)>>f g
]>>g h
public?? 
string?? 
ConfirmPassword?? )
{??* +
get??, /
;??/ 0
set??1 4
;??4 5
}??6 7
[EE 
RequiredEE 
]EE 
publicFF 
stringFF 
CodeFF 
{FF  
getFF! $
;FF$ %
setFF& )
;FF) *
}FF+ ,
}HH 	
publicJJ 
IActionResultJJ 
OnGetJJ "
(JJ" #
stringJJ# )
codeJJ* .
=JJ/ 0
nullJJ1 5
)JJ5 6
{KK 	
ifLL 
(LL 
codeLL 
==LL 
nullLL 
)LL 
{MM 
returnNN 

BadRequestNN !
(NN! "
$strNN" O
)NNO P
;NNP Q
}OO 
elsePP 
{QQ 
InputRR 
=RR 
newRR 

InputModelRR &
{SS 
CodeTT 
=TT 
EncodingTT #
.TT# $
UTF8TT$ (
.TT( )
	GetStringTT) 2
(TT2 3
WebEncodersTT3 >
.TT> ?
Base64UrlDecodeTT? N
(TTN O
codeTTO S
)TTS T
)TTT U
}UU 
;UU 
returnVV 
PageVV 
(VV 
)VV 
;VV 
}WW 
}XX 	
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IActionResultZZ '
>ZZ' (
OnPostAsyncZZ) 4
(ZZ4 5
)ZZ5 6
{[[ 	
if\\ 
(\\ 
!\\ 

ModelState\\ 
.\\ 
IsValid\\ #
)\\# $
{]] 
return^^ 
Page^^ 
(^^ 
)^^ 
;^^ 
}__ 
varaa 
useraa 
=aa 
awaitaa 
_userManageraa )
.aa) *
FindByEmailAsyncaa* :
(aa: ;
Inputaa; @
.aa@ A
EmailaaA F
)aaF G
;aaG H
ifbb 
(bb 
userbb 
==bb 
nullbb 
)bb 
{cc 
returnee 
RedirectToPageee %
(ee% &
$stree& C
)eeC D
;eeD E
}ff 
varhh 
resulthh 
=hh 
awaithh 
_userManagerhh +
.hh+ ,
ResetPasswordAsynchh, >
(hh> ?
userhh? C
,hhC D
InputhhE J
.hhJ K
CodehhK O
,hhO P
InputhhQ V
.hhV W
PasswordhhW _
)hh_ `
;hh` a
ifii 
(ii 
resultii 
.ii 
	Succeededii  
)ii  !
{jj 
returnkk 
RedirectToPagekk %
(kk% &
$strkk& C
)kkC D
;kkD E
}ll 
foreachnn 
(nn 
varnn 
errornn 
innn !
resultnn" (
.nn( )
Errorsnn) /
)nn/ 0
{oo 

ModelStatepp 
.pp 
AddModelErrorpp (
(pp( )
stringpp) /
.pp/ 0
Emptypp0 5
,pp5 6
errorpp7 <
.pp< =
Descriptionpp= H
)ppH I
;ppI J
}qq 
returnrr 
Pagerr 
(rr 
)rr 
;rr 
}ss 	
}tt 
}uu �
sC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Account\ResetPasswordConfirmation.cshtml.cs
	namespace 	
MovieTheatreWebApp
 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
{		 
[ 
AllowAnonymous 
] 
public 

class *
ResetPasswordConfirmationModel /
:0 1
	PageModel2 ;
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} �
WC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Areas\Identity\Pages\Error.cshtml.cs
	namespace

 	
MovieTheatreWebApp


 
.

 
Areas

 "
.

" #
Identity

# +
.

+ ,
Pages

, 1
{ 
[ 
AllowAnonymous 
] 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

class 

ErrorModel 
: 
	PageModel '
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public$$ 
void$$ 
OnGet$$ 
($$ 
)$$ 
{%% 	
	RequestId&& 
=&& 
Activity&&  
.&&  !
Current&&! (
?&&( )
.&&) *
Id&&* ,
??&&- /
HttpContext&&0 ;
.&&; <
TraceIdentifier&&< K
;&&K L
}'' 	
}(( 
})) �
SC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Controllers\AccountController.cs
	namespace 	
MovieTheatreWebApp
 
. 
Controllers (
{ 
public 

class 
AccountController "
:# $

Controller% /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public

 
AccountController

  
(

  !
UserManager

! ,
<

, -
IdentityUser

- 9
>

9 :
userManager

; F
)

F G
{ 	
_userManager 
= 
userManager &
;& '
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpPost	 
] 
public 
IActionResult 
IsEmail $
($ %
string% +
emailId, 3
)3 4
{ 	
var 
isExist 
= 
_userManager $
.$ %
Users% *
.* +
Where+ 0
(0 1
u1 2
=>2 4
u4 5
.5 6
Email6 ;
==; =
emailId= D
)D E
.E F
FirstOrDefaultF T
(T U
)U V
;V W
if 
( 
isExist 
== 
null 
)  
{ 
return 
Ok 
( 
$str 
) 
; 
} 
else 
{ 
return 
Ok 
( 
$str 
) 
; 
} 
}!! 	
}"" 
}## �
PC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Controllers\HomeController.cs
	namespace 	
MovieTheatreWebApp
 
. 
Controllers (
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private		 
readonly		 
ILogger		  
<		  !
HomeController		! /
>		/ 0
_logger		1 8
;		8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
} 
}   �%
RC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Controllers\MoviesController.cs
	namespace 	
MovieTheatreWebApp
 
. 
Controllers (
{ 
[		 
	Authorize		 
(		 
Roles		 
=		 
$str		 
)		 
]		 
public

 

class

 
MoviesController

 !
:

" #

Controller

$ .
{ 
private 
readonly 
MovieApiData %
_context& .
;. /
private 
readonly 
TheatreApiData '

_context_2( 2
;2 3
public 
MoviesController 
(  
MovieApiData  ,
movieApiData- 9
,9 :
TheatreApiData: H
theatreApiDataI W
)W X
{ 	
_context 
= 
movieApiData #
;# $

_context_2 
= 
theatreApiData '
;' (
} 	
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
_context  
.  !
	GetMovies! *
(* +
)+ ,
), -
;- .
} 	
public 
ActionResult 
Details #
(# $
int$ '
id( *
)* +
{ 	
return 
View 
( 
) 
; 
}   	
public## 
ActionResult## 
Create## "
(##" #
)### $
{$$ 	
ViewBag%% 
.%% 
Theatres%% 
=%% 

_context_2%% )
.%%) *
TheatreNames%%* 6
(%%6 7
)%%7 8
;%%8 9
return&& 
View&& 
(&& 
)&& 
;&& 
}'' 	
[** 	
HttpPost**	 
]** 
public,, 
ActionResult,, 
Create,, "
(,," #
Movie,,# (
movie,,) .
),,. /
{-- 	
try.. 
{// 
_context00 
.00 
AddMovie00 !
(00! "
movie00" '
)00' (
;00( )
return11 
RedirectToAction11 '
(11' (
nameof11( .
(11. /
Index11/ 4
)114 5
)115 6
;116 7
}22 
catch33 
{44 
return55 
View55 
(55 
)55 
;55 
}66 
}77 	
[:: 	
HttpGet::	 
]:: 
public;; 
ActionResult;; 
Edit;;  
(;;  !
int;;! $
id;;% '
);;' (
{<< 	
return== 
View== 
(== 
_context==  
.==  !
FindById==! )
(==) *
id==* ,
)==, -
)==- .
;==. /
}>> 	
[AA 	
HttpPostAA	 
]AA 
[BB 	$
ValidateAntiForgeryTokenBB	 !
]BB! "
publicCC 
ActionResultCC 
EditCC  
(CC  !
MovieCC! &
movieCC' ,
)CC, -
{DD 	
tryEE 
{FF 
_contextGG 
.GG 
UpdateGG 
(GG  
movieGG  %
)GG% &
;GG& '
returnHH 
RedirectToActionHH '
(HH' (
nameofHH( .
(HH. /
IndexHH/ 4
)HH4 5
)HH5 6
;HH6 7
}II 
catchJJ 
{KK 
returnLL 
ViewLL 
(LL 
)LL 
;LL 
}MM 
}NN 	
publicQQ 
ActionResultQQ 
DeleteQQ "
(QQ" #
intQQ# &
idQQ' )
)QQ) *
{RR 	
returnSS 
ViewSS 
(SS 
)SS 
;SS 
}TT 	
[WW 	
HttpPostWW	 
]WW 
[XX 	$
ValidateAntiForgeryTokenXX	 !
]XX! "
publicYY 
ActionResultYY 
DeleteYY "
(YY" #
intYY# &
idYY' )
,YY) *
IFormCollectionYY+ :

collectionYY; E
)YYE F
{ZZ 	
try[[ 
{\\ 
return]] 
RedirectToAction]] '
(]]' (
nameof]]( .
(]]. /
Index]]/ 4
)]]4 5
)]]5 6
;]]6 7
}^^ 
catch__ 
{`` 
returnaa 
Viewaa 
(aa 
)aa 
;aa 
}bb 
}cc 	
}dd 
}ee �-
TC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Controllers\TheatresController.cs
	namespace 	
MovieTheatreWebApp
 
. 
Controllers (
{ 
[ 
	Authorize 
( 
Roles 
= 
$str 
) 
]  
public 

class 
TheatresController #
:$ %

Controller& 0
{ 
private 
readonly 
TheatreApiData '
_context( 0
;0 1
public 
TheatresController !
(! "
TheatreApiData" 0
context1 8
)8 9
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
return 
View 
( 
_context "
." #

GetTheatre# -
(- .
). /
)/ 0
;0 1
} 	
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (
Details"") 0
(""0 1
int""1 4
?""4 5
id""6 8
)""8 9
{## 	
if$$ 
($$ 
id$$ 
==$$ 
null$$ 
)$$ 
{%% 
return&& 
NotFound&& 
(&&  
)&&  !
;&&! "
}'' 
var)) 
theatre)) 
=)) 
_context)) "
.))" #
FindById))# +
())+ ,
id)), .
))). /
;))/ 0
if** 
(** 
theatre** 
==** 
null** 
)**  
{++ 
return,, 
NotFound,, 
(,,  
),,  !
;,,! "
}-- 
return// 
View// 
(// 
theatre// 
)//  
;//  !
}00 	
public33 
IActionResult33 
Create33 #
(33# $
)33$ %
{44 	
return55 
View55 
(55 
)55 
;55 
}66 	
[;; 	
HttpPost;;	 
];; 
[<< 	$
ValidateAntiForgeryToken<<	 !
]<<! "
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
Create==) /
(==/ 0
[==0 1
Bind==1 5
(==5 6
$str==6 ]
)==] ^
]==^ _
Theatre==` g
theatre==h o
)==o p
{>> 	
if?? 
(?? 

ModelState?? 
.?? 
IsValid?? "
)??" #
{@@ 
_contextAA 
.AA 

AddTheatreAA #
(AA# $
theatreAA$ +
)AA+ ,
;AA, -
returnCC 
RedirectToActionCC '
(CC' (
nameofCC( .
(CC. /
IndexCC/ 4
)CC4 5
)CC5 6
;CC6 7
}DD 
returnEE 
ViewEE 
(EE 
theatreEE 
)EE  
;EE  !
}FF 	
publicII 
asyncII 
TaskII 
<II 
IActionResultII '
>II' (
EditII) -
(II- .
intII. 1
?II1 2
idII3 5
)II5 6
{JJ 	
ifKK 
(KK 
idKK 
==KK 
nullKK 
)KK 
{LL 
returnMM 
NotFoundMM 
(MM  
)MM  !
;MM! "
}NN 
varPP 
theatrePP 
=PP 
_contextPP "
.PP" #
FindByIdPP# +
(PP+ ,
idPP, .
)PP. /
;PP/ 0
ifQQ 
(QQ 
theatreQQ 
==QQ 
nullQQ 
)QQ  
{RR 
returnSS 
NotFoundSS 
(SS  
)SS  !
;SS! "
}TT 
returnUU 
ViewUU 
(UU 
theatreUU 
)UU  
;UU  !
}VV 	
[[[ 	
HttpPost[[	 
][[ 
[\\ 	$
ValidateAntiForgeryToken\\	 !
]\\! "
public]] 
async]] 
Task]] 
<]] 
IActionResult]] '
>]]' (
Edit]]) -
(]]- .
[]]. /
Bind]]/ 3
(]]3 4
$str]]4 [
)]][ \
]]]\ ]
Theatre]]^ e
theatre]]f m
)]]m n
{^^ 	
if__ 
(__ 
theatre__ 
.__ 
Id__ 
==__ 
$num__ 
)__ 
{`` 
returnaa 
NotFoundaa 
(aa  
)aa  !
;aa! "
}bb 
ifdd 
(dd 

ModelStatedd 
.dd 
IsValiddd "
)dd" #
{ee 
tryff 
{gg 
_contexthh 
.hh 
Updatehh #
(hh# $
theatrehh$ +
)hh+ ,
;hh, -
}jj 
catchkk 
(kk (
DbUpdateConcurrencyExceptionkk 3
)kk3 4
{ll 
returnnn 
NotFoundnn '
(nn' (
)nn( )
;nn) *
}pp 
returnqq 
RedirectToActionqq '
(qq' (
nameofqq( .
(qq. /
Indexqq/ 4
)qq4 5
)qq5 6
;qq6 7
}rr 
returnss 
Viewss 
(ss 
theatress 
)ss  
;ss  !
}tt 	
}zz 
}{{ �
SC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Controllers\TicketsController.cs
	namespace 	
MovieTheatreWebApp
 
. 
Controllers (
{ 
[ 
	Authorize 
( 
Roles 
= 
$str !
)! "
]" #
public 

class 
TicketsController "
:# $

Controller% /
{ 
private 
readonly 
TicketApiData &
_context' /
;/ 0
private 
readonly 
TheatreApiData '

_Thcontext( 2
;2 3
private 
readonly 
MovieApiData %

_Mocontext& 0
;0 1
public 
TicketsController  
(  !
TicketApiData! .
context/ 6
,6 7
TheatreApiData7 E
theatreApiDataF T
,T U
MovieApiDataU a
movieApiDatab n
)n o
{ 	
_context 
= 
context 
; 

_Thcontext 
= 
theatreApiData '
;' (

_Mocontext 
= 
movieApiData %
;% &
} 	
public   
async   
Task   
<   
IActionResult   '
>  ' (
Index  ) .
(  . /
)  / 0
{!! 	
return"" 
View"" 
("" 
_context"" "
.""" #
	GetTicket""# ,
("", -
HttpContext""- 8
.""8 9
Session""9 @
.""@ A
	GetString""A J
(""J K
$str""K U
)""U V
!""V W
)""W X
)""X Y
;""Y Z
}## 	
public&& 
IActionResult&& 
Create&& #
(&&# $
)&&$ %
{'' 	
ViewBag(( 
.(( 
WhoAdded(( 
=(( 
HttpContext(( *
.((* +
Session((+ 2
.((2 3
	GetString((3 <
(((< =
$str((= G
)((G H
;((H I
ViewBag)) 
.)) 
Theatres)) 
=)) 

_Thcontext)) (
.))( )
TheatreNames))) 5
())5 6
)))6 7
;))7 8
ViewBag** 
.** 
Movies** 
=** 

_Mocontext** &
.**& '
OnlyName**' /
(**/ 0
)**0 1
;**1 2
return++ 
View++ 
(++ 
)++ 
;++ 
},, 	
[11 	
HttpPost11	 
]11 
[22 	$
ValidateAntiForgeryToken22	 !
]22! "
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
Create33) /
(33/ 0
[330 1
Bind331 5
(335 6
$str336 e
)33e f
]33f g
Ticket33h n
ticket33o u
)33u v
{44 	
if55 
(55 

ModelState55 
.55 
IsValid55 "
)55" #
{66 
_context77 
.77 
	AddTicket77 "
(77" #
ticket77# )
)77) *
;77* +
return88 
RedirectToAction88 '
(88' (
nameof88( .
(88. /
Index88/ 4
)884 5
)885 6
;886 7
}99 
return:: 
View:: 
(:: 
ticket:: 
):: 
;::  
};; 	
}?? 
}@@ �
OC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Data\ApplicationDbContext.cs
	namespace 	
MovieTheatreWebApp
 
. 
Data !
{ 
public 

class  
ApplicationDbContext %
:& '
IdentityDbContext( 9
{ 
public		  
ApplicationDbContext		 #
(		# $
DbContextOptions		$ 4
<		4 5 
ApplicationDbContext		5 I
>		I J
options		K R
)		R S
:

 
base

 
(

 
options

 
)

 
{ 	
} 	
public 
DbSet 
< 
MovieTheatreWebApp '
.' (
Models( .
.. /
Movie/ 4
>4 5
Movie6 ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
DbSet 
< 
MovieTheatreWebApp '
.' (
Models( .
.. /
Theatre/ 6
>6 7
Theatre8 ?
{@ A
getB E
;E F
setG J
;J K
}L M
public 
DbSet 
< 
MovieTheatreWebApp '
.' (
Models( .
.. /
Ticket/ 5
>5 6
Ticket7 =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} Ѷ
iC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Data\Migrations\00000000000000_CreateIdentitySchema.cs
	namespace 	
MovieTheatreWebApp
 
. 
Data !
.! "

Migrations" ,
{ 
public 

partial 
class  
CreateIdentitySchema -
:. /
	Migration0 9
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
	maxLength0 9
:9 :
$num; >
,> ?
nullable@ H
:H I
trueJ N
)N O
,O P
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
	maxLength: C
:C D
$numE H
,H I
nullableJ R
:R S
trueT X
)X Y
,Y Z
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
nullable< D
:D E
trueF J
)J K
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
	maxLength4 =
:= >
$num? B
,B C
nullableD L
:L M
trueN R
)R S
,S T
NormalizedUserName &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
	maxLength> G
:G H
$numI L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
Email   
=   
table   !
.  ! "
Column  " (
<  ( )
string  ) /
>  / 0
(  0 1
	maxLength  1 :
:  : ;
$num  < ?
,  ? @
nullable  A I
:  I J
true  K O
)  O P
,  P Q
NormalizedEmail!! #
=!!$ %
table!!& +
.!!+ ,
Column!!, 2
<!!2 3
string!!3 9
>!!9 :
(!!: ;
	maxLength!!; D
:!!D E
$num!!F I
,!!I J
nullable!!K S
:!!S T
true!!U Y
)!!Y Z
,!!Z [
EmailConfirmed"" "
=""# $
table""% *
.""* +
Column""+ 1
<""1 2
bool""2 6
>""6 7
(""7 8
nullable""8 @
:""@ A
false""B G
)""G H
,""H I
PasswordHash##  
=##! "
table### (
.##( )
Column##) /
<##/ 0
string##0 6
>##6 7
(##7 8
nullable##8 @
:##@ A
true##B F
)##F G
,##G H
SecurityStamp$$ !
=$$" #
table$$$ )
.$$) *
Column$$* 0
<$$0 1
string$$1 7
>$$7 8
($$8 9
nullable$$9 A
:$$A B
true$$C G
)$$G H
,$$H I
ConcurrencyStamp%% $
=%%% &
table%%' ,
.%%, -
Column%%- 3
<%%3 4
string%%4 :
>%%: ;
(%%; <
nullable%%< D
:%%D E
true%%F J
)%%J K
,%%K L
PhoneNumber&& 
=&&  !
table&&" '
.&&' (
Column&&( .
<&&. /
string&&/ 5
>&&5 6
(&&6 7
nullable&&7 ?
:&&? @
false&&A F
,&&F G
	maxLength&&G P
:&&P Q
$num&&R T
)&&T U
,&&U V 
PhoneNumberConfirmed'' (
='') *
table''+ 0
.''0 1
Column''1 7
<''7 8
bool''8 <
>''< =
(''= >
nullable''> F
:''F G
false''H M
)''M N
,''N O
TwoFactorEnabled(( $
=((% &
table((' ,
.((, -
Column((- 3
<((3 4
bool((4 8
>((8 9
(((9 :
nullable((: B
:((B C
false((D I
)((I J
,((J K

LockoutEnd)) 
=))  
table))! &
.))& '
Column))' -
<))- .
DateTimeOffset)). <
>))< =
())= >
nullable))> F
:))F G
true))H L
)))L M
,))M N
LockoutEnabled** "
=**# $
table**% *
.*** +
Column**+ 1
<**1 2
bool**2 6
>**6 7
(**7 8
nullable**8 @
:**@ A
false**B G
)**G H
,**H I
AccessFailedCount++ %
=++& '
table++( -
.++- .
Column++. 4
<++4 5
int++5 8
>++8 9
(++9 :
nullable++: B
:++B C
false++D I
)++I J
},, 
,,, 
constraints-- 
:-- 
table-- "
=>--# %
{.. 
table// 
.// 

PrimaryKey// $
(//$ %
$str//% 5
,//5 6
x//7 8
=>//9 ;
x//< =
.//= >
Id//> @
)//@ A
;//A B
}00 
)00 
;00 
migrationBuilder22 
.22 
CreateTable22 (
(22( )
name33 
:33 
$str33 (
,33( )
columns44 
:44 
table44 
=>44 !
new44" %
{55 
Id66 
=66 
table66 
.66 
Column66 %
<66% &
int66& )
>66) *
(66* +
nullable66+ 3
:663 4
false665 :
)66: ;
.77 

Annotation77 #
(77# $
$str77$ G
,77G H,
 SqlServerValueGenerationStrategy77I i
.77i j
IdentityColumn77j x
)77x y
,77y z
RoleId88 
=88 
table88 "
.88" #
Column88# )
<88) *
string88* 0
>880 1
(881 2
nullable882 :
:88: ;
false88< A
)88A B
,88B C
	ClaimType99 
=99 
table99  %
.99% &
Column99& ,
<99, -
string99- 3
>993 4
(994 5
nullable995 =
:99= >
true99? C
)99C D
,99D E

ClaimValue:: 
=::  
table::! &
.::& '
Column::' -
<::- .
string::. 4
>::4 5
(::5 6
nullable::6 >
:::> ?
true::@ D
)::D E
};; 
,;; 
constraints<< 
:<< 
table<< "
=><<# %
{== 
table>> 
.>> 

PrimaryKey>> $
(>>$ %
$str>>% :
,>>: ;
x>>< =
=>>>> @
x>>A B
.>>B C
Id>>C E
)>>E F
;>>F G
table?? 
.?? 

ForeignKey?? $
(??$ %
name@@ 
:@@ 
$str@@ F
,@@F G
columnAA 
:AA 
xAA  !
=>AA" $
xAA% &
.AA& '
RoleIdAA' -
,AA- .
principalTableBB &
:BB& '
$strBB( 5
,BB5 6
principalColumnCC '
:CC' (
$strCC) -
,CC- .
onDeleteDD  
:DD  !
ReferentialActionDD" 3
.DD3 4
CascadeDD4 ;
)DD; <
;DD< =
}EE 
)EE 
;EE 
migrationBuilderGG 
.GG 
CreateTableGG (
(GG( )
nameHH 
:HH 
$strHH (
,HH( )
columnsII 
:II 
tableII 
=>II !
newII" %
{JJ 
IdKK 
=KK 
tableKK 
.KK 
ColumnKK %
<KK% &
intKK& )
>KK) *
(KK* +
nullableKK+ 3
:KK3 4
falseKK5 :
)KK: ;
.LL 

AnnotationLL #
(LL# $
$strLL$ G
,LLG H,
 SqlServerValueGenerationStrategyLLI i
.LLi j
IdentityColumnLLj x
)LLx y
,LLy z
UserIdMM 
=MM 
tableMM "
.MM" #
ColumnMM# )
<MM) *
stringMM* 0
>MM0 1
(MM1 2
nullableMM2 :
:MM: ;
falseMM< A
)MMA B
,MMB C
	ClaimTypeNN 
=NN 
tableNN  %
.NN% &
ColumnNN& ,
<NN, -
stringNN- 3
>NN3 4
(NN4 5
nullableNN5 =
:NN= >
trueNN? C
)NNC D
,NND E

ClaimValueOO 
=OO  
tableOO! &
.OO& '
ColumnOO' -
<OO- .
stringOO. 4
>OO4 5
(OO5 6
nullableOO6 >
:OO> ?
trueOO@ D
)OOD E
}PP 
,PP 
constraintsQQ 
:QQ 
tableQQ "
=>QQ# %
{RR 
tableSS 
.SS 

PrimaryKeySS $
(SS$ %
$strSS% :
,SS: ;
xSS< =
=>SS> @
xSSA B
.SSB C
IdSSC E
)SSE F
;SSF G
tableTT 
.TT 

ForeignKeyTT $
(TT$ %
nameUU 
:UU 
$strUU F
,UUF G
columnVV 
:VV 
xVV  !
=>VV" $
xVV% &
.VV& '
UserIdVV' -
,VV- .
principalTableWW &
:WW& '
$strWW( 5
,WW5 6
principalColumnXX '
:XX' (
$strXX) -
,XX- .
onDeleteYY  
:YY  !
ReferentialActionYY" 3
.YY3 4
CascadeYY4 ;
)YY; <
;YY< =
}ZZ 
)ZZ 
;ZZ 
migrationBuilder\\ 
.\\ 
CreateTable\\ (
(\\( )
name]] 
:]] 
$str]] (
,]]( )
columns^^ 
:^^ 
table^^ 
=>^^ !
new^^" %
{__ 
LoginProvider`` !
=``" #
table``$ )
.``) *
Column``* 0
<``0 1
string``1 7
>``7 8
(``8 9
	maxLength``9 B
:``B C
$num``D G
,``G H
nullable``I Q
:``Q R
false``S X
)``X Y
,``Y Z
ProviderKeyaa 
=aa  !
tableaa" '
.aa' (
Columnaa( .
<aa. /
stringaa/ 5
>aa5 6
(aa6 7
	maxLengthaa7 @
:aa@ A
$numaaB E
,aaE F
nullableaaG O
:aaO P
falseaaQ V
)aaV W
,aaW X
ProviderDisplayNamebb '
=bb( )
tablebb* /
.bb/ 0
Columnbb0 6
<bb6 7
stringbb7 =
>bb= >
(bb> ?
nullablebb? G
:bbG H
truebbI M
)bbM N
,bbN O
UserIdcc 
=cc 
tablecc "
.cc" #
Columncc# )
<cc) *
stringcc* 0
>cc0 1
(cc1 2
nullablecc2 :
:cc: ;
falsecc< A
)ccA B
}dd 
,dd 
constraintsee 
:ee 
tableee "
=>ee# %
{ff 
tablegg 
.gg 

PrimaryKeygg $
(gg$ %
$strgg% :
,gg: ;
xgg< =
=>gg> @
newggA D
{ggE F
xggG H
.ggH I
LoginProviderggI V
,ggV W
xggX Y
.ggY Z
ProviderKeyggZ e
}ggf g
)ggg h
;ggh i
tablehh 
.hh 

ForeignKeyhh $
(hh$ %
nameii 
:ii 
$strii F
,iiF G
columnjj 
:jj 
xjj  !
=>jj" $
xjj% &
.jj& '
UserIdjj' -
,jj- .
principalTablekk &
:kk& '
$strkk( 5
,kk5 6
principalColumnll '
:ll' (
$strll) -
,ll- .
onDeletemm  
:mm  !
ReferentialActionmm" 3
.mm3 4
Cascademm4 ;
)mm; <
;mm< =
}nn 
)nn 
;nn 
migrationBuilderpp 
.pp 
CreateTablepp (
(pp( )
nameqq 
:qq 
$strqq '
,qq' (
columnsrr 
:rr 
tablerr 
=>rr !
newrr" %
{ss 
UserIdtt 
=tt 
tablett "
.tt" #
Columntt# )
<tt) *
stringtt* 0
>tt0 1
(tt1 2
nullablett2 :
:tt: ;
falsett< A
)ttA B
,ttB C
RoleIduu 
=uu 
tableuu "
.uu" #
Columnuu# )
<uu) *
stringuu* 0
>uu0 1
(uu1 2
nullableuu2 :
:uu: ;
falseuu< A
)uuA B
}vv 
,vv 
constraintsww 
:ww 
tableww "
=>ww# %
{xx 
tableyy 
.yy 

PrimaryKeyyy $
(yy$ %
$stryy% 9
,yy9 :
xyy; <
=>yy= ?
newyy@ C
{yyD E
xyyF G
.yyG H
UserIdyyH N
,yyN O
xyyP Q
.yyQ R
RoleIdyyR X
}yyY Z
)yyZ [
;yy[ \
tablezz 
.zz 

ForeignKeyzz $
(zz$ %
name{{ 
:{{ 
$str{{ E
,{{E F
column|| 
:|| 
x||  !
=>||" $
x||% &
.||& '
RoleId||' -
,||- .
principalTable}} &
:}}& '
$str}}( 5
,}}5 6
principalColumn~~ '
:~~' (
$str~~) -
,~~- .
onDelete  
:  !
ReferentialAction" 3
.3 4
Cascade4 ;
); <
;< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
,
��B C
LoginProvider
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
	maxLength
��9 B
:
��B C
$num
��D G
,
��G H
nullable
��I Q
:
��Q R
false
��S X
)
��X Y
,
��Y Z
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
	maxLength
��0 9
:
��9 :
$num
��; >
,
��> ?
nullable
��@ H
:
��H I
false
��J O
)
��O P
,
��P Q
Value
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
nullable
��1 9
:
��9 :
true
��; ?
)
��? @
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
new
��A D
{
��E F
x
��G H
.
��H I
UserId
��I O
,
��O P
x
��Q R
.
��R S
LoginProvider
��S `
,
��` a
x
��b c
.
��c d
Name
��d h
}
��i j
)
��j k
;
��k l
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� F
,
��F G
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� (
,
��( )
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� "
,
��" #
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� ,
,
��, -
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� :
)
��: ;
;
��; <
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 	
}
�� 
}�� �
JC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Mapper\MapperProfile.cs
	namespace 	
MovieTheatreWebApp
 
. 
Mapper #
{ 
public 

class 
MapperProfile 
: 
Profile &
{ 
public		 
MapperProfile		 
(		 
)		 
{

 	
	CreateMap 
< 
Movie 
, 
MovieApiModel *
>* +
(+ ,
), -
.- .

ReverseMap. 8
(8 9
)9 :
;: ;
	CreateMap 
< 
Ticket 
, 
TicketApiModel ,
>, -
(- .
). /
./ 0

ReverseMap0 :
(: ;
); <
;< =
	CreateMap 
< 
Theatre 
, 
TheatreApiModel .
>. /
(/ 0
)0 1
.1 2

ReverseMap2 <
(< =
)= >
;> ?
} 	
} 
} �
KC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Models\ErrorViewModel.cs
	namespace 	
MovieTheatreWebApp
 
. 
Models #
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 �
BC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Models\Movie.cs
	namespace 	
MovieTheatreWebApp
 
. 
Models #
{ 
public 

class 
Movie 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[		 	
Key			 
]		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
[ 	
Required	 
, 
Column 
( 
TypeName "
=# $
$str% 2
)2 3
,3 4
	MaxLength5 >
(> ?
$num? A
)A B
]B C
public 
string 
? 
Title 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
, 
Column 
( 
TypeName "
=# $
$str% 2
)2 3
,3 4
	MaxLength5 >
(> ?
$num? A
)A B
]B C
public 
string 
? 
TheaterName "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
, 
DataType 
( 
DataType $
.$ %
Date% )
)) *
]* +
public 
DateTime 
	StartDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
, 
DataType 
( 
DataType $
.$ %
Date% )
)) *
]* +
public 
DateTime 
EndDate 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Column	 
( 
TypeName 
= 
$str $
)$ %
]% &
public 
int 
Status 
{ 
get 
;  
set! $
;$ %
}& '
} 
} �
DC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Models\Theatre.cs
	namespace 	
MovieTheatreWebApp
 
. 
Models #
{ 
public 

class 
Theatre 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[		 	
Key			 
]		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
[ 	
Required	 
, 
Column 
( 
TypeName "
=# $
$str% 2
)2 3
,3 4
	MaxLength5 >
(> ?
$num? A
)A B
]B C
public 
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
, 
Column 
( 
TypeName "
=# $
$str% 2
)2 3
,3 4
	MaxLength5 >
(> ?
$num? A
)A B
]B C
public 
string 
? 
City 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
, 
Column 
( 
TypeName "
=# $
$str% .
). /
]/ 0
public 
int 
NumberOfSeat 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
, 
Column 
( 
TypeName "
=# $
$str% .
). /
]/ 0
public 
int 
Rate 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Column	 
( 
TypeName 
= 
$str $
)$ %
]% &
public 
int 
Status 
{ 
get 
;  
set! $
;$ %
}& '
} 
} �
CC:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Models\Ticket.cs
	namespace 	
MovieTheatreWebApp
 
. 
Models #
{ 
public 

class 
Ticket 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[		 	
Key			 
]		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
? 
Title 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
? 
TheatreName "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Column	 
( 
TypeName 
= 
$str $
)$ %
]% &
public 
int 
NoOfSeat 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
? 
WhoAdded 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Column	 
( 
TypeName 
= 
$str $
)$ %
]% &
public 
int 
Status 
{ 
get 
;  
set! $
;$ %
}& '
} 
} �(
=C:\Users\Tej\Downloads\SaiKumar\MovieTheatreWebApp\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var		 
connectionString		 
=		 
builder		 
.		 
Configuration		 ,
.		, -
GetConnectionString		- @
(		@ A
$str		A T
)		T U
;		U V
builder

 
.

 
Services

 
.

 
AddDbContext

 
<

  
ApplicationDbContext

 2
>

2 3
(

3 4
options

4 ;
=>

< >
options 
. 
UseSqlServer 
( 
connectionString )
)) *
)* +
;+ ,
builder 
. 
Services 
. 
	AddScoped 
< 
MovieApiData '
>' (
(( )
)) *
;* +
builder 
. 
Services 
. 
	AddScoped 
< 
TheatreApiData )
>) *
(* +
)+ ,
;, -
builder 
. 
Services 
. 
	AddScoped 
< 
TicketApiData (
>( )
() *
)* +
;+ ,
builder 
. 
Services 
. 
AddAutoMapper 
( 
typeof %
(% &
Program& -
)- .
). /
;/ 0
builder 
. 
Services 
. 3
'AddDatabaseDeveloperPageExceptionFilter 8
(8 9
)9 :
;: ;
builder 
. 
Services 
. 
AddDefaultIdentity #
<# $
IdentityUser$ 0
>0 1
(1 2
options2 9
=>: <
options= D
.D E
SignInE K
.K L#
RequireConfirmedAccountL c
=d e
truef j
)j k
.k l
AddRolesl t
<t u
IdentityRole	u �
>
� �
(
� �
)
� �
. $
AddEntityFrameworkStores 
<  
ApplicationDbContext 2
>2 3
(3 4
)4 5
;5 6
builder 
. 
Services 
. #
AddControllersWithViews (
(( )
)) *
;* +
builder 
. 
Services 
. %
AddDistributedMemoryCache *
(* +
)+ ,
;, -
builder 
. 
Services 
. 

AddSession 
( 
options #
=>$ &
{ 
options 
. 
IdleTimeout 
= 
TimeSpan "
." #
FromMinutes# .
(. /
$num/ 1
)1 2
;2 3
options 
. 
Cookie 
. 
HttpOnly 
= 
true "
;" #
options 
. 
Cookie 
. 
IsEssential 
=  
true! %
;% &
} 
) 
; 
var   
app   
=   	
builder  
 
.   
Build   
(   
)   
;   
if## 
(## 
app## 
.## 
Environment## 
.## 
IsDevelopment## !
(##! "
)##" #
)### $
{$$ 
app%% 
.%% !
UseMigrationsEndPoint%% 
(%% 
)%% 
;%%  
}&& 
else'' 
{(( 
app)) 
.)) 
UseExceptionHandler)) 
()) 
$str)) )
)))) *
;))* +
app++ 
.++ 
UseHsts++ 
(++ 
)++ 
;++ 
},, 
app.. 
... 
UseHttpsRedirection.. 
(.. 
).. 
;.. 
app// 
.// 
UseStaticFiles// 
(// 
)// 
;// 
app11 
.11 

UseRouting11 
(11 
)11 
;11 
app33 
.33 
UseAuthentication33 
(33 
)33 
;33 
app44 
.44 
UseAuthorization44 
(44 
)44 
;44 
app55 
.55 

UseSession55 
(55 
)55 
;55 
app66 
.66 
MapControllerRoute66 
(66 
name77 
:77 	
$str77
 
,77 
pattern88 
:88 
$str88 5
)885 6
;886 7
app99 
.99 
MapRazorPages99 
(99 
)99 
;99 
app;; 
.;; 
Run;; 
(;; 
);; 	
;;;	 
