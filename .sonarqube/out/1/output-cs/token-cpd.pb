û	
{C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\Appointment.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
class 
Appointment 
: 
Entity !
{ 
public 

Guid 
DoctorId 
{ 
get 
; 
set  #
;# $
}% &
public 

Doctor 
Doctor 
{ 
get 
; 
set  #
;# $
}% &
public		 

Pacient		 
Pacient		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 

MedicalFacility

 
MedicalFacility

 *
{

+ ,
get

- 0
;

0 1
set

2 5
;

5 6
}

7 8
public 

DateTime 
Date 
{ 
get 
; 
set  #
;# $
}% &
} ¯
wC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\Billing.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
class 
Billing 
: 
Entity 
{ 
public 

string 
Description 
{ 
get  #
;# $
set% (
;( )
}* +
public		 

int		 
Price		 
{		 
get		 
;		 
set		 
;		  
}		! "
public 

Guid 
AppointmentId 
{ 
get  #
;# $
set% (
;( )
}* +
public 

Appointment 
Appointment "
{# $
get% (
;( )
set* -
;- .
}/ 0
} ∆
tC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\City.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
class 
City 
: 
Entity 
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
public 

Guid 
RegionId 
{ 
get 
; 
set  #
;# $
}% &
public		 

Region		 
Region		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
}

 Ü
vC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\Doctor.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
class 
Doctor 
: 
Entity 
{ 
public 

string 
CNP 
{ 
get 
; 
set  
;  !
}" #
public 

string 
ProfilePicture  
{! "
get# &
;& '
set( +
;+ ,
}- .
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
public 

string 
LastName 
{ 
get  
;  !
set" %
;% &
}' (
public 

Guid 
UserId 
{ 
get 
; 
set !
;! "
}# $
public 

User 
User 
{ 
get 
; 
set 
;  
}! "
public 

Guid 
MedicalFacilityId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

MedicalFacility 
MedicalFacility *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 

Guid 
SpecialtyId 
{ 
get !
;! "
set# &
;& '
}( )
public 

	Specialty 
	Specialty 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

IEnumerable 
< 
Appointment "
>" #
Appointments$ 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} Ö
vC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\Entity.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
abstract 
class 
Entity 
{ 
public 

Guid 
Id 
{ 
get 
; 
set 
; 
}  
} µ
C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\MedicalFacility.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
class 
MedicalFacility 
: 
Entity %
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
public		 

Guid		 
CityId		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public 

City 
City 
{ 
get 
; 
set 
;  
}! "
public 

IEnumerable 
< 
MedicationStock &
>& '
Medications( 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
} ñ
C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\MedicationStock.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
class 
MedicationStock 
: 
Entity %
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
public		 

int		 
?		 
Quantity		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
public 

decimal 
Price 
{ 
get 
; 
set  #
;# $
}% &
public 

MedicalFacility 
MedicalFacility *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} Ö
wC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\Pacient.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
class 
Pacient 
: 
Entity 
{ 
public 

string 
CNP 
{ 
get 
; 
set  
;  !
}" #
public 

Guid 
UserId 
{ 
get 
; 
set !
;! "
}# $
public		 

User		 
User		 
{		 
get		 
;		 
set		 
;		  
}		! "
public

 

string

 
?

 
Phone
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
% &
public 

DateTime 
	BirthDate 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
? 
	FirstName 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
LastName 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
	Allergies 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
MedicalHistory !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

string 
? 
ProfilePicture !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

Guid 
? 
CityId 
{ 
get 
; 
set "
;" #
}$ %
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

string 
? 
Gender 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
Height 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
Weight 
{ 
get 
;  
set! $
;$ %
}& '
public 

IEnumerable 
< 
Appointment "
>" #
Appointments$ 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} ñ
vC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\Region.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
class 
Region 
: 
Entity 
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
} ú
yC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\Specialty.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
class 
	Specialty 
: 
Entity 
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
} È
tC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\User.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
class 
User 
: 
Entity 
{ 
public 

string 
Email 
{ 
get 
; 
set "
;" #
}$ %
public		 

string		 
Password		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 

Guid 

UserTypeId 
{ 
get  
;  !
set" %
;% &
}' (
public 

UserType 
UserType 
{ 
get "
;" #
set$ '
;' (
}) *
} ö
xC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Entities\UserType.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Entities( 0
;0 1
public 
class 
UserType 
: 
Entity 
{ 
public 

string 
Type 
{ 
get 
; 
set !
;! "
}# $
} æ	
ñC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Configurations\DoctorConfigurations.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Persistence( 3
.3 4
Configurations4 B
{ 
public 

class 
DoctorConfiguration $
:% &$
IEntityTypeConfiguration' ?
<? @
Doctor@ F
>F G
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Doctor		0 6
>		6 7
builder		8 ?
)		? @
{

 	
builder 
. 
HasKey 
( 
type 
=>  "
type# '
.' (
Id( *
)* +
;+ ,
builder 
. 
HasIndex 
( 
x 
=> !
x" #
.# $
CNP$ '
)' (
.( )
IsUnique) 1
(1 2
)2 3
;3 4
} 	
} 
} ƒ
ûC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Configurations\MedicalFacilityConfiguration.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Persistence( 3
.3 4
Configurations4 B
{ 
public 

class (
MedicalFacilityConfiguration -
:. /$
IEntityTypeConfiguration0 H
<H I
MedicalFacilityI X
>X Y
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
MedicalFacility		0 ?
>		? @
builder		A H
)		H I
{

 	
builder 
. 
HasKey 
( 
type 
=>  "
type# '
.' (
Id( *
)* +
;+ ,
builder 
. 
HasData 
( 
new 
[ 
] 
{ 
new 
MedicalFacility '
(' (
)( )
{ 
Id 
= 
Guid 
.  
Parse  %
(% &
$str& L
)L M
,M N
Name 
= 
$str (
,( )
CityId 
=  
Guid! %
.% &
Parse& +
(+ ,
$str, R
)R S
} 
, 
new 
MedicalFacility '
(' (
)( )
{ 
Id 
= 
Guid 
.  
Parse  %
(% &
$str& L
)L M
,M N
Name 
= 
$str -
,- .
CityId 
=  
Guid! %
.% &
Parse& +
(+ ,
$str, R
)R S
} 
, 
} 
) 
; 
} 	
} 
} ¥	
âC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Configurations\Pacient.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Persistence( 3
.3 4
Configurations4 B
{ 
public 

class  
PacientConfiguration %
:& '$
IEntityTypeConfiguration( @
<@ A
PacientA H
>H I
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Pacient		0 7
>		7 8
builder		9 @
)		@ A
{

 	
builder 
. 
HasKey 
( 
type 
=>  "
type# '
.' (
Id( *
)* +
;+ ,
builder 
. 
HasIndex 
( 
x 
=> !
x" #
.# $
CNP$ '
)' (
.( )
IsUnique) 1
(1 2
)2 3
;3 4
} 	
} 
} ∂
ôC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Configurations\SpecialityConfiguration.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Persistence( 3
.3 4
Configurations4 B
;B C
public 
class #
SpecialityConfiguration $
:% &$
IEntityTypeConfiguration' ?
<? @
	Specialty@ I
>I J
{ 
public		 

void		 
	Configure		 
(		 
EntityTypeBuilder		 +
<		+ ,
	Specialty		, 5
>		5 6
builder		7 >
)		> ?
{

 
builder 
. 
HasKey 
( 
type 
=> 
type #
.# $
Id$ &
)& '
;' (
builder 
. 
HasData 
( 
new 
[ 
] 
{ 
new 
	Specialty 
( 
) 
{ 
Id 
= 
Guid 
. 
Parse !
(! "
$str" H
)H I
,I J
Name 
= 
$str (
} 
, 
new 
	Specialty 
( 
) 
{ 
Id 
= 
Guid 
. 
Parse !
(! "
$str" H
)H I
,I J
Name 
= 
$str /
} 
, 
new 
	Specialty 
( 
) 
{ 
Id 
= 
Guid 
. 
Parse !
(! "
$str" H
)H I
,I J
Name 
= 
$str ,
} 
, 
new 
	Specialty 
( 
) 
{ 
Id   
=   
Guid   
.   
Parse   !
(  ! "
$str  " H
)  H I
,  I J
Name!! 
=!! 
$str!! *
}"" 
,"" 
new## 
	Specialty## 
(## 
)## 
{$$ 
Id%% 
=%% 
Guid%% 
.%% 
Parse%% !
(%%! "
$str%%" H
)%%H I
,%%I J
Name&& 
=&& 
$str&& $
}'' 
,'' 
new(( 
	Specialty(( 
((( 
)(( 
{)) 
Id** 
=** 
Guid** 
.** 
Parse** !
(**! "
$str**" H
)**H I
,**I J
Name++ 
=++ 
$str++ '
},, 
}-- 
)-- 
;-- 
}.. 
}// ∑	
ìC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Configurations\UserConfiguration.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Persistence( 3
.3 4
Configurations4 B
{ 
public 

class 
UserConfiguration "
:# $$
IEntityTypeConfiguration% =
<= >
User> B
>B C
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
User		0 4
>		4 5
builder		6 =
)		= >
{

 	
builder 
. 
HasKey 
( 
type 
=>  "
type# '
.' (
Id( *
)* +
;+ ,
builder 
. 
HasIndex 
( 
x 
=> !
x" #
.# $
Email$ )
)) *
.* +
IsUnique+ 3
(3 4
)4 5
;5 6
} 	
} 
} £
óC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Configurations\UserTypeConfiguration.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Persistence( 3
.3 4
Configurations4 B
{ 
public 

class !
UserTypeConfiguration &
:' ($
IEntityTypeConfiguration) A
<A B
UserTypeB J
>J K
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
UserType		0 8
>		8 9
builder		: A
)		A B
{

 	
builder 
. 
HasKey 
( 
type 
=>  "
type# '
.' (
Id( *
)* +
;+ ,
builder 
. 
HasData 
( 
new 
[ 
] 
{ 
new 
UserType 
{ 
Id 
= 
Guid 
. 
Parse !
(! "
$str" H
)H I
,I J
Type 
= 
$str $
} 
, 
new 
UserType 
{ 
Id 
= 
Guid 
. 
Parse !
(! "
$str" H
)H I
,I J
Type 
= 
$str #
} 
} 
) 
; 
} 	
} 
} ¬
ÇC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\DatabaseContext.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Persistence( 3
;3 4
public 
class 
DatabaseContext 
: 
	DbContext (
{ 
public		 

DatabaseContext		 
(		 
DbContextOptions		 +
options		, 3
)		3 4
:		5 6
base		7 ;
(		; <
options		< C
)		C D
{

 
} 
public 

DbSet 
< 
User 
> 
Users 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DbSet 
< 
Pacient 
> 
Pacients "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DbSet 
< 
Appointment 
> 
Appointments *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 

DbSet 
< 
Billing 
> 
Billings "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DbSet 
< 
City 
> 
Cities 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DbSet 
< 
MedicalFacility  
>  !
MedicalFacilities" 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 

DbSet 
< 
MedicationStock  
>  !
MedicationStocks" 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 

DbSet 
< 
	Specialty 
> 
Specialties '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 

DbSet 
< 
Doctor 
> 
Doctors  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DbSet 
< 
UserType 
> 
	UserTypes $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

DbSet 
< 
Region 
> 
Regions  
{! "
get# &
;& '
set( +
;+ ,
}- .
	protected 
override 
void 
OnModelCreating +
(+ ,
ModelBuilder, 8
modelBuilder9 E
)E F
{ 
modelBuilder 
. +
ApplyConfigurationsFromAssembly 4
(4 5
Assembly5 =
.= > 
GetExecutingAssembly> R
(R S
)S T
)T U
;U V
base 
. 
OnModelCreating 
( 
modelBuilder )
)) *
;* +
} 
} Ì
öC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Migrations\20221110205908_InitialCreate.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (

Migrations( 2
{ 
public 

partial 
class 
InitialCreate &
:' (
	Migration) 2
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
Guid& *
>* +
(+ ,
type, 0
:0 1
$str2 8
,8 9
nullable: B
:B C
falseD I
)I J
,J K
	FirstName 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; A
,A B
nullableC K
:K L
trueM Q
)Q R
,R S
LastName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: @
,@ A
nullableB J
:J K
trueL P
)P Q
,Q R
Address 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
type3 7
:7 8
$str9 ?
,? @
nullableA I
:I J
trueK O
)O P
,P Q
PhoneNumber 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= C
,C D
nullableE M
:M N
trueO S
)S T
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% /
,/ 0
x1 2
=>3 5
x6 7
.7 8
Id8 :
): ;
;; <
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder   
.   
	DropTable   &
(  & '
name!! 
:!! 
$str!! 
)!! 
;!! 
}"" 	
}## 
}$$ √“
ïC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Migrations\20221207213318_CreateDB.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (

Migrations( 2
{ 
public

 

partial

 
class

 
CreateDB

 !
:

" #
	Migration

$ -
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
,  
table 
: 
$str 
) 
;  
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str !
,! "
table 
: 
$str 
) 
;  
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str  
,  !
table 
: 
$str 
) 
;  
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str #
,# $
table 
: 
$str 
) 
;  
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name   
:   
$str   
,   
table!! 
:!! 
$str!! 
,!! 
type"" 
:"" 
$str"" 
,"" 
nullable## 
:## 
false## 
,##  
defaultValue$$ 
:$$ 
$str$$  
)$$  !
;$$! "
migrationBuilder&& 
.&& 
	AddColumn&& &
<&&& '
string&&' -
>&&- .
(&&. /
name'' 
:'' 
$str''  
,''  !
table(( 
:(( 
$str(( 
,(( 
type)) 
:)) 
$str)) 
,)) 
nullable** 
:** 
false** 
,**  
defaultValue++ 
:++ 
$str++  
)++  !
;++! "
migrationBuilder-- 
.-- 
	AddColumn-- &
