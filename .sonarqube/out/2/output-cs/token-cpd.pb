Å
zC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Mapping\DoctorProfile.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Mapping( /
;/ 0
public 
class 
DoctorProfile 
: 
Profile $
{ 
public		 

DoctorProfile		 
(		 
)		 
{

 
this 
. 
	CreateMap 
< 
Doctor 
, 
DoctorResponseModel 2
>2 3
(3 4
)4 5
;5 6
this 
. 
	CreateMap 
< 
DoctorRequestModel )
,) *
Doctor+ 1
>1 2
(2 3
)3 4
;4 5
} 
} ¡
ÉC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Mapping\MedicalFacilityProfile.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Mapping( /
;/ 0
public 
class "
MedicalFacilityProfile #
:$ %
Profile& -
{ 
public		 
"
MedicalFacilityProfile		 !
(		! "
)		" #
{

 
this 
. 
	CreateMap 
< 
MedicalFacility &
,& '(
MedicalFacilityResponseModel( D
>D E
(E F
)F G
;G H
this 
. 
	CreateMap 
< '
MedicalFacilityRequestModel 2
,2 3
MedicalFacility4 C
>C D
(D E
)E F
;F G
} 
} ¡
ÉC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Mapping\MedicationStockProfile.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Mapping( /
;/ 0
public 
class "
MedicationStockProfile #
:$ %
Profile& -
{ 
public		 
"
MedicationStockProfile		 !
(		! "
)		" #
{

 
this 
. 
	CreateMap 
< 
MedicationStock &
,& '(
MedicationStockResponseModel( D
>D E
(E F
)F G
;G H
this 
. 
	CreateMap 
< '
MedicationStockRequestModel 2
,2 3
MedicationStock4 C
>C D
(D E
)E F
;F G
} 
} à
{C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Mapping\PacientProfile.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Mapping( /
;/ 0
public 
class 
PacientProfile 
: 
Profile %
{ 
public		 

PacientProfile		 
(		 
)		 
{

 
this 
. 
	CreateMap 
< 
Pacient 
,  
PacientResponseModel  4
>4 5
(5 6
)6 7
;7 8
this 
. 
	CreateMap 
< 
PacientRequestModel *
,* +
Pacient, 3
>3 4
(4 5
)5 6
;6 7
} 
} Ø

xC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Mapping\UserProfile.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Mapping( /
{ 
public 

class 
UserProfile 
: 
Profile &
{ 
public		 
UserProfile		 
(		 
)		 
{

 	
this 
. 
	CreateMap 
< 
User 
,  
UserResponseModel! 2
>2 3
(3 4
)4 5
.5 6
	ForMember6 ?
(? @
dest@ D
=>E G
destH L
.L M
UserTypeM U
,U V
destW [
=>\ ^
dest_ c
.c d
MapFromd k
(k l
sourcel r
=>s u
sourcev |
.| }
UserType	} Ö
.
Ö Ü
Type
Ü ä
)
ä ã
)
ã å
;
å ç
this 
. 
	CreateMap 
< 
UserRequestModel +
,+ ,
User- 1
>1 2
(2 3
)3 4
;4 5
} 	
} 
} ‰
~C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Models\DoctorRequestModel.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Models( .
;. /
public 
class 
DoctorRequestModel 
{ 
public 

string 
CNP 
{ 
get 
; 
set  
;  !
}" #
public 

string 
? 
ProfilePicture !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

string 
? 
	FirstName 
{ 
get "
;" #
set$ '
;' (
}) *
public		 

string		 
?		 
LastName		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 

Guid

 
UserId

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
public 

Guid 
MedicalFacilityId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

Guid 
SpecialtyId 
{ 
get !
;! "
set# &
;& '
}( )
} â
C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Models\DoctorResponseModel.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Models( .
;. /
public 
class 
DoctorResponseModel  
{ 
public 

string 
CNP 
{ 
get 
; 
set  
;  !
}" #
public		 

string		 
ProfilePicture		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 

string

 
	FirstName

 
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
public 

string 
LastName 
{ 
get  
;  !
set" %
;% &
}' (
public 

MedicalFacility 
MedicalFacility *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 

	Specialty 
	Specialty 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

IEnumerable 
< 
Appointment "
>" #
Appointments$ 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} ∆
áC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Models\MedicalFacilityRequestModel.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Models( .
;. /
public 
class '
MedicalFacilityRequestModel (
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
public

 

Guid

 
CityId

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
public 

City 
City 
{ 
get 
; 
set 
;  
}! "
} ª	
àC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Models\MedicalFacilityResponseModel.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Models( .
;. /
public 
class (
MedicalFacilityResponseModel )
{ 
public 

Guid 
Id 
{ 
get 
; 
set 
; 
}  
public		 

string		 
Name		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public 

Guid 
CityId 
{ 
get 
; 
set !
;! "
}# $
public 

City 
City 
{ 
get 
; 
set 
;  
}! "
public 

IEnumerable 
< 
MedicationStock &
>& '
Medications( 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
} È
áC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Models\MedicationStockRequestModel.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Models( .
;. /
public 
class '
MedicationStockRequestModel (
{ 
public 

string 
? 
Name 
{ 
get 
; 
set "
;" #
}$ %
public 

int 
? 
Quantity 
{ 
get 
; 
set  #
;# $
}% &
public

 

decimal

 
Price

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
} ≤
àC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Models\MedicationStockResponseModel.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Models( .
;. /
public 
class (
MedicationStockResponseModel )
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
public

 

int

 
Quantity

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
public 

decimal 
Price 
{ 
get 
; 
set  #
;# $
}% &
public 

IEnumerable 
< 
MedicalFacility &
>& '
MedicalFacilities( 9
{: ;
get< ?
;? @
setA D
;D E
}F G
} ˚
C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Models\PacientRequestModel.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Models( .
;. /
public 
class 
PacientRequestModel  
{ 
public 

string 
CNP 
{ 
get 
; 
set  
;  !
}" #
public 

Guid 
? 
UserId 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
? 
Phone 
{ 
get 
; 
set  #
;# $
}% &
public		 

DateTime		 
	BirthDate		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 

string

 
?

 
	FirstName

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 

string 
? 
LastName 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
	Allergies 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
MedicalHistory !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

string 
? 
ProfilePicture !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

Guid 
? 
CityId 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
? 
Gender 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
Height 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
Weight 
{ 
get 
;  
set! $
;$ %
}& '
} ±
ÄC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Models\PacientResponseModel.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Models( .
;. /
public 
class  
PacientResponseModel !
{ 
public 

string 
CNP 
{ 
get 
; 
set  
;  !
}" #
public		 

string		 
Phone		 
{		 
get		 
;		 
set		 "
;		" #
}		$ %
public

 

string

 
	FirstName

 
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
public 

string 
LastName 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
	Allergies 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
MedicalHistory  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
ProfilePicture  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
Gender 
{ 
get 
; 
set  #
;# $
}% &
public 

string 
Height 
{ 
get 
; 
set  #
;# $
}% &
public 

string 
Weight 
{ 
get 
; 
set  #
;# $
}% &
public 

City 
City 
{ 
get 
; 
set 
;  
}! "
public 

User 
User 
{ 
get 
; 
set 
;  
}! "
public 

DateTime 
	BirthDate 
{ 
get  #
;# $
set% (
;( )
}* +
public 

IEnumerable 
< 
Appointment "
>" #
Appointments$ 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} ∫
|C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Models\UserRequestModel.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Models( .
;. /
public 
class 
UserRequestModel 
{ 
public 

string 
Email 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
Password 
{ 
get  
;  !
set" %
;% &
}' (
public

 

Guid

 

UserTypeId

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} –
}C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Models\UserResponseModel.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Models( .
;. /
public 
class 
UserResponseModel 
{ 
public 

Guid 
Id 
{ 
get 
; 
set 
; 
}  
public 

string 
Password 
{ 
get  
;  !
set" %
;% &
}' (
public

 

string

 
Email

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
public 

string 
UserType 
{ 
get  
;  !
set" %
;% &
}' (
} Û
vC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\ServiceCollection.cs
	namespace 	
DoctorAppointment
 
. 
Application '
{ 
public		 

static		 
class		 
ServiceCollection		 )
{

 
public 
static 
IServiceCollection (
AddApplication) 7
(7 8
this8 <
IServiceCollection= O
servicesP X
,X Y
IConfigurationZ h
configurationi v
)v w
{ 	
services 
. 
AddAutoMapper "
(" #
typeof# )
() *
UserProfile* 5
)5 6
)6 7
;7 8
services 
. 
AddAutoMapper "
(" #
typeof# )
() *
DoctorProfile* 7
)7 8
)8 9
;9 :
services 
. 
	AddScoped 
< 
IUserService +
,+ ,
UserService- 8
>8 9
(9 :
): ;
;; <
services 
. 
AddAutoMapper "
(" #
typeof# )
() *
DoctorProfile* 7
)7 8
)8 9
;9 :
services 
. 
	AddScoped 
< 
IDoctorService -
,- .
DoctorService/ <
>< =
(= >
)> ?
;? @
services 
. 
AddAutoMapper "
(" #
typeof# )
() *
PacientProfile* 8
)8 9
)9 :
;: ;
services 
. 
	AddScoped 
< 
IPacientService .
,. /
PacientService0 >
>> ?
(? @
)@ A
;A B
services 
. 
AddAutoMapper "
(" #
typeof# )
() *"
MedicationStockProfile* @
)@ A
)A B
;B C
services!! 
.!! 
	AddScoped!! 
<!! #
IMedicationStockService!! 6
,!!6 7"
MedicationStockService!!8 N
>!!N O
(!!O P
)!!P Q
;!!Q R
services$$ 
.$$ 
AddAutoMapper$$ "
($$" #
typeof$$# )
($$) *"
MedicalFacilityProfile$$* @
)$$@ A
)$$A B
;$$B C
services&& 
.&& 
	AddScoped&& 
<&& #
IMedicalFacilityService&& 6
,&&6 7"
MedicalFacilityService&&8 N
>&&N O
(&&O P
)&&P Q
;&&Q R
services)) 
.)) 
	AddScoped)) 
<)) 
IRegionService)) -
,))- .
RegionService))/ <
>))< =
())= >
)))> ?
;))? @
services,, 
.,, 
	AddScoped,, 
