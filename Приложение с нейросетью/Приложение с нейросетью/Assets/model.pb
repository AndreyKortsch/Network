щЭ
З─
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceѕ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48ќф
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
ќ
v/dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namev/dense_2/bias/*
dtype0*
shape:И*
shared_namev/dense_2/bias
n
"v/dense_2/bias/Read/ReadVariableOpReadVariableOpv/dense_2/bias*
_output_shapes	
:И*
dtype0
ќ
m/dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namem/dense_2/bias/*
dtype0*
shape:И*
shared_namem/dense_2/bias
n
"m/dense_2/bias/Read/ReadVariableOpReadVariableOpm/dense_2/bias*
_output_shapes	
:И*
dtype0
А
v/dense_2/kernelVarHandleOp*
_output_shapes
: *!

debug_namev/dense_2/kernel/*
dtype0*
shape:
ђИ*!
shared_namev/dense_2/kernel
w
$v/dense_2/kernel/Read/ReadVariableOpReadVariableOpv/dense_2/kernel* 
_output_shapes
:
ђИ*
dtype0
А
m/dense_2/kernelVarHandleOp*
_output_shapes
: *!

debug_namem/dense_2/kernel/*
dtype0*
shape:
ђИ*!
shared_namem/dense_2/kernel
w
$m/dense_2/kernel/Read/ReadVariableOpReadVariableOpm/dense_2/kernel* 
_output_shapes
:
ђИ*
dtype0
ќ
v/dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namev/dense_1/bias/*
dtype0*
shape:ђ*
shared_namev/dense_1/bias
n
"v/dense_1/bias/Read/ReadVariableOpReadVariableOpv/dense_1/bias*
_output_shapes	
:ђ*
dtype0
ќ
m/dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namem/dense_1/bias/*
dtype0*
shape:ђ*
shared_namem/dense_1/bias
n
"m/dense_1/bias/Read/ReadVariableOpReadVariableOpm/dense_1/bias*
_output_shapes	
:ђ*
dtype0
А
v/dense_1/kernelVarHandleOp*
_output_shapes
: *!

debug_namev/dense_1/kernel/*
dtype0*
shape:
ђђ*!
shared_namev/dense_1/kernel
w
$v/dense_1/kernel/Read/ReadVariableOpReadVariableOpv/dense_1/kernel* 
_output_shapes
:
ђђ*
dtype0
А
m/dense_1/kernelVarHandleOp*
_output_shapes
: *!

debug_namem/dense_1/kernel/*
dtype0*
shape:
ђђ*!
shared_namem/dense_1/kernel
w
$m/dense_1/kernel/Read/ReadVariableOpReadVariableOpm/dense_1/kernel* 
_output_shapes
:
ђђ*
dtype0
љ
v/dense/biasVarHandleOp*
_output_shapes
: *

debug_namev/dense/bias/*
dtype0*
shape:ђ*
shared_namev/dense/bias
j
 v/dense/bias/Read/ReadVariableOpReadVariableOpv/dense/bias*
_output_shapes	
:ђ*
dtype0
љ
m/dense/biasVarHandleOp*
_output_shapes
: *

debug_namem/dense/bias/*
dtype0*
shape:ђ*
shared_namem/dense/bias
j
 m/dense/bias/Read/ReadVariableOpReadVariableOpm/dense/bias*
_output_shapes	
:ђ*
dtype0
Џ
v/dense/kernelVarHandleOp*
_output_shapes
: *

debug_namev/dense/kernel/*
dtype0*
shape:
ђ$ђ*
shared_namev/dense/kernel
s
"v/dense/kernel/Read/ReadVariableOpReadVariableOpv/dense/kernel* 
_output_shapes
:
ђ$ђ*
dtype0
Џ
m/dense/kernelVarHandleOp*
_output_shapes
: *

debug_namem/dense/kernel/*
dtype0*
shape:
ђ$ђ*
shared_namem/dense/kernel
s
"m/dense/kernel/Read/ReadVariableOpReadVariableOpm/dense/kernel* 
_output_shapes
:
ђ$ђ*
dtype0
Ў
v/conv2d_3/biasVarHandleOp*
_output_shapes
: * 

debug_namev/conv2d_3/bias/*
dtype0*
shape:ђ* 
shared_namev/conv2d_3/bias
p
#v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpv/conv2d_3/bias*
_output_shapes	
:ђ*
dtype0
Ў
m/conv2d_3/biasVarHandleOp*
_output_shapes
: * 

debug_namem/conv2d_3/bias/*
dtype0*
shape:ђ* 
shared_namem/conv2d_3/bias
p
#m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpm/conv2d_3/bias*
_output_shapes	
:ђ*
dtype0
Ф
v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *"

debug_namev/conv2d_3/kernel/*
dtype0*
shape:@ђ*"
shared_namev/conv2d_3/kernel
ђ
%v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpv/conv2d_3/kernel*'
_output_shapes
:@ђ*
dtype0
Ф
m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *"

debug_namem/conv2d_3/kernel/*
dtype0*
shape:@ђ*"
shared_namem/conv2d_3/kernel
ђ
%m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpm/conv2d_3/kernel*'
_output_shapes
:@ђ*
dtype0
ў
v/conv2d_2/biasVarHandleOp*
_output_shapes
: * 

debug_namev/conv2d_2/bias/*
dtype0*
shape:@* 
shared_namev/conv2d_2/bias
o
#v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpv/conv2d_2/bias*
_output_shapes
:@*
dtype0
ў
m/conv2d_2/biasVarHandleOp*
_output_shapes
: * 

debug_namem/conv2d_2/bias/*
dtype0*
shape:@* 
shared_namem/conv2d_2/bias
o
#m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpm/conv2d_2/bias*
_output_shapes
:@*
dtype0
ф
v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *"

debug_namev/conv2d_2/kernel/*
dtype0*
shape: @*"
shared_namev/conv2d_2/kernel

%v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpv/conv2d_2/kernel*&
_output_shapes
: @*
dtype0
ф
m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *"

debug_namem/conv2d_2/kernel/*
dtype0*
shape: @*"
shared_namem/conv2d_2/kernel

%m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpm/conv2d_2/kernel*&
_output_shapes
: @*
dtype0
ў
v/conv2d_1/biasVarHandleOp*
_output_shapes
: * 

debug_namev/conv2d_1/bias/*
dtype0*
shape: * 
shared_namev/conv2d_1/bias
o
#v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpv/conv2d_1/bias*
_output_shapes
: *
dtype0
ў
m/conv2d_1/biasVarHandleOp*
_output_shapes
: * 

debug_namem/conv2d_1/bias/*
dtype0*
shape: * 
shared_namem/conv2d_1/bias
o
#m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpm/conv2d_1/bias*
_output_shapes
: *
dtype0
ф
v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *"

debug_namev/conv2d_1/kernel/*
dtype0*
shape: *"
shared_namev/conv2d_1/kernel

%v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpv/conv2d_1/kernel*&
_output_shapes
: *
dtype0
ф
m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *"

debug_namem/conv2d_1/kernel/*
dtype0*
shape: *"
shared_namem/conv2d_1/kernel

%m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpm/conv2d_1/kernel*&
_output_shapes
: *
dtype0
њ
v/conv2d/biasVarHandleOp*
_output_shapes
: *

debug_namev/conv2d/bias/*
dtype0*
shape:*
shared_namev/conv2d/bias
k
!v/conv2d/bias/Read/ReadVariableOpReadVariableOpv/conv2d/bias*
_output_shapes
:*
dtype0
њ
m/conv2d/biasVarHandleOp*
_output_shapes
: *

debug_namem/conv2d/bias/*
dtype0*
shape:*
shared_namem/conv2d/bias
k
!m/conv2d/bias/Read/ReadVariableOpReadVariableOpm/conv2d/bias*
_output_shapes
:*
dtype0
ц
v/conv2d/kernelVarHandleOp*
_output_shapes
: * 

debug_namev/conv2d/kernel/*
dtype0*
shape:* 
shared_namev/conv2d/kernel
{
#v/conv2d/kernel/Read/ReadVariableOpReadVariableOpv/conv2d/kernel*&
_output_shapes
:*
dtype0
ц
m/conv2d/kernelVarHandleOp*
_output_shapes
: * 

debug_namem/conv2d/kernel/*
dtype0*
shape:* 
shared_namem/conv2d/kernel
{
#m/conv2d/kernel/Read/ReadVariableOpReadVariableOpm/conv2d/kernel*&
_output_shapes
:*
dtype0
ј
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
ѓ
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
љ
dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namedense_2/bias/*
dtype0*
shape:И*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:И*
dtype0
Џ
dense_2/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_2/kernel/*
dtype0*
shape:
ђИ*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
ђИ*
dtype0
љ
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:ђ*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:ђ*
dtype0
Џ
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape:
ђђ*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
ђђ*
dtype0
і

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:ђ*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:ђ*
dtype0
Ћ
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape:
ђ$ђ*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
ђ$ђ*
dtype0
Њ
conv2d_3/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_3/bias/*
dtype0*
shape:ђ*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:ђ*
dtype0
Ц
conv2d_3/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_3/kernel/*
dtype0*
shape:@ђ* 
shared_nameconv2d_3/kernel
|
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*'
_output_shapes
:@ђ*
dtype0
њ
conv2d_2/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_2/bias/*
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
ц
conv2d_2/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_2/kernel/*
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
њ
conv2d_1/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_1/bias/*
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
ц
conv2d_1/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_1/kernel/*
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
ї
conv2d/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d/bias/*
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
ъ
conv2d/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv2d/kernel/*
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
Ј
serving_default_conv2d_inputPlaceholder*/
_output_shapes
:         dd*
dtype0*$
shape:         dd
е
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         И*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *,
f'R%
#__inference_signature_wrapper_25502