<--& '
Guid--' +
>--+ ,
(--, -
name.. 
:.. 
$str.. "
,.." #
table// 
:// 
$str// 
,// 
type00 
:00 
$str00 
,00 
nullable11 
:11 
false11 
,11  
defaultValue22 
:22 
new22 !
Guid22" &
(22& '
$str22' M
)22M N
)22N O
;22O P
migrationBuilder44 
.44 
CreateTable44 (
(44( )
name55 
:55 
$str55  
,55  !
columns66 
:66 
table66 
=>66 !
new66" %
{77 
Id88 
=88 
table88 
.88 
Column88 %
<88% &
Guid88& *
>88* +
(88+ ,
type88, 0
:880 1
$str882 8
,888 9
nullable88: B
:88B C
false88D I
)88I J
,88J K
Descriprion99 
=99  !
table99" '
.99' (
Column99( .
<99. /
string99/ 5
>995 6
(996 7
type997 ;
:99; <
$str99= C
,99C D
nullable99E M
:99M N
false99O T
)99T U
,99U V
Price:: 
=:: 
table:: !
.::! "
Column::" (
<::( )
int::) ,
>::, -
(::- .
type::. 2
:::2 3
$str::4 =
,::= >
nullable::? G
:::G H
false::I N
)::N O
,::O P
AppointmentId;; !
=;;" #
table;;$ )
.;;) *
Column;;* 0
<;;0 1
Guid;;1 5
>;;5 6
(;;6 7
type;;7 ;
:;;; <
$str;;= C
,;;C D
nullable;;E M
:;;M N
false;;O T
);;T U
}<< 
,<< 
constraints== 
:== 
table== "
=>==# %
{>> 
table?? 
.?? 

PrimaryKey?? $
(??$ %
$str??% 2
,??2 3
x??4 5
=>??6 8
x??9 :
.??: ;
Id??; =
)??= >
;??> ?
}@@ 
)@@ 
;@@ 
migrationBuilderBB 
.BB 
CreateTableBB (
(BB( )
nameCC 
:CC 
$strCC 
,CC 
columnsDD 
:DD 
tableDD 
=>DD !
newDD" %
{EE 
IdFF 
=FF 
tableFF 
.FF 
ColumnFF %
<FF% &
GuidFF& *
>FF* +
(FF+ ,
typeFF, 0
:FF0 1
$strFF2 8
,FF8 9
nullableFF: B
:FFB C
falseFFD I
)FFI J
,FFJ K
NameGG 
=GG 
tableGG  
.GG  !
ColumnGG! '
<GG' (
stringGG( .
>GG. /
(GG/ 0
typeGG0 4
:GG4 5
$strGG6 <
,GG< =
nullableGG> F
:GGF G
falseGGH M
)GGM N
}HH 
,HH 
constraintsII 
:II 
tableII "
=>II# %
{JJ 
tableKK 
.KK 

PrimaryKeyKK $
(KK$ %
$strKK% 0
,KK0 1
xKK2 3
=>KK4 6
xKK7 8
.KK8 9
IdKK9 ;
)KK; <
;KK< =
}LL 
)LL 
;LL 
migrationBuilderNN 
.NN 
CreateTableNN (
(NN( )
nameOO 
:OO 
$strOO (
,OO( )
columnsPP 
:PP 
tablePP 
=>PP !
newPP" %
{QQ 
IdRR 
=RR 
tableRR 
.RR 
ColumnRR %
<RR% &
GuidRR& *
>RR* +
(RR+ ,
typeRR, 0
:RR0 1
$strRR2 8
,RR8 9
nullableRR: B
:RRB C
falseRRD I
)RRI J
,RRJ K
NameSS 
=SS 
tableSS  
.SS  !
ColumnSS! '
<SS' (
stringSS( .
>SS. /
(SS/ 0
typeSS0 4
:SS4 5
$strSS6 <
,SS< =
nullableSS> F
:SSF G
falseSSH M
)SSM N
,SSN O
QuantityTT 
=TT 
tableTT $
.TT$ %
ColumnTT% +
<TT+ ,
intTT, /
>TT/ 0
(TT0 1
typeTT1 5
:TT5 6
$strTT7 @
,TT@ A
nullableTTB J
:TTJ K
trueTTL P
)TTP Q
,TTQ R
PriceUU 
=UU 
tableUU !
.UU! "
ColumnUU" (
<UU( )
decimalUU) 0
>UU0 1
(UU1 2
typeUU2 6
:UU6 7
$strUU8 A
,UUA B
nullableUUC K
:UUK L
falseUUM R
)UUR S
}VV 
,VV 
constraintsWW 
:WW 
tableWW "
=>WW# %
{XX 
tableYY 
.YY 

PrimaryKeyYY $
(YY$ %
$strYY% :
,YY: ;
xYY< =
=>YY> @
xYYA B
.YYB C
IdYYC E
)YYE F
;YYF G
}ZZ 
)ZZ 
;ZZ 
migrationBuilder\\ 
.\\ 
CreateTable\\ (
(\\( )
name]] 
:]] 
$str]] #
,]]# $
columns^^ 
:^^ 
table^^ 
=>^^ !
new^^" %
{__ 
Id`` 
=`` 
table`` 
.`` 
Column`` %
<``% &
Guid``& *
>``* +
(``+ ,
type``, 0
:``0 1
$str``2 8
,``8 9
nullable``: B
:``B C
false``D I
)``I J
,``J K
Nameaa 
=aa 
tableaa  
.aa  !
Columnaa! '
<aa' (
stringaa( .
>aa. /
(aa/ 0
typeaa0 4
:aa4 5
$straa6 <
,aa< =
nullableaa> F
:aaF G
falseaaH M
)aaM N
}bb 
,bb 
constraintscc 
:cc 
tablecc "
=>cc# %
{dd 
tableee 
.ee 

PrimaryKeyee $
(ee$ %
$stree% 5
,ee5 6
xee7 8
=>ee9 ;
xee< =
.ee= >
Idee> @
)ee@ A
;eeA B
}ff 
)ff 
;ff 
migrationBuilderhh 
.hh 
CreateTablehh (
(hh( )
nameii 
:ii 
$strii !
,ii! "
columnsjj 
:jj 
tablejj 
=>jj !
newjj" %
{kk 
Idll 
=ll 
tablell 
.ll 
Columnll %
<ll% &
Guidll& *
>ll* +
(ll+ ,
typell, 0
:ll0 1
$strll2 8
,ll8 9
nullablell: B
:llB C
falsellD I
)llI J
,llJ K
Typemm 
=mm 
tablemm  
.mm  !
Columnmm! '
<mm' (
stringmm( .
>mm. /
(mm/ 0
typemm0 4
:mm4 5
$strmm6 <
,mm< =
nullablemm> F
:mmF G
falsemmH M
)mmM N
}nn 
,nn 
constraintsoo 
:oo 
tableoo "
=>oo# %
{pp 
tableqq 
.qq 

PrimaryKeyqq $
(qq$ %
$strqq% 3
,qq3 4
xqq5 6
=>qq7 9
xqq: ;
.qq; <
Idqq< >
)qq> ?
;qq? @
}rr 
)rr 
;rr 
migrationBuildertt 
.tt 
CreateTablett (
(tt( )
nameuu 
:uu 
$struu  
,uu  !
columnsvv 
:vv 
tablevv 
=>vv !
newvv" %
{ww 
Idxx 
=xx 
tablexx 
.xx 
Columnxx %
<xx% &
Guidxx& *
>xx* +
(xx+ ,
typexx, 0
:xx0 1
$strxx2 8
,xx8 9
nullablexx: B
:xxB C
falsexxD I
)xxI J
,xxJ K
UserIdyy 
=yy 
tableyy "
.yy" #
Columnyy# )
<yy) *
Guidyy* .
>yy. /
(yy/ 0
typeyy0 4
:yy4 5
$stryy6 <
,yy< =
nullableyy> F
:yyF G
falseyyH M
)yyM N
,yyN O
Phonezz 
=zz 
tablezz !
.zz! "
Columnzz" (
<zz( )
stringzz) /
>zz/ 0
(zz0 1
typezz1 5
:zz5 6
$strzz7 =
,zz= >
nullablezz? G
:zzG H
truezzI M
)zzM N
,zzN O
	BirthDate{{ 
={{ 
table{{  %
.{{% &
Column{{& ,
<{{, -
DateTime{{- 5
>{{5 6
({{6 7
type{{7 ;
:{{; <
$str{{= W
,{{W X
nullable{{Y a
:{{a b
false{{c h
){{h i
,{{i j
	FirstName|| 
=|| 
table||  %
.||% &
Column||& ,
<||, -
string||- 3
>||3 4
(||4 5
type||5 9
:||9 :
$str||; A
,||A B
nullable||C K
:||K L
true||M Q
)||Q R
,||R S
LastName}} 
=}} 
table}} $
.}}$ %
Column}}% +
<}}+ ,
string}}, 2
>}}2 3
(}}3 4
type}}4 8
:}}8 9
$str}}: @
,}}@ A
nullable}}B J
:}}J K
true}}L P
)}}P Q
,}}Q R
	Allergies~~ 
=~~ 
table~~  %
.~~% &
Column~~& ,
<~~, -
string~~- 3
>~~3 4
(~~4 5
type~~5 9
:~~9 :
$str~~; A
,~~A B
nullable~~C K
:~~K L
true~~M Q
)~~Q R
,~~R S
MedicalHistory "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ F
,F G
nullableH P
:P Q
trueR V
)V W
,W X
ProfilePicture
ÄÄ "
=
ÄÄ# $
table
ÄÄ% *
.
ÄÄ* +
Column
ÄÄ+ 1
<
ÄÄ1 2
string
ÄÄ2 8
>
ÄÄ8 9
(
ÄÄ9 :
type
ÄÄ: >
:
ÄÄ> ?
$str
ÄÄ@ F
,
ÄÄF G
nullable
ÄÄH P
:
ÄÄP Q
true
ÄÄR V
)
ÄÄV W
,
ÄÄW X
CityId
ÅÅ 
=
ÅÅ 
table
ÅÅ "
.
ÅÅ" #
Column
ÅÅ# )
<
ÅÅ) *
Guid
ÅÅ* .
>
ÅÅ. /
(
ÅÅ/ 0
type
ÅÅ0 4
:
ÅÅ4 5
$str
ÅÅ6 <
,
ÅÅ< =
nullable
ÅÅ> F
:
ÅÅF G
true
ÅÅH L
)
ÅÅL M
,
ÅÅM N
Gender
ÇÇ 
=
ÇÇ 
table
ÇÇ "
.
ÇÇ" #
Column
ÇÇ# )
<
ÇÇ) *
string
ÇÇ* 0
>
ÇÇ0 1
(
ÇÇ1 2
type
ÇÇ2 6
:
ÇÇ6 7
$str
ÇÇ8 >
,
ÇÇ> ?
nullable
ÇÇ@ H
:
ÇÇH I
true
ÇÇJ N
)
ÇÇN O
,
ÇÇO P
Height
ÉÉ 
=
ÉÉ 
table
ÉÉ "
.
ÉÉ" #
Column
ÉÉ# )
<
ÉÉ) *
string
ÉÉ* 0
>
ÉÉ0 1
(
ÉÉ1 2
type
ÉÉ2 6
:
ÉÉ6 7
$str
ÉÉ8 >
,
ÉÉ> ?
nullable
ÉÉ@ H
:
ÉÉH I
true
ÉÉJ N
)
ÉÉN O
,
ÉÉO P
Weight
ÑÑ 
=
ÑÑ 
table
ÑÑ "
.
ÑÑ" #
Column
ÑÑ# )
<
ÑÑ) *
string
ÑÑ* 0
>
ÑÑ0 1
(
ÑÑ1 2
type
ÑÑ2 6
:
ÑÑ6 7
$str
ÑÑ8 >
,
ÑÑ> ?
nullable
ÑÑ@ H
:
ÑÑH I
true
ÑÑJ N
)
ÑÑN O
}
ÖÖ 
,
ÖÖ 
constraints
ÜÜ 
:
ÜÜ 
table
ÜÜ "
=>
ÜÜ# %
{
áá 
table
àà 
.
àà 

PrimaryKey
àà $
(
àà$ %
$str
àà% 2
,
àà2 3
x
àà4 5
=>
àà6 8
x
àà9 :
.
àà: ;
Id
àà; =
)
àà= >
;
àà> ?
table
ââ 
.
ââ 

ForeignKey
ââ $
(
ââ$ %
name
ää 
:
ää 
$str
ää 9
,
ää9 :
column
ãã 
:
ãã 
x
ãã  !
=>
ãã" $
x
ãã% &
.
ãã& '
CityId
ãã' -
,
ãã- .
principalTable
åå &
:
åå& '
$str
åå( 0
,
åå0 1
principalColumn
çç '
:
çç' (
$str
çç) -
)
çç- .
;
çç. /
table
éé 
.
éé 

ForeignKey
éé $
(
éé$ %
name
èè 
:
èè 
$str
èè 8
,
èè8 9
column
êê 
:
êê 
x
êê  !
=>
êê" $
x
êê% &
.
êê& '
UserId
êê' -
,
êê- .
principalTable
ëë &
:
ëë& '
$str
ëë( /
,
ëë/ 0
principalColumn
íí '
:
íí' (
$str
íí) -
,
íí- .
onDelete
ìì  
:
ìì  !
ReferentialAction
ìì" 3
.
ìì3 4
Cascade
ìì4 ;
)
ìì; <
;
ìì< =
}
îî 
)
îî 
;
îî 
migrationBuilder
ññ 
.
ññ 
CreateTable
ññ (
(
ññ( )
name
óó 
:
óó 
$str
óó *
,
óó* +
columns
òò 
:
òò 
table
òò 
=>
òò !
new
òò" %
{
ôô 
AppointmentId
öö !
=
öö" #
table
öö$ )
.
öö) *
Column
öö* 0
<
öö0 1
Guid
öö1 5
>
öö5 6
(
öö6 7
type
öö7 ;
:
öö; <
$str
öö= C
,
ööC D
nullable
ööE M
:
ööM N
false
ööO T
)
ööT U
,
ööU V
	PacientId
õõ 
=
õõ 
table
õõ  %
.
õõ% &
Column
õõ& ,
<
õõ, -
Guid
õõ- 1
>
õõ1 2
(
õõ2 3
type
õõ3 7
:
õõ7 8
$str
õõ9 ?
,
õõ? @
nullable
õõA I
:
õõI J
false
õõK P
)
õõP Q
}
úú 
,
úú 
constraints
ùù 
:
ùù 
table
ùù "
=>
ùù# %
{
ûû 
table
üü 
.
üü 

PrimaryKey
üü $
(
üü$ %
$str
üü% <
,
üü< =
x
üü> ?
=>
üü@ B
new
üüC F
{
üüG H
x
üüI J
.
üüJ K
AppointmentId
üüK X
,
üüX Y
x
üüZ [
.
üü[ \
	PacientId
üü\ e
}
üüf g
)
üüg h
;
üüh i
table
†† 
.
†† 

ForeignKey
†† $
(
††$ %
name
°° 
:
°° 
$str
°° H
,
°°H I
column
¢¢ 
:
¢¢ 
x
¢¢  !
=>
¢¢" $
x
¢¢% &
.
¢¢& '
	PacientId
¢¢' 0
,
¢¢0 1
principalTable
££ &
:
££& '
$str
££( 2
,
££2 3
principalColumn
§§ '
:
§§' (
$str
§§) -
,
§§- .
onDelete
••  
:
••  !
ReferentialAction
••" 3
.
••3 4
Cascade
••4 ;
)
••; <
;
••< =
}
¶¶ 
)
¶¶ 
;
¶¶ 
migrationBuilder
®® 
.
®® 
CreateTable
®® (
(
®®( )
name
©© 
:
©© 
$str
©© $
,
©©$ %
columns
™™ 
:
™™ 
table
™™ 
=>
™™ !
new
™™" %
{
´´ 
Id
¨¨ 
=
¨¨ 
table
¨¨ 
.
¨¨ 
Column
¨¨ %
<
¨¨% &
Guid
¨¨& *
>
¨¨* +
(
¨¨+ ,
type
¨¨, 0
:
¨¨0 1
$str
¨¨2 8
,
¨¨8 9
nullable
¨¨: B
:
¨¨B C
false
¨¨D I
)
¨¨I J
,
¨¨J K
DoctorId
≠≠ 
=
≠≠ 
table
≠≠ $
.
≠≠$ %
Column
≠≠% +
<
≠≠+ ,
Guid
≠≠, 0
>
≠≠0 1
(
≠≠1 2
type
≠≠2 6
:
≠≠6 7
$str
≠≠8 >
,
≠≠> ?
nullable
≠≠@ H
:
≠≠H I
false
≠≠J O
)
≠≠O P
,
≠≠P Q
Date
ÆÆ 
=
ÆÆ 
table
ÆÆ  
.
ÆÆ  !
Column
ÆÆ! '
<
ÆÆ' (
DateTime
ÆÆ( 0
>
ÆÆ0 1
(
ÆÆ1 2
type
ÆÆ2 6
:
ÆÆ6 7
$str
ÆÆ8 R
,
ÆÆR S
nullable
ÆÆT \
:
ÆÆ\ ]
false
ÆÆ^ c
)
ÆÆc d
}
ØØ 
,
ØØ 
constraints
∞∞ 
:
∞∞ 
table
∞∞ "
=>
∞∞# %
{
±± 
table
≤≤ 
.
≤≤ 

PrimaryKey
≤≤ $
(
≤≤$ %
$str
≤≤% 6
,
≤≤6 7
x
≤≤8 9
=>
≤≤: <
x
≤≤= >
.
≤≤> ?
Id
≤≤? A
)
≤≤A B
;
≤≤B C
}
≥≥ 
)
≥≥ 
;
≥≥ 
migrationBuilder
µµ 
.
µµ 
CreateTable
µµ (
(
µµ( )
name
∂∂ 
:
∂∂ 
$str
∂∂ )
,
∂∂) *
columns
∑∑ 
:
∑∑ 
table
∑∑ 
=>
∑∑ !
new
∑∑" %
{
∏∏ 
Id
ππ 
=
ππ 
table
ππ 
.
ππ 
Column
ππ %
<
ππ% &
Guid
ππ& *
>
ππ* +
(
ππ+ ,
type
ππ, 0
:
ππ0 1
$str
ππ2 8
,
ππ8 9
nullable
ππ: B
:
ππB C
false
ππD I
)
ππI J
,
ππJ K
Name
∫∫ 
=
∫∫ 
table
∫∫  
.
∫∫  !
Column
∫∫! '
<
∫∫' (
string
∫∫( .
>
∫∫. /
(
∫∫/ 0
type
∫∫0 4
:
∫∫4 5
$str
∫∫6 <
,
∫∫< =
nullable
∫∫> F
:
∫∫F G
false
∫∫H M
)
∫∫M N
,
∫∫N O
CityId
ªª 
=
ªª 
table
ªª "
.
ªª" #
Column
ªª# )
<
ªª) *
Guid
ªª* .
>
ªª. /
(
ªª/ 0
type
ªª0 4
:
ªª4 5
$str
ªª6 <
,
ªª< =
nullable
ªª> F
:
ªªF G
false
ªªH M
)
ªªM N
,
ªªN O
AppointmentId
ºº !
=
ºº" #
table
ºº$ )
.
ºº) *
Column
ºº* 0
<
ºº0 1
Guid
ºº1 5
>
ºº5 6
(
ºº6 7
type
ºº7 ;
:
ºº; <
$str
ºº= C
,
ººC D
nullable
ººE M
:
ººM N
true
ººO S
)
ººS T
}
ΩΩ 
,
ΩΩ 
constraints
ææ 
:
ææ 
table
ææ "
=>
ææ# %
{
øø 
table
¿¿ 
.
¿¿ 

PrimaryKey
¿¿ $
(
¿¿$ %
$str
¿¿% ;
,
¿¿; <
x
¿¿= >
=>
¿¿? A
x
¿¿B C
.
¿¿C D
Id
¿¿D F
)
¿¿F G
;
¿¿G H
table
¡¡ 
.
¡¡ 

ForeignKey
¡¡ $
(
¡¡$ %
name
¬¬ 
:
¬¬ 
$str
¬¬ O
,
¬¬O P
column
√√ 
:
√√ 
x
√√  !
=>
√√" $
x
√√% &
.
√√& '
AppointmentId
√√' 4
,
√√4 5
principalTable
ƒƒ &
:
ƒƒ& '
$str
ƒƒ( 6
,
ƒƒ6 7
principalColumn
≈≈ '
:
≈≈' (
$str
≈≈) -
)
≈≈- .
;
≈≈. /
table
∆∆ 
.
∆∆ 

ForeignKey
∆∆ $
(
∆∆$ %
name
«« 
:
«« 
$str
«« B
,
««B C
column
»» 
:
»» 
x
»»  !
=>
»»" $
x
»»% &
.
»»& '
CityId
»»' -
,
»»- .
principalTable
…… &
:
……& '
$str
……( 0
,
……0 1
principalColumn
   '
:
  ' (
$str
  ) -
,
  - .
onDelete
ÀÀ  
:
ÀÀ  !
ReferentialAction
ÀÀ" 3
.
ÀÀ3 4
Cascade
ÀÀ4 ;
)
ÀÀ; <
;
ÀÀ< =
}
ÃÃ 
)
ÃÃ 
;
ÃÃ 
migrationBuilder
ŒŒ 
.
ŒŒ 
CreateTable
ŒŒ (
(
ŒŒ( )
name
œœ 
:
œœ 
$str
œœ 
,
œœ  
columns
–– 
:
–– 
table
–– 
=>
–– !
new
––" %
{
—— 
Id
““ 
=
““ 
table
““ 
.
““ 
Column
““ %
<
““% &
Guid
““& *
>
““* +
(
““+ ,
type
““, 0
:
““0 1
$str
““2 8
,
““8 9
nullable
““: B
:
““B C
false
““D I
)
““I J
,
““J K
ProfilePicture
”” "
=
””# $
table
””% *
.
””* +
Column
””+ 1
<
””1 2
string
””2 8
>
””8 9
(
””9 :
type
””: >
:
””> ?
$str
””@ F
,
””F G
nullable
””H P
:
””P Q
false
””R W
)
””W X
,
””X Y
	FirstName
‘‘ 
=
‘‘ 
table
‘‘  %
.
‘‘% &
Column
‘‘& ,
<
‘‘, -
string
‘‘- 3
>
‘‘3 4
(
‘‘4 5
type
‘‘5 9
:
‘‘9 :
$str
‘‘; A
,
‘‘A B
nullable
‘‘C K
:
‘‘K L
false
‘‘M R
)
‘‘R S
,
‘‘S T
LastName
’’ 
=
’’ 
table
’’ $
.
’’$ %
Column
’’% +
<
’’+ ,
string
’’, 2
>
’’2 3
(
’’3 4
type
’’4 8
:
’’8 9
$str
’’: @
,
’’@ A
nullable
’’B J
:
’’J K
false
’’L Q
)
’’Q R
,
’’R S
UserId
÷÷ 
=
÷÷ 
table
÷÷ "
.
÷÷" #
Column
÷÷# )
<
÷÷) *
Guid
÷÷* .
>
÷÷. /
(
÷÷/ 0
type
÷÷0 4
:
÷÷4 5
$str
÷÷6 <
,
÷÷< =
nullable
÷÷> F
:
÷÷F G
false
÷÷H M
)
÷÷M N
,
÷÷N O
MedicalFacilityId
◊◊ %
=
◊◊& '
table
◊◊( -
.
◊◊- .
Column
◊◊. 4
<
◊◊4 5
Guid
◊◊5 9
>
◊◊9 :
(
◊◊: ;
type
◊◊; ?
:
◊◊? @
$str
◊◊A G
,
◊◊G H
nullable
◊◊I Q
:
◊◊Q R
false
◊◊S X
)
◊◊X Y
,
◊◊Y Z
SpecialtyId
ÿÿ 
=
ÿÿ  !
table
ÿÿ" '
.
ÿÿ' (
Column
ÿÿ( .
<
ÿÿ. /
Guid
ÿÿ/ 3
>
ÿÿ3 4
(
ÿÿ4 5
type
ÿÿ5 9
:
ÿÿ9 :
$str
ÿÿ; A
,
ÿÿA B
nullable
ÿÿC K
:
ÿÿK L
false
ÿÿM R
)
ÿÿR S
}
ŸŸ 
,
ŸŸ 
constraints
⁄⁄ 
:
⁄⁄ 
table
⁄⁄ "
=>
⁄⁄# %
{
€€ 
table
‹‹ 
.
‹‹ 

PrimaryKey
‹‹ $
(
‹‹$ %
$str
‹‹% 1
,
‹‹1 2
x
‹‹3 4
=>
‹‹5 7
x
‹‹8 9
.
‹‹9 :
Id
‹‹: <
)
‹‹< =
;
‹‹= >
table
›› 
.
›› 

ForeignKey
›› $
(
››$ %
name
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ N
,
ﬁﬁN O
column
ﬂﬂ 
:
ﬂﬂ 
x
ﬂﬂ  !
=>
ﬂﬂ" $
x
ﬂﬂ% &
.
ﬂﬂ& '
MedicalFacilityId
ﬂﬂ' 8
,
ﬂﬂ8 9
principalTable
‡‡ &
:
‡‡& '
$str
‡‡( ;
,
‡‡; <
principalColumn
·· '
:
··' (
$str
··) -
,
··- .
onDelete
‚‚  
:
‚‚  !
ReferentialAction
‚‚" 3
.
‚‚3 4
Cascade
‚‚4 ;
)
‚‚; <
;
‚‚< =
table
„„ 
.
„„ 

ForeignKey
„„ $
(
„„$ %
name
‰‰ 
:
‰‰ 
$str
‰‰ B
,
‰‰B C
column
ÂÂ 
:
ÂÂ 
x
ÂÂ  !
=>
ÂÂ" $
x
ÂÂ% &
.
ÂÂ& '
SpecialtyId
ÂÂ' 2
,
ÂÂ2 3
principalTable
ÊÊ &
:
ÊÊ& '
$str
ÊÊ( 5
,
ÊÊ5 6
principalColumn
ÁÁ '
:
ÁÁ' (
$str
ÁÁ) -
,
ÁÁ- .
onDelete
ËË  
:
ËË  !
ReferentialAction
ËË" 3
.
ËË3 4
Cascade
ËË4 ;
)
ËË; <
;
ËË< =
table
ÈÈ 
.
ÈÈ 

ForeignKey
ÈÈ $
(
ÈÈ$ %
name
ÍÍ 
:
ÍÍ 
$str
ÍÍ 7
,
ÍÍ7 8
column
ÎÎ 
:
ÎÎ 
x
ÎÎ  !
=>
ÎÎ" $
x
ÎÎ% &
.
ÎÎ& '
UserId
ÎÎ' -
,
ÎÎ- .
principalTable
ÏÏ &
:
ÏÏ& '
$str
ÏÏ( /
,
ÏÏ/ 0
principalColumn
ÌÌ '
:
ÌÌ' (
$str
ÌÌ) -
,
ÌÌ- .
onDelete
ÓÓ  
:
ÓÓ  !
ReferentialAction
ÓÓ" 3
.
ÓÓ3 4
Cascade
ÓÓ4 ;
)
ÓÓ; <
;
ÓÓ< =
}
ÔÔ 
)
ÔÔ 
;
ÔÔ 
migrationBuilder
ÒÒ 
.
ÒÒ 
CreateTable
ÒÒ (
(
ÒÒ( )
name
ÚÚ 
:
ÚÚ 
$str
ÚÚ 6
,
ÚÚ6 7
columns
ÛÛ 
:
ÛÛ 
table
ÛÛ 
=>
ÛÛ !
new
ÛÛ" %
{
ÙÙ !
MedicalFacilitiesId
ıı '
=
ıı( )
table
ıı* /
.
ıı/ 0
Column
ıı0 6
<
ıı6 7
Guid
ıı7 ;
>
ıı; <
(
ıı< =
type
ıı= A
:
ııA B
$str
ııC I
,
ııI J
nullable
ııK S
:
ııS T
false
ııU Z
)
ııZ [
,
ıı[ \
MedicationsId
ˆˆ !
=
ˆˆ" #
table
ˆˆ$ )
.
ˆˆ) *
Column
ˆˆ* 0
<
ˆˆ0 1
Guid
ˆˆ1 5
>
ˆˆ5 6
(
ˆˆ6 7
type
ˆˆ7 ;
:
ˆˆ; <
$str
ˆˆ= C
,
ˆˆC D
nullable
ˆˆE M
:
ˆˆM N
false
ˆˆO T
)
ˆˆT U
}
˜˜ 
,
˜˜ 
constraints
¯¯ 
:
¯¯ 
table
¯¯ "
=>
¯¯# %
{
˘˘ 
table
˙˙ 
.
˙˙ 

PrimaryKey
˙˙ $
(
˙˙$ %
$str
˙˙% H
,
˙˙H I
x
˙˙J K
=>
˙˙L N
new
˙˙O R
{
˙˙S T
x
˙˙U V
.
˙˙V W!
MedicalFacilitiesId
˙˙W j
,
˙˙j k
x
˙˙l m
.
˙˙m n
MedicationsId
˙˙n {
}
˙˙| }
)
˙˙} ~
;
˙˙~ 
table
˚˚ 
.
˚˚ 

ForeignKey
˚˚ $
(
˚˚$ %
name
¸¸ 
:
¸¸ 
$str
¸¸ _
,
¸¸_ `
column
˝˝ 
:
˝˝ 
x
˝˝  !
=>
˝˝" $
x
˝˝% &
.
˝˝& '!
MedicalFacilitiesId
˝˝' :
,
˝˝: ;
principalTable
˛˛ &
:
˛˛& '
$str
˛˛( ;
,
˛˛; <
principalColumn
ˇˇ '
:
ˇˇ' (
$str
ˇˇ) -
,
ˇˇ- .
onDelete
ÄÄ  
:
ÄÄ  !
ReferentialAction
ÄÄ" 3
.
ÄÄ3 4
Cascade
ÄÄ4 ;
)
ÄÄ; <
;
ÄÄ< =
table
ÅÅ 
.
ÅÅ 

ForeignKey
ÅÅ $
(
ÅÅ$ %
name
ÇÇ 
:
ÇÇ 
$str
ÇÇ _
,
ÇÇ_ `
column
ÉÉ 
:
ÉÉ 
x
ÉÉ  !
=>
ÉÉ" $
x
ÉÉ% &
.
ÉÉ& '
MedicationsId
ÉÉ' 4
,
ÉÉ4 5
principalTable
ÑÑ &
:
ÑÑ& '
$str
ÑÑ( :
,
ÑÑ: ;
principalColumn
ÖÖ '
:
ÖÖ' (
$str
ÖÖ) -
,
ÖÖ- .
onDelete
ÜÜ  
:
ÜÜ  !
ReferentialAction
ÜÜ" 3
.
ÜÜ3 4
Cascade
ÜÜ4 ;
)
ÜÜ; <
;
ÜÜ< =
}
áá 
)
áá 
;
áá 
migrationBuilder
ââ 
.
ââ 

InsertData
ââ '
(
ââ' (
table
ää 
:
ää 
$str
ää "
,
ää" #
columns
ãã 
:
ãã 
new
ãã 
[
ãã 
]
ãã 
{
ãã  
$str
ãã! %
,
ãã% &
$str
ãã' -
}
ãã. /
,
ãã/ 0
values
åå 
:
åå 
new
åå 
object
åå "
[
åå" #
,
åå# $
]
åå$ %
{
çç 
{
éé 
new
éé 
Guid
éé 
(
éé 
$str
éé E
)
ééE F
,
ééF G
$str
ééH P
}
ééQ R
,
ééR S
{
èè 
new
èè 
Guid
èè 
(
èè 
$str
èè E
)
èèE F
,
èèF G
$str
èèH Q
}
èèR S
}
êê 
)
êê 
;
êê 
migrationBuilder
íí 
.
íí 
CreateIndex
íí (
(
íí( )
name
ìì 
:
ìì 
$str
ìì +
,
ìì+ ,
table
îî 
:
îî 
$str
îî 
,
îî 
column
ïï 
:
ïï 
$str
ïï $
)
ïï$ %
;
ïï% &
migrationBuilder
óó 
.
óó 
CreateIndex
óó (
(
óó( )
name
òò 
:
òò 
$str
òò 7
,
òò7 8
table
ôô 
:
ôô 
$str
ôô +
,
ôô+ ,
column
öö 
:
öö 
$str
öö #
)
öö# $
;
öö$ %
migrationBuilder
úú 
.
úú 
CreateIndex
úú (
(
úú( )
name
ùù 
:
ùù 
$str
ùù 0
,
ùù0 1
table
ûû 
:
ûû 
$str
ûû %
,
ûû% &
column
üü 
:
üü 
$str
üü "
)
üü" #
;
üü# $
migrationBuilder
°° 
.
°° 
CreateIndex
°° (
(
°°( )
name
¢¢ 
:
¢¢ 
$str
¢¢ 4
,
¢¢4 5
table
££ 
:
££ 
$str
££  
,
££  !
column
§§ 
:
§§ 
$str
§§ +
)
§§+ ,
;
§§, -
migrationBuilder
¶¶ 
.
¶¶ 
CreateIndex
¶¶ (
(
¶¶( )
name
ßß 
:
ßß 
$str
ßß .
,
ßß. /
table
®® 
:
®® 
$str
®®  
,
®®  !
column
©© 
:
©© 
$str
©© %
)
©©% &
;
©©& '
migrationBuilder
´´ 
.
´´ 
CreateIndex
´´ (
(
´´( )
name
¨¨ 
:
¨¨ 
$str
¨¨ )
,
¨¨) *
table
≠≠ 
:
≠≠ 
$str
≠≠  
,
≠≠  !
column
ÆÆ 
:
ÆÆ 
$str
ÆÆ  
)
ÆÆ  !
;
ÆÆ! "
migrationBuilder
∞∞ 
.
∞∞ 
CreateIndex
∞∞ (
(
∞∞( )
name
±± 
:
±± 
$str
±± :
,
±±: ;
table
≤≤ 
:
≤≤ 
$str
≤≤ *
,
≤≤* +
column
≥≥ 
:
≥≥ 
$str
≥≥ '
)
≥≥' (
;
≥≥( )
migrationBuilder
µµ 
.
µµ 
CreateIndex
µµ (
(
µµ( )
name
∂∂ 
:
∂∂ 
$str
∂∂ 3
,
∂∂3 4
table
∑∑ 
:
∑∑ 
$str
∑∑ *
,
∑∑* +
column
∏∏ 
:
∏∏ 
$str
∏∏  
)
∏∏  !
;
∏∏! "
migrationBuilder
∫∫ 
.
∫∫ 
CreateIndex
∫∫ (
(
∫∫( )
name
ªª 
:
ªª 
$str
ªª G
,
ªªG H
table
ºº 
:
ºº 
$str
ºº 7
,
ºº7 8
column
ΩΩ 
:
ΩΩ 
$str
ΩΩ '
)
ΩΩ' (
;
ΩΩ( )
migrationBuilder
øø 
.
øø 
CreateIndex
øø (
(
øø( )
name
¿¿ 
:
¿¿ 
$str
¿¿ *
,
¿¿* +
table
¡¡ 
:
¡¡ 
$str
¡¡ !
,
¡¡! "
column
¬¬ 
:
¬¬ 
$str
¬¬  
)
¬¬  !
;
¬¬! "
migrationBuilder
ƒƒ 
.
ƒƒ 
CreateIndex
ƒƒ (
(
ƒƒ( )
name
≈≈ 
:
≈≈ 
$str
≈≈ *
,
≈≈* +
table
∆∆ 
:
∆∆ 
$str
∆∆ !
,
∆∆! "
column
«« 
:
«« 
$str
««  
)
««  !
;
««! "
migrationBuilder
…… 
.
…… 
AddForeignKey
…… *
(
……* +
name
   
:
   
$str
   5
,
  5 6
table
ÀÀ 
:
ÀÀ 
$str
ÀÀ 
,
ÀÀ 
column
ÃÃ 
:
ÃÃ 
$str
ÃÃ $
,
ÃÃ$ %
principalTable
ÕÕ 
:
ÕÕ 
$str
ÕÕ  +
,
ÕÕ+ ,
principalColumn
ŒŒ 
:
ŒŒ  
$str
ŒŒ! %
,
ŒŒ% &
onDelete
œœ 
:
œœ 
ReferentialAction
œœ +
.
œœ+ ,
Cascade
œœ, 3
)
œœ3 4
;
œœ4 5
migrationBuilder
—— 
.
—— 
AddForeignKey
—— *
(
——* +
name
““ 
:
““ 
$str
““ H
,
““H I
table
”” 
:
”” 
$str
”” +
,
””+ ,
column
‘‘ 
:
‘‘ 
$str
‘‘ '
,
‘‘' (
principalTable
’’ 
:
’’ 
$str
’’  .
,
’’. /
principalColumn
÷÷ 
:
÷÷  
$str
÷÷! %
,
÷÷% &
onDelete
◊◊ 
:
◊◊ 
ReferentialAction
◊◊ +
.
◊◊+ ,
Cascade
◊◊, 3
)
◊◊3 4
;
◊◊4 5
migrationBuilder
ŸŸ 
.
ŸŸ 
AddForeignKey
ŸŸ *
(
ŸŸ* +
name
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ 8
,
⁄⁄8 9
table
€€ 
:
€€ 
$str
€€ %
,
€€% &
column
‹‹ 
:
‹‹ 
$str
‹‹ "
,
‹‹" #
principalTable
›› 
:
›› 
$str
››  )
,
››) *
principalColumn
ﬁﬁ 
:
ﬁﬁ  
$str
ﬁﬁ! %
,
ﬁﬁ% &
onDelete
ﬂﬂ 
:
ﬂﬂ 
ReferentialAction
ﬂﬂ +
.
ﬂﬂ+ ,
Cascade
ﬂﬂ, 3
)
ﬂﬂ3 4
;
ﬂﬂ4 5
}
‡‡ 	
	protected
„„ 
override
„„ 
void
„„ 
Down
„„  $
(
„„$ %
MigrationBuilder
„„% 5
migrationBuilder
„„6 F
)
„„F G
{
‰‰ 	
migrationBuilder
ÂÂ 
.
ÂÂ 
DropForeignKey
ÂÂ +
(
ÂÂ+ ,
name
ÊÊ 
:
ÊÊ 
$str
ÊÊ 5
,
ÊÊ5 6
table
ÁÁ 
:
ÁÁ 
$str
ÁÁ 
)
ÁÁ 
;
ÁÁ  
migrationBuilder
ÈÈ 
.
ÈÈ 
DropForeignKey
ÈÈ +
(
ÈÈ+ ,
name
ÍÍ 
:
ÍÍ 
$str
ÍÍ G
,
ÍÍG H
table
ÎÎ 
:
ÎÎ 
$str
ÎÎ *
)
ÎÎ* +
;
ÎÎ+ ,
migrationBuilder
ÌÌ 
.
ÌÌ 
	DropTable
ÌÌ &
(
ÌÌ& '
name
ÓÓ 
:
ÓÓ 
$str
ÓÓ *
)
ÓÓ* +
;
ÓÓ+ ,
migrationBuilder
 
.
 
	DropTable
 &
(
& '
name
ÒÒ 
:
ÒÒ 
$str
ÒÒ  
)
ÒÒ  !
;
ÒÒ! "
migrationBuilder
ÛÛ 
.
ÛÛ 
	DropTable
ÛÛ &
(
ÛÛ& '
name
ÙÙ 
:
ÙÙ 
$str
ÙÙ 6
)
ÙÙ6 7
;
ÙÙ7 8
migrationBuilder
ˆˆ 
.
ˆˆ 
	DropTable
ˆˆ &
(
ˆˆ& '
name
˜˜ 
:
˜˜ 
$str
˜˜ !
)
˜˜! "
;
˜˜" #
migrationBuilder
˘˘ 
.
˘˘ 
	DropTable
˘˘ &
(
˘˘& '
name
˙˙ 
:
˙˙ 
$str
˙˙  
)
˙˙  !
;
˙˙! "
migrationBuilder
¸¸ 
.
¸¸ 
	DropTable
¸¸ &
(
¸¸& '
name
˝˝ 
:
˝˝ 
$str
˝˝ (
)
˝˝( )
;
˝˝) *
migrationBuilder
ˇˇ 
.
ˇˇ 
	DropTable
ˇˇ &
(
ˇˇ& '
name
ÄÄ 
:
ÄÄ 
$str
ÄÄ $
)
ÄÄ$ %
;
ÄÄ% &
migrationBuilder
ÇÇ 
.
ÇÇ 
	DropTable
ÇÇ &
(
ÇÇ& '
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ 
)
ÉÉ  
;
ÉÉ  !
migrationBuilder
ÖÖ 
.
ÖÖ 
	DropTable
ÖÖ &
(
ÖÖ& '
name
ÜÜ 
:
ÜÜ 
$str
ÜÜ )
)
ÜÜ) *
;
ÜÜ* +
migrationBuilder
àà 
.
àà 
	DropTable
àà &
(
àà& '
name
ââ 
:
ââ 
$str
ââ #
)
ââ# $
;
ââ$ %
migrationBuilder
ãã 
.
ãã 
	DropTable
ãã &
(
ãã& '
name
åå 
:
åå 
$str
åå 
)
åå 
;
åå  
migrationBuilder
éé 
.
éé 
	DropIndex
éé &
(
éé& '
name
èè 
:
èè 
$str
èè +
,
èè+ ,
table
êê 
:
êê 
$str
êê 
)
êê 
;
êê  
migrationBuilder
íí 
.
íí 

DropColumn
íí '
(
íí' (
name
ìì 
:
ìì 
$str
ìì 
,
ìì 
table
îî 
:
îî 
$str
îî 
)
îî 
;
îî  
migrationBuilder
ññ 
.
ññ 

DropColumn
ññ '
(
ññ' (
name
óó 
:
óó 
$str
óó  
,
óó  !
table
òò 
:
òò 
$str
òò 
)
òò 
;
òò  
migrationBuilder
öö 
.
öö 

DropColumn
öö '
(
öö' (
name
õõ 
:
õõ 
$str
õõ "
,
õõ" #
table
úú 
:
úú 
$str
úú 
)
úú 
;
úú  
migrationBuilder
ûû 
.
ûû 
	AddColumn
ûû &
<
ûû& '
string
ûû' -
>
ûû- .
(
ûû. /
name
üü 
:
üü 
$str
üü 
,
üü  
table
†† 
:
†† 
$str
†† 
,
†† 
type
°° 
:
°° 
$str
°° 
,
°° 
nullable
¢¢ 
:
¢¢ 
true
¢¢ 
)
¢¢ 
;
¢¢  
migrationBuilder
§§ 
.
§§ 
	AddColumn
§§ &
<
§§& '
string
§§' -
>
§§- .
(
§§. /
name
•• 
:
•• 
$str
•• !
,
••! "
table
¶¶ 
:
¶¶ 
$str
¶¶ 
,
¶¶ 
type
ßß 
:
ßß 
$str
ßß 
,
ßß 
nullable
®® 
:
®® 
true
®® 
)
®® 
;
®®  
migrationBuilder
™™ 
.
™™ 
	AddColumn
™™ &
<
™™& '
string
™™' -
>
™™- .
(
™™. /
name
´´ 
:
´´ 
$str
´´  
,
´´  !
table
¨¨ 
:
¨¨ 
$str
¨¨ 
,
¨¨ 
type
≠≠ 
:
≠≠ 
$str
≠≠ 
,
≠≠ 
nullable
ÆÆ 
:
ÆÆ 
true
ÆÆ 
)
ÆÆ 
;
ÆÆ  
migrationBuilder
∞∞ 
.
∞∞ 
	AddColumn
∞∞ &
<
∞∞& '
string
∞∞' -
>
∞∞- .
(
∞∞. /
name
±± 
:
±± 
$str
±± #
,
±±# $
table
≤≤ 
:
≤≤ 
$str
≤≤ 
,
≤≤ 
type
≥≥ 
:
≥≥ 
$str
≥≥ 
,
≥≥ 
nullable
¥¥ 
:
¥¥ 
true
¥¥ 
)
¥¥ 
;
¥¥  
}
µµ 	
}
∂∂ 
}∑∑ î≤
≥C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Migrations\20221213130947_Add_Config_For_User_Doctor_And_Pacient.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (

Migrations( 2
{ 
public

 

partial

 
class

 ,
 AddConfigForUserDoctorAndPacient

 9
:

: ;
	Migration

< E
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
DropForeignKey +
(+ ,
name 
: 
$str G
,G H
table 
: 
$str *
)* +
;+ ,
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str *
)* +
;+ ,
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str :
,: ;
table 
: 
$str *
)* +
;+ ,
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str %
,% &
table 
: 
$str *
)* +
;+ ,
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str 
, 
table   
:   
$str   !
,  ! "
type!! 
:!! 
$str!! 
,!! 
nullable"" 
:"" 
false"" 
,""  
defaultValue## 
:## 
$str##  
)##  !
;##! "
migrationBuilder%% 
.%% 
	AddColumn%% &
<%%& '
string%%' -
>%%- .
(%%. /
name&& 
:&& 
$str&& 
,&& 
table'' 
:'' 
$str''  
,''  !
type(( 
:(( 
$str(( 
,(( 
nullable)) 
:)) 
false)) 
,))  
defaultValue** 
:** 
$str**  
)**  !
;**! "
migrationBuilder,, 
.,, 
	AddColumn,, &
<,,& '
Guid,,' +
>,,+ ,
(,,, -
name-- 
:-- 
$str-- )
,--) *
table.. 
:.. 
$str.. %
,..% &
type// 
:// 
$str// 
,// 
nullable00 
:00 
false00 
,00  
defaultValue11 
:11 
new11 !
Guid11" &
(11& '
$str11' M
)11M N
)11N O
;11O P
migrationBuilder33 
.33 
	AddColumn33 &
<33& '
Guid33' +
>33+ ,
(33, -
name44 
:44 
$str44 !
,44! "
table55 
:55 
$str55 %
,55% &
type66 
:66 
$str66 
,66 
nullable77 
:77 
false77 
,77  
defaultValue88 
:88 
new88 !
Guid88" &
(88& '
$str88' M
)88M N
)88N O
;88O P
migrationBuilder:: 
.:: 

InsertData:: '
(::' (
table;; 
:;; 
$str;; 
,;;  
columns<< 
:<< 
new<< 
[<< 
]<< 
{<<  
$str<<! %
,<<% &
$str<<' -
}<<. /
,<</ 0
values== 
:== 
new== 
object== "
[==" #
,==# $
]==$ %
{>> 
{?? 
new?? 
Guid?? 
(?? 
$str?? E
)??E F
,??F G
$str??H S
}??T U
,??U V
{@@ 
new@@ 
Guid@@ 
(@@ 
$str@@ E
)@@E F
,@@F G
$str@@H P
}@@Q R
,@@R S
{AA 
newAA 
GuidAA 
(AA 
$strAA E
)AAE F
,AAF G
$strAAH S
}AAT U
,AAU V
{BB 
newBB 
GuidBB 
(BB 
$strBB E
)BBE F
,BBF G
$strBBH P
}BBQ R
,BBR S
{CC 
newCC 
GuidCC 
(CC 
$strCC E
)CCE F
,CCF G
$strCCH N
}CCO P
}DD 
)DD 
;DD 
migrationBuilderFF 
.FF 

InsertDataFF '
(FF' (
tableGG 
:GG 
$strGG $
,GG$ %
columnsHH 
:HH 
newHH 
[HH 
]HH 
{HH  
$strHH! %
,HH% &
$strHH' -
}HH. /
,HH/ 0
valuesII 
:II 
newII 
objectII "
[II" #
,II# $
]II$ %
{JJ 
{KK 
newKK 
GuidKK 
(KK 
$strKK E
)KKE F
,KKF G
$strKKH \
}KK] ^
,KK^ _
{LL 
newLL 
GuidLL 
(LL 
$strLL E
)LLE F
,LLF G
$strLLH T
}LLU V
,LLV W
{MM 
newMM 
GuidMM 
(MM 
$strMM E
)MME F
,MMF G
$strMMH Q
}MMR S
,MMS T
{NN 
newNN 
GuidNN 
(NN 
$strNN E
)NNE F
,NNF G
$strNNH U
}NNV W
,NNW X
{OO 
newOO 
GuidOO 
(OO 
$strOO E
)OOE F
,OOF G
$strOOH Y
}OOZ [
,OO[ \
{PP 
newPP 
GuidPP 
(PP 
$strPP E
)PPE F
,PPF G
$strPPH W
}PPX Y
}QQ 
)QQ 
;QQ 
migrationBuilderSS 
.SS 
CreateIndexSS (
(SS( )
nameTT 
:TT 
$strTT &
,TT& '
tableUU 
:UU 
$strUU 
,UU 
columnVV 
:VV 
$strVV 
,VV  
uniqueWW 
:WW 
trueWW 
)WW 
;WW 
migrationBuilderYY 
.YY 
CreateIndexYY (
(YY( )
nameZZ 
:ZZ 
$strZZ '
,ZZ' (
table[[ 
:[[ 
$str[[ !
,[[! "
column\\ 
:\\ 
$str\\ 
,\\ 
unique]] 
:]] 
true]] 
)]] 
;]] 
migrationBuilder__ 
.__ 
CreateIndex__ (
(__( )
name`` 
:`` 
$str`` &
,``& '
tableaa 
:aa 
$straa  
,aa  !
columnbb 
:bb 
$strbb 
,bb 
uniquecc 
:cc 
truecc 
)cc 
;cc 
migrationBuilderee 
.ee 
CreateIndexee (
(ee( )
nameff 
:ff 
$strff 1
,ff1 2
tablegg 
:gg 
$strgg !
,gg! "
columnhh 
:hh 
$strhh '
)hh' (
;hh( )
migrationBuilderjj 
.jj 
CreateIndexjj (
(jj( )
namekk 
:kk 
$strkk 9
,kk9 :
tablell 
:ll 
$strll %
,ll% &
columnmm 
:mm 
$strmm +
)mm+ ,
;mm, -
migrationBuilderoo 
.oo 
CreateIndexoo (
(oo( )
namepp 
:pp 
$strpp 1
,pp1 2
tableqq 
:qq 
$strqq %
,qq% &
columnrr 
:rr 
$strrr #
)rr# $
;rr$ %
migrationBuildertt 
.tt 
AddForeignKeytt *
(tt* +
nameuu 
:uu 
$struu K
,uuK L
tablevv 
:vv 
$strvv %
,vv% &
columnww 
:ww 
$strww +
,ww+ ,
principalTablexx 
:xx 
$strxx  3
,xx3 4
principalColumnyy 
:yy  
$stryy! %
,yy% &
onDeletezz 
:zz 
ReferentialActionzz +
.zz+ ,
Cascadezz, 3
)zz3 4
;zz4 5
migrationBuilder|| 
.|| 
AddForeignKey|| *
(||* +
name}} 
:}} 
$str}} :
,}}: ;
table~~ 
:~~ 
$str~~ %
,~~% &
column 
: 
$str #
,# $
principalTable
ÄÄ 
:
ÄÄ 
$str
ÄÄ  *
,
ÄÄ* +
principalColumn
ÅÅ 
:
ÅÅ  
$str
ÅÅ! %
,
ÅÅ% &
onDelete
ÇÇ 
:
ÇÇ 
ReferentialAction
ÇÇ +
.
ÇÇ+ ,
Cascade
ÇÇ, 3
)
ÇÇ3 4
;
ÇÇ4 5
migrationBuilder
ÑÑ 
.
ÑÑ 
AddForeignKey
ÑÑ *
(
ÑÑ* +
name
ÖÖ 
:
ÖÖ 
$str
ÖÖ >
,
ÖÖ> ?
table
ÜÜ 
:
ÜÜ 
$str
ÜÜ !
,
ÜÜ! "
column
áá 
:
áá 
$str
áá '
,
áá' (
principalTable
àà 
:
àà 
$str
àà  .
,
àà. /
principalColumn
ââ 
:
ââ  
$str
ââ! %
,
ââ% &
onDelete
ää 
:
ää 
ReferentialAction
ää +
.
ää+ ,
Cascade
ää, 3
)
ää3 4
;
ää4 5
}
ãã 	
	protected