<,, 
ICityService,, +
,,,+ ,
CityService,,- 8
>,,8 9
(,,9 :
),,: ;
;,,; <
return.. 
services.. 
;.. 
}// 	
}00 
}11 ∫
zC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\ICityService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
{ 
public 

	interface 
ICityService !
{ 
public 
Task 
< 
ApiResponse 
<  
IEnumerable  +
<+ ,
City, 0
>0 1
>1 2
>2 3%
GetCitiesAfterRegionAsync4 M
(M N
GuidN R
regionIdS [
)[ \
;\ ]
}		 
}

 ƒ
|C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\IDoctorService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
;0 1
public 
	interface 
IDoctorService 
{ 
Task		 
<		 	
ApiResponse			 
<		 
DoctorResponseModel		 (
>		( )
>		) *
GetDoctorById		+ 8
(		8 9
Guid		9 =
id		> @
)		@ A
;		A B
Task 
< 	
ApiResponse	 
< 
List 
< 
DoctorResponseModel -
>- .
>. /
>/ 0
GetAllDoctors1 >
(> ?
)? @
;@ A
Task 
< 	
ApiResponse	 
< 
bool 
> 
> 
DeleteDoctor (
(( )
Guid) -
id. 0
)0 1
;1 2
Task 
< 	
ApiResponse	 
< 
DoctorResponseModel (
>( )
>) *
UpdateDoctor+ 7
(7 8
Doctor8 >
doctor? E
)E F
;F G
Task 
< 	
ApiResponse	 
< 
DoctorResponseModel (
>( )
>) *
	AddDoctor+ 4
(4 5
DoctorRequestModel5 G
doctorRequestModelH Z
)Z [
;[ \
} ™
ÖC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\IMedicalFacilityService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
;0 1
public 
	interface #
IMedicalFacilityService (
{ 
Task		 
<		 	
ApiResponse			 
<		 (
MedicalFacilityResponseModel		 1
>		1 2
>		2 3
GetFacilityById		4 C
(		C D
Guid		D H
id		I K
)		K L
;		L M
Task 
< 	
ApiResponse	 
< 
List 
< (
MedicalFacilityResponseModel 6
>6 7
>7 8
>8 9
GetAllFacilities: J
(J K
)K L
;L M
Task 
< 	
ApiResponse	 
< 
bool 
> 
> 
DeleteFacility *
(* +
Guid+ /
id0 2
)2 3
;3 4
Task 
< 	
ApiResponse	 
< (
MedicalFacilityResponseModel 1
>1 2
>2 3
UpdateFacility4 B
(B C
MedicalFacilityC R
medicalFacilityS b
)b c
;c d
Task 
< 	
ApiResponse	 
< (
MedicalFacilityResponseModel 1
>1 2
>2 3
AddFacility4 ?
(? @'
MedicalFacilityRequestModel@ ['
medicalFacilityRequestModel\ w
)w x
;x y
} Ã
ÖC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\IMedicationStockService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
;0 1
public 
	interface #
IMedicationStockService (
{ 
Task		 
<		 	
ApiResponse			 
<		 (
MedicationStockResponseModel		 1
>		1 2
>		2 3"
GetMedicationStockById		4 J
(		J K
Guid		K O
id		P R
)		R S
;		S T
Task 
< 	
ApiResponse	 
< 
List 
< (
MedicationStockResponseModel 6
>6 7
>7 8
>8 9!
GetAllMedicationStock: O
(O P
)P Q
;Q R
Task 
< 	
ApiResponse	 
< 
bool 
> 
> !
DeleteMedicationStock 1
(1 2
Guid2 6
id7 9
)9 :
;: ;
Task 
< 	
ApiResponse	 
< (
MedicationStockResponseModel 1
>1 2
>2 3!
UpdateMedicationStock4 I
(I J
MedicationStockJ Y
medicationStockZ i
)i j
;j k
Task 
< 	
ApiResponse	 
< (
MedicationStockResponseModel 1
>1 2
>2 3
AddMedicationStock4 F
(F G'
MedicationStockRequestModelG b'
medicationStockRequestModelc ~
)~ 
;	 Ä
} õ
àC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\Implementation\CityService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
.0 1
Implementation1 ?
{ 
public 

class 
CityService 
: 
ICityService +
{ 
private		 
readonly		 
ICityRepository		 (
_cityRepository		) 8
;		8 9
public 
CityService 
( 
ICityRepository *
cityRepository+ 9
)9 :
{ 	
_cityRepository 
= 
cityRepository ,
;, -
} 	
public 
async 
Task 
< 
ApiResponse %
<% &
IEnumerable& 1
<1 2
City2 6
>6 7
>7 8
>8 9%
GetCitiesAfterRegionAsync: S
(S T
GuidT X
regionIdY a
)a b
{ 	
var 
result 
= 
await 
_cityRepository .
.. /"
GetCitiesByRegionAsync/ E
(E F
regionIdF N
)N O
;O P
if 
( 
! 
result 
. 
Any 
( 
) 
) 
{ 
return 
ApiResponse "
<" #
IEnumerable# .
<. /
City/ 3
>3 4
>4 5
.5 6
Fail6 :
(: ;
$str; `
)` a
;a b
} 
return 
ApiResponse 
< 
IEnumerable *
<* +
City+ /
>/ 0
>0 1
.1 2
Success2 9
(9 :
result: @
)@ A
;A B
} 	
} 
} ë5
äC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\Implementation\DoctorService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
.0 1
Implementation1 ?
;? @
public		 
class		 
DoctorService		 
:		 
IDoctorService		 +
{

 
private 
readonly 
IDoctorRepository &
_doctorRepository' 8
;8 9
private 
readonly 
IMapper 
_mapper $
;$ %
public 

DoctorService 
( 
IDoctorRepository *
doctorRepository+ ;
,; <
IMapper= D
mapperE K
)K L
{ 
_doctorRepository 
= 
doctorRepository ,
;, -
_mapper 
= 
mapper 
; 
} 
public 

async 
Task 
< 
ApiResponse !
<! "
DoctorResponseModel" 5
>5 6
>6 7
	AddDoctor8 A
(A B
DoctorRequestModelB T
doctorRequestModelU g
)g h
{ 
var 
doctor 
= 
_mapper 
. 
Map  
<  !
Doctor! '
>' (
(( )
doctorRequestModel) ;
); <
;< =
doctor 
= 
await 
_doctorRepository (
.( )
	AddDoctor) 2
(2 3
doctor3 9
)9 :
;: ;
return 
ApiResponse 
< 
DoctorResponseModel .
>. /
./ 0
Success0 7
(7 8
_mapper8 ?
.? @
Map@ C
<C D
DoctorResponseModelD W
>W X
(X Y
doctorY _
)_ `
)` a
;a b
} 
public 

async 
Task 
< 
ApiResponse !
<! "
bool" &
>& '
>' (
DeleteDoctor) 5
(5 6
Guid6 :
id; =
)= >
{ 
var 
result 
= 
await 
_doctorRepository ,
., -
DeleteDoctor- 9
(9 :
id: <
)< =
;= >
return 
result 
? 
ApiResponse #
<# $
bool$ (
>( )
.) *
Success* 1
(1 2
true2 6
)6 7
:8 9
ApiResponse: E
<E F
boolF J
>J K
.K L
FailL P
(P Q
$strQ c
)c d
;d e
} 
public!! 

async!! 
Task!! 
<!! 
ApiResponse!! !
<!!! "
List!!" &
<!!& '
DoctorResponseModel!!' :
>!!: ;
>!!; <
>!!< =
GetAllDoctors!!> K
(!!K L
)!!L M
{"" 
var## 
doctors## 
=## 
await## 
_doctorRepository## -
.##- .
GetAllDoctors##. ;
(##; <
)##< =
;##= >
if$$ 

($$ 
doctors$$ 
.$$ 
Count$$ 
==$$ 
$num$$ 
)$$ 
{%% 	
return&& 
ApiResponse&& 
<&& 
List&& #
<&&# $
DoctorResponseModel&&$ 7
>&&7 8
>&&8 9
.&&9 :
Fail&&: >
(&&> ?
$str&&? ]
)&&] ^
;&&^ _
}'' 	
return(( 
ApiResponse(( 
<(( 
List(( 
<((  
DoctorResponseModel((  3
>((3 4
>((4 5
.((5 6
Success((6 =
(((= >
_mapper((> E
.((E F
Map((F I
<((I J
List((J N
<((N O
DoctorResponseModel((O b
>((b c
>((c d
(((d e
doctors((e l
)((l m
)((m n
;((n o
})) 
public++ 

async++ 
Task++ 
<++ 
ApiResponse++ !
<++! "
DoctorResponseModel++" 5
>++5 6
>++6 7
GetDoctorById++8 E
(++E F
Guid++F J
id++K M
)++M N
{,, 
var-- 
doctor-- 
=-- 
await-- 
_doctorRepository-- ,
.--, -
GetDoctorById--- :
(--: ;
id--; =
)--= >
;--> ?
if.. 

(.. 
doctor.. 
==.. 
null.. 
).. 
{// 	
return00 
ApiResponse00 
<00 
DoctorResponseModel00 2
>002 3
.003 4
Fail004 8
(008 9
$str009 P
)00P Q
;00Q R
}11 	
return33 
ApiResponse33 
<33 
DoctorResponseModel33 .
>33. /
.33/ 0
Success330 7
(337 8
_mapper338 ?
.33? @
Map33@ C
<33C D
DoctorResponseModel33D W
>33W X
(33X Y
doctor33Y _
)33_ `
)33` a
;33a b
}44 
public66 

async66 
Task66 
<66 
ApiResponse66 !
<66! "
DoctorResponseModel66" 5
>665 6
>666 7
UpdateDoctor668 D
(66D E
Doctor66E K
doctor66L R
)66R S
{77 
var88 
result88 
=88 
await88 
_doctorRepository88 ,
.88, -
UpdateDoctor88- 9
(889 :
doctor88: @
)88@ A
;88A B
if99 

(99 
result99 
==99 
null99 
)99 
{:: 	
return;; 
ApiResponse;; 
<;; 
DoctorResponseModel;; 2
>;;2 3
.;;3 4
Fail;;4 8
(;;8 9
$str;;9 P
);;P Q
;;;Q R
}<< 	
return== 
ApiResponse== 
<== 
DoctorResponseModel== .
>==. /
.==/ 0
Success==0 7
(==7 8
_mapper==8 ?
.==? @
Map==@ C
<==C D
DoctorResponseModel==D W
>==W X
(==X Y
result==Y _
)==_ `
)==` a
;==a b
}>> 
}?? ∞7
ìC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\Implementation\MedicalFacilityService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
.0 1
Implementation1 ?
;? @
public		 
class		 "
MedicalFacilityService		 #
:		$ %#
IMedicalFacilityService		& =
{

 
private 
readonly &
IMedicalFacilityRepository /
_facilityRepository0 C
;C D
private 
readonly 
IMapper 
_mapper $
;$ %
public 
"
MedicalFacilityService !
(! "&
IMedicalFacilityRepository" <
facilityRepository= O
,O P
IMapperQ X
mapperY _
)_ `
{ 
_facilityRepository 
= 
facilityRepository 0
;0 1
_mapper 
= 
mapper 
; 
} 
public 

async 
Task 
< 
ApiResponse !
<! "(
MedicalFacilityResponseModel" >
>> ?
>? @
AddFacilityA L
(L M'
MedicalFacilityRequestModelM h(
medicalFacilityRequestModel	i Ñ
)
Ñ Ö
{ 
var 
facility 
= 
_mapper 
. 
Map "
<" #
MedicalFacility# 2
>2 3
(3 4'
medicalFacilityRequestModel4 O
)O P
;P Q
facility 
= 
await 
_facilityRepository ,
., -
AddFacility- 8
(8 9
facility9 A
)A B
;B C
return 
ApiResponse 
< (
MedicalFacilityResponseModel 7
>7 8
.8 9
Success9 @
(@ A
_mapperA H
.H I
MapI L
<L M(
MedicalFacilityResponseModelM i
>i j
(j k
facilityk s
)s t
)t u
;u v
} 
public 

async 
Task 
< 
ApiResponse !
<! "
bool" &
>& '
>' (
DeleteFacility) 7
(7 8
Guid8 <
id= ?
)? @
{ 
var 
result 
= 
await 
_facilityRepository .
.. /
DeleteFacility/ =
(= >
id> @
)@ A
;A B
if 

( 
result 
) 
return 
ApiResponse 
< 
bool #
># $
.$ %
Success% ,
(, -
true- 1
)1 2
;2 3
return   
ApiResponse   
<   
bool   
>    
.    !
Fail  ! %
(  % &
$str  & A
)  A B
;  B C
}!! 
public## 

async## 
Task## 
<## 
ApiResponse## !
<##! "
List##" &
<##& '(
MedicalFacilityResponseModel##' C
>##C D
>##D E
>##E F
GetAllFacilities##G W
(##W X
)##X Y
{$$ 
var%% 
facility%% 
=%% 
await%% 
_facilityRepository%% 0
.%%0 1
GetAllFacilities%%1 A
(%%A B
)%%B C
;%%C D
if&& 

(&& 
facility&& 
.&& 
Count&& 
==&& 
$num&& 
)&&  
{'' 	
return(( 
ApiResponse(( 
<(( 
List(( #
<((# $(
MedicalFacilityResponseModel(($ @
>((@ A
>((A B
.((B C
Fail((C G
(((G H
$str((H p
)((p q
;((q r
})) 	
return** 
ApiResponse** 
<** 
List** 
<**  (
MedicalFacilityResponseModel**  <
>**< =
>**= >
.**> ?
Success**? F
(**F G
_mapper**G N
.**N O
Map**O R
<**R S
List**S W
<**W X(
MedicalFacilityResponseModel**X t
>**t u
>**u v
(**v w
facility**w 
)	** Ä
)
**Ä Å
;
**Å Ç
}++ 
public-- 

async-- 
Task-- 
<-- 
ApiResponse-- !
<--! "(
MedicalFacilityResponseModel--" >
>--> ?
>--? @
GetFacilityById--A P
(--P Q
Guid--Q U
id--V X
)--X Y
{.. 
var// 
facility// 
=// 
await// 
_facilityRepository// 0
.//0 1
GetFacilityById//1 @
(//@ A
id//A C
)//C D
;//D E
return00 
facility00 
==00 
null00 
?11 
ApiResponse11 
<11 (
MedicalFacilityResponseModel11 6
>116 7
.117 8
Fail118 <
(11< =
$str11= ]
)11] ^
:22 
ApiResponse22 
<22 (
MedicalFacilityResponseModel22 6
>226 7
.227 8
Success228 ?
(22? @
_mapper22@ G
.22G H
Map22H K
<22K L(
MedicalFacilityResponseModel22L h
>22h i
(22i j
facility22j r
)22r s
)22s t
;22t u
}33 
public55 

async55 
Task55 
<55 
ApiResponse55 !
<55! "(
MedicalFacilityResponseModel55" >
>55> ?
>55? @
UpdateFacility55A O
(55O P
MedicalFacility55P _
medicalFacility55` o
)55o p
{66 
var77 
result77 
=77 
await77 
_facilityRepository77 .
.77. /
UpdateFacility77/ =
(77= >
medicalFacility77> M
)77M N
;77N O
if88 

(88 
result88 
==88 
null88 
)88 
{99 	
return:: 
ApiResponse:: 
<:: (
MedicalFacilityResponseModel:: ;
>::; <
.::< =
Fail::= A
(::A B
$str::B b
)::b c
;::c d
};; 	
return<< 
ApiResponse<< 
<<< (
MedicalFacilityResponseModel<< 7
><<7 8
.<<8 9
Success<<9 @
(<<@ A
_mapper<<A H
.<<H I
Map<<I L
<<<L M(
MedicalFacilityResponseModel<<M i
><<i j
(<<j k
result<<k q
)<<q r
)<<r s
;<<s t
}== 
}>> ó9
ìC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\Implementation\MedicationStockService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
.0 1
Implementation1 ?
;? @
public		 
class		 "
MedicationStockService		 #
:		$ %#
IMedicationStockService		& =
{

 
private 
readonly &
IMedicationStockRepository /&
_medicationStockRepository0 J
;J K
private 
readonly 
IMapper 
_mapper $
;$ %
public 
"
MedicationStockService !
(! "&
IMedicationStockRepository" <%
medicationStockRepository= V
,V W
IMapperX _
mapper` f
)f g
{ &
_medicationStockRepository "
=# $%
medicationStockRepository% >
;> ?
_mapper 
= 
mapper 
; 
} 
public 

async 
Task 
< 
ApiResponse !
<! "(
MedicationStockResponseModel" >
>> ?
>? @
AddMedicationStockA S
(S T'
MedicationStockRequestModelT o(
medicationStockRequestModel	p ã
)
ã å
{ 
var 
medicationStock 
= 
_mapper %
.% &
Map& )
<) *
MedicationStock* 9
>9 :
(: ;'
medicationStockRequestModel; V
)V W
;W X
medicationStock 
= 
await &
_medicationStockRepository  :
.: ;
AddMedicationStock; M
(M N
medicationStockN ]
)] ^
;^ _
return 
ApiResponse 
< (
MedicationStockResponseModel 7
>7 8
.8 9
Success9 @
(@ A
_mapperA H
.H I
MapI L
<L M(
MedicationStockResponseModelM i
>i j
(j k
medicationStockk z
)z {
){ |
;| }
} 
public 

async 
Task 
< 
ApiResponse !
<! "
bool" &
>& '
>' (!
DeleteMedicationStock) >
(> ?
Guid? C
idD F
)F G
{ 
var 
result 
= 
await &
_medicationStockRepository 5
.5 6!
DeleteMedicationStock6 K
(K L
idL N
)N O
;O P
return 
result 
? 
ApiResponse 
< 
bool 
> 
.  
Success  '
(' (
true( ,
), -
:   
ApiResponse   
<   
bool   
>   
.    
Fail    $
(  $ %
$str  % 7
)  7 8
;  8 9
}!! 
public## 

async## 
Task## 
<## 
ApiResponse## !
<##! "
List##" &
<##& '(
MedicationStockResponseModel##' C
>##C D
>##D E
>##E F!
GetAllMedicationStock##G \
(##\ ]
)##] ^
{$$ 
var%% 
medicationStock%% 
=%% 
await%% #&
_medicationStockRepository%%$ >
.%%> ?!
GetAllMedicationStock%%? T
(%%T U
)%%U V
;%%V W
if&& 

(&& 
medicationStock&& 
.&& 
Count&& !
==&&" $
$num&&% &
)&&& '
{'' 	
return(( 
ApiResponse(( 
<(( 
List(( #
<((# $(
MedicationStockResponseModel(($ @
>((@ A
>((A B
.((B C
Fail((C G
(((G H
$str((H n
)((n o
;((o p
})) 	
return** 
ApiResponse** 
<** 
List** 
<**  (
MedicationStockResponseModel**  <
>**< =
>**= >
.**> ?
Success**? F
(**F G
_mapper**G N
.**N O
Map**O R
<**R S
List**S W
<**W X(
MedicationStockResponseModel**X t
>**t u
>**u v
(**v w
medicationStock	**w Ü
)
**Ü á
)
**á à
;
**à â
}++ 
public-- 

async-- 
Task-- 
<-- 
ApiResponse-- !
<--! "(
MedicationStockResponseModel--" >
>--> ?
>--? @"
GetMedicationStockById--A W
(--W X
Guid--X \
id--] _
)--_ `
{.. 
var// 
medicationStock// 
=// 
await// #&
_medicationStockRepository//$ >
.//> ?"
GetMedicationStockById//? U
(//U V
id//V X
)//X Y
;//Y Z
if00 

(00 
medicationStock00 
==00 
null00 #
)00# $
{11 	
return22 
ApiResponse22 
<22 (
MedicationStockResponseModel22 ;
>22; <
.22< =
Fail22= A
(22A B
$str22B b
)22b c
;22c d
}33 	
return55 
ApiResponse55 
<55 (
MedicationStockResponseModel55 7
>557 8
.558 9
Success559 @
(55@ A
_mapper55A H
.55H I
Map55I L
<55L M(
MedicationStockResponseModel55M i
>55i j
(55j k
medicationStock55k z
)55z {
)55{ |
;55| }
}66 
public88 

async88 
Task88 
<88 
ApiResponse88 !
<88! "(
MedicationStockResponseModel88" >
>88> ?
>88? @!
UpdateMedicationStock88A V
(88V W
MedicationStock88W f
medicationStock88g v
)88v w
{99 
var:: 
result:: 
=:: 
await:: &
_medicationStockRepository:: 5
.::5 6!
UpdateMedicationStock::6 K
(::K L
medicationStock::L [
)::[ \
;::\ ]
if;; 

(;; 
result;; 
==;; 
null;; 
);; 
{<< 	
return== 
ApiResponse== 
<== (
MedicationStockResponseModel== ;
>==; <
.==< =
Fail=== A
(==A B
$str==B b
)==b c
;==c d
}>> 	
return?? 
ApiResponse?? 
<?? (
MedicationStockResponseModel?? 7
>??7 8
.??8 9
Success??9 @
(??@ A
_mapper??A H
.??H I
Map??I L
<??L M(
MedicationStockResponseModel??M i
>??i j
(??j k
result??k q
)??q r
)??r s
;??s t
}@@ 
}AA û5
ãC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\Implementation\PacientService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
.0 1
Implementation1 ?
;? @
public		 
class		 
PacientService		 
:		 
IPacientService		 -
{

 
private 
readonly 
IPacientRepository '
_pacientRepository( :
;: ;
private 
readonly 
IMapper 
_mapper $
;$ %
public 

PacientService 
( 
IPacientRepository ,
pacientRepository- >
,> ?
IMapper@ G
mapperH N
)N O
{ 
_pacientRepository 
= 
pacientRepository .
;. /
_mapper 
= 
mapper 
; 
} 
public 

async 
Task 
< 
ApiResponse !
<! " 
PacientResponseModel" 6
>6 7
>7 8

AddPacient9 C
(C D
PacientRequestModelD W
pacientRequestModelX k
)k l
{ 
var 
pacient 
= 
_mapper 
. 
Map !
<! "
Pacient" )
>) *
(* +
pacientRequestModel+ >
)> ?
;? @
pacient 
= 
await 
_pacientRepository *
.* +

AddPacient+ 5
(5 6
pacient6 =
)= >
;> ?
return 
ApiResponse 
<  
PacientResponseModel /
>/ 0
.0 1
Success1 8
(8 9
_mapper9 @
.@ A
MapA D
<D E 
PacientResponseModelE Y
>Y Z
(Z [
pacient[ b
)b c
)c d
;d e
} 
public 

async 
Task 
< 
ApiResponse !
<! "
bool" &
>& '
>' (
DeletePacient) 6
(6 7
Guid7 ;
id< >
)> ?
{ 
var 
result 
= 
await 
_pacientRepository -
.- .
DeletePacient. ;
(; <
id< >
)> ?
;? @
if 

( 
result 
) 
return   
ApiResponse   
<   
bool   #
>  # $
.  $ %
Success  % ,
(  , -
true  - 1
)  1 2
;  2 3
return"" 
ApiResponse"" 
<"" 
bool"" 
>""  
.""  !
Fail""! %
(""% &
$str""& 9
)""9 :
;"": ;
}## 
public%% 

async%% 
Task%% 
<%% 
ApiResponse%% !
<%%! "
List%%" &
<%%& ' 
PacientResponseModel%%' ;
>%%; <
>%%< =
>%%= >
GetAllPacients%%? M
(%%M N
)%%N O
{&& 
var'' 
pacients'' 
='' 
await'' 
_pacientRepository'' /
.''/ 0
GetAllPacients''0 >
(''> ?
)''? @
;''@ A
if(( 

((( 
pacients(( 
.(( 
Count(( 
==(( 
$num(( 
)((  
{)) 	
return** 
ApiResponse** 
<** 
List** #
<**# $ 
PacientResponseModel**$ 8
>**8 9
>**9 :
.**: ;
Fail**; ?
(**? @
$str**@ _
)**_ `
;**` a
}++ 	
return,, 
ApiResponse,, 
<,, 
List,, 
<,,   
PacientResponseModel,,  4
>,,4 5
>,,5 6
.,,6 7
Success,,7 >
(,,> ?
_mapper,,? F
.,,F G
Map,,G J
<,,J K
List,,K O
<,,O P 
PacientResponseModel,,P d
>,,d e
>,,e f
(,,f g
pacients,,g o
),,o p
),,p q
;,,q r
}-- 
public// 

async// 
Task// 
<// 
ApiResponse// !
<//! " 
PacientResponseModel//" 6
>//6 7
>//7 8
GetPacientById//9 G
(//G H
Guid//H L
id//M O
)//O P
{00 
var11 
pacient11 
=11 
await11 
_pacientRepository11 .
.11. /
GetPacientById11/ =
(11= >
id11> @
)11@ A
;11A B
return33 
pacient33 
==33 
null33 
?44 
ApiResponse44 
<44  
PacientResponseModel44 .
>44. /
.44/ 0
Fail440 4
(444 5
$str445 M
)44M N
:55 
ApiResponse55 
<55  
PacientResponseModel55 .
>55. /
.55/ 0
Success550 7
(557 8
_mapper558 ?
.55? @
Map55@ C
<55C D 
PacientResponseModel55D X
>55X Y
(55Y Z
pacient55Z a
)55a b
)55b c
;55c d
}66 
public88 

async88 
Task88 
<88 
ApiResponse88 !
<88! " 
PacientResponseModel88" 6
>886 7
>887 8
UpdatePacient889 F
(88F G
Pacient88G N
pacient88O V
)88V W
{99 
pacient:: 
=:: 
await:: 
_pacientRepository:: *
.::* +
UpdatePacient::+ 8
(::8 9
pacient::9 @
)::@ A
;::A B
if;; 

(;; 
pacient;; 
==;; 
null;; 
);; 
{<< 	
return== 
ApiResponse== 
<==  
PacientResponseModel== 3
>==3 4
.==4 5
Fail==5 9
(==9 :
$str==: R
)==R S
;==S T
}>> 	
return?? 
ApiResponse?? 
<??  
PacientResponseModel?? /
>??/ 0
.??0 1
Success??1 8
(??8 9
_mapper??9 @
.??@ A
Map??A D
<??D E 
PacientResponseModel??E Y
>??Y Z
(??Z [
pacient??[ b
)??b c
)??c d
;??d e
}@@ 
}AA Ë
äC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\Implementation\RegionService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
.0 1
Implementation1 ?
{ 
internal 
class 
RegionService  
:! "
IRegionService# 1
{ 
private		 
readonly		 
IRegionRepository		 *
_regionRepository		+ <
;		< =
public 
RegionService 
( 
IRegionRepository .
regionRepository/ ?
)? @
{ 	
_regionRepository 
= 
regionRepository  0
;0 1
} 	
public 
async 
Task 
< 
ApiResponse %
<% &
IEnumerable& 1
<1 2
Region2 8
>8 9
>9 :
>: ;
GetRegionsAsync< K
(K L
)L M
{ 	
var 
result 
= 
await 
_regionRepository 0
.0 1
GetAllRegions1 >
(> ?
)? @
;@ A
if 
( 
! 
result 
. 
Any 
( 
) 
) 
{ 
return 
ApiResponse "
<" #
IEnumerable# .
<. /
Region/ 5
>5 6
>6 7
.7 8
Fail8 <
(< =
$str= U
)U V
;V W
} 
return 
ApiResponse 
< 
IEnumerable *
<* +
Region+ 1
>1 2
>2 3
.3 4
Success4 ;
(; <
result< B
)B C
;C D
} 	
} 
} å8
àC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\Implementation\UserService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
.0 1
Implementation1 ?
{ 
public		 

class		 
UserService		 
:		 
IUserService		 +
{

 
private 
readonly 
IUserRepository (
_userRepository) 8
;8 9
private 
readonly 
IMapper  
_mapper! (
;( )
public 
UserService 
( 
IUserRepository *
userRepository+ 9
,9 :
IMapper; B
mapperC I
)I J
{ 	
_userRepository 
= 
userRepository ,
;, -
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
ApiResponse %
<% &
UserResponseModel& 7
>7 8
>8 9
AddUser: A
(A B
UserRequestModelB R
userRequestModelS c
)c d
{ 	
var 
user 
= 
_mapper 
. 
Map "
<" #
User# '
>' (
(( )
userRequestModel) 9
)9 :
;: ;
user 
= 
await 
_userRepository (
.( )
AddUser) 0
(0 1
user1 5
)5 6
;6 7
if 
( 
user 
== 
null 
) 
{ 
return 
ApiResponse "
<" #
UserResponseModel# 4
>4 5
.5 6
Fail6 :
(: ;
$str; O
)O P
;P Q
} 
return 
ApiResponse 
< 
UserResponseModel 0
>0 1
.1 2
Success2 9
(9 :
_mapper: A
.A B
MapB E
<E F
UserResponseModelF W
>W X
(X Y
userY ]
)] ^
)^ _
;_ `
} 	
public 
async 
Task 
< 
ApiResponse %
<% &
bool& *
>* +
>+ ,

DeleteUser- 7
(7 8
Guid8 <
id= ?
)? @
{   	
var!! 
result!! 
=!! 
await!! 
_userRepository!! .
.!!. /

DeleteUser!!/ 9
(!!9 :
id!!: <
)!!< =
;!!= >
if## 
(## 
result## 
)## 
return$$ 
ApiResponse$$ "
<$$" #
bool$$# '
>$$' (
.$$( )
Success$$) 0
($$0 1
true$$1 5
)$$5 6
;$$6 7
return&& 
ApiResponse&& 
<&& 
bool&& #
>&&# $
.&&$ %
Fail&&% )
(&&) *
$str&&* :
)&&: ;
;&&; <
}'' 	
public)) 
async)) 
Task)) 
<)) 
ApiResponse)) %
<))% &
List))& *
<))* +
UserResponseModel))+ <
>))< =
>))= >
>))> ?
GetAllUsers))@ K
())K L
)))L M
{** 	
var++ 
users++ 
=++ 
await++ 
_userRepository++ -
.++- .
GetAllUsers++. 9
(++9 :
)++: ;
;++; <
if,, 
(,, 
users,, 
.,, 
Count,, 
==,, 
$num,,  
),,  !
{-- 
return.. 
ApiResponse.. "
<.." #
List..# '
<..' (
UserResponseModel..( 9
>..9 :
>..: ;
...; <
Fail..< @
(..@ A
$str..A a
)..a b
;..b c
}// 
var00 

mappedUser00 
=00 
_mapper00 $
.00$ %
Map00% (
<00( )
List00) -
<00- .
UserResponseModel00. ?
>00? @
>00@ A
(00A B
users00B G
)00G H
;00H I
return11 
ApiResponse11 
<11 
List11 #
<11# $
UserResponseModel11$ 5
>115 6
>116 7
.117 8
Success118 ?
(11? @

mappedUser11@ J
)11J K
;11K L
}22 	
public44 
async44 
Task44 
<44 
ApiResponse44 %
<44% &
UserResponseModel44& 7
>447 8
>448 9
GetUserById44: E
(44E F
Guid44F J
id44K M
)44M N
{55 	
var66 
user66 
=66 
await66 
_userRepository66 ,
.66, -
GetUserById66- 8
(668 9
id669 ;
)66; <
;66< =
if77 
(77 
user77 
==77 
null77 
)77 
{88 
return99 
ApiResponse99 "
<99" #
UserResponseModel99# 4
>994 5
.995 6
Fail996 :
(99: ;
$str99; V
)99V W
;99W X
}:: 
return;; 
ApiResponse;; 
<;; 
UserResponseModel;; 0
>;;0 1
.;;1 2
Success;;2 9
(;;9 :
_mapper;;: A
.;;A B
Map;;B E
<;;E F
UserResponseModel;;F W
>;;W X
(;;X Y
user;;Y ]
);;] ^
);;^ _
;;;_ `
}<< 	
public>> 
async>> 
Task>> 
<>> 
ApiResponse>> %
<>>% &
UserResponseModel>>& 7
>>>7 8
>>>8 9

UpdateUser>>: D
(>>D E
User>>E I
user>>J N
)>>N O
{?? 	
var@@ 
result@@ 
=@@ 
await@@ 
_userRepository@@ .
.@@. /

UpdateUser@@/ 9
(@@9 :
user@@: >
)@@> ?
;@@? @
ifAA 
(AA 
resultAA 
==AA 
nullAA 
)AA 
{BB 
returnCC 
ApiResponseCC "
<CC" #
UserResponseModelCC# 4
>CC4 5
.CC5 6
FailCC6 :
(CC: ;
$strCC; K
)CCK L
;CCL M
}DD 
returnEE 
ApiResponseEE 
<EE 
UserResponseModelEE 0
>EE0 1
.EE1 2
SuccessEE2 9
(EE9 :
_mapperEE: A
.EEA B
MapEEB E
<EEE F
UserResponseModelEEF W
>EEW X
(EEX Y
resultEEY _
)EE_ `
)EE` a
;EEa b
}FF 	
}GG 
}HH ”
}C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\IPacientService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
;0 1
public 
	interface 
IPacientService  
{ 
Task		 
<		 	
ApiResponse			 
<		  
PacientResponseModel		 )
>		) *
>		* +
GetPacientById		, :
(		: ;
Guid		; ?
id		@ B
)		B C
;		C D
Task 
< 	
ApiResponse	 
< 
List 
<  
PacientResponseModel .
>. /
>/ 0
>0 1
GetAllPacients2 @
(@ A
)A B
;B C
Task 
< 	
ApiResponse	 
< 
bool 
> 
> 
DeletePacient )
() *
Guid* .
id/ 1
)1 2
;2 3
Task 
< 	
ApiResponse	 
<  
PacientResponseModel )
>) *
>* +
UpdatePacient, 9
(9 :
Pacient: A
pacientB I
)I J
;J K
Task 
< 	
ApiResponse	 
<  
PacientResponseModel )
>) *
>* +

AddPacient, 6
(6 7
PacientRequestModel7 J
pacientRequestModelK ^
)^ _
;_ `
} é
|C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\IRegionService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
{ 
public 

	interface 
IRegionService #
{ 
public 
Task 
< 
ApiResponse 
<  
IEnumerable  +
<+ ,
Region, 2
>2 3
>3 4
>4 5
GetRegionsAsync6 E
(E F
)F G
;G H
}		 
}

 ∑
zC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Services\IUserService.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (
Services( 0
{ 
public 

	interface 
IUserService !
{ 
Task		 
<		 
ApiResponse		 
<		 
UserResponseModel		 *
>		* +
>		+ ,
GetUserById		- 8
(		8 9
Guid		9 =
id		> @
)		@ A
;		A B
Task 
< 
ApiResponse 
< 
List 
< 
UserResponseModel /
>/ 0
>0 1
>1 2
GetAllUsers3 >
(> ?
)? @
;@ A
Task 
< 
ApiResponse 
< 
bool 
> 
> 

DeleteUser  *
(* +
Guid+ /
id0 2
)2 3
;3 4
Task 
< 
ApiResponse 
< 
UserResponseModel *
>* +
>+ ,

UpdateUser- 7
(7 8
User8 <
user= A
)A B
;B C
Task 
< 
ApiResponse 
< 
UserResponseModel *
>* +
>+ ,
AddUser- 4
(4 5
UserRequestModel5 E
userRequestModelF V
)V W
;W X
} 
} »
C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Validators\DoctorValidator.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (

Validators( 2
;2 3
public 
class 
DoctorValidator 
: 
AbstractValidator 0
<0 1
DoctorRequestModel1 C
>C D
{ 
public 

DoctorValidator 
( 
) 
{		 !
ClassLevelCascadeMode

 
=

 
CascadeMode

  +
.

+ ,
Stop

, 0
;

0 1
RuleFor 
( 
doc 
=> 
doc 
. 
CNP 
) 
.  
NotEmpty  (
(( )
)) *
.* +
NotNull+ 2
(2 3
)3 4
. 
Matches 
( 
$str	 Å
)
Å Ç
. 
WithMessage 
( 
$str 2
)2 3
;3 4
RuleFor 
( 
doc 
=> 
doc 
. 
	FirstName $
)$ %
.% &
NotEmpty& .
(. /
)/ 0
.0 1
NotNull1 8
(8 9
)9 :
;: ;
RuleFor 
( 
doc 
=> 
doc 
. 
LastName #
)# $
.$ %
NotEmpty% -
(- .
). /
./ 0
NotNull0 7
(7 8
)8 9
;9 :
} 
} Û
àC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Validators\MedicalFacilityValidator.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (

Validators( 2
{ 
public 

class $
MedicalFacilityValidator )
:* +
AbstractValidator, =
<= >'
MedicalFacilityRequestModel> Y
>Y Z
{ 
public		 $
MedicalFacilityValidator		 '
(		' (
)		( )
{

 	!
ClassLevelCascadeMode !
=" #
CascadeMode$ /
./ 0
Stop0 4
;4 5
RuleFor 
( 
facility 
=> 
facility  (
.( )
Name) -
)- .
.. /
NotEmpty/ 7
(7 8
)8 9
.9 :
NotNull: A
(A B
)B C
.C D
WithMessageD O
(O P
$strP g
)g h
;h i
RuleFor 
( 
facility 
=> 
facility  (
.( )
CityId) /
)/ 0
.0 1
NotEmpty1 9
(9 :
): ;
.; <
NotNull< C
(C D
)D E
.E F
WithMessageF Q
(Q R
$strR i
)i j
;j k
} 	
} 
} â
àC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Validators\MedicationStockValidator.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (

Validators( 2
{ 
public 

class $
MedicationStockValidator )
:* +
AbstractValidator, =
<= >'
MedicationStockRequestModel> Y
>Y Z
{ 
public		 $
MedicationStockValidator		 '
(		' (
)		( )
{

 	!
ClassLevelCascadeMode !
=" #
CascadeMode$ /
./ 0
Stop0 4
;4 5
RuleFor 
( 
stock 
=> 
stock "
." #
Name# '
)' (
.( )
NotEmpty) 1
(1 2
)2 3
.3 4
NotNull4 ;
(; <
)< =
;= >
RuleFor 
( 
stock 
=> 
stock "
." #
Quantity# +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
.7 8
NotNull8 ?
(? @
)@ A
.A B
InclusiveBetweenB R
(R S
$numS T
,T U
$numV [
)[ \
.\ ]
WithMessage] h
(h i
$str	i á
)
á à
;
à â
RuleFor 
( 
stock 
=> 
stock "
." #
Price# (
)( )
.) *
NotEmpty* 2
(2 3
)3 4
.4 5
NotNull5 <
(< =
)= >
.> ?
InclusiveBetween? O
(O P
$numP Q
,Q R
$numS W
)W X
.X Y
WithMessageY d
(d e
$stre z
)z {
;{ |
} 	
} 
} ÷
ÄC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Validators\PacientValidator.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (

Validators( 2
{ 
public 

class 
PacientValidator !
:" #
AbstractValidator$ 5
<5 6
PacientRequestModel6 I
>I J
{		 
public

 
PacientValidator

 
(

  
)

  !
{ 	!
ClassLevelCascadeMode !
=" #
CascadeMode$ /
./ 0
Stop0 4
;4 5
RuleFor 
( 
p 
=> 
p 
. 
CNP 
) 
.  
NotNull  '
(' (
)( )
. 
Matches 
( 
$str	 Ö
)
Ö Ü
. 
WithMessage 
( 
$str 6
)6 7
;7 8
RuleFor 
( 
p 
=> 
p 
. 
	FirstName #
)# $
.$ %
NotNull% ,
(, -
)- .
;. /
RuleFor 
( 
p 
=> 
p 
. 
LastName #
)# $
.$ %
NotNull% ,
(, -
)- .
;. /
RuleFor 
( 
p 
=> 
p 
. 
Phone  
)  !
.! "
NotEmpty" *
(* +
)+ ,
. 
NotNull 
( 
) 
. 
WithMessage &
(& '
$str' B
)B C
. 
MinimumLength 
( 
$num !
)! "
." #
WithMessage# .
(. /
$str/ a
)a b
. 
MaximumLength 
( 
$num !
)! "
." #
WithMessage# .
(. /
$str/ [
)[ \
. 
Matches 
( 
$str @
)@ A
.A B
WithMessageB M
(M N
$strN e
)e f
;f g
RuleFor 
( 
p 
=> 
p 
. 
	BirthDate $
)$ %
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( D
)D E
. 
LessThan 
( 
p 
=> 
DateTime '
.' (
Now( +
)+ ,
., -
WithMessage- 8
(8 9
$str9 [
)[ \
;\ ]
RuleFor 
( 
p 
=> 
p 
. 
UserId !
)! "
." #
NotNull# *
(* +
)+ ,
., -
WithMessage- 8
(8 9
$str9 J
)J K
;K L
} 	
}   
}!! ﬁ
}C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.Business\Validators\UserValidator.cs
	namespace 	
DoctorAppointment
 
. 
Application '
.' (

Validators( 2
{ 
public 

class 
UserValidator 
:  
AbstractValidator! 2
<2 3
UserRequestModel3 C
>C D
{ 
public		 
UserValidator		 
(		 
)		 
{

 	!
ClassLevelCascadeMode !
=" #
CascadeMode$ /
./ 0
Stop0 4
;4 5
RulesForEmail 
( 
) 
; 
RulesForPassword 
( 
) 
; 
} 	
private 
void 
RulesForEmail "
(" #
)# $
{ 	
RuleFor 
( 
patient 
=> 
patient &
.& '
Email' ,
), -
.- .
NotEmpty. 6
(6 7
)7 8
.8 9
WithMessage9 D
(D E
$strE \
)\ ]
;] ^
RuleFor 
( 
patient 
=> 
patient &
.& '
Email' ,
), -
.- .
NotNull. 5
(5 6
)6 7
.7 8
WithMessage8 C
(C D
$strD Z
)Z [
;[ \
RuleFor 
( 
patient 
=> 
patient &
.& '
Email' ,
), -
.- .
EmailAddress. :
(: ;
); <
.< =
WithMessage= H
(H I
$strI j
)j k
;k l
} 	
private 
void 
RulesForPassword %
(% &
)& '
{ 	
RuleFor 
( 
patient 
=> 
patient &
.& '
Password' /
)/ 0
.0 1
NotEmpty1 9
(9 :
): ;
.; <
WithMessage< G
(G H
$strH b
)b c
;c d
RuleFor 
( 
patient 
=> 
patient &
.& '
Password' /
)/ 0
.0 1
NotNull1 8
(8 9
)9 :
.: ;
WithMessage; F
(F G
$strG `
)` a
;a b
RuleFor 
( 
patient 
=> 
patient &
.& '
Password' /
)/ 0
.0 1
Must1 5
(5 6
ValidatePassword6 F
)F G
.G H
WithMessageH S
(S T
$str	T å
)
å ç
;
ç é
} 	
private 
bool 
ValidatePassword %
(% &
string& ,
password- 5
)5 6
{ 	
if   
(   
!   
password   
.   
Any   
(   
char   "
.  " #
IsDigit  # *
)  * +
)  + ,
{!! 
return"" 
false"" 
;"" 
}## 
if%% 
(%% 
!%% 
password%% 
.%% 
Any%% 
(%% 
x%% 
=>%%  "
!%%# $
char%%$ (
.%%( )
IsLetterOrDigit%%) 8
(%%8 9
x%%9 :
)%%: ;
&&%%< >
!%%? @
char%%@ D
.%%D E
IsWhiteSpace%%E Q
(%%Q R
x%%R S
)%%S T
)%%T U
)%%U V
{&& 
return'' 
false'' 
;'' 
}(( 
return** 
true** 
;** 
}++ 	
},, 
}-- 