NoOpNoOp
јq
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╔p
value┐pB╝p Bхp
╝
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
  _jit_compiled_convolution_op*
ј
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses* 
╚
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op*
ј
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
╚
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op*
ј
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 
╚
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias
 M_jit_compiled_convolution_op*
ј
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
ј
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses* 
д
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias*
Ц
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_random_generator* 
д
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias*
Ц
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
w_random_generator* 
д
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias*
j
0
1
-2
.3
<4
=5
K6
L7
`8
a9
o10
p11
~12
13*
j
0
1
-2
.3
<4
=5
K6
L7
`8
a9
o10
p11
~12
13*
* 
х
ђnon_trainable_variables
Ђlayers
ѓmetrics
 Ѓlayer_regularization_losses
ёlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ёtrace_0
єtrace_1* 

Єtrace_0
ѕtrace_1* 
* 
ѕ
Ѕ
_variables
і_iterations
І_learning_rate
ї_index_dict
Ї
_momentums
ј_velocities
Ј_update_step_xla*

љserving_default* 

0
1*

0
1*
* 
ў
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ќtrace_0* 

Ќtrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
ўnon_trainable_variables
Ўlayers
џmetrics
 Џlayer_regularization_losses
юlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 

Юtrace_0* 

ъtrace_0* 

-0
.1*

-0
.1*
* 
ў
Ъnon_trainable_variables
аlayers
Аmetrics
 бlayer_regularization_losses
Бlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

цtrace_0* 

Цtrace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
дnon_trainable_variables
Дlayers
еmetrics
 Еlayer_regularization_losses
фlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

Фtrace_0* 

гtrace_0* 

<0
=1*

<0
=1*
* 
ў
Гnon_trainable_variables
«layers
»metrics
 ░layer_regularization_losses
▒layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

▓trace_0* 

│trace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
┤non_trainable_variables
хlayers
Хmetrics
 иlayer_regularization_losses
Иlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

╣trace_0* 

║trace_0* 

K0
L1*

K0
L1*
* 
ў
╗non_trainable_variables
╝layers
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

└trace_0* 

┴trace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
кlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 

Кtrace_0* 

╚trace_0* 
* 
* 
* 
ќ
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 

╬trace_0* 

¤trace_0* 

`0
a1*

`0
a1*
* 
ў
лnon_trainable_variables
Лlayers
мmetrics
 Мlayer_regularization_losses
нlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

Нtrace_0* 

оtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
Оnon_trainable_variables
пlayers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses* 

▄trace_0
Пtrace_1* 

яtrace_0
▀trace_1* 
* 

o0
p1*

o0
p1*
* 
ў
Яnon_trainable_variables
рlayers
Рmetrics
 сlayer_regularization_losses
Сlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

тtrace_0* 

Тtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
уnon_trainable_variables
Уlayers
жmetrics
 Жlayer_regularization_losses
вlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses* 

Вtrace_0
ьtrace_1* 

Ьtrace_0
№trace_1* 
* 

~0
1*

~0
1*
* 
ў
­non_trainable_variables
ыlayers
Ыmetrics
 зlayer_regularization_losses
Зlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

шtrace_0* 

Шtrace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
j
0
1
2
3
4
5
6
7
	8

9
10
11
12
13*

э0
Э1*
* 
* 
* 
* 
* 
* 
 
і0
щ1
Щ2
ч3
Ч4
§5
■6
 7
ђ8
Ђ9
ѓ10
Ѓ11
ё12
Ё13
є14
Є15
ѕ16
Ѕ17
і18
І19
ї20
Ї21
ј22
Ј23
љ24
Љ25
њ26
Њ27
ћ28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
x
щ0
ч1
§2
 3
Ђ4
Ѓ5
Ё6
Є7
Ѕ8
І9
Ї10
Ј11
Љ12
Њ13*
x
Щ0
Ч1
■2
ђ3
ѓ4
ё5
є6
ѕ7
і8
ї9
ј10
љ11
њ12
ћ13*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Ћ	variables
ќ	keras_api

Ќtotal

ўcount*
M
Ў	variables
џ	keras_api

Џtotal

юcount
Ю
_fn_kwargs*
ZT
VARIABLE_VALUEm/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEv/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEm/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEv/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEm/conv2d_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEv/conv2d_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEm/conv2d_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEv/conv2d_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEm/conv2d_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEv/conv2d_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEm/conv2d_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEv/conv2d_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEm/conv2d_3/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEv/conv2d_3/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEm/conv2d_3/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEv/conv2d_3/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEm/dense/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEv/dense/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEm/dense/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEv/dense/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEm/dense_1/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEv/dense_1/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEm/dense_1/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEv/dense_1/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEm/dense_2/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEv/dense_2/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEm/dense_2/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEv/dense_2/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*

Ќ0
ў1*

Ћ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Џ0
ю1*