éé 
override
éé 
void
éé 
Down
éé  $
(
éé$ %
MigrationBuilder
éé% 5
migrationBuilder
éé6 F
)
ééF G
{
èè 	
migrationBuilder
êê 
.
êê 
DropForeignKey
êê +
(
êê+ ,
name
ëë 
:
ëë 
$str
ëë K
,
ëëK L
table
íí 
:
íí 
$str
íí %
)
íí% &
;
íí& '
migrationBuilder
îî 
.
îî 
DropForeignKey
îî +
(
îî+ ,
name
ïï 
:
ïï 
$str
ïï :
,
ïï: ;
table
ññ 
:
ññ 
$str
ññ %
)
ññ% &
;
ññ& '
migrationBuilder
òò 
.
òò 
DropForeignKey
òò +
(
òò+ ,
name
ôô 
:
ôô 
$str
ôô >
,
ôô> ?
table
öö 
:
öö 
$str
öö !
)
öö! "
;
öö" #
migrationBuilder
úú 
.
úú 
	DropIndex
úú &
(
úú& '
name
ùù 
:
ùù 
$str
ùù &
,
ùù& '
table
ûû 
:
ûû 
$str
ûû 
)
ûû 
;
ûû  
migrationBuilder
†† 
.
†† 
	DropIndex
†† &
(
††& '
name
°° 
:
°° 
$str
°° '
,
°°' (
table
¢¢ 
:
¢¢ 
$str
¢¢ !
)
¢¢! "
;
¢¢" #
migrationBuilder
§§ 
.
§§ 
	DropIndex
§§ &
(
§§& '
name
•• 
:
•• 
$str
•• &
,
••& '
table
¶¶ 
:
¶¶ 
$str
¶¶  
)
¶¶  !
;
¶¶! "
migrationBuilder
®® 
.
®® 
	DropIndex
®® &
(
®®& '
name
©© 
:
©© 
$str
©© 1
,
©©1 2
table
™™ 
:
™™ 
$str
™™ !
)
™™! "
;
™™" #
migrationBuilder
¨¨ 
.
¨¨ 
	DropIndex
¨¨ &
(
¨¨& '
name
≠≠ 
:
≠≠ 
$str
≠≠ 9
,
≠≠9 :
table
ÆÆ 
:
ÆÆ 
$str
ÆÆ %
)
ÆÆ% &
;
ÆÆ& '
migrationBuilder
∞∞ 
.
∞∞ 
	DropIndex
∞∞ &
(
∞∞& '
name
±± 
:
±± 
$str
±± 1
,
±±1 2
table
≤≤ 
:
≤≤ 
$str
≤≤ %
)
≤≤% &
;
≤≤& '
migrationBuilder
¥¥ 
.
¥¥ 

DeleteData
¥¥ '
(
¥¥' (
table
µµ 
:
µµ 
$str
µµ 
,
µµ  
	keyColumn
∂∂ 
:
∂∂ 
$str
∂∂ 
,
∂∂  
keyValue
∑∑ 
:
∑∑ 
new
∑∑ 
Guid
∑∑ "
(
∑∑" #
$str
∑∑# I
)
∑∑I J
)
∑∑J K
;
∑∑K L
migrationBuilder
ππ 
.
ππ 

DeleteData
ππ '
(
ππ' (
table
∫∫ 
:
∫∫ 
$str
∫∫ 
,
∫∫  
	keyColumn
ªª 
:
ªª 
$str
ªª 
,
ªª  
keyValue
ºº 
:
ºº 
new
ºº 
Guid
ºº "
(
ºº" #
$str
ºº# I
)
ººI J
)
ººJ K
;
ººK L
migrationBuilder
ææ 
.
ææ 

DeleteData
ææ '
(
ææ' (
table
øø 
:
øø 
$str
øø 
,
øø  
	keyColumn
¿¿ 
:
¿¿ 
$str
¿¿ 
,
¿¿  
keyValue
¡¡ 
:
¡¡ 
new
¡¡ 
Guid
¡¡ "
(
¡¡" #
$str
¡¡# I
)
¡¡I J
)
¡¡J K
;
¡¡K L
migrationBuilder
√√ 
.
√√ 

DeleteData
√√ '
(
√√' (
table
ƒƒ 
:
ƒƒ 
$str
ƒƒ 
,
ƒƒ  
	keyColumn
≈≈ 
:
≈≈ 
$str
≈≈ 
,
≈≈  
keyValue
∆∆ 
:
∆∆ 
new
∆∆ 
Guid
∆∆ "
(
∆∆" #
$str
∆∆# I
)
∆∆I J
)
∆∆J K
;
∆∆K L
migrationBuilder
»» 
.
»» 

DeleteData
»» '
(
»»' (
table
…… 
:
…… 
$str
…… 
,
……  
	keyColumn
   
:
   
$str
   
,
    
keyValue
ÀÀ 
:
ÀÀ 
new
ÀÀ 
Guid
ÀÀ "
(
ÀÀ" #
$str
ÀÀ# I
)
ÀÀI J
)
ÀÀJ K
;
ÀÀK L
migrationBuilder
ÕÕ 
.
ÕÕ 

DeleteData
ÕÕ '
(
ÕÕ' (
table
ŒŒ 
:
ŒŒ 
$str
ŒŒ $
,
ŒŒ$ %
	keyColumn
œœ 
:
œœ 
$str
œœ 
,
œœ  
keyValue
–– 
:
–– 
new
–– 
Guid
–– "
(
––" #
$str
––# I
)
––I J
)
––J K
;
––K L
migrationBuilder
““ 
.
““ 

DeleteData
““ '
(
““' (
table
”” 
:
”” 
$str
”” $
,
””$ %
	keyColumn
‘‘ 
:
‘‘ 
$str
‘‘ 
,
‘‘  
keyValue
’’ 
:
’’ 
new
’’ 
Guid
’’ "
(
’’" #
$str
’’# I
)
’’I J
)
’’J K
;
’’K L
migrationBuilder
◊◊ 
.
◊◊ 

DeleteData
◊◊ '
(
◊◊' (
table
ÿÿ 
:
ÿÿ 
$str
ÿÿ $
,
ÿÿ$ %
	keyColumn
ŸŸ 
:
ŸŸ 
$str
ŸŸ 
,
ŸŸ  
keyValue
⁄⁄ 
:
⁄⁄ 
new
⁄⁄ 
Guid
⁄⁄ "
(
⁄⁄" #
$str
⁄⁄# I
)
⁄⁄I J
)
⁄⁄J K
;
⁄⁄K L
migrationBuilder
‹‹ 
.
‹‹ 

DeleteData
‹‹ '
(
‹‹' (
table
›› 
:
›› 
$str
›› $
,
››$ %
	keyColumn
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ 
,
ﬁﬁ  
keyValue
ﬂﬂ 
:
ﬂﬂ 
new
ﬂﬂ 
Guid
ﬂﬂ "
(
ﬂﬂ" #
$str
ﬂﬂ# I
)
ﬂﬂI J
)
ﬂﬂJ K
;
ﬂﬂK L
migrationBuilder
·· 
.
·· 

DeleteData
·· '
(
··' (
table
‚‚ 
:
‚‚ 
$str
‚‚ $
,
‚‚$ %
	keyColumn
„„ 
:
„„ 
$str
„„ 
,
„„  
keyValue
‰‰ 
:
‰‰ 
new
‰‰ 
Guid
‰‰ "
(
‰‰" #
$str
‰‰# I
)
‰‰I J
)
‰‰J K
;
‰‰K L
migrationBuilder
ÊÊ 
.
ÊÊ 

DeleteData
ÊÊ '
(
ÊÊ' (
table
ÁÁ 
:
ÁÁ 
$str
ÁÁ $
,
ÁÁ$ %
	keyColumn
ËË 
:
ËË 
$str
ËË 
,
ËË  
keyValue
ÈÈ 
:
ÈÈ 
new
ÈÈ 
Guid
ÈÈ "
(
ÈÈ" #
$str
ÈÈ# I
)
ÈÈI J
)
ÈÈJ K
;
ÈÈK L
migrationBuilder
ÎÎ 
.
ÎÎ 

DropColumn
ÎÎ '
(
ÎÎ' (
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ 
,
ÏÏ 
table
ÌÌ 
:
ÌÌ 
$str
ÌÌ !
)
ÌÌ! "
;
ÌÌ" #
migrationBuilder
ÔÔ 
.
ÔÔ 

DropColumn
ÔÔ '
(
ÔÔ' (
name
 
:
 
$str
 
,
 
table
ÒÒ 
:
ÒÒ 
$str
ÒÒ  
)
ÒÒ  !
;
ÒÒ! "
migrationBuilder
ÛÛ 
.
ÛÛ 

DropColumn
ÛÛ '
(
ÛÛ' (
name
ÙÙ 
:
ÙÙ 
$str
ÙÙ )
,
ÙÙ) *
table
ıı 
:
ıı 
$str
ıı %
)
ıı% &
;
ıı& '
migrationBuilder
˜˜ 
.
˜˜ 

