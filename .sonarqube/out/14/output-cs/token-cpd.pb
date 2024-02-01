�
mC:\Users\oencut\Personal\Doctor-Appointment\Backend\DoctorAppointment\DoctorAppointment.Common\ApiResponse.cs
	namespace 	
DoctorAppointment
 
. 
Common "
{ 
public 

class 
ApiResponse 
< 
T 
> 
{ 
public 
bool 
	Succeeded 
{ 
get  #
;# $
init% )
;) *
}+ ,
public 
List 
< 
ValidationError #
># $
Errors% +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
new< ?
List@ D
<D E
ValidationErrorE T
>T U
(U V
)V W
;W X
public		 
T		 
?		 
Data		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public 
static 
ApiResponse !
<! "
T" #
># $
Fail% )
() *
string* 0
errorMessage1 =
)= >
{ 	
return
new
ApiResponse
<
T
>
(
)
{
	Succeeded
=
false
,
Errors
=
new
List
<
ValidationError
>
(
)
{
new
ValidationError
(
null
,
errorMessage	
)

}

}

;

} 	
public 
static 
ApiResponse !
<! "
T" #
># $
Fail% )
() *
List* .
<. /
ValidationError/ >
>> ?
errorMessage@ L
)L M
{ 	
return 
new 
ApiResponse "
<" #
T# $
>$ %
(% &
)& '
{( )
	Succeeded* 3
=4 5
false6 ;
,; <
Errors= C
=D E
errorMessageF R
}S T
;T U
} 	
public 
static 
ApiResponse !
<! "
T" #
># $
Success% ,
(, -
T- .
data/ 3
)3 4
{ 	
return 
new 
ApiResponse "
<" #
T# $
>$ %
(% &
)& '
{( )
	Succeeded* 3
=4 5
true6 :
,: ;
Data< @
=A B
dataC G
}H I
;I J
} 	
} 
public 

class 
ValidationError  
{ 
public 
ValidationError 
( 
string %
?% &
field' ,
,, -
string. 4
message5 <
)< =
{ 	
this 
. 
Field 
= 
field 
!= !
string" (
.( )
Empty) .
?/ 0
field1 6
:7 8
null9 =
;= >
this 
. 
Message 
= 
message "
;" #
}   	
public"" 
string"" 
?"" 
Field"" 
{"" 
get"" "
;""" #
}""$ %
public$$ 
string$$ 
Message$$ 
{$$ 
get$$  #
;$$# $
}$$% &
}%% 
}'' 