Ў	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
х
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	iterationlearning_ratem/conv2d/kernelv/conv2d/kernelm/conv2d/biasv/conv2d/biasm/conv2d_1/kernelv/conv2d_1/kernelm/conv2d_1/biasv/conv2d_1/biasm/conv2d_2/kernelv/conv2d_2/kernelm/conv2d_2/biasv/conv2d_2/biasm/conv2d_3/kernelv/conv2d_3/kernelm/conv2d_3/biasv/conv2d_3/biasm/dense/kernelv/dense/kernelm/dense/biasv/dense/biasm/dense_1/kernelv/dense_1/kernelm/dense_1/biasv/dense_1/biasm/dense_2/kernelv/dense_2/kernelm/dense_2/biasv/dense_2/biastotal_1count_1totalcountConst*=
Tin6
422*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *'
f"R 
__inference__traced_save_26057
░
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	iterationlearning_ratem/conv2d/kernelv/conv2d/kernelm/conv2d/biasv/conv2d/biasm/conv2d_1/kernelv/conv2d_1/kernelm/conv2d_1/biasv/conv2d_1/biasm/conv2d_2/kernelv/conv2d_2/kernelm/conv2d_2/biasv/conv2d_2/biasm/conv2d_3/kernelv/conv2d_3/kernelm/conv2d_3/biasv/conv2d_3/biasm/dense/kernelv/dense/kernelm/dense/biasv/dense/biasm/dense_1/kernelv/dense_1/kernelm/dense_1/biasv/dense_1/biasm/dense_2/kernelv/dense_2/kernelm/dense_2/biasv/dense_2/biastotal_1count_1totalcount*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__traced_restore_26210Бй	
э?
ч
E__inference_sequential_layer_call_and_return_conditional_losses_25256
conv2d_input&
conv2d_25117:
conv2d_25119:(
conv2d_1_25134: 
conv2d_1_25136: (
conv2d_2_25151: @
conv2d_2_25153:@)
conv2d_3_25168:@ђ
conv2d_3_25170:	ђ
dense_25192:
ђ$ђ
dense_25194:	ђ!
dense_1_25221:
ђђ
dense_1_25223:	ђ!
dense_2_25250:
ђИ
dense_2_25252:	И
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallб conv2d_3/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdropout/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCallШ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_25117conv2d_25119*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_25116ь
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_25068ў
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_25134conv2d_1_25136*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25133з
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_25078џ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_25151conv2d_2_25153*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25150з
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_25088Џ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_25168conv2d_3_25170*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_25167З
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_25098█
flatten/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_25179 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_25192dense_25194*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_25191ж
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_25208Ј
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_25221dense_1_25223*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_25220Љ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_25237Љ
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_25250dense_2_25252*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         И*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_25249x
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Ио
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         dd: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input:%!

_user_specified_name25117:%!

_user_specified_name25119:%!

_user_specified_name25134:%!

_user_specified_name25136:%!

_user_specified_name25151:%!

_user_specified_name25153:%!

_user_specified_name25168:%!

_user_specified_name25170:%	!

_user_specified_name25192:%
!

_user_specified_name25194:%!

_user_specified_name25221:%!

_user_specified_name25223:%!

_user_specified_name25250:%!

_user_specified_name25252
╬
`
'__inference_dropout_layer_call_fn_25658

inputs
identityѕбStatefulPartitionedCall┴
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_25208p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
╣
K
/__inference_max_pooling2d_1_layer_call_fn_25557

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_25078Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╣
K
/__inference_max_pooling2d_2_layer_call_fn_25587

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_25088Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
њ
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_25098

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
њ
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_25622

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ц
E
)__inference_dropout_1_layer_call_fn_25710

inputs
identity│
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_25304a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
▓
Ч
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25150

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
њ
Ј
*__inference_sequential_layer_call_fn_25378
conv2d_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@ђ
	unknown_6:	ђ
	unknown_7:
ђ$ђ
	unknown_8:	ђ
	unknown_9:
ђђ

unknown_10:	ђ

unknown_11:
ђИ

unknown_12:	И
identityѕбStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         И*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25312p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         И<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         dd: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input:%!

_user_specified_name25348:%!

_user_specified_name25350:%!

_user_specified_name25352:%!

_user_specified_name25354:%!

_user_specified_name25356:%!

_user_specified_name25358:%!

_user_specified_name25360:%!

_user_specified_name25362:%	!

_user_specified_name25364:%
!

_user_specified_name25366:%!

_user_specified_name25368:%!

_user_specified_name25370:%!

_user_specified_name25372:%!

_user_specified_name25374
љ
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_25068

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
ѕ
#__inference_signature_wrapper_25502
conv2d_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@ђ
	unknown_6:	ђ
	unknown_7:
ђ$ђ
	unknown_8:	ђ
	unknown_9:
ђђ

unknown_10:	ђ

unknown_11:
ђИ

unknown_12:	И
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         И*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *)
f$R"
 __inference__wrapped_model_25063p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         И<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         dd: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input:%!

_user_specified_name25472:%!

_user_specified_name25474:%!

_user_specified_name25476:%!

_user_specified_name25478:%!

_user_specified_name25480:%!

_user_specified_name25482:%!

_user_specified_name25484:%!

_user_specified_name25486:%	!

_user_specified_name25488:%
!

_user_specified_name25490:%!

_user_specified_name25492:%!

_user_specified_name25494:%!

_user_specified_name25496:%!

_user_specified_name25498
Ы
Ќ
'__inference_dense_1_layer_call_fn_25689

inputs
unknown:
ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_25220p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:%!

_user_specified_name25683:%!

_user_specified_name25685
њ
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_25562

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
џу
П*
__inference__traced_save_26057
file_prefix>
$read_disablecopyonread_conv2d_kernel:2
$read_1_disablecopyonread_conv2d_bias:B
(read_2_disablecopyonread_conv2d_1_kernel: 4
&read_3_disablecopyonread_conv2d_1_bias: B
(read_4_disablecopyonread_conv2d_2_kernel: @4
&read_5_disablecopyonread_conv2d_2_bias:@C
(read_6_disablecopyonread_conv2d_3_kernel:@ђ5
&read_7_disablecopyonread_conv2d_3_bias:	ђ9
%read_8_disablecopyonread_dense_kernel:
ђ$ђ2
#read_9_disablecopyonread_dense_bias:	ђ<
(read_10_disablecopyonread_dense_1_kernel:
ђђ5
&read_11_disablecopyonread_dense_1_bias:	ђ<
(read_12_disablecopyonread_dense_2_kernel:
ђИ5
&read_13_disablecopyonread_dense_2_bias:	И-
#read_14_disablecopyonread_iteration:	 1
'read_15_disablecopyonread_learning_rate: C
)read_16_disablecopyonread_m_conv2d_kernel:C
)read_17_disablecopyonread_v_conv2d_kernel:5
'read_18_disablecopyonread_m_conv2d_bias:5
'read_19_disablecopyonread_v_conv2d_bias:E
+read_20_disablecopyonread_m_conv2d_1_kernel: E
+read_21_disablecopyonread_v_conv2d_1_kernel: 7
)read_22_disablecopyonread_m_conv2d_1_bias: 7
)read_23_disablecopyonread_v_conv2d_1_bias: E
+read_24_disablecopyonread_m_conv2d_2_kernel: @E
+read_25_disablecopyonread_v_conv2d_2_kernel: @7
)read_26_disablecopyonread_m_conv2d_2_bias:@7
)read_27_disablecopyonread_v_conv2d_2_bias:@F
+read_28_disablecopyonread_m_conv2d_3_kernel:@ђF
+read_29_disablecopyonread_v_conv2d_3_kernel:@ђ8
)read_30_disablecopyonread_m_conv2d_3_bias:	ђ8
)read_31_disablecopyonread_v_conv2d_3_bias:	ђ<
(read_32_disablecopyonread_m_dense_kernel:
ђ$ђ<
(read_33_disablecopyonread_v_dense_kernel:
ђ$ђ5
&read_34_disablecopyonread_m_dense_bias:	ђ5
&read_35_disablecopyonread_v_dense_bias:	ђ>
*read_36_disablecopyonread_m_dense_1_kernel:
ђђ>
*read_37_disablecopyonread_v_dense_1_kernel:
ђђ7
(read_38_disablecopyonread_m_dense_1_bias:	ђ7
(read_39_disablecopyonread_v_dense_1_bias:	ђ>
*read_40_disablecopyonread_m_dense_2_kernel:
ђИ>
*read_41_disablecopyonread_v_dense_2_kernel:
ђИ7
(read_42_disablecopyonread_m_dense_2_bias:	И7
(read_43_disablecopyonread_v_dense_2_bias:	И+
!read_44_disablecopyonread_total_1: +
!read_45_disablecopyonread_count_1: )
read_46_disablecopyonread_total: )
read_47_disablecopyonread_count: 
savev2_const
identity_97ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_19/DisableCopyOnReadбRead_19/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_20/DisableCopyOnReadбRead_20/ReadVariableOpбRead_21/DisableCopyOnReadбRead_21/ReadVariableOpбRead_22/DisableCopyOnReadбRead_22/ReadVariableOpбRead_23/DisableCopyOnReadбRead_23/ReadVariableOpбRead_24/DisableCopyOnReadбRead_24/ReadVariableOpбRead_25/DisableCopyOnReadбRead_25/ReadVariableOpбRead_26/DisableCopyOnReadбRead_26/ReadVariableOpбRead_27/DisableCopyOnReadбRead_27/ReadVariableOpбRead_28/DisableCopyOnReadбRead_28/ReadVariableOpбRead_29/DisableCopyOnReadбRead_29/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_30/DisableCopyOnReadбRead_30/ReadVariableOpбRead_31/DisableCopyOnReadбRead_31/ReadVariableOpбRead_32/DisableCopyOnReadбRead_32/ReadVariableOpбRead_33/DisableCopyOnReadбRead_33/ReadVariableOpбRead_34/DisableCopyOnReadбRead_34/ReadVariableOpбRead_35/DisableCopyOnReadбRead_35/ReadVariableOpбRead_36/DisableCopyOnReadбRead_36/ReadVariableOpбRead_37/DisableCopyOnReadбRead_37/ReadVariableOpбRead_38/DisableCopyOnReadбRead_38/ReadVariableOpбRead_39/DisableCopyOnReadбRead_39/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_40/DisableCopyOnReadбRead_40/ReadVariableOpбRead_41/DisableCopyOnReadбRead_41/ReadVariableOpбRead_42/DisableCopyOnReadбRead_42/ReadVariableOpбRead_43/DisableCopyOnReadбRead_43/ReadVariableOpбRead_44/DisableCopyOnReadбRead_44/ReadVariableOpбRead_45/DisableCopyOnReadбRead_45/ReadVariableOpбRead_46/DisableCopyOnReadбRead_46/ReadVariableOpбRead_47/DisableCopyOnReadбRead_47/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 е
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 а
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ░
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 б
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ░
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
: @z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 б
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_3_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@ђ*
dtype0w
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@ђn
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*'
_output_shapes
:@ђz
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Б
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_3_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђy
Read_8/DisableCopyOnReadDisableCopyOnRead%read_8_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 Д
Read_8/ReadVariableOpReadVariableOp%read_8_disablecopyonread_dense_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђ$ђ*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђ$ђg
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђ$ђw
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 а
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_dense_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ}
Read_10/DisableCopyOnReadDisableCopyOnRead(read_10_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 г
Read_10/ReadVariableOpReadVariableOp(read_10_disablecopyonread_dense_1_kernel^Read_10/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0q
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђ{
Read_11/DisableCopyOnReadDisableCopyOnRead&read_11_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 Ц
Read_11/ReadVariableOpReadVariableOp&read_11_disablecopyonread_dense_1_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ}
Read_12/DisableCopyOnReadDisableCopyOnRead(read_12_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 г
Read_12/ReadVariableOpReadVariableOp(read_12_disablecopyonread_dense_2_kernel^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђИ*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђИg
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђИ{
Read_13/DisableCopyOnReadDisableCopyOnRead&read_13_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 Ц
Read_13/ReadVariableOpReadVariableOp&read_13_disablecopyonread_dense_2_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:И*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Иb
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:Иx
Read_14/DisableCopyOnReadDisableCopyOnRead#read_14_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ю
Read_14/ReadVariableOpReadVariableOp#read_14_disablecopyonread_iteration^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 А
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_learning_rate^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_16/DisableCopyOnReadDisableCopyOnRead)read_16_disablecopyonread_m_conv2d_kernel"/device:CPU:0*
_output_shapes
 │
Read_16/ReadVariableOpReadVariableOp)read_16_disablecopyonread_m_conv2d_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
:~
Read_17/DisableCopyOnReadDisableCopyOnRead)read_17_disablecopyonread_v_conv2d_kernel"/device:CPU:0*
_output_shapes
 │
Read_17/ReadVariableOpReadVariableOp)read_17_disablecopyonread_v_conv2d_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_18/DisableCopyOnReadDisableCopyOnRead'read_18_disablecopyonread_m_conv2d_bias"/device:CPU:0*
_output_shapes
 Ц
Read_18/ReadVariableOpReadVariableOp'read_18_disablecopyonread_m_conv2d_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_19/DisableCopyOnReadDisableCopyOnRead'read_19_disablecopyonread_v_conv2d_bias"/device:CPU:0*
_output_shapes
 Ц
Read_19/ReadVariableOpReadVariableOp'read_19_disablecopyonread_v_conv2d_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:ђ
Read_20/DisableCopyOnReadDisableCopyOnRead+read_20_disablecopyonread_m_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 х
Read_20/ReadVariableOpReadVariableOp+read_20_disablecopyonread_m_conv2d_1_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
: ђ
Read_21/DisableCopyOnReadDisableCopyOnRead+read_21_disablecopyonread_v_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 х
Read_21/ReadVariableOpReadVariableOp+read_21_disablecopyonread_v_conv2d_1_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*&
_output_shapes
: ~
Read_22/DisableCopyOnReadDisableCopyOnRead)read_22_disablecopyonread_m_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Д
Read_22/ReadVariableOpReadVariableOp)read_22_disablecopyonread_m_conv2d_1_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_23/DisableCopyOnReadDisableCopyOnRead)read_23_disablecopyonread_v_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Д
Read_23/ReadVariableOpReadVariableOp)read_23_disablecopyonread_v_conv2d_1_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: ђ
Read_24/DisableCopyOnReadDisableCopyOnRead+read_24_disablecopyonread_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 х
Read_24/ReadVariableOpReadVariableOp+read_24_disablecopyonread_m_conv2d_2_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
: @ђ
Read_25/DisableCopyOnReadDisableCopyOnRead+read_25_disablecopyonread_v_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 х
Read_25/ReadVariableOpReadVariableOp+read_25_disablecopyonread_v_conv2d_2_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*&
_output_shapes
: @~
Read_26/DisableCopyOnReadDisableCopyOnRead)read_26_disablecopyonread_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Д
Read_26/ReadVariableOpReadVariableOp)read_26_disablecopyonread_m_conv2d_2_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_27/DisableCopyOnReadDisableCopyOnRead)read_27_disablecopyonread_v_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Д
Read_27/ReadVariableOpReadVariableOp)read_27_disablecopyonread_v_conv2d_2_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:@ђ
Read_28/DisableCopyOnReadDisableCopyOnRead+read_28_disablecopyonread_m_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 Х
Read_28/ReadVariableOpReadVariableOp+read_28_disablecopyonread_m_conv2d_3_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@ђ*
dtype0x
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@ђn
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*'
_output_shapes
:@ђђ
Read_29/DisableCopyOnReadDisableCopyOnRead+read_29_disablecopyonread_v_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 Х
Read_29/ReadVariableOpReadVariableOp+read_29_disablecopyonread_v_conv2d_3_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@ђ*
dtype0x
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@ђn
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*'
_output_shapes
:@ђ~
Read_30/DisableCopyOnReadDisableCopyOnRead)read_30_disablecopyonread_m_conv2d_3_bias"/device:CPU:0*
_output_shapes
 е
Read_30/ReadVariableOpReadVariableOp)read_30_disablecopyonread_m_conv2d_3_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ~
Read_31/DisableCopyOnReadDisableCopyOnRead)read_31_disablecopyonread_v_conv2d_3_bias"/device:CPU:0*
_output_shapes
 е
Read_31/ReadVariableOpReadVariableOp)read_31_disablecopyonread_v_conv2d_3_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ}
Read_32/DisableCopyOnReadDisableCopyOnRead(read_32_disablecopyonread_m_dense_kernel"/device:CPU:0*
_output_shapes
 г
Read_32/ReadVariableOpReadVariableOp(read_32_disablecopyonread_m_dense_kernel^Read_32/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђ$ђ*
dtype0q
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђ$ђg
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђ$ђ}
Read_33/DisableCopyOnReadDisableCopyOnRead(read_33_disablecopyonread_v_dense_kernel"/device:CPU:0*
_output_shapes
 г
Read_33/ReadVariableOpReadVariableOp(read_33_disablecopyonread_v_dense_kernel^Read_33/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђ$ђ*
dtype0q
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђ$ђg
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђ$ђ{
Read_34/DisableCopyOnReadDisableCopyOnRead&read_34_disablecopyonread_m_dense_bias"/device:CPU:0*
_output_shapes
 Ц
Read_34/ReadVariableOpReadVariableOp&read_34_disablecopyonread_m_dense_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ{
Read_35/DisableCopyOnReadDisableCopyOnRead&read_35_disablecopyonread_v_dense_bias"/device:CPU:0*
_output_shapes
 Ц
Read_35/ReadVariableOpReadVariableOp&read_35_disablecopyonread_v_dense_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ
Read_36/DisableCopyOnReadDisableCopyOnRead*read_36_disablecopyonread_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 «
Read_36/ReadVariableOpReadVariableOp*read_36_disablecopyonread_m_dense_1_kernel^Read_36/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0q
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђ
Read_37/DisableCopyOnReadDisableCopyOnRead*read_37_disablecopyonread_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 «
Read_37/ReadVariableOpReadVariableOp*read_37_disablecopyonread_v_dense_1_kernel^Read_37/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0q
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђ}
Read_38/DisableCopyOnReadDisableCopyOnRead(read_38_disablecopyonread_m_dense_1_bias"/device:CPU:0*
_output_shapes
 Д
Read_38/ReadVariableOpReadVariableOp(read_38_disablecopyonread_m_dense_1_bias^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ}
Read_39/DisableCopyOnReadDisableCopyOnRead(read_39_disablecopyonread_v_dense_1_bias"/device:CPU:0*
_output_shapes
 Д
Read_39/ReadVariableOpReadVariableOp(read_39_disablecopyonread_v_dense_1_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ
Read_40/DisableCopyOnReadDisableCopyOnRead*read_40_disablecopyonread_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 «
Read_40/ReadVariableOpReadVariableOp*read_40_disablecopyonread_m_dense_2_kernel^Read_40/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђИ*
dtype0q
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђИg
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђИ
Read_41/DisableCopyOnReadDisableCopyOnRead*read_41_disablecopyonread_v_dense_2_kernel"/device:CPU:0*
_output_shapes
 «
Read_41/ReadVariableOpReadVariableOp*read_41_disablecopyonread_v_dense_2_kernel^Read_41/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђИ*
dtype0q
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђИg
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђИ}
Read_42/DisableCopyOnReadDisableCopyOnRead(read_42_disablecopyonread_m_dense_2_bias"/device:CPU:0*
_output_shapes
 Д
Read_42/ReadVariableOpReadVariableOp(read_42_disablecopyonread_m_dense_2_bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:И*
dtype0l
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Иb
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:И}
Read_43/DisableCopyOnReadDisableCopyOnRead(read_43_disablecopyonread_v_dense_2_bias"/device:CPU:0*
_output_shapes
 Д
Read_43/ReadVariableOpReadVariableOp(read_43_disablecopyonread_v_dense_2_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:И*
dtype0l
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Иb
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:Иv
Read_44/DisableCopyOnReadDisableCopyOnRead!read_44_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Џ
Read_44/ReadVariableOpReadVariableOp!read_44_disablecopyonread_total_1^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_45/DisableCopyOnReadDisableCopyOnRead!read_45_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Џ
Read_45/ReadVariableOpReadVariableOp!read_45_disablecopyonread_count_1^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_46/DisableCopyOnReadDisableCopyOnReadread_46_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_46/ReadVariableOpReadVariableOpread_46_disablecopyonread_total^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_47/DisableCopyOnReadDisableCopyOnReadread_47_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_47/ReadVariableOpReadVariableOpread_47_disablecopyonread_count^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
: Ы
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*Џ
valueЉBј1B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¤
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Б

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *?
dtypes5
321	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_96Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_97IdentityIdentity_96:output:0^NoOp*
T0*
_output_shapes
: Ј
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_97Identity_97:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_3/bias:,	(
&
_user_specified_namedense/kernel:*
&
$
_user_specified_name
dense/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_2/kernel:,(
&
_user_specified_namedense_2/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:/+
)
_user_specified_namem/conv2d/kernel:/+
)
_user_specified_namev/conv2d/kernel:-)
'
_user_specified_namem/conv2d/bias:-)
'
_user_specified_namev/conv2d/bias:1-
+
_user_specified_namem/conv2d_1/kernel:1-
+
_user_specified_namev/conv2d_1/kernel:/+
)
_user_specified_namem/conv2d_1/bias:/+
)
_user_specified_namev/conv2d_1/bias:1-
+
_user_specified_namem/conv2d_2/kernel:1-
+
_user_specified_namev/conv2d_2/kernel:/+
)
_user_specified_namem/conv2d_2/bias:/+
)
_user_specified_namev/conv2d_2/bias:1-
+
_user_specified_namem/conv2d_3/kernel:1-
+
_user_specified_namev/conv2d_3/kernel:/+
)
_user_specified_namem/conv2d_3/bias:/ +
)
_user_specified_namev/conv2d_3/bias:.!*
(
_user_specified_namem/dense/kernel:."*
(
_user_specified_namev/dense/kernel:,#(
&
_user_specified_namem/dense/bias:,$(
&
_user_specified_namev/dense/bias:0%,
*
_user_specified_namem/dense_1/kernel:0&,
*
_user_specified_namev/dense_1/kernel:.'*
(
_user_specified_namem/dense_1/bias:.(*
(
_user_specified_namev/dense_1/bias:0),
*
_user_specified_namem/dense_2/kernel:0*,
*
_user_specified_namev/dense_2/kernel:.+*
(
_user_specified_namem/dense_2/bias:.,*
(
_user_specified_namev/dense_2/bias:'-#
!
_user_specified_name	total_1:'.#
!
_user_specified_name	count_1:%/!

_user_specified_nametotal:%0!

_user_specified_namecount:=19

_output_shapes
: 

_user_specified_nameConst
Н

Ш
B__inference_dense_1_layer_call_and_return_conditional_losses_25700

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┘
`
B__inference_dropout_layer_call_and_return_conditional_losses_25293

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ь
Ћ
%__inference_dense_layer_call_fn_25642

inputs
unknown:
ђ$ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_25191p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ$: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ$
 
_user_specified_nameinputs:%!

_user_specified_name25636:%!

_user_specified_name25638
м
b
)__inference_dropout_1_layer_call_fn_25705