DropColumn
˜˜ '
(
˜˜' (
name
¯¯ 
:
¯¯ 
$str
¯¯ !
,
¯¯! "
table
˘˘ 
:
˘˘ 
$str
˘˘ %
)
˘˘% &
;
˘˘& '
migrationBuilder
˚˚ 
.
˚˚ 
	AddColumn
˚˚ &
<
˚˚& '
Guid
˚˚' +
>
˚˚+ ,
(
˚˚, -
name
¸¸ 
:
¸¸ 
$str
¸¸ %
,
¸¸% &
table
˝˝ 
:
˝˝ 
$str
˝˝ *
,
˝˝* +
type
˛˛ 
:
˛˛ 
$str
˛˛ 
,
˛˛ 
nullable
ˇˇ 
:
ˇˇ 
true
ˇˇ 
)
ˇˇ 
;
ˇˇ  
migrationBuilder
ÅÅ 
.
ÅÅ 
CreateTable
ÅÅ (
(
ÅÅ( )
name
ÇÇ 
:
ÇÇ 
$str
ÇÇ *
,
ÇÇ* +
columns
ÉÉ 
:
ÉÉ 
table
ÉÉ 
=>
ÉÉ !
new
ÉÉ" %
{
ÑÑ 
AppointmentId
ÖÖ !
=
ÖÖ" #
table
ÖÖ$ )
.
ÖÖ) *
Column
ÖÖ* 0
<
ÖÖ0 1
Guid
ÖÖ1 5
>
ÖÖ5 6
(
ÖÖ6 7
type
ÖÖ7 ;
:
ÖÖ; <
$str
ÖÖ= C
,
ÖÖC D
nullable
ÖÖE M
:
ÖÖM N
false
ÖÖO T
)
ÖÖT U
,
ÖÖU V
PacientIdId
ÜÜ 
=
ÜÜ  !
table
ÜÜ" '
.
ÜÜ' (
Column
ÜÜ( .
<
ÜÜ. /
Guid
ÜÜ/ 3
>
ÜÜ3 4
(
ÜÜ4 5
type
ÜÜ5 9
:
ÜÜ9 :
$str
ÜÜ; A
,
ÜÜA B
nullable
ÜÜC K
:
ÜÜK L
false
ÜÜM R
)
ÜÜR S
}
áá 
,
áá 
constraints
àà 
:
àà 
table
àà "
=>
àà# %
{
ââ 
table
ää 
.
ää 

PrimaryKey
ää $
(
ää$ %
$str
ää% <
,
ää< =
x
ää> ?
=>
ää@ B
new
ääC F
{
ääG H
x
ääI J
.
ääJ K
AppointmentId
ääK X
,
ääX Y
x
ääZ [
.
ää[ \
PacientIdId
ää\ g
}
ääh i
)
ääi j
;
ääj k
table
ãã 
.
ãã 

ForeignKey
ãã $
(
ãã$ %
name
åå 
:
åå 
$str
åå P
,
ååP Q
column
çç 
:
çç 
x
çç  !
=>
çç" $
x
çç% &
.
çç& '
AppointmentId
çç' 4
,
çç4 5
principalTable
éé &
:
éé& '
$str
éé( 6
,
éé6 7
principalColumn
èè '
:
èè' (
$str
èè) -
,
èè- .
onDelete
êê  
:
êê  !
ReferentialAction
êê" 3
.
êê3 4
Cascade
êê4 ;
)
êê; <
;
êê< =
table
ëë 
.
ëë 

ForeignKey
ëë $
(
ëë$ %
name
íí 
:
íí 
$str
íí J
,
ííJ K
column
ìì 
:
ìì 
x
ìì  !
=>
ìì" $
x
ìì% &
.
ìì& '
PacientIdId
ìì' 2
,
ìì2 3
principalTable
îî &
:
îî& '
$str
îî( 2
,
îî2 3
principalColumn
ïï '
:
ïï' (
$str
ïï) -
,
ïï- .
onDelete
ññ  
:
ññ  !
ReferentialAction
ññ" 3
.
ññ3 4
Cascade
ññ4 ;
)
ññ; <
;
ññ< =
}
óó 
)
óó 
;
óó 
migrationBuilder
ôô 
.
ôô 
CreateIndex
ôô (
(
ôô( )
name
öö 
:
öö 
$str
öö :
,
öö: ;
table
õõ 
:
õõ 
$str
õõ *
,
õõ* +
column
úú 
:
úú 
$str
úú '
)
úú' (
;
úú( )
migrationBuilder
ûû 
.
ûû 
CreateIndex
ûû (
(
ûû( )
name
üü 
:
üü 
$str
üü 9
,
üü9 :
table
†† 
:
†† 
$str
†† +
,
††+ ,
column
°° 
:
°° 
$str
°° %
)
°°% &
;
°°& '
migrationBuilder
££ 
.
££ 
AddForeignKey
££ *
(
££* +
name
§§ 
:
§§ 
$str
§§ G
,
§§G H
table
•• 
:
•• 
$str
•• *
,
••* +
column
¶¶ 
:
¶¶ 
$str
¶¶ '
,
¶¶' (
principalTable
ßß 
:
ßß 
$str
ßß  .
,
ßß. /
principalColumn
®® 
:
®®  
$str
®®! %
)
®®% &
;
®®& '
}
©© 	
}
™™ 
}´´ Ì.
£C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Migrations\20221213131404_MedicationStockChanges.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (

Migrations( 2
{ 
public 

partial 
class "
MedicationStockChanges /
:0 1
	Migration2 ;
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str 6
)6 7
;7 8
migrationBuilder 
. 
	AddColumn &
<& '
Guid' +
>+ ,
(, -
name 
: 
$str )
,) *
table 
: 
$str )
,) *
type 
: 
$str 
, 
nullable 
: 
false 
,  
defaultValue 
: 
new !
Guid" &
(& '
$str' M
)M N
)N O
;O P
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str =
,= >
table 
: 
$str )
,) *
column 
: 
$str +
)+ ,
;, -
migrationBuilder 
. 
AddForeignKey *
(* +
name 
: 
$str O
,O P
table 
: 
$str )
,) *
column 
: 
$str +
,+ ,
principalTable   
:   
$str    3
,  3 4
principalColumn!! 
:!!  
$str!!! %
,!!% &
onDelete"" 
:"" 
ReferentialAction"" +
.""+ ,
Cascade"", 3
)""3 4
;""4 5
}## 	
	protected&& 
override&& 
void&& 
Down&&  $
(&&$ %
MigrationBuilder&&% 5
migrationBuilder&&6 F
)&&F G
{'' 	
migrationBuilder(( 
.(( 
DropForeignKey(( +
(((+ ,
name)) 
:)) 
$str)) O
,))O P
table** 
:** 
$str** )
)**) *
;*** +
migrationBuilder,, 
.,, 
	DropIndex,, &
(,,& '
name-- 
:-- 
$str-- =
,--= >
table.. 
:.. 
$str.. )
)..) *
;..* +
migrationBuilder00 
.00 

DropColumn00 '
(00' (
name11 
:11 
$str11 )
,11) *
table22 
:22 
$str22 )
)22) *
;22* +
migrationBuilder44 
.44 
CreateTable44 (
(44( )
name55 
:55 
$str55 6
,556 7
columns66 
:66 
table66 
=>66 !
new66" %
{77 
MedicalFacilitiesId88 '
=88( )
table88* /
.88/ 0
Column880 6
<886 7
Guid887 ;
>88; <
(88< =
type88= A
:88A B
$str88C I
,88I J
nullable88K S
:88S T
false88U Z
)88Z [
,88[ \
MedicationsId99 !
=99" #
table99$ )
.99) *
Column99* 0
<990 1
Guid991 5
>995 6
(996 7
type997 ;
:99; <
$str99= C
,99C D
nullable99E M
:99M N
false99O T
)99T U
}:: 
,:: 
constraints;; 
:;; 
table;; "
=>;;# %
{<< 
table== 
.== 

PrimaryKey== $
(==$ %
$str==% H
,==H I
x==J K
=>==L N
new==O R
{==S T
x==U V
.==V W
MedicalFacilitiesId==W j
,==j k
x==l m
.==m n
MedicationsId==n {
}==| }
)==} ~
;==~ 
table>> 
.>> 

ForeignKey>> $
(>>$ %
name?? 
:?? 
$str?? _
,??_ `
column@@ 
:@@ 
x@@  !
=>@@" $
x@@% &
.@@& '
MedicalFacilitiesId@@' :
,@@: ;
principalTableAA &
:AA& '
$strAA( ;
,AA; <
principalColumnBB '
:BB' (
$strBB) -
,BB- .
onDeleteCC  
:CC  !
ReferentialActionCC" 3
.CC3 4
CascadeCC4 ;
)CC; <
;CC< =
tableDD 
.DD 

ForeignKeyDD $
(DD$ %
nameEE 
:EE 
$strEE _
,EE_ `
columnFF 
:FF 
xFF  !
=>FF" $
xFF% &
.FF& '
MedicationsIdFF' 4
,FF4 5
principalTableGG &
:GG& '
$strGG( :
,GG: ;
principalColumnHH '
:HH' (
$strHH) -
,HH- .
onDeleteII  
:II  !
ReferentialActionII" 3
.II3 4
CascadeII4 ;
)II; <
;II< =
}JJ 
)JJ 
;JJ 
migrationBuilderLL 
.LL 
CreateIndexLL (
(LL( )
nameMM 
:MM 
$strMM G
,MMG H
tableNN 
:NN 
$strNN 7
,NN7 8
columnOO 
:OO 
$strOO '
)OO' (
;OO( )
}PP 	
}QQ 
}RR ˜:
õC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Migrations\20221213152141_AddRegionTable.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (

Migrations( 2
{ 
public

 

partial

 
class

 
AddRegionTable

 '
:

( )
	Migration

* 3
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

DeleteData '
(' (
table 
: 
$str 
,  
	keyColumn 
: 
$str 
,  
keyValue 
: 
new 
Guid "
(" #
$str# I
)I J
)J K
;K L
migrationBuilder 
. 

DeleteData '
(' (
table 
: 
$str 
,  
	keyColumn 
: 
$str 
,  
keyValue 
: 
new 
Guid "
(" #
$str# I
)I J
)J K
;K L
migrationBuilder 
. 

DeleteData '
(' (
table 
: 
$str 
,  
	keyColumn 
: 
$str 
,  
keyValue 
: 
new 
Guid "
(" #
$str# I
)I J
)J K
;K L
migrationBuilder 
. 

DeleteData '
(' (
table 
: 
$str 
,  
	keyColumn   
:   
$str   
,    
keyValue!! 
:!! 
new!! 
Guid!! "
(!!" #
$str!!# I
)!!I J
)!!J K
;!!K L
migrationBuilder## 
.## 

DeleteData## '
(##' (
table$$ 
:$$ 
$str$$ 
,$$  
	keyColumn%% 
:%% 
$str%% 
,%%  
keyValue&& 
:&& 
new&& 
Guid&& "
(&&" #
$str&&# I
)&&I J
)&&J K
;&&K L
migrationBuilder(( 
.(( 
	AddColumn(( &
<((& '
Guid((' +
>((+ ,
(((, -
name)) 
:)) 
$str))  
,))  !
table** 
:** 
$str** 
,**  
type++ 
:++ 
$str++ 
,++ 
nullable,, 
:,, 
false,, 
,,,  
defaultValue-- 
:-- 
new-- !
Guid--" &
(--& '
$str--' M
)--M N
)--N O
;--O P
migrationBuilder// 
.// 
CreateTable// (
(//( )
name00 
:00 
$str00 
,00  
columns11 
:11 
table11 
=>11 !
new11" %
{22 
Id33 
=33 
table33 
.33 
Column33 %
<33% &
Guid33& *
>33* +
(33+ ,
type33, 0
:330 1
$str332 8
,338 9
nullable33: B
:33B C
false33D I
)33I J
,33J K
Name44 
=44 
table44  
.44  !
Column44! '
<44' (
string44( .
>44. /
(44/ 0
type440 4
:444 5
$str446 <
,44< =
nullable44> F
:44F G
false44H M
)44M N
}55 
,55 
constraints66 
:66 
table66 "
=>66# %
{77 
table88 
.88 

PrimaryKey88 $
(88$ %
$str88% 1
,881 2
x883 4
=>885 7
x888 9
.889 :
Id88: <
)88< =
;88= >
}99 
)99 
;99 
migrationBuilder;; 
.;; 
CreateIndex;; (
(;;( )
name<< 
:<< 
$str<< *
,<<* +
table== 
:== 
$str== 
,==  
column>> 
:>> 
$str>> "
)>>" #
;>># $
migrationBuilder@@ 
.@@ 
AddForeignKey@@ *
(@@* +
nameAA 
:AA 
$strAA 2
,AA2 3
tableBB 
:BB 
$strBB 
,BB  
columnCC 
:CC 
$strCC "
,CC" #
principalTableDD 
:DD 
$strDD  )
,DD) *
principalColumnEE 
:EE  
$strEE! %
,EE% &
onDeleteFF 
:FF 
ReferentialActionFF +
.FF+ ,
CascadeFF, 3
)FF3 4
;FF4 5
}GG 	
	protectedJJ 
overrideJJ 
voidJJ 
DownJJ  $
(JJ$ %
MigrationBuilderJJ% 5
migrationBuilderJJ6 F
)JJF G
{KK 	
migrationBuilderLL 
.LL 
DropForeignKeyLL +
(LL+ ,
nameMM 
:MM 
$strMM 2
,MM2 3
tableNN 
:NN 
$strNN 
)NN  
;NN  !
migrationBuilderPP 
.PP 
	DropTablePP &
(PP& '
nameQQ 
:QQ 
$strQQ 
)QQ  
;QQ  !
migrationBuilderSS 
.SS 
	DropIndexSS &
(SS& '
nameTT 
:TT 
$strTT *
,TT* +
tableUU 
:UU 
$strUU 
)UU  
;UU  !
migrationBuilderWW 
.WW 

DropColumnWW '
(WW' (
nameXX 
:XX 
$strXX  
,XX  !
tableYY 
:YY 
$strYY 
)YY  
;YY  !
migrationBuilder[[ 
.[[ 

InsertData[[ '
([[' (
table\\ 
:\\ 
$str\\ 
,\\  
columns]] 
:]] 
new]] 
[]] 
]]] 
{]]  
$str]]! %
,]]% &
$str]]' -
}]]. /
,]]/ 0
values^^ 
:^^ 
new^^ 
object^^ "
[^^" #
,^^# $
]^^$ %
{__ 
{`` 
new`` 
Guid`` 
(`` 
$str`` E
)``E F
,``F G
$str``H S
}``T U
,``U V
{aa 
newaa 
Guidaa 
(aa 
$straa E
)aaE F
,aaF G
$straaH P
}aaQ R
,aaR S
{bb 
newbb 
Guidbb 
(bb 
$strbb E
)bbE F
,bbF G
$strbbH S
}bbT U
,bbU V
{cc 
newcc 
Guidcc 
(cc 
$strcc E
)ccE F
,ccF G
$strccH P
}ccQ R
,ccR S
{dd 
newdd 
Guiddd 
(dd 
$strdd E
)ddE F
,ddF G
$strddH N
}ddO P
}ee 
)ee 
;ee 
}ff 	
}gg 
}hh ˛
•C:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Persistence\Migrations\20221216120857_AddMedicalFacilityConfig.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (

Migrations( 2
{ 
public

 

partial

 
class

 $
AddMedicalFacilityConfig

 1
:

2 3
	Migration

4 =
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

InsertData '
(' (
table 
: 
$str *
,* +
columns 
: 
new 
[ 
] 
{  
$str! %
,% &
$str' /
,/ 0
$str1 7
}8 9
,9 :
values 
: 
new 
object "
[" #
,# $
]$ %
{ 
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
GuidL P
(P Q
$strQ w
)w x
,x y
$str	z à
}
â ä
,
ä ã
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
GuidL P
(P Q
$strQ w
)w x
,x y
$str	z É
}
Ñ Ö
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DeleteData '
(' (
table 
: 
$str *
,* +
	keyColumn 
: 
$str 
,  
keyValue 
: 
new 
Guid "
(" #
$str# I
)I J
)J K
;K L
migrationBuilder!! 
.!! 

DeleteData!! '
(!!' (
table"" 
:"" 
$str"" *
,""* +
	keyColumn## 
:## 
$str## 
,##  
keyValue$$ 
:$$ 
new$$ 
Guid$$ "
($$" #
$str$$# I
)$$I J
)$$J K
;$$K L
}%% 	
}&& 
}'' ë
ÉC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\ICityRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
{ 
public 

	interface 
ICityRepository $
{ 
public 
Task 
< 
IEnumerable 
<  
City  $
>$ %
>% &"
GetCitiesByRegionAsync' =
(= >
Guid> B
regionIdC K
)K L
;L M
} 
}		 Â