inputs
identityѕбStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_25237p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
њ
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_25592

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
х
I
-__inference_max_pooling2d_layer_call_fn_25527

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_25068Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╣
K
/__inference_max_pooling2d_3_layer_call_fn_25617

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_25098Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
М

З
@__inference_dense_layer_call_and_return_conditional_losses_25191

inputs2
matmul_readvariableop_resource:
ђ$ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђ$ђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ$
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ї=
х
E__inference_sequential_layer_call_and_return_conditional_losses_25312
conv2d_input&
conv2d_25259:
conv2d_25261:(
conv2d_1_25265: 
conv2d_1_25267: (
conv2d_2_25271: @
conv2d_2_25273:@)
conv2d_3_25277:@ђ
conv2d_3_25279:	ђ
dense_25284:
ђ$ђ
dense_25286:	ђ!
dense_1_25295:
ђђ
dense_1_25297:	ђ!
dense_2_25306:
ђИ
dense_2_25308:	И
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallб conv2d_3/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallбdense_2/StatefulPartitionedCallШ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_25259conv2d_25261*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_25116ь
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_25068ў
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_25265conv2d_1_25267*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25133з
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_25078џ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_25271conv2d_2_25273*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25150з
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_25088Џ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_25277conv2d_3_25279*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_25167З
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_25098█
flatten/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_25179 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_25284dense_25286*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_25191┘
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_25293Є
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_25295dense_1_25297*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_25220▀
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_25304Ѕ
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_25306dense_2_25308*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         И*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_25249x
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Иљ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         dd: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input:%!

_user_specified_name25259:%!

_user_specified_name25261:%!

_user_specified_name25265:%!

_user_specified_name25267:%!

_user_specified_name25271:%!

_user_specified_name25273:%!

_user_specified_name25277:%!

_user_specified_name25279:%	!

_user_specified_name25284:%
!

_user_specified_name25286:%!

_user_specified_name25295:%!

_user_specified_name25297:%!

_user_specified_name25306:%!

_user_specified_name25308
┌

Ш
B__inference_dense_2_layer_call_and_return_conditional_losses_25249

inputs2
matmul_readvariableop_resource:
ђИ.
biasadd_readvariableop_resource:	И
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђИ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Иs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:И*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ИW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:         Иa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:         ИS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ъ

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_25237

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
к
^
B__inference_flatten_layer_call_and_return_conditional_losses_25633

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ$Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
▓
Ч
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25582

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
▓
Ч
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25133

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22 *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         22 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         22 S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ю

a
B__inference_dropout_layer_call_and_return_conditional_losses_25208

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
њ
Ј
*__inference_sequential_layer_call_fn_25345
conv2d_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@ђ
	unknown_6:	ђ
	unknown_7:
ђ$ђ
	unknown_8:	ђ
	unknown_9:
ђђ

unknown_10:	ђ

unknown_11:
ђИ

unknown_12:	И
identityѕбStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         И*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25256p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         И<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         dd: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input:%!

_user_specified_name25315:%!

_user_specified_name25317:%!

_user_specified_name25319:%!

_user_specified_name25321:%!

_user_specified_name25323:%!

_user_specified_name25325:%!

_user_specified_name25327:%!

_user_specified_name25329:%	!

_user_specified_name25331:%
!

_user_specified_name25333:%!

_user_specified_name25335:%!

_user_specified_name25337:%!

_user_specified_name25339:%!

_user_specified_name25341
М

З
@__inference_dense_layer_call_and_return_conditional_losses_25653

inputs2
matmul_readvariableop_resource:
ђ$ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђ$ђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ$
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
а
C
'__inference_dropout_layer_call_fn_25663

inputs
identity▒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_25293a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ў
Ъ
(__inference_conv2d_3_layer_call_fn_25601

inputs"
unknown:@ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_25167x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:%!

_user_specified_name25595:%!

_user_specified_name25597
░
Щ
A__inference_conv2d_layer_call_and_return_conditional_losses_25116

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ddX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ddi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ddS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
░
Щ
A__inference_conv2d_layer_call_and_return_conditional_losses_25522

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ddX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ddi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ddS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
║
■
C__inference_conv2d_3_layer_call_and_return_conditional_losses_25612

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Н

Ш
B__inference_dense_1_layer_call_and_return_conditional_losses_25220

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Љ
Џ
&__inference_conv2d_layer_call_fn_25511

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_25116w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         dd<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs:%!

_user_specified_name25505:%!

_user_specified_name25507
уZ
ѓ
 __inference__wrapped_model_25063
conv2d_inputJ
0sequential_conv2d_conv2d_readvariableop_resource:?
1sequential_conv2d_biasadd_readvariableop_resource:L
2sequential_conv2d_1_conv2d_readvariableop_resource: A
3sequential_conv2d_1_biasadd_readvariableop_resource: L
2sequential_conv2d_2_conv2d_readvariableop_resource: @A
3sequential_conv2d_2_biasadd_readvariableop_resource:@M
2sequential_conv2d_3_conv2d_readvariableop_resource:@ђB
3sequential_conv2d_3_biasadd_readvariableop_resource:	ђC
/sequential_dense_matmul_readvariableop_resource:
ђ$ђ?
0sequential_dense_biasadd_readvariableop_resource:	ђE
1sequential_dense_1_matmul_readvariableop_resource:
ђђA
2sequential_dense_1_biasadd_readvariableop_resource:	ђE
1sequential_dense_2_matmul_readvariableop_resource:
ђИA
2sequential_dense_2_biasadd_readvariableop_resource:	И
identityѕб(sequential/conv2d/BiasAdd/ReadVariableOpб'sequential/conv2d/Conv2D/ReadVariableOpб*sequential/conv2d_1/BiasAdd/ReadVariableOpб)sequential/conv2d_1/Conv2D/ReadVariableOpб*sequential/conv2d_2/BiasAdd/ReadVariableOpб)sequential/conv2d_2/Conv2D/ReadVariableOpб*sequential/conv2d_3/BiasAdd/ReadVariableOpб)sequential/conv2d_3/Conv2D/ReadVariableOpб'sequential/dense/BiasAdd/ReadVariableOpб&sequential/dense/MatMul/ReadVariableOpб)sequential/dense_1/BiasAdd/ReadVariableOpб(sequential/dense_1/MatMul/ReadVariableOpб)sequential/dense_2/BiasAdd/ReadVariableOpб(sequential/dense_2/MatMul/ReadVariableOpа
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0├
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd*
paddingSAME*
strides
ќ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0│
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd|
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         ddЙ
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:         22*
ksize
*
paddingVALID*
strides
ц
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0С
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22 *
paddingSAME*
strides
џ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╣
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22 ђ
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         22 ┬
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
ц
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Т
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
џ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╣
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @ђ
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         @┬
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Ц
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0у
sequential/conv2d_3/Conv2DConv2D+sequential/max_pooling2d_2/MaxPool:output:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Џ
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0║
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђЂ
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ├
"sequential/max_pooling2d_3/MaxPoolMaxPool&sequential/conv2d_3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       е
sequential/flatten/ReshapeReshape+sequential/max_pooling2d_3/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:         ђ$ў
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
ђ$ђ*
dtype0Е
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЋ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ф
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ
sequential/dropout/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:         ђю
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0«
sequential/dense_1/MatMulMatMul$sequential/dropout/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЎ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0░
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђw
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЃ
sequential/dropout_1/IdentityIdentity%sequential/dense_1/Relu:activations:0*
T0*(
_output_shapes
:         ђю
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ђИ*
dtype0░
sequential/dense_2/MatMulMatMul&sequential/dropout_1/Identity:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ИЎ
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:И*
dtype0░
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         И}
sequential/dense_2/SoftmaxSoftmax#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         Иt
IdentityIdentity$sequential/dense_2/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:         ИЃ
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         dd: : : : : : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ћ
Ю
(__inference_conv2d_1_layer_call_fn_25541

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25133w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         22 <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs:%!

_user_specified_name25535:%!

_user_specified_name25537
┘
`
B__inference_dropout_layer_call_and_return_conditional_losses_25680

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
█
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_25727

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
к
^
B__inference_flatten_layer_call_and_return_conditional_losses_25179

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ$Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
▓
Ч
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25552

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22 *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         22 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         22 S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
њ
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_25078

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ю

a
B__inference_dropout_layer_call_and_return_conditional_losses_25675

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
њ
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_25088

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ћ
Ю
(__inference_conv2d_2_layer_call_fn_25571

inputs!
unknown: @
	unknown_0:@
identityѕбStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25150w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs:%!

_user_specified_name25565:%!

_user_specified_name25567
║
■
C__inference_conv2d_3_layer_call_and_return_conditional_losses_25167

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
љ
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_25532

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ип
Н
!__inference__traced_restore_26210
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:<
"assignvariableop_2_conv2d_1_kernel: .
 assignvariableop_3_conv2d_1_bias: <
"assignvariableop_4_conv2d_2_kernel: @.
 assignvariableop_5_conv2d_2_bias:@=
"assignvariableop_6_conv2d_3_kernel:@ђ/
 assignvariableop_7_conv2d_3_bias:	ђ3
assignvariableop_8_dense_kernel:
ђ$ђ,
assignvariableop_9_dense_bias:	ђ6
"assignvariableop_10_dense_1_kernel:
ђђ/
 assignvariableop_11_dense_1_bias:	ђ6
"assignvariableop_12_dense_2_kernel:
ђИ/
 assignvariableop_13_dense_2_bias:	И'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: =
#assignvariableop_16_m_conv2d_kernel:=
#assignvariableop_17_v_conv2d_kernel:/
!assignvariableop_18_m_conv2d_bias:/
!assignvariableop_19_v_conv2d_bias:?
%assignvariableop_20_m_conv2d_1_kernel: ?
%assignvariableop_21_v_conv2d_1_kernel: 1
#assignvariableop_22_m_conv2d_1_bias: 1
#assignvariableop_23_v_conv2d_1_bias: ?
%assignvariableop_24_m_conv2d_2_kernel: @?
%assignvariableop_25_v_conv2d_2_kernel: @1
#assignvariableop_26_m_conv2d_2_bias:@1
#assignvariableop_27_v_conv2d_2_bias:@@
%assignvariableop_28_m_conv2d_3_kernel:@ђ@
%assignvariableop_29_v_conv2d_3_kernel:@ђ2
#assignvariableop_30_m_conv2d_3_bias:	ђ2
#assignvariableop_31_v_conv2d_3_bias:	ђ6
"assignvariableop_32_m_dense_kernel:
ђ$ђ6
"assignvariableop_33_v_dense_kernel:
ђ$ђ/
 assignvariableop_34_m_dense_bias:	ђ/
 assignvariableop_35_v_dense_bias:	ђ8
$assignvariableop_36_m_dense_1_kernel:
ђђ8
$assignvariableop_37_v_dense_1_kernel:
ђђ1
"assignvariableop_38_m_dense_1_bias:	ђ1
"assignvariableop_39_v_dense_1_bias:	ђ8
$assignvariableop_40_m_dense_2_kernel:
ђИ8
$assignvariableop_41_v_dense_2_kernel:
ђИ1
"assignvariableop_42_m_dense_2_bias:	И1
"assignvariableop_43_v_dense_2_bias:	И%
assignvariableop_44_total_1: %
assignvariableop_45_count_1: #
assignvariableop_46_total: #
assignvariableop_47_count: 
identity_49ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ш
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*Џ
valueЉBј1B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHм
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ќ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*┌
_output_shapesК
─:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
321	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_1_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_1_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:Х
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_16AssignVariableOp#assignvariableop_16_m_conv2d_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_17AssignVariableOp#assignvariableop_17_v_conv2d_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_18AssignVariableOp!assignvariableop_18_m_conv2d_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_19AssignVariableOp!assignvariableop_19_v_conv2d_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_20AssignVariableOp%assignvariableop_20_m_conv2d_1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_21AssignVariableOp%assignvariableop_21_v_conv2d_1_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_22AssignVariableOp#assignvariableop_22_m_conv2d_1_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_23AssignVariableOp#assignvariableop_23_v_conv2d_1_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_24AssignVariableOp%assignvariableop_24_m_conv2d_2_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_25AssignVariableOp%assignvariableop_25_v_conv2d_2_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_26AssignVariableOp#assignvariableop_26_m_conv2d_2_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_27AssignVariableOp#assignvariableop_27_v_conv2d_2_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_28AssignVariableOp%assignvariableop_28_m_conv2d_3_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_29AssignVariableOp%assignvariableop_29_v_conv2d_3_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_30AssignVariableOp#assignvariableop_30_m_conv2d_3_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_31AssignVariableOp#assignvariableop_31_v_conv2d_3_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_32AssignVariableOp"assignvariableop_32_m_dense_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_33AssignVariableOp"assignvariableop_33_v_dense_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_34AssignVariableOp assignvariableop_34_m_dense_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_35AssignVariableOp assignvariableop_35_v_dense_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_36AssignVariableOp$assignvariableop_36_m_dense_1_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_37AssignVariableOp$assignvariableop_37_v_dense_1_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_38AssignVariableOp"assignvariableop_38_m_dense_1_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_39AssignVariableOp"assignvariableop_39_v_dense_1_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_40AssignVariableOp$assignvariableop_40_m_dense_2_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_41AssignVariableOp$assignvariableop_41_v_dense_2_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_42AssignVariableOp"assignvariableop_42_m_dense_2_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_43AssignVariableOp"assignvariableop_43_v_dense_2_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_44AssignVariableOpassignvariableop_44_total_1Identity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_45AssignVariableOpassignvariableop_45_count_1Identity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_46AssignVariableOpassignvariableop_46_totalIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_47AssignVariableOpassignvariableop_47_countIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 №
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_49IdentityIdentity_48:output:0^NoOp_1*
T0*
_output_shapes
: И
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_49Identity_49:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_3/bias:,	(
&
_user_specified_namedense/kernel:*
&
$
_user_specified_name
dense/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_2/kernel:,(
&
_user_specified_namedense_2/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:/+
)
_user_specified_namem/conv2d/kernel:/+
)
_user_specified_namev/conv2d/kernel:-)
'
_user_specified_namem/conv2d/bias:-)
'
_user_specified_namev/conv2d/bias:1-
+
_user_specified_namem/conv2d_1/kernel:1-
+
_user_specified_namev/conv2d_1/kernel:/+
)
_user_specified_namem/conv2d_1/bias:/+
)
_user_specified_namev/conv2d_1/bias:1-
+
_user_specified_namem/conv2d_2/kernel:1-
+
_user_specified_namev/conv2d_2/kernel:/+
)
_user_specified_namem/conv2d_2/bias:/+
)
_user_specified_namev/conv2d_2/bias:1-
+
_user_specified_namem/conv2d_3/kernel:1-
+
_user_specified_namev/conv2d_3/kernel:/+
)
_user_specified_namem/conv2d_3/bias:/ +
)
_user_specified_namev/conv2d_3/bias:.!*
(
_user_specified_namem/dense/kernel:."*
(
_user_specified_namev/dense/kernel:,#(
&
_user_specified_namem/dense/bias:,$(
&
_user_specified_namev/dense/bias:0%,
*
_user_specified_namem/dense_1/kernel:0&,
*
_user_specified_namev/dense_1/kernel:.'*
(
_user_specified_namem/dense_1/bias:.(*
(
_user_specified_namev/dense_1/bias:0),
*
_user_specified_namem/dense_2/kernel:0*,
*
_user_specified_namev/dense_2/kernel:.+*
(
_user_specified_namem/dense_2/bias:.,*
(
_user_specified_namev/dense_2/bias:'-#
!
_user_specified_name	total_1:'.#
!
_user_specified_name	count_1:%/!

_user_specified_nametotal:%0!

_user_specified_namecount
█
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_25304

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
┌

Ш
B__inference_dense_2_layer_call_and_return_conditional_losses_25747

inputs2
matmul_readvariableop_resource:
ђИ.
biasadd_readvariableop_resource:	И
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђИ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Иs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:И*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ИW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:         Иa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:         ИS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
░
C
'__inference_flatten_layer_call_fn_25627

inputs
identity▒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_25179a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ы
Ќ
'__inference_dense_2_layer_call_fn_25736

inputs
unknown:
ђИ
	unknown_0:	И
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         И*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_25249p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         И<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:%!

_user_specified_name25730:%!

_user_specified_name25732
Ъ

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_25722

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs"ьL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*й
serving_defaultЕ
M
conv2d_input=
serving_default_conv2d_input:0         dd<
dense_21
StatefulPartitionedCall:0         Иtensorflow/serving/predict:ши
о
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
П
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
  _jit_compiled_convolution_op"
_tf_keras_layer
Ц
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
П
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op"
_tf_keras_layer
Ц
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
П
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op"
_tf_keras_layer
Ц
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
П
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias
 M_jit_compiled_convolution_op"
_tf_keras_layer
Ц
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias"
_tf_keras_layer
╝
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_random_generator"
_tf_keras_layer
╗
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias"
_tf_keras_layer
╝
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
w_random_generator"
_tf_keras_layer
╗
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias"
_tf_keras_layer
є
0
1
-2
.3
<4
=5
K6
L7
`8
a9
o10
p11
~12
13"
trackable_list_wrapper
є
0
1
-2
.3
<4
=5
K6
L7
`8
a9
o10
p11
~12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
¤
ђnon_trainable_variables
Ђlayers
ѓmetrics
 Ѓlayer_regularization_losses
ёlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╦
Ёtrace_0
єtrace_12љ
*__inference_sequential_layer_call_fn_25345
*__inference_sequential_layer_call_fn_25378х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЁtrace_0zєtrace_1
Ђ
Єtrace_0
ѕtrace_12к
E__inference_sequential_layer_call_and_return_conditional_losses_25256
E__inference_sequential_layer_call_and_return_conditional_losses_25312х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЄtrace_0zѕtrace_1
лB═
 __inference__wrapped_model_25063conv2d_input"ў
Љ▓Ї
FullArgSpec
argsџ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Б
Ѕ
_variables
і_iterations
І_learning_rate
ї_index_dict
Ї
_momentums
ј_velocities
Ј_update_step_xla"
experimentalOptimizer
-
љserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Р
ќtrace_02├
&__inference_conv2d_layer_call_fn_25511ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zќtrace_0
§
Ќtrace_02я
A__inference_conv2d_layer_call_and_return_conditional_losses_25522ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЌtrace_0
':%2conv2d/kernel
:2conv2d/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ўnon_trainable_variables
Ўlayers
џmetrics
 Џlayer_regularization_losses
юlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
ж
Юtrace_02╩
-__inference_max_pooling2d_layer_call_fn_25527ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЮtrace_0
ё
ъtrace_02т
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_25532ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zъtrace_0
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ъnon_trainable_variables
аlayers
Аmetrics
 бlayer_regularization_losses
Бlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
С
цtrace_02┼
(__inference_conv2d_1_layer_call_fn_25541ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zцtrace_0
 
Цtrace_02Я
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25552ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЦtrace_0
):' 2conv2d_1/kernel
: 2conv2d_1/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
дnon_trainable_variables
Дlayers
еmetrics
 Еlayer_regularization_losses
фlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
в
Фtrace_02╠
/__inference_max_pooling2d_1_layer_call_fn_25557ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zФtrace_0
є
гtrace_02у
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_25562ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zгtrace_0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Гnon_trainable_variables
«layers
»metrics
 ░layer_regularization_losses
▒layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
С
▓trace_02┼
(__inference_conv2d_2_layer_call_fn_25571ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▓trace_0
 
│trace_02Я
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25582ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z│trace_0
):' @2conv2d_2/kernel
:@2conv2d_2/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┤non_trainable_variables
хlayers
Хmetrics
 иlayer_regularization_losses
Иlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
в
╣trace_02╠
/__inference_max_pooling2d_2_layer_call_fn_25587ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╣trace_0
є
║trace_02у
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_25592ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z║trace_0
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╗non_trainable_variables
╝layers
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
С
└trace_02┼
(__inference_conv2d_3_layer_call_fn_25601ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z└trace_0
 
┴trace_02Я
C__inference_conv2d_3_layer_call_and_return_conditional_losses_25612ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┴trace_0
*:(@ђ2conv2d_3/kernel
:ђ2conv2d_3/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
кlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
в
Кtrace_02╠
/__inference_max_pooling2d_3_layer_call_fn_25617ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zКtrace_0
є
╚trace_02у
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_25622ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╚trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
с
╬trace_02─
'__inference_flatten_layer_call_fn_25627ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╬trace_0
■
¤trace_02▀
B__inference_flatten_layer_call_and_return_conditional_losses_25633ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z¤trace_0
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
лnon_trainable_variables
Лlayers
мmetrics
 Мlayer_regularization_losses
нlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
р
Нtrace_02┬
%__inference_dense_layer_call_fn_25642ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zНtrace_0
Ч
оtrace_02П
@__inference_dense_layer_call_and_return_conditional_losses_25653ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zоtrace_0
 :
ђ$ђ2dense/kernel
:ђ2
dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Оnon_trainable_variables
пlayers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
╣
▄trace_0
Пtrace_12■
'__inference_dropout_layer_call_fn_25658
'__inference_dropout_layer_call_fn_25663Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▄trace_0zПtrace_1
№
яtrace_0
▀trace_12┤
B__inference_dropout_layer_call_and_return_conditional_losses_25675
B__inference_dropout_layer_call_and_return_conditional_losses_25680Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zяtrace_0z▀trace_1
"
_generic_user_object
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Яnon_trainable_variables
рlayers
Рmetrics
 сlayer_regularization_losses
Сlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
с
тtrace_02─
'__inference_dense_1_layer_call_fn_25689ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zтtrace_0
■
Тtrace_02▀
B__inference_dense_1_layer_call_and_return_conditional_losses_25700ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zТtrace_0
": 
ђђ2dense_1/kernel
:ђ2dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
уnon_trainable_variables
Уlayers
жmetrics
 Жlayer_regularization_losses
вlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
й
Вtrace_0
ьtrace_12ѓ
)__inference_dropout_1_layer_call_fn_25705
)__inference_dropout_1_layer_call_fn_25710Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zВtrace_0zьtrace_1
з
Ьtrace_0
№trace_12И
D__inference_dropout_1_layer_call_and_return_conditional_losses_25722
D__inference_dropout_1_layer_call_and_return_conditional_losses_25727Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЬtrace_0z№trace_1
"
_generic_user_object
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
­non_trainable_variables
ыlayers
Ыmetrics
 зlayer_regularization_losses
Зlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
с
шtrace_02─
'__inference_dense_2_layer_call_fn_25736ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zшtrace_0
■
Шtrace_02▀
B__inference_dense_2_layer_call_and_return_conditional_losses_25747ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zШtrace_0
": 
ђИ2dense_2/kernel
:И2dense_2/bias
 "
trackable_list_wrapper
є
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
0
э0
Э1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЬBв
*__inference_sequential_layer_call_fn_25345conv2d_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЬBв
*__inference_sequential_layer_call_fn_25378conv2d_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЅBє
E__inference_sequential_layer_call_and_return_conditional_losses_25256conv2d_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЅBє
E__inference_sequential_layer_call_and_return_conditional_losses_25312conv2d_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Џ
і0
щ1
Щ2
ч3
Ч4
§5
■6
 7
ђ8
Ђ9
ѓ10
Ѓ11
ё12
Ё13
є14
Є15
ѕ16
Ѕ17
і18
І19
ї20
Ї21
ј22
Ј23
љ24
Љ25
њ26
Њ27
ћ28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
ћ
щ0
ч1
§2
 3
Ђ4
Ѓ5
Ё6
Є7
Ѕ8
І9
Ї10
Ј11
Љ12
Њ13"
trackable_list_wrapper
ћ
Щ0
Ч1
■2
ђ3
ѓ4
ё5
є6
ѕ7
і8
ї9
ј10
љ11
њ12
ћ13"
trackable_list_wrapper
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
┘Bо
#__inference_signature_wrapper_25502conv2d_input"ъ
Ќ▓Њ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 !

kwonlyargsџ
jconv2d_input
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
лB═
&__inference_conv2d_layer_call_fn_25511inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
вBУ
A__inference_conv2d_layer_call_and_return_conditional_losses_25522inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ОBн
-__inference_max_pooling2d_layer_call_fn_25527inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЫB№
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_25532inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мB¤
(__inference_conv2d_1_layer_call_fn_25541inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25552inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┘Bо
/__inference_max_pooling2d_1_layer_call_fn_25557inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_25562inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мB¤
(__inference_conv2d_2_layer_call_fn_25571inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25582inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┘Bо
/__inference_max_pooling2d_2_layer_call_fn_25587inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_25592inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мB¤
(__inference_conv2d_3_layer_call_fn_25601inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_25612inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┘Bо
/__inference_max_pooling2d_3_layer_call_fn_25617inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_25622inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЛB╬
'__inference_flatten_layer_call_fn_25627inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ВBж
B__inference_flatten_layer_call_and_return_conditional_losses_25633inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¤B╠
%__inference_dense_layer_call_fn_25642inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЖBу
@__inference_dense_layer_call_and_return_conditional_losses_25653inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ПB┌
'__inference_dropout_layer_call_fn_25658inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ПB┌
'__inference_dropout_layer_call_fn_25663inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
B__inference_dropout_layer_call_and_return_conditional_losses_25675inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
B__inference_dropout_layer_call_and_return_conditional_losses_25680inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЛB╬
'__inference_dense_1_layer_call_fn_25689inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ВBж
B__inference_dense_1_layer_call_and_return_conditional_losses_25700inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
)__inference_dropout_1_layer_call_fn_25705inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
▀B▄
)__inference_dropout_1_layer_call_fn_25710inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
D__inference_dropout_1_layer_call_and_return_conditional_losses_25722inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
D__inference_dropout_1_layer_call_and_return_conditional_losses_25727inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЛB╬
'__inference_dense_2_layer_call_fn_25736inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ВBж
B__inference_dense_2_layer_call_and_return_conditional_losses_25747inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
Ћ	variables
ќ	keras_api

Ќtotal

ўcount"
_tf_keras_metric
c
Ў	variables
џ	keras_api

Џtotal

юcount
Ю
_fn_kwargs"
_tf_keras_metric
':%2m/conv2d/kernel
':%2v/conv2d/kernel
:2m/conv2d/bias
:2v/conv2d/bias
):' 2m/conv2d_1/kernel
):' 2v/conv2d_1/kernel
: 2m/conv2d_1/bias
: 2v/conv2d_1/bias
):' @2m/conv2d_2/kernel
):' @2v/conv2d_2/kernel
:@2m/conv2d_2/bias
:@2v/conv2d_2/bias
*:(@ђ2m/conv2d_3/kernel
*:(@ђ2v/conv2d_3/kernel
:ђ2m/conv2d_3/bias
:ђ2v/conv2d_3/bias
 :
ђ$ђ2m/dense/kernel
 :
ђ$ђ2v/dense/kernel
:ђ2m/dense/bias
:ђ2v/dense/bias
": 
ђђ2m/dense_1/kernel
": 
ђђ2v/dense_1/kernel
:ђ2m/dense_1/bias
:ђ2v/dense_1/bias
": 
ђИ2m/dense_2/kernel
": 
ђИ2v/dense_2/kernel
:И2m/dense_2/bias
:И2v/dense_2/bias
0
Ќ0
ў1"
trackable_list_wrapper
.
Ћ	variables"
_generic_user_object
:  (2total
:  (2count
0
Џ0
ю1"
trackable_list_wrapper
.
Ў	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperе
 __inference__wrapped_model_25063Ѓ-.<=KL`aop~=б:
3б0
.і+
conv2d_input         dd
ф "2ф/
-
dense_2"і
dense_2         И║
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25552s-.7б4
-б*
(і%
inputs         22
ф "4б1
*і'
tensor_0         22 
џ ћ
(__inference_conv2d_1_layer_call_fn_25541h-.7б4
-б*
(і%
inputs         22
ф ")і&
unknown         22 ║
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25582s<=7б4
-б*
(і%
inputs          
ф "4б1
*і'
tensor_0         @
џ ћ
(__inference_conv2d_2_layer_call_fn_25571h<=7б4
-б*
(і%
inputs          
ф ")і&
unknown         @╗
C__inference_conv2d_3_layer_call_and_return_conditional_losses_25612tKL7б4
-б*
(і%
inputs         @
ф "5б2
+і(
tensor_0         ђ
џ Ћ
(__inference_conv2d_3_layer_call_fn_25601iKL7б4
-б*
(і%
inputs         @
ф "*і'
unknown         ђИ
A__inference_conv2d_layer_call_and_return_conditional_losses_25522s7б4
-б*
(і%
inputs         dd
ф "4б1
*і'
tensor_0         dd
џ њ
&__inference_conv2d_layer_call_fn_25511h7б4
-б*
(і%
inputs         dd
ф ")і&
unknown         ddФ
B__inference_dense_1_layer_call_and_return_conditional_losses_25700eop0б-
&б#
!і
inputs         ђ
ф "-б*
#і 
tensor_0         ђ
џ Ё
'__inference_dense_1_layer_call_fn_25689Zop0б-
&б#
!і
inputs         ђ
ф ""і
unknown         ђФ
B__inference_dense_2_layer_call_and_return_conditional_losses_25747e~0б-
&б#
!і
inputs         ђ
ф "-б*
#і 
tensor_0         И
џ Ё
'__inference_dense_2_layer_call_fn_25736Z~0б-
&б#
!і
inputs         ђ
ф ""і
unknown         ИЕ
@__inference_dense_layer_call_and_return_conditional_losses_25653e`a0б-
&б#
!і
inputs         ђ$
ф "-б*
#і 
tensor_0         ђ
џ Ѓ
%__inference_dense_layer_call_fn_25642Z`a0б-
&б#
!і
inputs         ђ$
ф ""і
unknown         ђГ
D__inference_dropout_1_layer_call_and_return_conditional_losses_25722e4б1
*б'
!і
inputs         ђ
p
ф "-б*
#і 
tensor_0         ђ
џ Г
D__inference_dropout_1_layer_call_and_return_conditional_losses_25727e4б1
*б'
!і
inputs         ђ
p 
ф "-б*
#і 
tensor_0         ђ
џ Є
)__inference_dropout_1_layer_call_fn_25705Z4б1
*б'
!і
inputs         ђ
p
ф ""і
unknown         ђЄ
)__inference_dropout_1_layer_call_fn_25710Z4б1
*б'
!і
inputs         ђ
p 
ф ""і
unknown         ђФ
B__inference_dropout_layer_call_and_return_conditional_losses_25675e4б1
*б'
!і
inputs         ђ
p
ф "-б*
#і 
tensor_0         ђ
џ Ф
B__inference_dropout_layer_call_and_return_conditional_losses_25680e4б1
*б'
!і
inputs         ђ
p 
ф "-б*
#і 
tensor_0         ђ
џ Ё
'__inference_dropout_layer_call_fn_25658Z4б1
*б'
!і
inputs         ђ
p
ф ""і
unknown         ђЁ
'__inference_dropout_layer_call_fn_25663Z4б1
*б'
!і
inputs         ђ
p 
ф ""і
unknown         ђ»
B__inference_flatten_layer_call_and_return_conditional_losses_25633i8б5
.б+
)і&
inputs         ђ
ф "-б*
#і 
tensor_0         ђ$
џ Ѕ
'__inference_flatten_layer_call_fn_25627^8б5
.б+
)і&
inputs         ђ
ф ""і
unknown         ђ$З
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_25562ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╬
/__inference_max_pooling2d_1_layer_call_fn_25557џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    З
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_25592ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╬
/__inference_max_pooling2d_2_layer_call_fn_25587џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    З
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_25622ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╬
/__inference_max_pooling2d_3_layer_call_fn_25617џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    Ы
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_25532ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╠
-__inference_max_pooling2d_layer_call_fn_25527џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    л
E__inference_sequential_layer_call_and_return_conditional_losses_25256є-.<=KL`aop~EбB
;б8
.і+
conv2d_input         dd
p

 
ф "-б*
#і 
tensor_0         И
џ л
E__inference_sequential_layer_call_and_return_conditional_losses_25312є-.<=KL`aop~EбB
;б8
.і+
conv2d_input         dd
p 

 
ф "-б*
#і 
tensor_0         И
џ Е
*__inference_sequential_layer_call_fn_25345{-.<=KL`aop~EбB
;б8
.і+
conv2d_input         dd
p

 
ф ""і
unknown         ИЕ
*__inference_sequential_layer_call_fn_25378{-.<=KL`aop~EбB
;б8
.і+
conv2d_input         dd
p 

 
ф ""і
unknown         И╗
#__inference_signature_wrapper_25502Њ-.<=KL`aop~MбJ
б 
Cф@
>
conv2d_input.і+
conv2d_input         dd"2ф/
-
dense_2"і
dense_2         И