ÖC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\IDoctorRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
;4 5
public 
	interface 
IDoctorRepository "
{ 
Task 
< 	
Doctor	 
> 
	AddDoctor 
( 
Doctor !
doctor" (
)( )
;) *
Task		 
<		 	
bool			 
>		 
DeleteDoctor		 
(		 
Guid		  
id		! #
)		# $
;		$ %
Task 
< 	
List	 
< 
Doctor 
> 
> 
GetAllDoctors $
($ %
)% &
;& '
Task 
< 	
Doctor	 
? 
> 
GetDoctorById 
(  
Guid  $
id% '
)' (
;( )
Task 
Save	 
( 
) 
; 
Task 
< 	
Doctor	 
? 
> 
UpdateDoctor 
( 
Doctor %
doctor& ,
), -
;- .
}  
éC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\IMedicalFacilityRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
;4 5
public 
	interface &
IMedicalFacilityRepository +
{ 
Task 
< 	
MedicalFacility	 
> 
AddFacility %
(% &
MedicalFacility& 5
medicalFacility6 E
)E F
;F G
Task		 
<		 	
bool			 
>		 
DeleteFacility		 
(		 
Guid		 "
id		# %
)		% &
;		& '
Task 
< 	
List	 
< 
MedicalFacility 
> 
> 
GetAllFacilities  0
(0 1
)1 2
;2 3
Task 
< 	
MedicalFacility	 
? 
> 
GetFacilityById *
(* +
Guid+ /
id0 2
)2 3
;3 4
Task 
Save	 
( 
) 
; 
Task 
< 	
MedicalFacility	 
? 
> 
UpdateFacility )
() *
MedicalFacility* 9
medicalFacility: I
)I J
;J K
} Î
éC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\IMedicationStockRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
;4 5
public 
	interface &
IMedicationStockRepository +
{ 
Task 
< 	
MedicationStock	 
> 
AddMedicationStock ,
(, -
MedicationStock- <
medicationStock= L
)L M
;M N
Task		 
<		 	
bool			 
>		 !
DeleteMedicationStock		 $
(		$ %
Guid		% )
id		* ,
)		, -
;		- .
Task 
< 	
List	 
< 
MedicationStock 
> 
> !
GetAllMedicationStock  5
(5 6
)6 7
;7 8
Task 
< 	
MedicationStock	 
? 
> "
GetMedicationStockById 1
(1 2
Guid2 6
id7 9
)9 :
;: ;
Task 
Save	 
( 
) 
; 
Task 
< 	
MedicationStock	 
? 
> !
UpdateMedicationStock 0
(0 1
MedicationStock1 @
medicationStockA P
)P Q
;Q R
} ˝
ëC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\Implementation\CityRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
.4 5
Implementation5 C
{ 
public 

class 
CityRepository 
:  !
ICityRepository" 1
{ 
private		 
readonly		 
DatabaseContext		 (
_databaseContext		) 9
;		9 :
public 
CityRepository 
( 
DatabaseContext -
databaseContext. =
)= >
{ 	
_databaseContext 
= 
databaseContext .
;. /
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
City& *
>* +
>+ ,"
GetCitiesByRegionAsync- C
(C D
GuidD H
regionIdI Q
)Q R
{ 	
return 
await 
_databaseContext )
.) *
Cities* 0
.0 1
Where1 6
(6 7
x7 8
=>9 ;
x< =
.= >
RegionId> F
==G I
regionIdJ R
)R S
.S T
ToListAsyncT _
(_ `
)` a
;a b
} 	
} 
} Ø3
ìC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\Implementation\DoctorRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
.4 5
Implementation5 C
;C D
public 
class 
DoctorRepository 
: 
IDoctorRepository  1
{ 
private		 
readonly		 
DatabaseContext		 $
_databaseContext		% 5
;		5 6
public 

DoctorRepository 
( 
DatabaseContext +
databaseContext, ;
); <
{ 
_databaseContext 
= 
databaseContext *
;* +
} 
public 

async 
Task 
< 
Doctor 
? 
> 
GetDoctorById ,
(, -
Guid- 1
id2 4
)4 5
{ 
return 
await 
Task 
. 
Run 
( 
( 
)  
=>! #
_databaseContext$ 4
.4 5
Doctors5 <
.< =
Include= D
(D E
xE F
=>G I
xJ K
.K L
	SpecialtyL U
)U V
. 
Include 
( 
x 
=> 
x 
. 
MedicalFacility +
)+ ,
. 
ThenInclude 
( 
x 
=> 
x 
.  
City  $
)$ %
. 
Where 
( 
x 
=> 
x 
. 
Id 
== 
id  "
)" #
.# $ 
SingleOrDefaultAsync$ 8
(8 9
)9 :
): ;
;; <
} 
public 

async 
Task 
< 
List 
< 
Doctor !
>! "
>" #
GetAllDoctors$ 1
(1 2
)2 3
{ 
return 
await 
_databaseContext %
.% &
Doctors& -
.- .
Include. 5
(5 6
x6 7
=>8 :
x; <
.< =
	Specialty= F
)F G
. 
Include 
( 
x 
=> 
x 
. 
MedicalFacility +
)+ ,
. 
ThenInclude 
( 
x 
=> 
x 
.  
City  $
)$ %
.% &
ToListAsync& 1
(1 2
)2 3
;3 4
} 
public 

async 
Task 
< 
Doctor 
> 
	AddDoctor '
(' (
Doctor( .
doctor/ 5
)5 6
{   
await!! 
_databaseContext!! 
.!! 
Doctors!! &
.!!& '
AddAsync!!' /
(!!/ 0
doctor!!0 6
)!!6 7
;!!7 8
await"" 
Save"" 
("" 
)"" 
;"" 
doctor## 
.## 
	Specialty## 
=## 
(## 
await## !
_databaseContext##" 2
.##2 3
Specialties##3 >
.##> ?
	FindAsync##? H
(##H I
doctor##I O
.##O P
SpecialtyId##P [
)##[ \
!##\ ]
)##] ^
!##^ _
;##_ `
doctor$$ 
.$$ 
MedicalFacility$$ 
=$$  
($$! "
await$$" '
_databaseContext$$( 8
.$$8 9
MedicalFacilities$$9 J
.$$J K
	FindAsync$$K T
($$T U
doctor$$U [
.$$[ \
MedicalFacilityId$$\ m
)$$m n
)$$n o
!$$o p
;$$p q
return%% 
doctor%% 
;%% 
}&& 
public(( 

async(( 
Task(( 
<(( 
Doctor(( 
?(( 
>(( 
UpdateDoctor(( +
(((+ ,
Doctor((, 2
doctor((3 9
)((9 :
{)) 
var** 
result** 
=** 
await** 
_databaseContext** +
.**+ ,
Doctors**, 3
.**3 4
Where**4 9
(**9 :
x**: ;
=>**< >
x**? @
.**@ A
Id**A C
==**D F
doctor**G M
.**M N
Id**N P
)**P Q
.**Q R
AsNoTracking**R ^
(**^ _
)**_ `
.**` a 
SingleOrDefaultAsync**a u
(**u v
)**v w
;**w x
if++ 

(++ 
result++ 
==++ 
null++ 
)++ 
{,, 	
return-- 
null-- 
;-- 
}.. 	
_databaseContext// 
.// 
Doctors//  
.//  !
Update//! '
(//' (
doctor//( .
)//. /
;/// 0
await00 
Save00 
(00 
)00 
;00 
return11 
doctor11 
;11 
}22 
public44 

async44 
Task44 
<44 
bool44 
>44 
DeleteDoctor44 (
(44( )
Guid44) -
id44. 0
)440 1
{55 
var66 
doctor66 
=66 
await66 
GetDoctorById66 (
(66( )
id66) +
)66+ ,
;66, -
if77 

(77 
doctor77 
==77 
null77 
)77 
{88 	
return99 
false99 
;99 
}:: 	
_databaseContext;; 
.;; 
Remove;; 
(;;  
doctor;;  &
);;& '
;;;' (
await<< 
Save<< 
(<< 
)<< 
;<< 
return== 
true== 
;== 
}>> 
public@@ 

async@@ 
Task@@ 
Save@@ 
(@@ 
)@@ 
{AA 
awaitBB 
_databaseContextBB 
.BB 
SaveChangesAsyncBB /
(BB/ 0
)BB0 1
;BB1 2
}CC 
}DD œ)
úC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\Implementation\MedicalFacilityRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
.4 5
Implementation5 C
;C D
public 
class %
MedicalFacilityRepository &
:' (&
IMedicalFacilityRepository) C
{		 
private

 
readonly

 
DatabaseContext

 $
_databaseContext

% 5
;

5 6
public 
%
MedicalFacilityRepository $
($ %
DatabaseContext% 4
databaseContext5 D
)D E
{ 
_databaseContext 
= 
databaseContext *
;* +
} 
public 

async 
Task 
< 
MedicalFacility %
?% &
>& '
GetFacilityById( 7
(7 8
Guid8 <
id= ?
)? @
{ 
return 
await 
_databaseContext %
.% &
MedicalFacilities& 7
.7 8
Include8 ?
(? @
x@ A
=>B D
xE F
.F G
CityG K
)K L
. 
Where 
( 
x 
=> 
x 
. 
Id 
== 
id  "
)" #
.# $ 
SingleOrDefaultAsync$ 8
(8 9
)9 :
;: ;
} 
public 

async 
Task 
< 
List 
< 
MedicalFacility *
>* +
>+ ,
GetAllFacilities- =
(= >
)> ?
{ 
return 
await 
_databaseContext %
.% &
MedicalFacilities& 7
.7 8
Include8 ?
(? @
x@ A
=>B D
xE F
.F G
CityG K
)K L
.L M
ToListAsyncM X
(X Y
)Y Z
;Z [
} 
public 

async 
Task 
< 
MedicalFacility %
>% &
AddFacility' 2
(2 3
MedicalFacility3 B
medicalFacilityC R
)R S
{ 
await 
_databaseContext 
. 
MedicalFacilities 0
.0 1
AddAsync1 9
(9 :
medicalFacility: I
)I J
;J K
await 
Save 
( 
) 
; 
return   
medicalFacility   
;   
}!! 
public## 

async## 
Task## 
<## 
MedicalFacility## %
?##% &
>##& '
UpdateFacility##( 6
(##6 7
MedicalFacility##7 F
medicalFacility##G V
)##V W
{$$ 
var%% 
result%% 
=%% 
await%% 
_databaseContext%% +
.%%+ ,
MedicalFacilities%%, =
.%%= >
Where%%> C
(%%C D
x%%D E
=>%%F H
x%%I J
.%%J K
Id%%K M
==%%N P
medicalFacility%%Q `
.%%` a
Id%%a c
)%%c d
.%%d e
AsNoTracking%%e q
(%%q r
)%%r s
.%%s t!
SingleOrDefaultAsync	%%t à
(
%%à â
)
%%â ä
;
%%ä ã
if&& 

(&& 
result&& 
==&& 
null&& 
)&& 
{'' 	
return(( 
result(( 
;(( 
})) 	
_databaseContext** 
.** 
MedicalFacilities** *
.*** +
Update**+ 1
(**1 2
medicalFacility**2 A
)**A B
;**B C
await++ 
Save++ 
(++ 
)++ 
;++ 
return,, 
medicalFacility,, 
;,, 
}-- 
public// 

async// 
Task// 
<// 
bool// 
>// 
DeleteFacility// *
(//* +
Guid//+ /
id//0 2
)//2 3
{00 
var11 
facility11 
=11 
await11 
GetFacilityById11 ,
(11, -
id11- /
)11/ 0
;110 1
if22 

(22 
facility22 
==22 
null22 
)22 
{33 	
return44 
false44 
;44 
}55 	
_databaseContext66 
.66 
Remove66 
(66  
facility66  (
)66( )
;66) *
await77 
Save77 
(77 
)77 
;77 
return88 
true88 
;88 
}99 
public;; 

async;; 
Task;; 
Save;; 
(;; 
);; 
{<< 
await== 
_databaseContext== 
.== 
SaveChangesAsync== /
(==/ 0
)==0 1
;==1 2
}>> 
}?? õ+
úC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\Implementation\MedicationStockRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
.4 5
Implementation5 C
;C D
public 
class %
MedicationStockRepository &
:' (&
IMedicationStockRepository) C
{ 
private		 
readonly		 
DatabaseContext		 $
_databaseContext		% 5
;		5 6
public 
%
MedicationStockRepository $
($ %
DatabaseContext% 4
databaseContext5 D
)D E
{ 
_databaseContext 
= 
databaseContext *
;* +
} 
public 

async 
Task 
< 
MedicationStock %
?% &
>& '"
GetMedicationStockById( >
(> ?
Guid? C
idD F
)F G
{ 
return 
await 
Task 
. 
Run 
( 
( 
)  
=>! #
_databaseContext$ 4
.4 5
MedicationStocks5 E
. 
Include 
( 
x 
=> 
x 
. 
MedicalFacility +
)+ ,
. 
Where 
( 
x 
=> 
x 
. 
Id 
== 
id  "
)" #
.  
SingleOrDefaultAsync !
(! "
)" #
)# $
;$ %
} 
public 

async 
Task 
< 
List 
< 
MedicationStock *
>* +
>+ ,!
GetAllMedicationStock- B
(B C
)C D
{ 
return 
await 
_databaseContext %
.% &
MedicationStocks& 6
. 
Include 
( 
x 
=> 
x 
. 
MedicalFacility +
)+ ,
. 
ToListAsync 
( 
) 
; 
} 
public 

async 
Task 
< 
MedicationStock %
>% &
AddMedicationStock' 9
(9 :
MedicationStock: I
medicationStockJ Y
)Y Z
{   
await!! 
_databaseContext!! 
.!! 
MedicationStocks!! /
.!!/ 0
AddAsync!!0 8
(!!8 9
medicationStock!!9 H
)!!H I
;!!I J
await"" 
Save"" 
("" 
)"" 
;"" 
return## 
medicationStock## 
;## 
}$$ 
public&& 

async&& 
Task&& 
<&& 
MedicationStock&& %
?&&% &
>&&& '!
UpdateMedicationStock&&( =
(&&= >
MedicationStock&&> M
medicationStock&&N ]
)&&] ^
{'' 
var(( 
result(( 
=(( 
await(( 
_databaseContext(( +
.((+ ,
MedicationStocks((, <
.((< =
Where((= B
(((B C
x((C D
=>((E G
x((H I
.((I J
Id((J L
==((M O
medicationStock((P _
.((_ `
Id((` b
)((b c
.((c d
AsNoTracking((d p
(((p q
)((q r
.((r s!
SingleOrDefaultAsync	((s á
(
((á à
)
((à â
;
((â ä
if)) 

()) 
result)) 
==)) 
null)) 
))) 
{** 	
return++ 
result++ 
;++ 
},, 	
_databaseContext-- 
.-- 
MedicationStocks-- )
.--) *
Update--* 0
(--0 1
medicationStock--1 @
)--@ A
;--A B
await.. 
Save.. 
(.. 
).. 
;.. 
return// 
medicationStock// 
;// 
}00 
public22 

async22 
Task22 
<22 
bool22 
>22 !
DeleteMedicationStock22 1
(221 2
Guid222 6
id227 9
)229 :
{33 
var44 
medicationStock44 
=44 
await44 #"
GetMedicationStockById44$ :
(44: ;
id44; =
)44= >
;44> ?
if55 

(55 
medicationStock55 
==55 
null55 #
)55# $
{66 	
return77 
false77 
;77 
}88 	
_databaseContext99 
.99 
Remove99 
(99  
medicationStock99  /
)99/ 0
;990 1
await:: 
Save:: 
(:: 
):: 
;:: 
return;; 
true;; 
;;; 
}<< 
public>> 

async>> 
Task>> 
Save>> 
(>> 
)>> 
{?? 
await@@ 
_databaseContext@@ 
.@@ 
SaveChangesAsync@@ /
(@@/ 0
)@@0 1
;@@1 2
}AA 
}BB …+
îC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\Implementation\PacientRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
.4 5
Implementation5 C
;C D
public 
class 
PacientRepository 
:  
IPacientRepository! 3
{ 
private		 
readonly		 
DatabaseContext		 $
_databaseContext		% 5
;		5 6
public 

PacientRepository 
( 
DatabaseContext ,
databaseContext- <
)< =
{ 
_databaseContext 
= 
databaseContext *
;* +
} 
public 

async 
Task 
< 
Pacient 
? 
> 
GetPacientById  .
(. /
Guid/ 3
id4 6
)6 7
{ 
return 
await 
Task 
. 
Run 
( 
( 
)  
=>! #
_databaseContext$ 4
.4 5
Pacients5 =
. 
Include 
( 
x 
=> 
x 
. 
City  
)  !
. 
Where 
( 
x 
=> 
x 
. 
Id 
== 
id  "
)" #
.# $ 
SingleOrDefaultAsync$ 8
(8 9
)9 :
): ;
;; <
} 
public 

async 
Task 
< 
List 
< 
Pacient "
>" #
># $
GetAllPacients% 3
(3 4
)4 5
{ 
return 
await 
_databaseContext %
.% &
Pacients& .
.. /
Include/ 6
(6 7
x7 8
=>9 ;
x< =
.= >
City> B
)B C
.C D
ToListAsyncD O
(O P
)P Q
;Q R
} 
public 

async 
Task 
< 
Pacient 
> 

AddPacient )
() *
Pacient* 1
pacient2 9
)9 :
{ 
await 
_databaseContext 
. 
Pacients '
.' (
AddAsync( 0
(0 1
pacient1 8
)8 9
;9 :
pacient 
. 
City 
= 
( 
await 
_databaseContext .
.. /
Cities/ 5
.5 6
	FindAsync6 ?
(? @
pacient@ G
.G H
CityIdH N
)N O
)O P
!P Q
;Q R
await   
Save   
(   
)   
;   
return!! 
pacient!! 
;!! 
}"" 
public$$ 

async$$ 
Task$$ 
<$$ 
Pacient$$ 
>$$ 
UpdatePacient$$ ,
($$, -
Pacient$$- 4
pacient$$5 <
)$$< =
{%% 
var&& 
result&& 
=&& 
await&& 
_databaseContext&& +
.&&+ ,
Pacients&&, 4
.&&4 5
Where&&5 :
(&&: ;
x&&; <
=>&&= ?
x&&@ A
.&&A B
Id&&B D
==&&E G
pacient&&H O
.&&O P
Id&&P R
)&&R S
.&&S T
AsNoTracking&&T `
(&&` a
)&&a b
.&&b c 
SingleOrDefaultAsync&&c w
(&&w x
)&&x y
;&&y z
if'' 

('' 
result'' 
!='' 
null'' 
)'' 
{(( 	
return)) 
result)) 
;)) 
}** 	
_databaseContext++ 
.++ 
Pacients++ !
.++! "
Update++" (
(++( )
pacient++) 0
)++0 1
;++1 2
await,, 
Save,, 
(,, 
),, 
;,, 
return-- 
pacient-- 
;-- 
}.. 
public00 

async00 
Task00 
<00 
bool00 
>00 
DeletePacient00 )
(00) *
Guid00* .
id00/ 1
)001 2
{11 
var22 
pacient22 
=22 
await22 
GetPacientById22 *
(22* +
id22+ -
)22- .
;22. /
if33 

(33 
pacient33 
==33 
null33 
)33 
{44 	
return55 
false55 
;55 
}66 	
_databaseContext77 
.77 
Remove77 
(77  
pacient77  '
)77' (
;77( )
await88 
Save88 
(88 
)88 
;88 
return99 
true99 
;99 
}:: 
public<< 

async<< 
Task<< 
Save<< 
(<< 
)<< 
{== 
await>> 
_databaseContext>> 
.>> 
SaveChangesAsync>> /
(>>/ 0
)>>0 1
;>>1 2
}?? 
}@@ û

ìC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\Implementation\RegionRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
.4 5
Implementation5 C
{ 
public 

class 
RegionRepository !
:" #
IRegionRepository$ 5
{ 
private		 
readonly		 
DatabaseContext		 (
_databaseContext		) 9
;		9 :
public 
RegionRepository 
(  
DatabaseContext  /
databaseContext0 ?
)? @
{ 	
_databaseContext 
= 
databaseContext .
;. /
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Region& ,
>, -
>- .
GetAllRegions/ <
(< =
)= >
{ 	
return 
await 
_databaseContext )
.) *
Regions* 1
.1 2
ToListAsync2 =
(= >
)> ?
;? @
} 	
} 
} ©1
ëC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\Implementation\UserRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
.4 5
Implementation5 C
;C D
public 
class 
UserRepository 
: 
IUserRepository -
{ 
private		 
readonly		 
DatabaseContext		 $
_databaseContext		% 5
;		5 6
public 

UserRepository 
( 
DatabaseContext )
databaseContext* 9
)9 :
{ 
_databaseContext 
= 
databaseContext *
;* +
} 
public 

async 
Task 
< 
User 
? 
> 
GetUserById (
(( )
Guid) -
id. 0
)0 1
{ 
var 
user 
= 
await 
_databaseContext )
.) *
Users* /
./ 0
	FindAsync0 9
(9 :
id: <
)< =
;= >
if 

( 
user 
== 
null 
) 
{ 	
return 
null 
; 
} 	
var 

userTypeId 
= 
await 
_databaseContext /
./ 0
	UserTypes0 9
.9 :
	FindAsync: C
(C D
userD H
.H I

UserTypeIdI S
)S T
;T U
if 

( 

userTypeId 
== 
null 
) 
{ 	
return 
null 
; 
} 	
user 
. 
UserType 
= 

userTypeId "
;" #
return 
user 
; 
}   
public"" 

async"" 
Task"" 
<"" 
List"" 
<"" 
User"" 
>""  
>""  !
GetAllUsers""" -
(""- .
)"". /
{## 
return$$ 
($$ 
await$$ 
_databaseContext$$ &
.$$& '
Users$$' ,
.$$, -
Include$$- 4
($$4 5
x$$5 6
=>$$7 9
x$$: ;
.$$; <
UserType$$< D
)$$D E
.$$E F
ToListAsync$$F Q
($$Q R
)$$R S
)$$S T
!$$T U
;$$U V
}%% 
public'' 

async'' 
Task'' 
<'' 
User'' 
?'' 
>'' 
AddUser'' $
(''$ %
User''% )
user''* .
)''. /
{(( 
var)) 
result)) 
=)) 
await)) 
_databaseContext)) +
.))+ ,
	UserTypes)), 5
.))5 6
Where))6 ;
()); <
x))< =
=>))> @
x))A B
.))B C
Id))C E
==))F H
user))I M
.))M N

UserTypeId))N X
)))X Y
.))Y Z 
SingleOrDefaultAsync))Z n
())n o
)))o p
;))p q
if** 

(** 
result** 
==** 
default** 
)** 
return++ 
null++ 
;++ 
await,, 
_databaseContext,, 
.,, 
Users,, $
.,,$ %
AddAsync,,% -
(,,- .
user,,. 2
),,2 3
;,,3 4
await-- 
Save-- 
(-- 
)-- 
;-- 
user.. 
... 
UserType.. 
=.. 
result.. 
;.. 
return// 
user// 
;// 
}00 
public22 

async22 
Task22 
<22 
User22 
?22 
>22 

UpdateUser22 '
(22' (
User22( ,
user22- 1
)221 2
{33 
var44 
result44 
=44 
await44 
_databaseContext44 +
.44+ ,
Users44, 1
.441 2
Where442 7
(447 8
x448 9
=>44: <
x44= >
.44> ?
Id44? A
==44B D
user44E I
.44I J
Id44J L
)44L M
.44M N
AsNoTracking44N Z
(44Z [
)44[ \
.44\ ] 
SingleOrDefaultAsync44] q
(44q r
)44r s
;44s t
if55 

(55 
result55 
==55 
default55 
)55 
return66 
null66 
;66 
_databaseContext77 
.77 
Users77 
.77 
Update77 %
(77% &
user77& *
)77* +
;77+ ,
await88 
Save88 
(88 
)88 
;88 
return99 
user99 
;99 
}:: 
public<< 

async<< 
Task<< 
<<< 
bool<< 
><< 

DeleteUser<< &
(<<& '
Guid<<' +
id<<, .
)<<. /
{== 
var>> 
user>> 
=>> 
await>> 
GetUserById>> $
(>>$ %
id>>% '
)>>' (
;>>( )
if?? 

(?? 
user?? 
==?? 
null?? 
)?? 
return??  
false??! &
;??& '
_databaseContext@@ 
.@@ 
Users@@ 
.@@ 
Remove@@ %
(@@% &
user@@& *
)@@* +
;@@+ ,
awaitAA 
SaveAA 
(AA 
)AA 
;AA 
returnBB 
trueBB 
;BB 
}CC 
publicEE 

asyncEE 
TaskEE 
SaveEE 
(EE 
)EE 
{FF 
awaitGG 
_databaseContextGG 
.GG 
SaveChangesAsyncGG /
(GG/ 0
)GG0 1
;GG1 2
}HH 
}II Â

ÜC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\IPacientRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
;4 5
public 
	interface 
IPacientRepository #
{ 
Task 
< 	
Pacient	 
> 

AddPacient 
( 
Pacient $
pacient% ,
), -
;- .
Task		 
<		 	
bool			 
>		 
DeletePacient		 
(		 
Guid		 !
id		" $
)		$ %
;		% &
Task 
< 	
List	 
< 
Pacient 
> 
> 
GetAllPacients &
(& '
)' (
;( )
Task 
< 	
Pacient	 
? 
> 
GetPacientById !
(! "
Guid" &
id' )
)) *
;* +
Task 
Save	 
( 
) 
; 
Task 
< 	
Pacient	 
> 
UpdatePacient 
(  
Pacient  '
pacient( /
)/ 0
;0 1
} Ê
ÖC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\IRegionRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
{ 
public 

	interface 
IRegionRepository &
{ 
public 
Task 
< 
IEnumerable 
<  
Region  &
>& '
>' (
GetAllRegions) 6
(6 7
)7 8
;8 9
} 
}		 Á

ÉC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\Repositories\IUserRepository.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
.' (
Repositories( 4
{ 
public 

	interface 
IUserRepository $
{ 
Task 
< 
User 
? 
> 
AddUser 
( 
User  
user! %
)% &
;& '
Task		 
<		 
bool		 
>		 

DeleteUser		 
(		 
Guid		 "
id		# %
)		% &
;		& '
Task 
< 
List 
< 
User 
> 
> 
GetAllUsers $
($ %
)% &
;& '
Task 
< 
User 
? 
> 
GetUserById 
(  
Guid  $
id% '
)' (
;( )
Task 
Save 
( 
) 
; 
Task 
< 
User 
? 
> 

UpdateUser 
( 
User #
user$ (
)( )
;) *
} 
} Ω
xC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointments.DataAccess\ServiceCollection.cs
	namespace 	
DoctorAppointments
 
. 

DataAccess '
;' (
public

 
static

 
class

 
ServiceCollection

 %
{ 
public 

static 
IServiceCollection $
AddDataAccess% 2
(2 3
this3 7
IServiceCollection8 J
servicesK S
,S T
IConfigurationU c
configurationd q
)q r
{ 
services 
. 
AddDbContext 
< 
DatabaseContext -
>- .
(. /
options/ 6
=>7 9
{ 	
options 
. 
	UseNpgsql 
( 
configuration +
[+ ,
$str, G
]G H
)H I
;I J
} 	
)	 

;
 
services 
. 
	AddScoped 
< 
IUserRepository *
,* +
UserRepository, :
>: ;
(; <
)< =
;= >
services 
. 
	AddScoped 
< 
IDoctorRepository ,
,, -
DoctorRepository. >
>> ?
(? @
)@ A
;A B
services 
. 
	AddScoped 
< 
IPacientRepository -
,- .
PacientRepository/ @
>@ A
(A B
)B C
;C D
services 
. 
	AddScoped 
< &
IMedicationStockRepository 5
,5 6%
MedicationStockRepository7 P
>P Q
(Q R
)R S
;S T
services 
. 
	AddScoped 
< &
IMedicalFacilityRepository 5
,5 6%
MedicalFacilityRepository7 P
>P Q
(Q R
)R S
;S T
services 
. 
	AddScoped 
< 
IRegionRepository ,
,, -
RegionRepository. >
>> ?
(? @
)@ A
;A B
services 
. 
	AddScoped 
< 
ICityRepository *
,* +
CityRepository, :
>: ;
(; <
)< =
;= >
return 
services 
; 
} 
} 