??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_26/kernel
}
$conv2d_26/kernel/Read/ReadVariableOpReadVariableOpconv2d_26/kernel*&
_output_shapes
: *
dtype0
t
conv2d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_26/bias
m
"conv2d_26/bias/Read/ReadVariableOpReadVariableOpconv2d_26/bias*
_output_shapes
: *
dtype0
?
conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_27/kernel
}
$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_27/bias
m
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes
: *
dtype0
?
conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_28/kernel
}
$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_28/bias
m
"conv2d_28/bias/Read/ReadVariableOpReadVariableOpconv2d_28/bias*
_output_shapes
:@*
dtype0
?
conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_29/kernel
}
$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_29/bias
m
"conv2d_29/bias/Read/ReadVariableOpReadVariableOpconv2d_29/bias*
_output_shapes
:@*
dtype0
?
conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_30/kernel
~
$conv2d_30/kernel/Read/ReadVariableOpReadVariableOpconv2d_30/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_30/bias
n
"conv2d_30/bias/Read/ReadVariableOpReadVariableOpconv2d_30/bias*
_output_shapes	
:?*
dtype0
?
conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_31/kernel

$conv2d_31/kernel/Read/ReadVariableOpReadVariableOpconv2d_31/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_31/bias
n
"conv2d_31/bias/Read/ReadVariableOpReadVariableOpconv2d_31/bias*
_output_shapes	
:?*
dtype0
|
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?	?* 
shared_namedense_12/kernel
u
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel* 
_output_shapes
:
?	?*
dtype0
s
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_12/bias
l
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes	
:?*
dtype0
{
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_13/kernel
t
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes
:	?*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_26/kernel/m
?
+Adam/conv2d_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_26/bias/m
{
)Adam/conv2d_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_27/kernel/m
?
+Adam/conv2d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_27/bias/m
{
)Adam/conv2d_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_28/kernel/m
?
+Adam/conv2d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_28/bias/m
{
)Adam/conv2d_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_29/kernel/m
?
+Adam/conv2d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_29/bias/m
{
)Adam/conv2d_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_30/kernel/m
?
+Adam/conv2d_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_30/bias/m
|
)Adam/conv2d_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_31/kernel/m
?
+Adam/conv2d_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_31/bias/m
|
)Adam/conv2d_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?	?*'
shared_nameAdam/dense_12/kernel/m
?
*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m* 
_output_shapes
:
?	?*
dtype0
?
Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_12/bias/m
z
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_13/kernel/m
?
*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_26/kernel/v
?
+Adam/conv2d_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_26/bias/v
{
)Adam/conv2d_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_27/kernel/v
?
+Adam/conv2d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_27/bias/v
{
)Adam/conv2d_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_28/kernel/v
?
+Adam/conv2d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_28/bias/v
{
)Adam/conv2d_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_29/kernel/v
?
+Adam/conv2d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_29/bias/v
{
)Adam/conv2d_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_30/kernel/v
?
+Adam/conv2d_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_30/bias/v
|
)Adam/conv2d_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_31/kernel/v
?
+Adam/conv2d_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_31/bias/v
|
)Adam/conv2d_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?	?*'
shared_nameAdam/dense_12/kernel/v
?
*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v* 
_output_shapes
:
?	?*
dtype0
?
Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_12/bias/v
z
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_13/kernel/v
?
*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?]
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?]
value?]B?] B?\
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
 regularization_losses
!	variables
"trainable_variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'	variables
(trainable_variables
)	keras_api
h

*kernel
+bias
,regularization_losses
-	variables
.trainable_variables
/	keras_api
R
0regularization_losses
1	variables
2trainable_variables
3	keras_api
h

4kernel
5bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
h

:kernel
;bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
R
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
R
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
h

Hkernel
Ibias
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
R
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
h

Rkernel
Sbias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
?
Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_ratem?m?m?m?$m?%m?*m?+m?4m?5m?:m?;m?Hm?Im?Rm?Sm?v?v?v?v?$v?%v?*v?+v?4v?5v?:v?;v?Hv?Iv?Rv?Sv?
 
v
0
1
2
3
$4
%5
*6
+7
48
59
:10
;11
H12
I13
R14
S15
v
0
1
2
3
$4
%5
*6
+7
48
59
:10
;11
H12
I13
R14
S15
?
regularization_losses
]metrics
^layer_metrics

_layers
	variables
`layer_regularization_losses
anon_trainable_variables
trainable_variables
 
\Z
VARIABLE_VALUEconv2d_26/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_26/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
bmetrics
clayer_metrics

dlayers
	variables
elayer_regularization_losses
fnon_trainable_variables
trainable_variables
\Z
VARIABLE_VALUEconv2d_27/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_27/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
gmetrics
hlayer_metrics

ilayers
	variables
jlayer_regularization_losses
knon_trainable_variables
trainable_variables
 
 
 
?
 regularization_losses
lmetrics
mlayer_metrics

nlayers
!	variables
olayer_regularization_losses
pnon_trainable_variables
"trainable_variables
\Z
VARIABLE_VALUEconv2d_28/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_28/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
?
&regularization_losses
qmetrics
rlayer_metrics

slayers
'	variables
tlayer_regularization_losses
unon_trainable_variables
(trainable_variables
\Z
VARIABLE_VALUEconv2d_29/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_29/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

*0
+1

*0
+1
?
,regularization_losses
vmetrics
wlayer_metrics

xlayers
-	variables
ylayer_regularization_losses
znon_trainable_variables
.trainable_variables
 
 
 
?
0regularization_losses
{metrics
|layer_metrics

}layers
1	variables
~layer_regularization_losses
non_trainable_variables
2trainable_variables
\Z
VARIABLE_VALUEconv2d_30/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_30/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

40
51

40
51
?
6regularization_losses
?metrics
?layer_metrics
?layers
7	variables
 ?layer_regularization_losses
?non_trainable_variables
8trainable_variables
\Z
VARIABLE_VALUEconv2d_31/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_31/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1

:0
;1
?
<regularization_losses
?metrics
?layer_metrics
?layers
=	variables
 ?layer_regularization_losses
?non_trainable_variables
>trainable_variables
 
 
 
?
@regularization_losses
?metrics
?layer_metrics
?layers
A	variables
 ?layer_regularization_losses
?non_trainable_variables
Btrainable_variables
 
 
 
?
Dregularization_losses
?metrics
?layer_metrics
?layers
E	variables
 ?layer_regularization_losses
?non_trainable_variables
Ftrainable_variables
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

H0
I1

H0
I1
?
Jregularization_losses
?metrics
?layer_metrics
?layers
K	variables
 ?layer_regularization_losses
?non_trainable_variables
Ltrainable_variables
 
 
 
?
Nregularization_losses
?metrics
?layer_metrics
?layers
O	variables
 ?layer_regularization_losses
?non_trainable_variables
Ptrainable_variables
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_13/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

R0
S1
?
Tregularization_losses
?metrics
?layer_metrics
?layers
U	variables
 ?layer_regularization_losses
?non_trainable_variables
Vtrainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 
^
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}
VARIABLE_VALUEAdam/conv2d_26/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_26/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_27/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_27/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_28/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_28/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_29/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_29/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_30/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_30/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_31/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_31/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_26/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_26/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_27/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_27/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_28/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_28/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_29/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_29/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_30/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_30/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_31/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_31/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_26_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_26_inputconv2d_26/kernelconv2d_26/biasconv2d_27/kernelconv2d_27/biasconv2d_28/kernelconv2d_28/biasconv2d_29/kernelconv2d_29/biasconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_6968450
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_26/kernel/Read/ReadVariableOp"conv2d_26/bias/Read/ReadVariableOp$conv2d_27/kernel/Read/ReadVariableOp"conv2d_27/bias/Read/ReadVariableOp$conv2d_28/kernel/Read/ReadVariableOp"conv2d_28/bias/Read/ReadVariableOp$conv2d_29/kernel/Read/ReadVariableOp"conv2d_29/bias/Read/ReadVariableOp$conv2d_30/kernel/Read/ReadVariableOp"conv2d_30/bias/Read/ReadVariableOp$conv2d_31/kernel/Read/ReadVariableOp"conv2d_31/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_26/kernel/m/Read/ReadVariableOp)Adam/conv2d_26/bias/m/Read/ReadVariableOp+Adam/conv2d_27/kernel/m/Read/ReadVariableOp)Adam/conv2d_27/bias/m/Read/ReadVariableOp+Adam/conv2d_28/kernel/m/Read/ReadVariableOp)Adam/conv2d_28/bias/m/Read/ReadVariableOp+Adam/conv2d_29/kernel/m/Read/ReadVariableOp)Adam/conv2d_29/bias/m/Read/ReadVariableOp+Adam/conv2d_30/kernel/m/Read/ReadVariableOp)Adam/conv2d_30/bias/m/Read/ReadVariableOp+Adam/conv2d_31/kernel/m/Read/ReadVariableOp)Adam/conv2d_31/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp+Adam/conv2d_26/kernel/v/Read/ReadVariableOp)Adam/conv2d_26/bias/v/Read/ReadVariableOp+Adam/conv2d_27/kernel/v/Read/ReadVariableOp)Adam/conv2d_27/bias/v/Read/ReadVariableOp+Adam/conv2d_28/kernel/v/Read/ReadVariableOp)Adam/conv2d_28/bias/v/Read/ReadVariableOp+Adam/conv2d_29/kernel/v/Read/ReadVariableOp)Adam/conv2d_29/bias/v/Read/ReadVariableOp+Adam/conv2d_30/kernel/v/Read/ReadVariableOp)Adam/conv2d_30/bias/v/Read/ReadVariableOp+Adam/conv2d_31/kernel/v/Read/ReadVariableOp)Adam/conv2d_31/bias/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_6969300
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_26/kernelconv2d_26/biasconv2d_27/kernelconv2d_27/biasconv2d_28/kernelconv2d_28/biasconv2d_29/kernelconv2d_29/biasconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_26/kernel/mAdam/conv2d_26/bias/mAdam/conv2d_27/kernel/mAdam/conv2d_27/bias/mAdam/conv2d_28/kernel/mAdam/conv2d_28/bias/mAdam/conv2d_29/kernel/mAdam/conv2d_29/bias/mAdam/conv2d_30/kernel/mAdam/conv2d_30/bias/mAdam/conv2d_31/kernel/mAdam/conv2d_31/bias/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/mAdam/conv2d_26/kernel/vAdam/conv2d_26/bias/vAdam/conv2d_27/kernel/vAdam/conv2d_27/bias/vAdam/conv2d_28/kernel/vAdam/conv2d_28/bias/vAdam/conv2d_29/kernel/vAdam/conv2d_29/bias/vAdam/conv2d_30/kernel/vAdam/conv2d_30/bias/vAdam/conv2d_31/kernel/vAdam/conv2d_31/bias/vAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/v*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_6969481??
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_6968999

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?o
?
"__inference__wrapped_model_6967625
conv2d_26_input9
5sequential_6_conv2d_26_conv2d_readvariableop_resource:
6sequential_6_conv2d_26_biasadd_readvariableop_resource9
5sequential_6_conv2d_27_conv2d_readvariableop_resource:
6sequential_6_conv2d_27_biasadd_readvariableop_resource9
5sequential_6_conv2d_28_conv2d_readvariableop_resource:
6sequential_6_conv2d_28_biasadd_readvariableop_resource9
5sequential_6_conv2d_29_conv2d_readvariableop_resource:
6sequential_6_conv2d_29_biasadd_readvariableop_resource9
5sequential_6_conv2d_30_conv2d_readvariableop_resource:
6sequential_6_conv2d_30_biasadd_readvariableop_resource9
5sequential_6_conv2d_31_conv2d_readvariableop_resource:
6sequential_6_conv2d_31_biasadd_readvariableop_resource8
4sequential_6_dense_12_matmul_readvariableop_resource9
5sequential_6_dense_12_biasadd_readvariableop_resource8
4sequential_6_dense_13_matmul_readvariableop_resource9
5sequential_6_dense_13_biasadd_readvariableop_resource
identity??-sequential_6/conv2d_26/BiasAdd/ReadVariableOp?,sequential_6/conv2d_26/Conv2D/ReadVariableOp?-sequential_6/conv2d_27/BiasAdd/ReadVariableOp?,sequential_6/conv2d_27/Conv2D/ReadVariableOp?-sequential_6/conv2d_28/BiasAdd/ReadVariableOp?,sequential_6/conv2d_28/Conv2D/ReadVariableOp?-sequential_6/conv2d_29/BiasAdd/ReadVariableOp?,sequential_6/conv2d_29/Conv2D/ReadVariableOp?-sequential_6/conv2d_30/BiasAdd/ReadVariableOp?,sequential_6/conv2d_30/Conv2D/ReadVariableOp?-sequential_6/conv2d_31/BiasAdd/ReadVariableOp?,sequential_6/conv2d_31/Conv2D/ReadVariableOp?,sequential_6/dense_12/BiasAdd/ReadVariableOp?+sequential_6/dense_12/MatMul/ReadVariableOp?,sequential_6/dense_13/BiasAdd/ReadVariableOp?+sequential_6/dense_13/MatMul/ReadVariableOp?
,sequential_6/conv2d_26/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_6/conv2d_26/Conv2D/ReadVariableOp?
sequential_6/conv2d_26/Conv2DConv2Dconv2d_26_input4sequential_6/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
sequential_6/conv2d_26/Conv2D?
-sequential_6/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_6/conv2d_26/BiasAdd/ReadVariableOp?
sequential_6/conv2d_26/BiasAddBiasAdd&sequential_6/conv2d_26/Conv2D:output:05sequential_6/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2 
sequential_6/conv2d_26/BiasAdd?
sequential_6/conv2d_26/ReluRelu'sequential_6/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential_6/conv2d_26/Relu?
,sequential_6/conv2d_27/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02.
,sequential_6/conv2d_27/Conv2D/ReadVariableOp?
sequential_6/conv2d_27/Conv2DConv2D)sequential_6/conv2d_26/Relu:activations:04sequential_6/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
sequential_6/conv2d_27/Conv2D?
-sequential_6/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_6/conv2d_27/BiasAdd/ReadVariableOp?
sequential_6/conv2d_27/BiasAddBiasAdd&sequential_6/conv2d_27/Conv2D:output:05sequential_6/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2 
sequential_6/conv2d_27/BiasAdd?
sequential_6/conv2d_27/ReluRelu'sequential_6/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential_6/conv2d_27/Relu?
%sequential_6/max_pooling2d_13/MaxPoolMaxPool)sequential_6/conv2d_27/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2'
%sequential_6/max_pooling2d_13/MaxPool?
,sequential_6/conv2d_28/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_6/conv2d_28/Conv2D/ReadVariableOp?
sequential_6/conv2d_28/Conv2DConv2D.sequential_6/max_pooling2d_13/MaxPool:output:04sequential_6/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
sequential_6/conv2d_28/Conv2D?
-sequential_6/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_6/conv2d_28/BiasAdd/ReadVariableOp?
sequential_6/conv2d_28/BiasAddBiasAdd&sequential_6/conv2d_28/Conv2D:output:05sequential_6/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
sequential_6/conv2d_28/BiasAdd?
sequential_6/conv2d_28/ReluRelu'sequential_6/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_6/conv2d_28/Relu?
,sequential_6/conv2d_29/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_6/conv2d_29/Conv2D/ReadVariableOp?
sequential_6/conv2d_29/Conv2DConv2D)sequential_6/conv2d_28/Relu:activations:04sequential_6/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
sequential_6/conv2d_29/Conv2D?
-sequential_6/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_6/conv2d_29/BiasAdd/ReadVariableOp?
sequential_6/conv2d_29/BiasAddBiasAdd&sequential_6/conv2d_29/Conv2D:output:05sequential_6/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
sequential_6/conv2d_29/BiasAdd?
sequential_6/conv2d_29/ReluRelu'sequential_6/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_6/conv2d_29/Relu?
%sequential_6/max_pooling2d_14/MaxPoolMaxPool)sequential_6/conv2d_29/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2'
%sequential_6/max_pooling2d_14/MaxPool?
,sequential_6/conv2d_30/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_30_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02.
,sequential_6/conv2d_30/Conv2D/ReadVariableOp?
sequential_6/conv2d_30/Conv2DConv2D.sequential_6/max_pooling2d_14/MaxPool:output:04sequential_6/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_6/conv2d_30/Conv2D?
-sequential_6/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_6/conv2d_30/BiasAdd/ReadVariableOp?
sequential_6/conv2d_30/BiasAddBiasAdd&sequential_6/conv2d_30/Conv2D:output:05sequential_6/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_6/conv2d_30/BiasAdd?
sequential_6/conv2d_30/ReluRelu'sequential_6/conv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_6/conv2d_30/Relu?
,sequential_6/conv2d_31/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_31_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,sequential_6/conv2d_31/Conv2D/ReadVariableOp?
sequential_6/conv2d_31/Conv2DConv2D)sequential_6/conv2d_30/Relu:activations:04sequential_6/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_6/conv2d_31/Conv2D?
-sequential_6/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_31_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_6/conv2d_31/BiasAdd/ReadVariableOp?
sequential_6/conv2d_31/BiasAddBiasAdd&sequential_6/conv2d_31/Conv2D:output:05sequential_6/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_6/conv2d_31/BiasAdd?
sequential_6/conv2d_31/ReluRelu'sequential_6/conv2d_31/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_6/conv2d_31/Relu?
%sequential_6/max_pooling2d_15/MaxPoolMaxPool)sequential_6/conv2d_31/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2'
%sequential_6/max_pooling2d_15/MaxPool?
sequential_6/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
sequential_6/flatten_6/Const?
sequential_6/flatten_6/ReshapeReshape.sequential_6/max_pooling2d_15/MaxPool:output:0%sequential_6/flatten_6/Const:output:0*
T0*(
_output_shapes
:??????????	2 
sequential_6/flatten_6/Reshape?
+sequential_6/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_12_matmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype02-
+sequential_6/dense_12/MatMul/ReadVariableOp?
sequential_6/dense_12/MatMulMatMul'sequential_6/flatten_6/Reshape:output:03sequential_6/dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_6/dense_12/MatMul?
,sequential_6/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_6/dense_12/BiasAdd/ReadVariableOp?
sequential_6/dense_12/BiasAddBiasAdd&sequential_6/dense_12/MatMul:product:04sequential_6/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_6/dense_12/BiasAdd?
sequential_6/dense_12/ReluRelu&sequential_6/dense_12/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_6/dense_12/Relu?
sequential_6/dropout_1/IdentityIdentity(sequential_6/dense_12/Relu:activations:0*
T0*(
_output_shapes
:??????????2!
sequential_6/dropout_1/Identity?
+sequential_6/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_13_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02-
+sequential_6/dense_13/MatMul/ReadVariableOp?
sequential_6/dense_13/MatMulMatMul(sequential_6/dropout_1/Identity:output:03sequential_6/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_13/MatMul?
,sequential_6/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_6/dense_13/BiasAdd/ReadVariableOp?
sequential_6/dense_13/BiasAddBiasAdd&sequential_6/dense_13/MatMul:product:04sequential_6/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_13/BiasAdd?
sequential_6/dense_13/SoftmaxSoftmax&sequential_6/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_13/Softmax?
IdentityIdentity'sequential_6/dense_13/Softmax:softmax:0.^sequential_6/conv2d_26/BiasAdd/ReadVariableOp-^sequential_6/conv2d_26/Conv2D/ReadVariableOp.^sequential_6/conv2d_27/BiasAdd/ReadVariableOp-^sequential_6/conv2d_27/Conv2D/ReadVariableOp.^sequential_6/conv2d_28/BiasAdd/ReadVariableOp-^sequential_6/conv2d_28/Conv2D/ReadVariableOp.^sequential_6/conv2d_29/BiasAdd/ReadVariableOp-^sequential_6/conv2d_29/Conv2D/ReadVariableOp.^sequential_6/conv2d_30/BiasAdd/ReadVariableOp-^sequential_6/conv2d_30/Conv2D/ReadVariableOp.^sequential_6/conv2d_31/BiasAdd/ReadVariableOp-^sequential_6/conv2d_31/Conv2D/ReadVariableOp-^sequential_6/dense_12/BiasAdd/ReadVariableOp,^sequential_6/dense_12/MatMul/ReadVariableOp-^sequential_6/dense_13/BiasAdd/ReadVariableOp,^sequential_6/dense_13/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2^
-sequential_6/conv2d_26/BiasAdd/ReadVariableOp-sequential_6/conv2d_26/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_26/Conv2D/ReadVariableOp,sequential_6/conv2d_26/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_27/BiasAdd/ReadVariableOp-sequential_6/conv2d_27/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_27/Conv2D/ReadVariableOp,sequential_6/conv2d_27/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_28/BiasAdd/ReadVariableOp-sequential_6/conv2d_28/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_28/Conv2D/ReadVariableOp,sequential_6/conv2d_28/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_29/BiasAdd/ReadVariableOp-sequential_6/conv2d_29/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_29/Conv2D/ReadVariableOp,sequential_6/conv2d_29/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_30/BiasAdd/ReadVariableOp-sequential_6/conv2d_30/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_30/Conv2D/ReadVariableOp,sequential_6/conv2d_30/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_31/BiasAdd/ReadVariableOp-sequential_6/conv2d_31/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_31/Conv2D/ReadVariableOp,sequential_6/conv2d_31/Conv2D/ReadVariableOp2\
,sequential_6/dense_12/BiasAdd/ReadVariableOp,sequential_6/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_12/MatMul/ReadVariableOp+sequential_6/dense_12/MatMul/ReadVariableOp2\
,sequential_6/dense_13/BiasAdd/ReadVariableOp,sequential_6/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_13/MatMul/ReadVariableOp+sequential_6/dense_13/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_26_input
?
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_6967872

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????	2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????	2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_26_layer_call_fn_6968779

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_69676822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_27_layer_call_fn_6968811

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_69677152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
F__inference_conv2d_30_layer_call_and_return_conditional_losses_6968898

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
2conv2d_30/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_30/kernel/Regularizer/SquareSquare:conv2d_30/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2%
#conv2d_30/kernel/Regularizer/Square?
"conv2d_30/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_30/kernel/Regularizer/Const?
 conv2d_30/kernel/Regularizer/SumSum'conv2d_30/kernel/Regularizer/Square:y:0+conv2d_30/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/Sum?
"conv2d_30/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_30/kernel/Regularizer/mul/x?
 conv2d_30/kernel/Regularizer/mulMul+conv2d_30/kernel/Regularizer/mul/x:output:0)conv2d_30/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_30/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2conv2d_30/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
F__inference_conv2d_26_layer_call_and_return_conditional_losses_6967682

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
2conv2d_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_26/kernel/Regularizer/SquareSquare:conv2d_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_26/kernel/Regularizer/Square?
"conv2d_26/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_26/kernel/Regularizer/Const?
 conv2d_26/kernel/Regularizer/SumSum'conv2d_26/kernel/Regularizer/Square:y:0+conv2d_26/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/Sum?
"conv2d_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_26/kernel/Regularizer/mul/x?
 conv2d_26/kernel/Regularizer/mulMul+conv2d_26/kernel/Regularizer/mul/x:output:0)conv2d_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_26/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2conv2d_26/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_6969062?
;conv2d_28_kernel_regularizer_square_readvariableop_resource
identity??2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
2conv2d_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_28_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_28/kernel/Regularizer/SquareSquare:conv2d_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_28/kernel/Regularizer/Square?
"conv2d_28/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_28/kernel/Regularizer/Const?
 conv2d_28/kernel/Regularizer/SumSum'conv2d_28/kernel/Regularizer/Square:y:0+conv2d_28/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/Sum?
"conv2d_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_28/kernel/Regularizer/mul/x?
 conv2d_28/kernel/Regularizer/mulMul+conv2d_28/kernel/Regularizer/mul/x:output:0)conv2d_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/mul?
IdentityIdentity$conv2d_28/kernel/Regularizer/mul:z:03^conv2d_28/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2conv2d_28/kernel/Regularizer/Square/ReadVariableOp
?
i
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_6967631

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_27_layer_call_and_return_conditional_losses_6968802

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
2conv2d_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype024
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_27/kernel/Regularizer/SquareSquare:conv2d_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2%
#conv2d_27/kernel/Regularizer/Square?
"conv2d_27/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_27/kernel/Regularizer/Const?
 conv2d_27/kernel/Regularizer/SumSum'conv2d_27/kernel/Regularizer/Square:y:0+conv2d_27/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/Sum?
"conv2d_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_27/kernel/Regularizer/mul/x?
 conv2d_27/kernel/Regularizer/mulMul+conv2d_27/kernel/Regularizer/mul/x:output:0)conv2d_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_27/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2conv2d_27/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_6_6969106>
:dense_12_kernel_regularizer_square_readvariableop_resource
identity??1dense_12/kernel/Regularizer/Square/ReadVariableOp?
1dense_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_12_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
?	?*
dtype023
1dense_12/kernel/Regularizer/Square/ReadVariableOp?
"dense_12/kernel/Regularizer/SquareSquare9dense_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?	?2$
"dense_12/kernel/Regularizer/Square?
!dense_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_12/kernel/Regularizer/Const?
dense_12/kernel/Regularizer/SumSum&dense_12/kernel/Regularizer/Square:y:0*dense_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/Sum?
!dense_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_12/kernel/Regularizer/mul/x?
dense_12/kernel/Regularizer/mulMul*dense_12/kernel/Regularizer/mul/x:output:0(dense_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/mul?
IdentityIdentity#dense_12/kernel/Regularizer/mul:z:02^dense_12/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2f
1dense_12/kernel/Regularizer/Square/ReadVariableOp1dense_12/kernel/Regularizer/Square/ReadVariableOp
?

?
.__inference_sequential_6_layer_call_fn_6968361
conv2d_26_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_69683262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_26_input
?
N
2__inference_max_pooling2d_15_layer_call_fn_6967661

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_69676552
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_6969040?
;conv2d_26_kernel_regularizer_square_readvariableop_resource
identity??2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
2conv2d_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_26_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_26/kernel/Regularizer/SquareSquare:conv2d_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_26/kernel/Regularizer/Square?
"conv2d_26/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_26/kernel/Regularizer/Const?
 conv2d_26/kernel/Regularizer/SumSum'conv2d_26/kernel/Regularizer/Square:y:0+conv2d_26/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/Sum?
"conv2d_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_26/kernel/Regularizer/mul/x?
 conv2d_26/kernel/Regularizer/mulMul+conv2d_26/kernel/Regularizer/mul/x:output:0)conv2d_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/mul?
IdentityIdentity$conv2d_26/kernel/Regularizer/mul:z:03^conv2d_26/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2conv2d_26/kernel/Regularizer/Square/ReadVariableOp
?
i
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_6967643

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968326

inputs
conv2d_26_6968238
conv2d_26_6968240
conv2d_27_6968243
conv2d_27_6968245
conv2d_28_6968249
conv2d_28_6968251
conv2d_29_6968254
conv2d_29_6968256
conv2d_30_6968260
conv2d_30_6968262
conv2d_31_6968265
conv2d_31_6968267
dense_12_6968272
dense_12_6968274
dense_13_6968278
dense_13_6968280
identity??!conv2d_26/StatefulPartitionedCall?2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?!conv2d_27/StatefulPartitionedCall?2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?!conv2d_28/StatefulPartitionedCall?2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?!conv2d_29/StatefulPartitionedCall?2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?!conv2d_30/StatefulPartitionedCall?2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?!conv2d_31/StatefulPartitionedCall?2conv2d_31/kernel/Regularizer/Square/ReadVariableOp? dense_12/StatefulPartitionedCall?1dense_12/kernel/Regularizer/Square/ReadVariableOp? dense_13/StatefulPartitionedCall?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_26_6968238conv2d_26_6968240*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_69676822#
!conv2d_26/StatefulPartitionedCall?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0conv2d_27_6968243conv2d_27_6968245*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_69677152#
!conv2d_27/StatefulPartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_69676312"
 max_pooling2d_13/PartitionedCall?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_28_6968249conv2d_28_6968251*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_69677492#
!conv2d_28/StatefulPartitionedCall?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0conv2d_29_6968254conv2d_29_6968256*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_29_layer_call_and_return_conditional_losses_69677822#
!conv2d_29/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_69676432"
 max_pooling2d_14/PartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_30_6968260conv2d_30_6968262*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_30_layer_call_and_return_conditional_losses_69678162#
!conv2d_30/StatefulPartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0conv2d_31_6968265conv2d_31_6968267*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_31_layer_call_and_return_conditional_losses_69678492#
!conv2d_31/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_69676552"
 max_pooling2d_15/PartitionedCall?
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_69678722
flatten_6/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_12_6968272dense_12_6968274*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_69678972"
 dense_12/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_69679302
dropout_1/PartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_13_6968278dense_13_6968280*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_69679542"
 dense_13/StatefulPartitionedCall?
2conv2d_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_26_6968238*&
_output_shapes
: *
dtype024
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_26/kernel/Regularizer/SquareSquare:conv2d_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_26/kernel/Regularizer/Square?
"conv2d_26/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_26/kernel/Regularizer/Const?
 conv2d_26/kernel/Regularizer/SumSum'conv2d_26/kernel/Regularizer/Square:y:0+conv2d_26/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/Sum?
"conv2d_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_26/kernel/Regularizer/mul/x?
 conv2d_26/kernel/Regularizer/mulMul+conv2d_26/kernel/Regularizer/mul/x:output:0)conv2d_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/mul?
2conv2d_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_27_6968243*&
_output_shapes
:  *
dtype024
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_27/kernel/Regularizer/SquareSquare:conv2d_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2%
#conv2d_27/kernel/Regularizer/Square?
"conv2d_27/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_27/kernel/Regularizer/Const?
 conv2d_27/kernel/Regularizer/SumSum'conv2d_27/kernel/Regularizer/Square:y:0+conv2d_27/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/Sum?
"conv2d_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_27/kernel/Regularizer/mul/x?
 conv2d_27/kernel/Regularizer/mulMul+conv2d_27/kernel/Regularizer/mul/x:output:0)conv2d_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/mul?
2conv2d_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_28_6968249*&
_output_shapes
: @*
dtype024
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_28/kernel/Regularizer/SquareSquare:conv2d_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_28/kernel/Regularizer/Square?
"conv2d_28/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_28/kernel/Regularizer/Const?
 conv2d_28/kernel/Regularizer/SumSum'conv2d_28/kernel/Regularizer/Square:y:0+conv2d_28/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/Sum?
"conv2d_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_28/kernel/Regularizer/mul/x?
 conv2d_28/kernel/Regularizer/mulMul+conv2d_28/kernel/Regularizer/mul/x:output:0)conv2d_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/mul?
2conv2d_29/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_29_6968254*&
_output_shapes
:@@*
dtype024
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_29/kernel/Regularizer/SquareSquare:conv2d_29/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2%
#conv2d_29/kernel/Regularizer/Square?
"conv2d_29/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_29/kernel/Regularizer/Const?
 conv2d_29/kernel/Regularizer/SumSum'conv2d_29/kernel/Regularizer/Square:y:0+conv2d_29/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/Sum?
"conv2d_29/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_29/kernel/Regularizer/mul/x?
 conv2d_29/kernel/Regularizer/mulMul+conv2d_29/kernel/Regularizer/mul/x:output:0)conv2d_29/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/mul?
2conv2d_30/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_30_6968260*'
_output_shapes
:@?*
dtype024
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_30/kernel/Regularizer/SquareSquare:conv2d_30/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2%
#conv2d_30/kernel/Regularizer/Square?
"conv2d_30/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_30/kernel/Regularizer/Const?
 conv2d_30/kernel/Regularizer/SumSum'conv2d_30/kernel/Regularizer/Square:y:0+conv2d_30/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/Sum?
"conv2d_30/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_30/kernel/Regularizer/mul/x?
 conv2d_30/kernel/Regularizer/mulMul+conv2d_30/kernel/Regularizer/mul/x:output:0)conv2d_30/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/mul?
2conv2d_31/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_31_6968265*(
_output_shapes
:??*
dtype024
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_31/kernel/Regularizer/SquareSquare:conv2d_31/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2%
#conv2d_31/kernel/Regularizer/Square?
"conv2d_31/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_31/kernel/Regularizer/Const?
 conv2d_31/kernel/Regularizer/SumSum'conv2d_31/kernel/Regularizer/Square:y:0+conv2d_31/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/Sum?
"conv2d_31/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_31/kernel/Regularizer/mul/x?
 conv2d_31/kernel/Regularizer/mulMul+conv2d_31/kernel/Regularizer/mul/x:output:0)conv2d_31/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/mul?
1dense_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_12_6968272* 
_output_shapes
:
?	?*
dtype023
1dense_12/kernel/Regularizer/Square/ReadVariableOp?
"dense_12/kernel/Regularizer/SquareSquare9dense_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?	?2$
"dense_12/kernel/Regularizer/Square?
!dense_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_12/kernel/Regularizer/Const?
dense_12/kernel/Regularizer/SumSum&dense_12/kernel/Regularizer/Square:y:0*dense_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/Sum?
!dense_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_12/kernel/Regularizer/mul/x?
dense_12/kernel/Regularizer/mulMul*dense_12/kernel/Regularizer/mul/x:output:0(dense_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/mul?
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0"^conv2d_26/StatefulPartitionedCall3^conv2d_26/kernel/Regularizer/Square/ReadVariableOp"^conv2d_27/StatefulPartitionedCall3^conv2d_27/kernel/Regularizer/Square/ReadVariableOp"^conv2d_28/StatefulPartitionedCall3^conv2d_28/kernel/Regularizer/Square/ReadVariableOp"^conv2d_29/StatefulPartitionedCall3^conv2d_29/kernel/Regularizer/Square/ReadVariableOp"^conv2d_30/StatefulPartitionedCall3^conv2d_30/kernel/Regularizer/Square/ReadVariableOp"^conv2d_31/StatefulPartitionedCall3^conv2d_31/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall2^dense_12/kernel/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2h
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2h
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2h
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2h
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2h
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2h
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2f
1dense_12/kernel/Regularizer/Square/ReadVariableOp1dense_12/kernel/Regularizer/Square/ReadVariableOp2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

*__inference_dense_13_layer_call_fn_6969029

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_69679542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_27_layer_call_and_return_conditional_losses_6967715

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
2conv2d_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype024
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_27/kernel/Regularizer/SquareSquare:conv2d_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2%
#conv2d_27/kernel/Regularizer/Square?
"conv2d_27/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_27/kernel/Regularizer/Const?
 conv2d_27/kernel/Regularizer/SumSum'conv2d_27/kernel/Regularizer/Square:y:0+conv2d_27/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/Sum?
"conv2d_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_27/kernel/Regularizer/mul/x?
 conv2d_27/kernel/Regularizer/mulMul+conv2d_27/kernel/Regularizer/mul/x:output:0)conv2d_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_27/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2conv2d_27/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
+__inference_dropout_1_layer_call_fn_6969004

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_69679252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_5_6969095?
;conv2d_31_kernel_regularizer_square_readvariableop_resource
identity??2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
2conv2d_31/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_31_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_31/kernel/Regularizer/SquareSquare:conv2d_31/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2%
#conv2d_31/kernel/Regularizer/Square?
"conv2d_31/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_31/kernel/Regularizer/Const?
 conv2d_31/kernel/Regularizer/SumSum'conv2d_31/kernel/Regularizer/Square:y:0+conv2d_31/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/Sum?
"conv2d_31/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_31/kernel/Regularizer/mul/x?
 conv2d_31/kernel/Regularizer/mulMul+conv2d_31/kernel/Regularizer/mul/x:output:0)conv2d_31/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/mul?
IdentityIdentity$conv2d_31/kernel/Regularizer/mul:z:03^conv2d_31/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2conv2d_31/kernel/Regularizer/Square/ReadVariableOp
?
?
+__inference_conv2d_30_layer_call_fn_6968907

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_30_layer_call_and_return_conditional_losses_69678162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_6969051?
;conv2d_27_kernel_regularizer_square_readvariableop_resource
identity??2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
2conv2d_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_27_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:  *
dtype024
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_27/kernel/Regularizer/SquareSquare:conv2d_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2%
#conv2d_27/kernel/Regularizer/Square?
"conv2d_27/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_27/kernel/Regularizer/Const?
 conv2d_27/kernel/Regularizer/SumSum'conv2d_27/kernel/Regularizer/Square:y:0+conv2d_27/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/Sum?
"conv2d_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_27/kernel/Regularizer/mul/x?
 conv2d_27/kernel/Regularizer/mulMul+conv2d_27/kernel/Regularizer/mul/x:output:0)conv2d_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/mul?
IdentityIdentity$conv2d_27/kernel/Regularizer/mul:z:03^conv2d_27/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2conv2d_27/kernel/Regularizer/Square/ReadVariableOp
??
?	
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968198

inputs
conv2d_26_6968110
conv2d_26_6968112
conv2d_27_6968115
conv2d_27_6968117
conv2d_28_6968121
conv2d_28_6968123
conv2d_29_6968126
conv2d_29_6968128
conv2d_30_6968132
conv2d_30_6968134
conv2d_31_6968137
conv2d_31_6968139
dense_12_6968144
dense_12_6968146
dense_13_6968150
dense_13_6968152
identity??!conv2d_26/StatefulPartitionedCall?2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?!conv2d_27/StatefulPartitionedCall?2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?!conv2d_28/StatefulPartitionedCall?2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?!conv2d_29/StatefulPartitionedCall?2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?!conv2d_30/StatefulPartitionedCall?2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?!conv2d_31/StatefulPartitionedCall?2conv2d_31/kernel/Regularizer/Square/ReadVariableOp? dense_12/StatefulPartitionedCall?1dense_12/kernel/Regularizer/Square/ReadVariableOp? dense_13/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_26_6968110conv2d_26_6968112*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_69676822#
!conv2d_26/StatefulPartitionedCall?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0conv2d_27_6968115conv2d_27_6968117*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_69677152#
!conv2d_27/StatefulPartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_69676312"
 max_pooling2d_13/PartitionedCall?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_28_6968121conv2d_28_6968123*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_69677492#
!conv2d_28/StatefulPartitionedCall?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0conv2d_29_6968126conv2d_29_6968128*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_29_layer_call_and_return_conditional_losses_69677822#
!conv2d_29/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_69676432"
 max_pooling2d_14/PartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_30_6968132conv2d_30_6968134*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_30_layer_call_and_return_conditional_losses_69678162#
!conv2d_30/StatefulPartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0conv2d_31_6968137conv2d_31_6968139*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_31_layer_call_and_return_conditional_losses_69678492#
!conv2d_31/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_69676552"
 max_pooling2d_15/PartitionedCall?
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_69678722
flatten_6/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_12_6968144dense_12_6968146*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_69678972"
 dense_12/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_69679252#
!dropout_1/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_13_6968150dense_13_6968152*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_69679542"
 dense_13/StatefulPartitionedCall?
2conv2d_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_26_6968110*&
_output_shapes
: *
dtype024
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_26/kernel/Regularizer/SquareSquare:conv2d_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_26/kernel/Regularizer/Square?
"conv2d_26/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_26/kernel/Regularizer/Const?
 conv2d_26/kernel/Regularizer/SumSum'conv2d_26/kernel/Regularizer/Square:y:0+conv2d_26/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/Sum?
"conv2d_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_26/kernel/Regularizer/mul/x?
 conv2d_26/kernel/Regularizer/mulMul+conv2d_26/kernel/Regularizer/mul/x:output:0)conv2d_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/mul?
2conv2d_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_27_6968115*&
_output_shapes
:  *
dtype024
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_27/kernel/Regularizer/SquareSquare:conv2d_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2%
#conv2d_27/kernel/Regularizer/Square?
"conv2d_27/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_27/kernel/Regularizer/Const?
 conv2d_27/kernel/Regularizer/SumSum'conv2d_27/kernel/Regularizer/Square:y:0+conv2d_27/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/Sum?
"conv2d_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_27/kernel/Regularizer/mul/x?
 conv2d_27/kernel/Regularizer/mulMul+conv2d_27/kernel/Regularizer/mul/x:output:0)conv2d_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/mul?
2conv2d_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_28_6968121*&
_output_shapes
: @*
dtype024
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_28/kernel/Regularizer/SquareSquare:conv2d_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_28/kernel/Regularizer/Square?
"conv2d_28/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_28/kernel/Regularizer/Const?
 conv2d_28/kernel/Regularizer/SumSum'conv2d_28/kernel/Regularizer/Square:y:0+conv2d_28/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/Sum?
"conv2d_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_28/kernel/Regularizer/mul/x?
 conv2d_28/kernel/Regularizer/mulMul+conv2d_28/kernel/Regularizer/mul/x:output:0)conv2d_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/mul?
2conv2d_29/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_29_6968126*&
_output_shapes
:@@*
dtype024
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_29/kernel/Regularizer/SquareSquare:conv2d_29/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2%
#conv2d_29/kernel/Regularizer/Square?
"conv2d_29/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_29/kernel/Regularizer/Const?
 conv2d_29/kernel/Regularizer/SumSum'conv2d_29/kernel/Regularizer/Square:y:0+conv2d_29/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/Sum?
"conv2d_29/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_29/kernel/Regularizer/mul/x?
 conv2d_29/kernel/Regularizer/mulMul+conv2d_29/kernel/Regularizer/mul/x:output:0)conv2d_29/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/mul?
2conv2d_30/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_30_6968132*'
_output_shapes
:@?*
dtype024
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_30/kernel/Regularizer/SquareSquare:conv2d_30/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2%
#conv2d_30/kernel/Regularizer/Square?
"conv2d_30/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_30/kernel/Regularizer/Const?
 conv2d_30/kernel/Regularizer/SumSum'conv2d_30/kernel/Regularizer/Square:y:0+conv2d_30/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/Sum?
"conv2d_30/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_30/kernel/Regularizer/mul/x?
 conv2d_30/kernel/Regularizer/mulMul+conv2d_30/kernel/Regularizer/mul/x:output:0)conv2d_30/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/mul?
2conv2d_31/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_31_6968137*(
_output_shapes
:??*
dtype024
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_31/kernel/Regularizer/SquareSquare:conv2d_31/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2%
#conv2d_31/kernel/Regularizer/Square?
"conv2d_31/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_31/kernel/Regularizer/Const?
 conv2d_31/kernel/Regularizer/SumSum'conv2d_31/kernel/Regularizer/Square:y:0+conv2d_31/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/Sum?
"conv2d_31/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_31/kernel/Regularizer/mul/x?
 conv2d_31/kernel/Regularizer/mulMul+conv2d_31/kernel/Regularizer/mul/x:output:0)conv2d_31/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/mul?
1dense_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_12_6968144* 
_output_shapes
:
?	?*
dtype023
1dense_12/kernel/Regularizer/Square/ReadVariableOp?
"dense_12/kernel/Regularizer/SquareSquare9dense_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?	?2$
"dense_12/kernel/Regularizer/Square?
!dense_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_12/kernel/Regularizer/Const?
dense_12/kernel/Regularizer/SumSum&dense_12/kernel/Regularizer/Square:y:0*dense_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/Sum?
!dense_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_12/kernel/Regularizer/mul/x?
dense_12/kernel/Regularizer/mulMul*dense_12/kernel/Regularizer/mul/x:output:0(dense_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/mul?
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0"^conv2d_26/StatefulPartitionedCall3^conv2d_26/kernel/Regularizer/Square/ReadVariableOp"^conv2d_27/StatefulPartitionedCall3^conv2d_27/kernel/Regularizer/Square/ReadVariableOp"^conv2d_28/StatefulPartitionedCall3^conv2d_28/kernel/Regularizer/Square/ReadVariableOp"^conv2d_29/StatefulPartitionedCall3^conv2d_29/kernel/Regularizer/Square/ReadVariableOp"^conv2d_30/StatefulPartitionedCall3^conv2d_30/kernel/Regularizer/Square/ReadVariableOp"^conv2d_31/StatefulPartitionedCall3^conv2d_31/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall2^dense_12/kernel/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2h
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2h
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2h
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2h
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2h
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2h
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2f
1dense_12/kernel/Regularizer/Square/ReadVariableOp1dense_12/kernel/Regularizer/Square/ReadVariableOp2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_31_layer_call_and_return_conditional_losses_6968930

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
2conv2d_31/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_31/kernel/Regularizer/SquareSquare:conv2d_31/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2%
#conv2d_31/kernel/Regularizer/Square?
"conv2d_31/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_31/kernel/Regularizer/Const?
 conv2d_31/kernel/Regularizer/SumSum'conv2d_31/kernel/Regularizer/Square:y:0+conv2d_31/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/Sum?
"conv2d_31/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_31/kernel/Regularizer/mul/x?
 conv2d_31/kernel/Regularizer/mulMul+conv2d_31/kernel/Regularizer/mul/x:output:0)conv2d_31/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_31/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2conv2d_31/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_6967925

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?	
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968013
conv2d_26_input
conv2d_26_6967693
conv2d_26_6967695
conv2d_27_6967726
conv2d_27_6967728
conv2d_28_6967760
conv2d_28_6967762
conv2d_29_6967793
conv2d_29_6967795
conv2d_30_6967827
conv2d_30_6967829
conv2d_31_6967860
conv2d_31_6967862
dense_12_6967908
dense_12_6967910
dense_13_6967965
dense_13_6967967
identity??!conv2d_26/StatefulPartitionedCall?2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?!conv2d_27/StatefulPartitionedCall?2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?!conv2d_28/StatefulPartitionedCall?2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?!conv2d_29/StatefulPartitionedCall?2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?!conv2d_30/StatefulPartitionedCall?2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?!conv2d_31/StatefulPartitionedCall?2conv2d_31/kernel/Regularizer/Square/ReadVariableOp? dense_12/StatefulPartitionedCall?1dense_12/kernel/Regularizer/Square/ReadVariableOp? dense_13/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCallconv2d_26_inputconv2d_26_6967693conv2d_26_6967695*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_69676822#
!conv2d_26/StatefulPartitionedCall?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0conv2d_27_6967726conv2d_27_6967728*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_69677152#
!conv2d_27/StatefulPartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_69676312"
 max_pooling2d_13/PartitionedCall?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_28_6967760conv2d_28_6967762*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_69677492#
!conv2d_28/StatefulPartitionedCall?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0conv2d_29_6967793conv2d_29_6967795*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_29_layer_call_and_return_conditional_losses_69677822#
!conv2d_29/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_69676432"
 max_pooling2d_14/PartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_30_6967827conv2d_30_6967829*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_30_layer_call_and_return_conditional_losses_69678162#
!conv2d_30/StatefulPartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0conv2d_31_6967860conv2d_31_6967862*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_31_layer_call_and_return_conditional_losses_69678492#
!conv2d_31/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_69676552"
 max_pooling2d_15/PartitionedCall?
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_69678722
flatten_6/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_12_6967908dense_12_6967910*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_69678972"
 dense_12/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_69679252#
!dropout_1/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_13_6967965dense_13_6967967*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_69679542"
 dense_13/StatefulPartitionedCall?
2conv2d_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_26_6967693*&
_output_shapes
: *
dtype024
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_26/kernel/Regularizer/SquareSquare:conv2d_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_26/kernel/Regularizer/Square?
"conv2d_26/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_26/kernel/Regularizer/Const?
 conv2d_26/kernel/Regularizer/SumSum'conv2d_26/kernel/Regularizer/Square:y:0+conv2d_26/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/Sum?
"conv2d_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_26/kernel/Regularizer/mul/x?
 conv2d_26/kernel/Regularizer/mulMul+conv2d_26/kernel/Regularizer/mul/x:output:0)conv2d_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/mul?
2conv2d_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_27_6967726*&
_output_shapes
:  *
dtype024
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_27/kernel/Regularizer/SquareSquare:conv2d_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2%
#conv2d_27/kernel/Regularizer/Square?
"conv2d_27/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_27/kernel/Regularizer/Const?
 conv2d_27/kernel/Regularizer/SumSum'conv2d_27/kernel/Regularizer/Square:y:0+conv2d_27/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/Sum?
"conv2d_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_27/kernel/Regularizer/mul/x?
 conv2d_27/kernel/Regularizer/mulMul+conv2d_27/kernel/Regularizer/mul/x:output:0)conv2d_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/mul?
2conv2d_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_28_6967760*&
_output_shapes
: @*
dtype024
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_28/kernel/Regularizer/SquareSquare:conv2d_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_28/kernel/Regularizer/Square?
"conv2d_28/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_28/kernel/Regularizer/Const?
 conv2d_28/kernel/Regularizer/SumSum'conv2d_28/kernel/Regularizer/Square:y:0+conv2d_28/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/Sum?
"conv2d_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_28/kernel/Regularizer/mul/x?
 conv2d_28/kernel/Regularizer/mulMul+conv2d_28/kernel/Regularizer/mul/x:output:0)conv2d_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/mul?
2conv2d_29/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_29_6967793*&
_output_shapes
:@@*
dtype024
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_29/kernel/Regularizer/SquareSquare:conv2d_29/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2%
#conv2d_29/kernel/Regularizer/Square?
"conv2d_29/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_29/kernel/Regularizer/Const?
 conv2d_29/kernel/Regularizer/SumSum'conv2d_29/kernel/Regularizer/Square:y:0+conv2d_29/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/Sum?
"conv2d_29/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_29/kernel/Regularizer/mul/x?
 conv2d_29/kernel/Regularizer/mulMul+conv2d_29/kernel/Regularizer/mul/x:output:0)conv2d_29/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/mul?
2conv2d_30/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_30_6967827*'
_output_shapes
:@?*
dtype024
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_30/kernel/Regularizer/SquareSquare:conv2d_30/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2%
#conv2d_30/kernel/Regularizer/Square?
"conv2d_30/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_30/kernel/Regularizer/Const?
 conv2d_30/kernel/Regularizer/SumSum'conv2d_30/kernel/Regularizer/Square:y:0+conv2d_30/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/Sum?
"conv2d_30/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_30/kernel/Regularizer/mul/x?
 conv2d_30/kernel/Regularizer/mulMul+conv2d_30/kernel/Regularizer/mul/x:output:0)conv2d_30/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/mul?
2conv2d_31/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_31_6967860*(
_output_shapes
:??*
dtype024
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_31/kernel/Regularizer/SquareSquare:conv2d_31/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2%
#conv2d_31/kernel/Regularizer/Square?
"conv2d_31/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_31/kernel/Regularizer/Const?
 conv2d_31/kernel/Regularizer/SumSum'conv2d_31/kernel/Regularizer/Square:y:0+conv2d_31/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/Sum?
"conv2d_31/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_31/kernel/Regularizer/mul/x?
 conv2d_31/kernel/Regularizer/mulMul+conv2d_31/kernel/Regularizer/mul/x:output:0)conv2d_31/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/mul?
1dense_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_12_6967908* 
_output_shapes
:
?	?*
dtype023
1dense_12/kernel/Regularizer/Square/ReadVariableOp?
"dense_12/kernel/Regularizer/SquareSquare9dense_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?	?2$
"dense_12/kernel/Regularizer/Square?
!dense_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_12/kernel/Regularizer/Const?
dense_12/kernel/Regularizer/SumSum&dense_12/kernel/Regularizer/Square:y:0*dense_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/Sum?
!dense_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_12/kernel/Regularizer/mul/x?
dense_12/kernel/Regularizer/mulMul*dense_12/kernel/Regularizer/mul/x:output:0(dense_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/mul?
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0"^conv2d_26/StatefulPartitionedCall3^conv2d_26/kernel/Regularizer/Square/ReadVariableOp"^conv2d_27/StatefulPartitionedCall3^conv2d_27/kernel/Regularizer/Square/ReadVariableOp"^conv2d_28/StatefulPartitionedCall3^conv2d_28/kernel/Regularizer/Square/ReadVariableOp"^conv2d_29/StatefulPartitionedCall3^conv2d_29/kernel/Regularizer/Square/ReadVariableOp"^conv2d_30/StatefulPartitionedCall3^conv2d_30/kernel/Regularizer/Square/ReadVariableOp"^conv2d_31/StatefulPartitionedCall3^conv2d_31/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall2^dense_12/kernel/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2h
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2h
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2h
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2h
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2h
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2h
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2f
1dense_12/kernel/Regularizer/Square/ReadVariableOp1dense_12/kernel/Regularizer/Square/ReadVariableOp2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_26_input
?
N
2__inference_max_pooling2d_14_layer_call_fn_6967649

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_69676432
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_4_6969084?
;conv2d_30_kernel_regularizer_square_readvariableop_resource
identity??2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
2conv2d_30/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_30_kernel_regularizer_square_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_30/kernel/Regularizer/SquareSquare:conv2d_30/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2%
#conv2d_30/kernel/Regularizer/Square?
"conv2d_30/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_30/kernel/Regularizer/Const?
 conv2d_30/kernel/Regularizer/SumSum'conv2d_30/kernel/Regularizer/Square:y:0+conv2d_30/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/Sum?
"conv2d_30/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_30/kernel/Regularizer/mul/x?
 conv2d_30/kernel/Regularizer/mulMul+conv2d_30/kernel/Regularizer/mul/x:output:0)conv2d_30/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/mul?
IdentityIdentity$conv2d_30/kernel/Regularizer/mul:z:03^conv2d_30/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2conv2d_30/kernel/Regularizer/Square/ReadVariableOp
?
?
+__inference_conv2d_31_layer_call_fn_6968939

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_31_layer_call_and_return_conditional_losses_69678492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_dense_12_layer_call_fn_6968982

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_69678972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????	::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?	
?
E__inference_dense_13_layer_call_and_return_conditional_losses_6967954

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_6967655

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_dense_12_layer_call_and_return_conditional_losses_6967897

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_12/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype023
1dense_12/kernel/Regularizer/Square/ReadVariableOp?
"dense_12/kernel/Regularizer/SquareSquare9dense_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?	?2$
"dense_12/kernel/Regularizer/Square?
!dense_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_12/kernel/Regularizer/Const?
dense_12/kernel/Regularizer/SumSum&dense_12/kernel/Regularizer/Square:y:0*dense_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/Sum?
!dense_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_12/kernel/Regularizer/mul/x?
dense_12/kernel/Regularizer/mulMul*dense_12/kernel/Regularizer/mul/x:output:0(dense_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_12/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_12/kernel/Regularizer/Square/ReadVariableOp1dense_12/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_6968450
conv2d_26_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_69676252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_26_input
??
?
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968673

inputs,
(conv2d_26_conv2d_readvariableop_resource-
)conv2d_26_biasadd_readvariableop_resource,
(conv2d_27_conv2d_readvariableop_resource-
)conv2d_27_biasadd_readvariableop_resource,
(conv2d_28_conv2d_readvariableop_resource-
)conv2d_28_biasadd_readvariableop_resource,
(conv2d_29_conv2d_readvariableop_resource-
)conv2d_29_biasadd_readvariableop_resource,
(conv2d_30_conv2d_readvariableop_resource-
)conv2d_30_biasadd_readvariableop_resource,
(conv2d_31_conv2d_readvariableop_resource-
)conv2d_31_biasadd_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource
identity?? conv2d_26/BiasAdd/ReadVariableOp?conv2d_26/Conv2D/ReadVariableOp?2conv2d_26/kernel/Regularizer/Square/ReadVariableOp? conv2d_27/BiasAdd/ReadVariableOp?conv2d_27/Conv2D/ReadVariableOp?2conv2d_27/kernel/Regularizer/Square/ReadVariableOp? conv2d_28/BiasAdd/ReadVariableOp?conv2d_28/Conv2D/ReadVariableOp?2conv2d_28/kernel/Regularizer/Square/ReadVariableOp? conv2d_29/BiasAdd/ReadVariableOp?conv2d_29/Conv2D/ReadVariableOp?2conv2d_29/kernel/Regularizer/Square/ReadVariableOp? conv2d_30/BiasAdd/ReadVariableOp?conv2d_30/Conv2D/ReadVariableOp?2conv2d_30/kernel/Regularizer/Square/ReadVariableOp? conv2d_31/BiasAdd/ReadVariableOp?conv2d_31/Conv2D/ReadVariableOp?2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?1dense_12/kernel/Regularizer/Square/ReadVariableOp?dense_13/BiasAdd/ReadVariableOp?dense_13/MatMul/ReadVariableOp?
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_26/Conv2D/ReadVariableOp?
conv2d_26/Conv2DConv2Dinputs'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_26/Conv2D?
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_26/BiasAdd/ReadVariableOp?
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_26/BiasAdd~
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_26/Relu?
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_27/Conv2D/ReadVariableOp?
conv2d_27/Conv2DConv2Dconv2d_26/Relu:activations:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_27/Conv2D?
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_27/BiasAdd/ReadVariableOp?
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_27/BiasAdd~
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_27/Relu?
max_pooling2d_13/MaxPoolMaxPoolconv2d_27/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_13/MaxPool?
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_28/Conv2D/ReadVariableOp?
conv2d_28/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_28/Conv2D?
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_28/BiasAdd/ReadVariableOp?
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_28/BiasAdd~
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_28/Relu?
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_29/Conv2D/ReadVariableOp?
conv2d_29/Conv2DConv2Dconv2d_28/Relu:activations:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_29/Conv2D?
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_29/BiasAdd/ReadVariableOp?
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_29/BiasAdd~
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_29/Relu?
max_pooling2d_14/MaxPoolMaxPoolconv2d_29/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPool?
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_30/Conv2D/ReadVariableOp?
conv2d_30/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_30/Conv2D?
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_30/BiasAdd/ReadVariableOp?
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_30/BiasAdd
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_30/Relu?
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_31/Conv2D/ReadVariableOp?
conv2d_31/Conv2DConv2Dconv2d_30/Relu:activations:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_31/Conv2D?
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_31/BiasAdd/ReadVariableOp?
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_31/BiasAdd
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_31/Relu?
max_pooling2d_15/MaxPoolMaxPoolconv2d_31/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPools
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_6/Const?
flatten_6/ReshapeReshape!max_pooling2d_15/MaxPool:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:??????????	2
flatten_6/Reshape?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulflatten_6/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_12/MatMul?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_12/BiasAdd/ReadVariableOp?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_12/BiasAddt
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_12/Relu?
dropout_1/IdentityIdentitydense_12/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_1/Identity?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_13/MatMul/ReadVariableOp?
dense_13/MatMulMatMuldropout_1/Identity:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_13/MatMul?
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOp?
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_13/BiasAdd|
dense_13/SoftmaxSoftmaxdense_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_13/Softmax?
2conv2d_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_26/kernel/Regularizer/SquareSquare:conv2d_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_26/kernel/Regularizer/Square?
"conv2d_26/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_26/kernel/Regularizer/Const?
 conv2d_26/kernel/Regularizer/SumSum'conv2d_26/kernel/Regularizer/Square:y:0+conv2d_26/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/Sum?
"conv2d_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_26/kernel/Regularizer/mul/x?
 conv2d_26/kernel/Regularizer/mulMul+conv2d_26/kernel/Regularizer/mul/x:output:0)conv2d_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/mul?
2conv2d_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype024
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_27/kernel/Regularizer/SquareSquare:conv2d_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2%
#conv2d_27/kernel/Regularizer/Square?
"conv2d_27/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_27/kernel/Regularizer/Const?
 conv2d_27/kernel/Regularizer/SumSum'conv2d_27/kernel/Regularizer/Square:y:0+conv2d_27/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/Sum?
"conv2d_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_27/kernel/Regularizer/mul/x?
 conv2d_27/kernel/Regularizer/mulMul+conv2d_27/kernel/Regularizer/mul/x:output:0)conv2d_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/mul?
2conv2d_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_28/kernel/Regularizer/SquareSquare:conv2d_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_28/kernel/Regularizer/Square?
"conv2d_28/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_28/kernel/Regularizer/Const?
 conv2d_28/kernel/Regularizer/SumSum'conv2d_28/kernel/Regularizer/Square:y:0+conv2d_28/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/Sum?
"conv2d_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_28/kernel/Regularizer/mul/x?
 conv2d_28/kernel/Regularizer/mulMul+conv2d_28/kernel/Regularizer/mul/x:output:0)conv2d_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/mul?
2conv2d_29/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype024
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_29/kernel/Regularizer/SquareSquare:conv2d_29/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2%
#conv2d_29/kernel/Regularizer/Square?
"conv2d_29/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_29/kernel/Regularizer/Const?
 conv2d_29/kernel/Regularizer/SumSum'conv2d_29/kernel/Regularizer/Square:y:0+conv2d_29/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/Sum?
"conv2d_29/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_29/kernel/Regularizer/mul/x?
 conv2d_29/kernel/Regularizer/mulMul+conv2d_29/kernel/Regularizer/mul/x:output:0)conv2d_29/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/mul?
2conv2d_30/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_30/kernel/Regularizer/SquareSquare:conv2d_30/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2%
#conv2d_30/kernel/Regularizer/Square?
"conv2d_30/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_30/kernel/Regularizer/Const?
 conv2d_30/kernel/Regularizer/SumSum'conv2d_30/kernel/Regularizer/Square:y:0+conv2d_30/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/Sum?
"conv2d_30/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_30/kernel/Regularizer/mul/x?
 conv2d_30/kernel/Regularizer/mulMul+conv2d_30/kernel/Regularizer/mul/x:output:0)conv2d_30/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/mul?
2conv2d_31/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_31/kernel/Regularizer/SquareSquare:conv2d_31/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2%
#conv2d_31/kernel/Regularizer/Square?
"conv2d_31/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_31/kernel/Regularizer/Const?
 conv2d_31/kernel/Regularizer/SumSum'conv2d_31/kernel/Regularizer/Square:y:0+conv2d_31/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/Sum?
"conv2d_31/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_31/kernel/Regularizer/mul/x?
 conv2d_31/kernel/Regularizer/mulMul+conv2d_31/kernel/Regularizer/mul/x:output:0)conv2d_31/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/mul?
1dense_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype023
1dense_12/kernel/Regularizer/Square/ReadVariableOp?
"dense_12/kernel/Regularizer/SquareSquare9dense_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?	?2$
"dense_12/kernel/Regularizer/Square?
!dense_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_12/kernel/Regularizer/Const?
dense_12/kernel/Regularizer/SumSum&dense_12/kernel/Regularizer/Square:y:0*dense_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/Sum?
!dense_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_12/kernel/Regularizer/mul/x?
dense_12/kernel/Regularizer/mulMul*dense_12/kernel/Regularizer/mul/x:output:0(dense_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/mul?
IdentityIdentitydense_13/Softmax:softmax:0!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp3^conv2d_26/kernel/Regularizer/Square/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp3^conv2d_27/kernel/Regularizer/Square/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp3^conv2d_28/kernel/Regularizer/Square/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp3^conv2d_29/kernel/Regularizer/Square/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp3^conv2d_30/kernel/Regularizer/Square/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp3^conv2d_31/kernel/Regularizer/Square/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp2^dense_12/kernel/Regularizer/Square/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2h
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2h
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2h
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2h
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2h
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2h
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2f
1dense_12/kernel/Regularizer/Square/ReadVariableOp1dense_12/kernel/Regularizer/Square/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_1_layer_call_fn_6969009

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_69679302
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_6969073?
;conv2d_29_kernel_regularizer_square_readvariableop_resource
identity??2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
2conv2d_29/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_29_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:@@*
dtype024
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_29/kernel/Regularizer/SquareSquare:conv2d_29/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2%
#conv2d_29/kernel/Regularizer/Square?
"conv2d_29/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_29/kernel/Regularizer/Const?
 conv2d_29/kernel/Regularizer/SumSum'conv2d_29/kernel/Regularizer/Square:y:0+conv2d_29/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/Sum?
"conv2d_29/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_29/kernel/Regularizer/mul/x?
 conv2d_29/kernel/Regularizer/mulMul+conv2d_29/kernel/Regularizer/mul/x:output:0)conv2d_29/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/mul?
IdentityIdentity$conv2d_29/kernel/Regularizer/mul:z:03^conv2d_29/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2conv2d_29/kernel/Regularizer/Square/ReadVariableOp
?	
?
E__inference_dense_13_layer_call_and_return_conditional_losses_6969020

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_29_layer_call_fn_6968875

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_29_layer_call_and_return_conditional_losses_69677822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
F__inference_conv2d_26_layer_call_and_return_conditional_losses_6968770

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
2conv2d_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_26/kernel/Regularizer/SquareSquare:conv2d_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_26/kernel/Regularizer/Square?
"conv2d_26/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_26/kernel/Regularizer/Const?
 conv2d_26/kernel/Regularizer/SumSum'conv2d_26/kernel/Regularizer/Square:y:0+conv2d_26/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/Sum?
"conv2d_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_26/kernel/Regularizer/mul/x?
 conv2d_26/kernel/Regularizer/mulMul+conv2d_26/kernel/Regularizer/mul/x:output:0)conv2d_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_26/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2conv2d_26/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
ׂ
?
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968104
conv2d_26_input
conv2d_26_6968016
conv2d_26_6968018
conv2d_27_6968021
conv2d_27_6968023
conv2d_28_6968027
conv2d_28_6968029
conv2d_29_6968032
conv2d_29_6968034
conv2d_30_6968038
conv2d_30_6968040
conv2d_31_6968043
conv2d_31_6968045
dense_12_6968050
dense_12_6968052
dense_13_6968056
dense_13_6968058
identity??!conv2d_26/StatefulPartitionedCall?2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?!conv2d_27/StatefulPartitionedCall?2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?!conv2d_28/StatefulPartitionedCall?2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?!conv2d_29/StatefulPartitionedCall?2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?!conv2d_30/StatefulPartitionedCall?2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?!conv2d_31/StatefulPartitionedCall?2conv2d_31/kernel/Regularizer/Square/ReadVariableOp? dense_12/StatefulPartitionedCall?1dense_12/kernel/Regularizer/Square/ReadVariableOp? dense_13/StatefulPartitionedCall?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCallconv2d_26_inputconv2d_26_6968016conv2d_26_6968018*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_69676822#
!conv2d_26/StatefulPartitionedCall?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0conv2d_27_6968021conv2d_27_6968023*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_69677152#
!conv2d_27/StatefulPartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_69676312"
 max_pooling2d_13/PartitionedCall?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_28_6968027conv2d_28_6968029*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_69677492#
!conv2d_28/StatefulPartitionedCall?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0conv2d_29_6968032conv2d_29_6968034*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_29_layer_call_and_return_conditional_losses_69677822#
!conv2d_29/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_69676432"
 max_pooling2d_14/PartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_30_6968038conv2d_30_6968040*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_30_layer_call_and_return_conditional_losses_69678162#
!conv2d_30/StatefulPartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0conv2d_31_6968043conv2d_31_6968045*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_31_layer_call_and_return_conditional_losses_69678492#
!conv2d_31/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_69676552"
 max_pooling2d_15/PartitionedCall?
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_69678722
flatten_6/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_12_6968050dense_12_6968052*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_69678972"
 dense_12/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_69679302
dropout_1/PartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_13_6968056dense_13_6968058*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_69679542"
 dense_13/StatefulPartitionedCall?
2conv2d_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_26_6968016*&
_output_shapes
: *
dtype024
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_26/kernel/Regularizer/SquareSquare:conv2d_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_26/kernel/Regularizer/Square?
"conv2d_26/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_26/kernel/Regularizer/Const?
 conv2d_26/kernel/Regularizer/SumSum'conv2d_26/kernel/Regularizer/Square:y:0+conv2d_26/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/Sum?
"conv2d_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_26/kernel/Regularizer/mul/x?
 conv2d_26/kernel/Regularizer/mulMul+conv2d_26/kernel/Regularizer/mul/x:output:0)conv2d_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/mul?
2conv2d_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_27_6968021*&
_output_shapes
:  *
dtype024
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_27/kernel/Regularizer/SquareSquare:conv2d_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2%
#conv2d_27/kernel/Regularizer/Square?
"conv2d_27/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_27/kernel/Regularizer/Const?
 conv2d_27/kernel/Regularizer/SumSum'conv2d_27/kernel/Regularizer/Square:y:0+conv2d_27/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/Sum?
"conv2d_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_27/kernel/Regularizer/mul/x?
 conv2d_27/kernel/Regularizer/mulMul+conv2d_27/kernel/Regularizer/mul/x:output:0)conv2d_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/mul?
2conv2d_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_28_6968027*&
_output_shapes
: @*
dtype024
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_28/kernel/Regularizer/SquareSquare:conv2d_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_28/kernel/Regularizer/Square?
"conv2d_28/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_28/kernel/Regularizer/Const?
 conv2d_28/kernel/Regularizer/SumSum'conv2d_28/kernel/Regularizer/Square:y:0+conv2d_28/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/Sum?
"conv2d_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_28/kernel/Regularizer/mul/x?
 conv2d_28/kernel/Regularizer/mulMul+conv2d_28/kernel/Regularizer/mul/x:output:0)conv2d_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/mul?
2conv2d_29/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_29_6968032*&
_output_shapes
:@@*
dtype024
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_29/kernel/Regularizer/SquareSquare:conv2d_29/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2%
#conv2d_29/kernel/Regularizer/Square?
"conv2d_29/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_29/kernel/Regularizer/Const?
 conv2d_29/kernel/Regularizer/SumSum'conv2d_29/kernel/Regularizer/Square:y:0+conv2d_29/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/Sum?
"conv2d_29/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_29/kernel/Regularizer/mul/x?
 conv2d_29/kernel/Regularizer/mulMul+conv2d_29/kernel/Regularizer/mul/x:output:0)conv2d_29/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/mul?
2conv2d_30/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_30_6968038*'
_output_shapes
:@?*
dtype024
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_30/kernel/Regularizer/SquareSquare:conv2d_30/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2%
#conv2d_30/kernel/Regularizer/Square?
"conv2d_30/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_30/kernel/Regularizer/Const?
 conv2d_30/kernel/Regularizer/SumSum'conv2d_30/kernel/Regularizer/Square:y:0+conv2d_30/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/Sum?
"conv2d_30/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_30/kernel/Regularizer/mul/x?
 conv2d_30/kernel/Regularizer/mulMul+conv2d_30/kernel/Regularizer/mul/x:output:0)conv2d_30/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/mul?
2conv2d_31/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_31_6968043*(
_output_shapes
:??*
dtype024
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_31/kernel/Regularizer/SquareSquare:conv2d_31/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2%
#conv2d_31/kernel/Regularizer/Square?
"conv2d_31/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_31/kernel/Regularizer/Const?
 conv2d_31/kernel/Regularizer/SumSum'conv2d_31/kernel/Regularizer/Square:y:0+conv2d_31/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/Sum?
"conv2d_31/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_31/kernel/Regularizer/mul/x?
 conv2d_31/kernel/Regularizer/mulMul+conv2d_31/kernel/Regularizer/mul/x:output:0)conv2d_31/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/mul?
1dense_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_12_6968050* 
_output_shapes
:
?	?*
dtype023
1dense_12/kernel/Regularizer/Square/ReadVariableOp?
"dense_12/kernel/Regularizer/SquareSquare9dense_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?	?2$
"dense_12/kernel/Regularizer/Square?
!dense_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_12/kernel/Regularizer/Const?
dense_12/kernel/Regularizer/SumSum&dense_12/kernel/Regularizer/Square:y:0*dense_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/Sum?
!dense_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_12/kernel/Regularizer/mul/x?
dense_12/kernel/Regularizer/mulMul*dense_12/kernel/Regularizer/mul/x:output:0(dense_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/mul?
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0"^conv2d_26/StatefulPartitionedCall3^conv2d_26/kernel/Regularizer/Square/ReadVariableOp"^conv2d_27/StatefulPartitionedCall3^conv2d_27/kernel/Regularizer/Square/ReadVariableOp"^conv2d_28/StatefulPartitionedCall3^conv2d_28/kernel/Regularizer/Square/ReadVariableOp"^conv2d_29/StatefulPartitionedCall3^conv2d_29/kernel/Regularizer/Square/ReadVariableOp"^conv2d_30/StatefulPartitionedCall3^conv2d_30/kernel/Regularizer/Square/ReadVariableOp"^conv2d_31/StatefulPartitionedCall3^conv2d_31/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall2^dense_12/kernel/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2h
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2h
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2h
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2h
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2h
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2h
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2f
1dense_12/kernel/Regularizer/Square/ReadVariableOp1dense_12/kernel/Regularizer/Square/ReadVariableOp2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_26_input
?
?
F__inference_conv2d_28_layer_call_and_return_conditional_losses_6967749

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
2conv2d_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_28/kernel/Regularizer/SquareSquare:conv2d_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_28/kernel/Regularizer/Square?
"conv2d_28/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_28/kernel/Regularizer/Const?
 conv2d_28/kernel/Regularizer/SumSum'conv2d_28/kernel/Regularizer/Square:y:0+conv2d_28/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/Sum?
"conv2d_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_28/kernel/Regularizer/mul/x?
 conv2d_28/kernel/Regularizer/mulMul+conv2d_28/kernel/Regularizer/mul/x:output:0)conv2d_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_28/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2conv2d_28/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
G
+__inference_flatten_6_layer_call_fn_6968950

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_69678722
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????	2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_6_layer_call_fn_6968747

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_69683262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_12_layer_call_and_return_conditional_losses_6968973

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_12/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype023
1dense_12/kernel/Regularizer/Square/ReadVariableOp?
"dense_12/kernel/Regularizer/SquareSquare9dense_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?	?2$
"dense_12/kernel/Regularizer/Square?
!dense_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_12/kernel/Regularizer/Const?
dense_12/kernel/Regularizer/SumSum&dense_12/kernel/Regularizer/Square:y:0*dense_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/Sum?
!dense_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_12/kernel/Regularizer/mul/x?
dense_12/kernel/Regularizer/mulMul*dense_12/kernel/Regularizer/mul/x:output:0(dense_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_12/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_12/kernel/Regularizer/Square/ReadVariableOp1dense_12/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?t
?
 __inference__traced_save_6969300
file_prefix/
+savev2_conv2d_26_kernel_read_readvariableop-
)savev2_conv2d_26_bias_read_readvariableop/
+savev2_conv2d_27_kernel_read_readvariableop-
)savev2_conv2d_27_bias_read_readvariableop/
+savev2_conv2d_28_kernel_read_readvariableop-
)savev2_conv2d_28_bias_read_readvariableop/
+savev2_conv2d_29_kernel_read_readvariableop-
)savev2_conv2d_29_bias_read_readvariableop/
+savev2_conv2d_30_kernel_read_readvariableop-
)savev2_conv2d_30_bias_read_readvariableop/
+savev2_conv2d_31_kernel_read_readvariableop-
)savev2_conv2d_31_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_26_kernel_m_read_readvariableop4
0savev2_adam_conv2d_26_bias_m_read_readvariableop6
2savev2_adam_conv2d_27_kernel_m_read_readvariableop4
0savev2_adam_conv2d_27_bias_m_read_readvariableop6
2savev2_adam_conv2d_28_kernel_m_read_readvariableop4
0savev2_adam_conv2d_28_bias_m_read_readvariableop6
2savev2_adam_conv2d_29_kernel_m_read_readvariableop4
0savev2_adam_conv2d_29_bias_m_read_readvariableop6
2savev2_adam_conv2d_30_kernel_m_read_readvariableop4
0savev2_adam_conv2d_30_bias_m_read_readvariableop6
2savev2_adam_conv2d_31_kernel_m_read_readvariableop4
0savev2_adam_conv2d_31_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop6
2savev2_adam_conv2d_26_kernel_v_read_readvariableop4
0savev2_adam_conv2d_26_bias_v_read_readvariableop6
2savev2_adam_conv2d_27_kernel_v_read_readvariableop4
0savev2_adam_conv2d_27_bias_v_read_readvariableop6
2savev2_adam_conv2d_28_kernel_v_read_readvariableop4
0savev2_adam_conv2d_28_bias_v_read_readvariableop6
2savev2_adam_conv2d_29_kernel_v_read_readvariableop4
0savev2_adam_conv2d_29_bias_v_read_readvariableop6
2savev2_adam_conv2d_30_kernel_v_read_readvariableop4
0savev2_adam_conv2d_30_bias_v_read_readvariableop6
2savev2_adam_conv2d_31_kernel_v_read_readvariableop4
0savev2_adam_conv2d_31_bias_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename? 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value?B?:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_26_kernel_read_readvariableop)savev2_conv2d_26_bias_read_readvariableop+savev2_conv2d_27_kernel_read_readvariableop)savev2_conv2d_27_bias_read_readvariableop+savev2_conv2d_28_kernel_read_readvariableop)savev2_conv2d_28_bias_read_readvariableop+savev2_conv2d_29_kernel_read_readvariableop)savev2_conv2d_29_bias_read_readvariableop+savev2_conv2d_30_kernel_read_readvariableop)savev2_conv2d_30_bias_read_readvariableop+savev2_conv2d_31_kernel_read_readvariableop)savev2_conv2d_31_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_26_kernel_m_read_readvariableop0savev2_adam_conv2d_26_bias_m_read_readvariableop2savev2_adam_conv2d_27_kernel_m_read_readvariableop0savev2_adam_conv2d_27_bias_m_read_readvariableop2savev2_adam_conv2d_28_kernel_m_read_readvariableop0savev2_adam_conv2d_28_bias_m_read_readvariableop2savev2_adam_conv2d_29_kernel_m_read_readvariableop0savev2_adam_conv2d_29_bias_m_read_readvariableop2savev2_adam_conv2d_30_kernel_m_read_readvariableop0savev2_adam_conv2d_30_bias_m_read_readvariableop2savev2_adam_conv2d_31_kernel_m_read_readvariableop0savev2_adam_conv2d_31_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop2savev2_adam_conv2d_26_kernel_v_read_readvariableop0savev2_adam_conv2d_26_bias_v_read_readvariableop2savev2_adam_conv2d_27_kernel_v_read_readvariableop0savev2_adam_conv2d_27_bias_v_read_readvariableop2savev2_adam_conv2d_28_kernel_v_read_readvariableop0savev2_adam_conv2d_28_bias_v_read_readvariableop2savev2_adam_conv2d_29_kernel_v_read_readvariableop0savev2_adam_conv2d_29_bias_v_read_readvariableop2savev2_adam_conv2d_30_kernel_v_read_readvariableop0savev2_adam_conv2d_30_bias_v_read_readvariableop2savev2_adam_conv2d_31_kernel_v_read_readvariableop0savev2_adam_conv2d_31_bias_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :  : : @:@:@@:@:@?:?:??:?:
?	?:?:	?:: : : : : : : : : : : :  : : @:@:@@:@:@?:?:??:?:
?	?:?:	?:: : :  : : @:@:@@:@:@?:?:??:?:
?	?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-	)
'
_output_shapes
:@?:!


_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:&"
 
_output_shapes
:
?	?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:, (
&
_output_shapes
:@@: !

_output_shapes
:@:-")
'
_output_shapes
:@?:!#

_output_shapes	
:?:.$*
(
_output_shapes
:??:!%

_output_shapes	
:?:&&"
 
_output_shapes
:
?	?:!'

_output_shapes	
:?:%(!

_output_shapes
:	?: )

_output_shapes
::,*(
&
_output_shapes
: : +

_output_shapes
: :,,(
&
_output_shapes
:  : -

_output_shapes
: :,.(
&
_output_shapes
: @: /

_output_shapes
:@:,0(
&
_output_shapes
:@@: 1

_output_shapes
:@:-2)
'
_output_shapes
:@?:!3

_output_shapes	
:?:.4*
(
_output_shapes
:??:!5

_output_shapes	
:?:&6"
 
_output_shapes
:
?	?:!7

_output_shapes	
:?:%8!

_output_shapes
:	?: 9

_output_shapes
:::

_output_shapes
: 
?

?
.__inference_sequential_6_layer_call_fn_6968233
conv2d_26_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_69681982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameconv2d_26_input
?
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_6968945

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????	2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????	2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_6969481
file_prefix%
!assignvariableop_conv2d_26_kernel%
!assignvariableop_1_conv2d_26_bias'
#assignvariableop_2_conv2d_27_kernel%
!assignvariableop_3_conv2d_27_bias'
#assignvariableop_4_conv2d_28_kernel%
!assignvariableop_5_conv2d_28_bias'
#assignvariableop_6_conv2d_29_kernel%
!assignvariableop_7_conv2d_29_bias'
#assignvariableop_8_conv2d_30_kernel%
!assignvariableop_9_conv2d_30_bias(
$assignvariableop_10_conv2d_31_kernel&
"assignvariableop_11_conv2d_31_bias'
#assignvariableop_12_dense_12_kernel%
!assignvariableop_13_dense_12_bias'
#assignvariableop_14_dense_13_kernel%
!assignvariableop_15_dense_13_bias!
assignvariableop_16_adam_iter#
assignvariableop_17_adam_beta_1#
assignvariableop_18_adam_beta_2"
assignvariableop_19_adam_decay*
&assignvariableop_20_adam_learning_rate
assignvariableop_21_total
assignvariableop_22_count
assignvariableop_23_total_1
assignvariableop_24_count_1/
+assignvariableop_25_adam_conv2d_26_kernel_m-
)assignvariableop_26_adam_conv2d_26_bias_m/
+assignvariableop_27_adam_conv2d_27_kernel_m-
)assignvariableop_28_adam_conv2d_27_bias_m/
+assignvariableop_29_adam_conv2d_28_kernel_m-
)assignvariableop_30_adam_conv2d_28_bias_m/
+assignvariableop_31_adam_conv2d_29_kernel_m-
)assignvariableop_32_adam_conv2d_29_bias_m/
+assignvariableop_33_adam_conv2d_30_kernel_m-
)assignvariableop_34_adam_conv2d_30_bias_m/
+assignvariableop_35_adam_conv2d_31_kernel_m-
)assignvariableop_36_adam_conv2d_31_bias_m.
*assignvariableop_37_adam_dense_12_kernel_m,
(assignvariableop_38_adam_dense_12_bias_m.
*assignvariableop_39_adam_dense_13_kernel_m,
(assignvariableop_40_adam_dense_13_bias_m/
+assignvariableop_41_adam_conv2d_26_kernel_v-
)assignvariableop_42_adam_conv2d_26_bias_v/
+assignvariableop_43_adam_conv2d_27_kernel_v-
)assignvariableop_44_adam_conv2d_27_bias_v/
+assignvariableop_45_adam_conv2d_28_kernel_v-
)assignvariableop_46_adam_conv2d_28_bias_v/
+assignvariableop_47_adam_conv2d_29_kernel_v-
)assignvariableop_48_adam_conv2d_29_bias_v/
+assignvariableop_49_adam_conv2d_30_kernel_v-
)assignvariableop_50_adam_conv2d_30_bias_v/
+assignvariableop_51_adam_conv2d_31_kernel_v-
)assignvariableop_52_adam_conv2d_31_bias_v.
*assignvariableop_53_adam_dense_12_kernel_v,
(assignvariableop_54_adam_dense_12_bias_v.
*assignvariableop_55_adam_dense_13_kernel_v,
(assignvariableop_56_adam_dense_13_bias_v
identity_58??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9? 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value?B?:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_26_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_26_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_27_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_27_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_28_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_28_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_29_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_29_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_30_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_30_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_31_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_31_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_12_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_12_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_13_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_13_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_26_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_26_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_27_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_27_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_28_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_28_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_29_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_29_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_30_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_30_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_31_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_31_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_12_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_12_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_13_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_13_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_26_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_26_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_27_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_27_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_28_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_28_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_29_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_29_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_30_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_30_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_31_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_31_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_12_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_12_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_13_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_13_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_569
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_57?

Identity_58IdentityIdentity_57:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_58"#
identity_58Identity_58:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
F__inference_conv2d_31_layer_call_and_return_conditional_losses_6967849

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
2conv2d_31/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_31/kernel/Regularizer/SquareSquare:conv2d_31/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2%
#conv2d_31/kernel/Regularizer/Square?
"conv2d_31/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_31/kernel/Regularizer/Const?
 conv2d_31/kernel/Regularizer/SumSum'conv2d_31/kernel/Regularizer/Square:y:0+conv2d_31/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/Sum?
"conv2d_31/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_31/kernel/Regularizer/mul/x?
 conv2d_31/kernel/Regularizer/mulMul+conv2d_31/kernel/Regularizer/mul/x:output:0)conv2d_31/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_31/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2conv2d_31/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_28_layer_call_and_return_conditional_losses_6968834

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
2conv2d_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_28/kernel/Regularizer/SquareSquare:conv2d_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_28/kernel/Regularizer/Square?
"conv2d_28/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_28/kernel/Regularizer/Const?
 conv2d_28/kernel/Regularizer/SumSum'conv2d_28/kernel/Regularizer/Square:y:0+conv2d_28/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/Sum?
"conv2d_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_28/kernel/Regularizer/mul/x?
 conv2d_28/kernel/Regularizer/mulMul+conv2d_28/kernel/Regularizer/mul/x:output:0)conv2d_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_28/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2conv2d_28/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
F__inference_conv2d_29_layer_call_and_return_conditional_losses_6967782

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
2conv2d_29/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype024
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_29/kernel/Regularizer/SquareSquare:conv2d_29/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2%
#conv2d_29/kernel/Regularizer/Square?
"conv2d_29/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_29/kernel/Regularizer/Const?
 conv2d_29/kernel/Regularizer/SumSum'conv2d_29/kernel/Regularizer/Square:y:0+conv2d_29/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/Sum?
"conv2d_29/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_29/kernel/Regularizer/mul/x?
 conv2d_29/kernel/Regularizer/mulMul+conv2d_29/kernel/Regularizer/mul/x:output:0)conv2d_29/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_29/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2conv2d_29/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968565

inputs,
(conv2d_26_conv2d_readvariableop_resource-
)conv2d_26_biasadd_readvariableop_resource,
(conv2d_27_conv2d_readvariableop_resource-
)conv2d_27_biasadd_readvariableop_resource,
(conv2d_28_conv2d_readvariableop_resource-
)conv2d_28_biasadd_readvariableop_resource,
(conv2d_29_conv2d_readvariableop_resource-
)conv2d_29_biasadd_readvariableop_resource,
(conv2d_30_conv2d_readvariableop_resource-
)conv2d_30_biasadd_readvariableop_resource,
(conv2d_31_conv2d_readvariableop_resource-
)conv2d_31_biasadd_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource
identity?? conv2d_26/BiasAdd/ReadVariableOp?conv2d_26/Conv2D/ReadVariableOp?2conv2d_26/kernel/Regularizer/Square/ReadVariableOp? conv2d_27/BiasAdd/ReadVariableOp?conv2d_27/Conv2D/ReadVariableOp?2conv2d_27/kernel/Regularizer/Square/ReadVariableOp? conv2d_28/BiasAdd/ReadVariableOp?conv2d_28/Conv2D/ReadVariableOp?2conv2d_28/kernel/Regularizer/Square/ReadVariableOp? conv2d_29/BiasAdd/ReadVariableOp?conv2d_29/Conv2D/ReadVariableOp?2conv2d_29/kernel/Regularizer/Square/ReadVariableOp? conv2d_30/BiasAdd/ReadVariableOp?conv2d_30/Conv2D/ReadVariableOp?2conv2d_30/kernel/Regularizer/Square/ReadVariableOp? conv2d_31/BiasAdd/ReadVariableOp?conv2d_31/Conv2D/ReadVariableOp?2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?1dense_12/kernel/Regularizer/Square/ReadVariableOp?dense_13/BiasAdd/ReadVariableOp?dense_13/MatMul/ReadVariableOp?
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_26/Conv2D/ReadVariableOp?
conv2d_26/Conv2DConv2Dinputs'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_26/Conv2D?
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_26/BiasAdd/ReadVariableOp?
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_26/BiasAdd~
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_26/Relu?
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_27/Conv2D/ReadVariableOp?
conv2d_27/Conv2DConv2Dconv2d_26/Relu:activations:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_27/Conv2D?
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_27/BiasAdd/ReadVariableOp?
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_27/BiasAdd~
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_27/Relu?
max_pooling2d_13/MaxPoolMaxPoolconv2d_27/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_13/MaxPool?
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_28/Conv2D/ReadVariableOp?
conv2d_28/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_28/Conv2D?
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_28/BiasAdd/ReadVariableOp?
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_28/BiasAdd~
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_28/Relu?
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_29/Conv2D/ReadVariableOp?
conv2d_29/Conv2DConv2Dconv2d_28/Relu:activations:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_29/Conv2D?
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_29/BiasAdd/ReadVariableOp?
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_29/BiasAdd~
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_29/Relu?
max_pooling2d_14/MaxPoolMaxPoolconv2d_29/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPool?
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_30/Conv2D/ReadVariableOp?
conv2d_30/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_30/Conv2D?
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_30/BiasAdd/ReadVariableOp?
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_30/BiasAdd
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_30/Relu?
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_31/Conv2D/ReadVariableOp?
conv2d_31/Conv2DConv2Dconv2d_30/Relu:activations:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_31/Conv2D?
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_31/BiasAdd/ReadVariableOp?
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_31/BiasAdd
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_31/Relu?
max_pooling2d_15/MaxPoolMaxPoolconv2d_31/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPools
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_6/Const?
flatten_6/ReshapeReshape!max_pooling2d_15/MaxPool:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:??????????	2
flatten_6/Reshape?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulflatten_6/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_12/MatMul?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_12/BiasAdd/ReadVariableOp?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_12/BiasAddt
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_12/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMuldense_12/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/dropout/Mul}
dropout_1/dropout/ShapeShapedense_12/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/dropout/Mul_1?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_13/MatMul/ReadVariableOp?
dense_13/MatMulMatMuldropout_1/dropout/Mul_1:z:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_13/MatMul?
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOp?
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_13/BiasAdd|
dense_13/SoftmaxSoftmaxdense_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_13/Softmax?
2conv2d_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_26/kernel/Regularizer/SquareSquare:conv2d_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_26/kernel/Regularizer/Square?
"conv2d_26/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_26/kernel/Regularizer/Const?
 conv2d_26/kernel/Regularizer/SumSum'conv2d_26/kernel/Regularizer/Square:y:0+conv2d_26/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/Sum?
"conv2d_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_26/kernel/Regularizer/mul/x?
 conv2d_26/kernel/Regularizer/mulMul+conv2d_26/kernel/Regularizer/mul/x:output:0)conv2d_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_26/kernel/Regularizer/mul?
2conv2d_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype024
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_27/kernel/Regularizer/SquareSquare:conv2d_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2%
#conv2d_27/kernel/Regularizer/Square?
"conv2d_27/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_27/kernel/Regularizer/Const?
 conv2d_27/kernel/Regularizer/SumSum'conv2d_27/kernel/Regularizer/Square:y:0+conv2d_27/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/Sum?
"conv2d_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_27/kernel/Regularizer/mul/x?
 conv2d_27/kernel/Regularizer/mulMul+conv2d_27/kernel/Regularizer/mul/x:output:0)conv2d_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_27/kernel/Regularizer/mul?
2conv2d_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_28/kernel/Regularizer/SquareSquare:conv2d_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_28/kernel/Regularizer/Square?
"conv2d_28/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_28/kernel/Regularizer/Const?
 conv2d_28/kernel/Regularizer/SumSum'conv2d_28/kernel/Regularizer/Square:y:0+conv2d_28/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/Sum?
"conv2d_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_28/kernel/Regularizer/mul/x?
 conv2d_28/kernel/Regularizer/mulMul+conv2d_28/kernel/Regularizer/mul/x:output:0)conv2d_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_28/kernel/Regularizer/mul?
2conv2d_29/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype024
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_29/kernel/Regularizer/SquareSquare:conv2d_29/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2%
#conv2d_29/kernel/Regularizer/Square?
"conv2d_29/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_29/kernel/Regularizer/Const?
 conv2d_29/kernel/Regularizer/SumSum'conv2d_29/kernel/Regularizer/Square:y:0+conv2d_29/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/Sum?
"conv2d_29/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_29/kernel/Regularizer/mul/x?
 conv2d_29/kernel/Regularizer/mulMul+conv2d_29/kernel/Regularizer/mul/x:output:0)conv2d_29/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/mul?
2conv2d_30/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_30/kernel/Regularizer/SquareSquare:conv2d_30/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2%
#conv2d_30/kernel/Regularizer/Square?
"conv2d_30/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_30/kernel/Regularizer/Const?
 conv2d_30/kernel/Regularizer/SumSum'conv2d_30/kernel/Regularizer/Square:y:0+conv2d_30/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/Sum?
"conv2d_30/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_30/kernel/Regularizer/mul/x?
 conv2d_30/kernel/Regularizer/mulMul+conv2d_30/kernel/Regularizer/mul/x:output:0)conv2d_30/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/mul?
2conv2d_31/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_31/kernel/Regularizer/SquareSquare:conv2d_31/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2%
#conv2d_31/kernel/Regularizer/Square?
"conv2d_31/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_31/kernel/Regularizer/Const?
 conv2d_31/kernel/Regularizer/SumSum'conv2d_31/kernel/Regularizer/Square:y:0+conv2d_31/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/Sum?
"conv2d_31/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_31/kernel/Regularizer/mul/x?
 conv2d_31/kernel/Regularizer/mulMul+conv2d_31/kernel/Regularizer/mul/x:output:0)conv2d_31/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_31/kernel/Regularizer/mul?
1dense_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype023
1dense_12/kernel/Regularizer/Square/ReadVariableOp?
"dense_12/kernel/Regularizer/SquareSquare9dense_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?	?2$
"dense_12/kernel/Regularizer/Square?
!dense_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_12/kernel/Regularizer/Const?
dense_12/kernel/Regularizer/SumSum&dense_12/kernel/Regularizer/Square:y:0*dense_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/Sum?
!dense_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_12/kernel/Regularizer/mul/x?
dense_12/kernel/Regularizer/mulMul*dense_12/kernel/Regularizer/mul/x:output:0(dense_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_12/kernel/Regularizer/mul?
IdentityIdentitydense_13/Softmax:softmax:0!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp3^conv2d_26/kernel/Regularizer/Square/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp3^conv2d_27/kernel/Regularizer/Square/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp3^conv2d_28/kernel/Regularizer/Square/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp3^conv2d_29/kernel/Regularizer/Square/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp3^conv2d_30/kernel/Regularizer/Square/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp3^conv2d_31/kernel/Regularizer/Square/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp2^dense_12/kernel/Regularizer/Square/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2h
2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2conv2d_26/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2h
2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2conv2d_27/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2h
2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2conv2d_28/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2h
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2h
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2h
2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2conv2d_31/kernel/Regularizer/Square/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2f
1dense_12/kernel/Regularizer/Square/ReadVariableOp1dense_12/kernel/Regularizer/Square/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_6967930

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_6_layer_call_fn_6968710

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_69681982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_29_layer_call_and_return_conditional_losses_6968866

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
2conv2d_29/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype024
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_29/kernel/Regularizer/SquareSquare:conv2d_29/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2%
#conv2d_29/kernel/Regularizer/Square?
"conv2d_29/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_29/kernel/Regularizer/Const?
 conv2d_29/kernel/Regularizer/SumSum'conv2d_29/kernel/Regularizer/Square:y:0+conv2d_29/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/Sum?
"conv2d_29/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_29/kernel/Regularizer/mul/x?
 conv2d_29/kernel/Regularizer/mulMul+conv2d_29/kernel/Regularizer/mul/x:output:0)conv2d_29/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_29/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_29/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_29/kernel/Regularizer/Square/ReadVariableOp2conv2d_29/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
F__inference_conv2d_30_layer_call_and_return_conditional_losses_6967816

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
2conv2d_30/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_30/kernel/Regularizer/SquareSquare:conv2d_30/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2%
#conv2d_30/kernel/Regularizer/Square?
"conv2d_30/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_30/kernel/Regularizer/Const?
 conv2d_30/kernel/Regularizer/SumSum'conv2d_30/kernel/Regularizer/Square:y:0+conv2d_30/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/Sum?
"conv2d_30/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"conv2d_30/kernel/Regularizer/mul/x?
 conv2d_30/kernel/Regularizer/mulMul+conv2d_30/kernel/Regularizer/mul/x:output:0)conv2d_30/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_30/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_30/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_30/kernel/Regularizer/Square/ReadVariableOp2conv2d_30/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_conv2d_28_layer_call_fn_6968843

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_69677492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_13_layer_call_fn_6967637

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_69676312
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_6968994

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_26_input@
!serving_default_conv2d_26_input:0?????????<
dense_130
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?w
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"?r
_tf_keras_sequential?r{"class_name": "Sequential", "name": "sequential_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_26_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_26", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_30", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_31", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 27, 27, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_26_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_26", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_30", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_31", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "auto", "name": "categorical_crossentropy", "from_logits": true, "label_smoothing": 0}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "categorical_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_26", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 27, 27, 3]}}
?


kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 27, 27, 32]}}
?
 regularization_losses
!	variables
"trainable_variables
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


$kernel
%bias
&regularization_losses
'	variables
(trainable_variables
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 13, 13, 32]}}
?


*kernel
+bias
,regularization_losses
-	variables
.trainable_variables
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 13, 13, 64]}}
?
0regularization_losses
1	variables
2trainable_variables
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


4kernel
5bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_30", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 6, 64]}}
?


:kernel
;bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_31", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 6, 128]}}
?
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

Hkernel
Ibias
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1152}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1152]}}
?
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

Rkernel
Sbias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_ratem?m?m?m?$m?%m?*m?+m?4m?5m?:m?;m?Hm?Im?Rm?Sm?v?v?v?v?$v?%v?*v?+v?4v?5v?:v?;v?Hv?Iv?Rv?Sv?"
	optimizer
X
?0
?1
?2
?3
?4
?5
?6"
trackable_list_wrapper
?
0
1
2
3
$4
%5
*6
+7
48
59
:10
;11
H12
I13
R14
S15"
trackable_list_wrapper
?
0
1
2
3
$4
%5
*6
+7
48
59
:10
;11
H12
I13
R14
S15"
trackable_list_wrapper
?
regularization_losses
]metrics
^layer_metrics

_layers
	variables
`layer_regularization_losses
anon_trainable_variables
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:( 2conv2d_26/kernel
: 2conv2d_26/bias
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses
bmetrics
clayer_metrics

dlayers
	variables
elayer_regularization_losses
fnon_trainable_variables
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_27/kernel
: 2conv2d_27/bias
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses
gmetrics
hlayer_metrics

ilayers
	variables
jlayer_regularization_losses
knon_trainable_variables
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 regularization_losses
lmetrics
mlayer_metrics

nlayers
!	variables
olayer_regularization_losses
pnon_trainable_variables
"trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_28/kernel
:@2conv2d_28/bias
(
?0"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
&regularization_losses
qmetrics
rlayer_metrics

slayers
'	variables
tlayer_regularization_losses
unon_trainable_variables
(trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_29/kernel
:@2conv2d_29/bias
(
?0"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
,regularization_losses
vmetrics
wlayer_metrics

xlayers
-	variables
ylayer_regularization_losses
znon_trainable_variables
.trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
0regularization_losses
{metrics
|layer_metrics

}layers
1	variables
~layer_regularization_losses
non_trainable_variables
2trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_30/kernel
:?2conv2d_30/bias
(
?0"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
6regularization_losses
?metrics
?layer_metrics
?layers
7	variables
 ?layer_regularization_losses
?non_trainable_variables
8trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_31/kernel
:?2conv2d_31/bias
(
?0"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
<regularization_losses
?metrics
?layer_metrics
?layers
=	variables
 ?layer_regularization_losses
?non_trainable_variables
>trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
@regularization_losses
?metrics
?layer_metrics
?layers
A	variables
 ?layer_regularization_losses
?non_trainable_variables
Btrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dregularization_losses
?metrics
?layer_metrics
?layers
E	variables
 ?layer_regularization_losses
?non_trainable_variables
Ftrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
?	?2dense_12/kernel
:?2dense_12/bias
(
?0"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
?
Jregularization_losses
?metrics
?layer_metrics
?layers
K	variables
 ?layer_regularization_losses
?non_trainable_variables
Ltrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nregularization_losses
?metrics
?layer_metrics
?layers
O	variables
 ?layer_regularization_losses
?non_trainable_variables
Ptrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_13/kernel
:2dense_13/bias
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
?
Tregularization_losses
?metrics
?layer_metrics
?layers
U	variables
 ?layer_regularization_losses
?non_trainable_variables
Vtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
~
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
12"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "categorical_accuracy", "dtype": "float32", "config": {"name": "categorical_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:- 2Adam/conv2d_26/kernel/m
!: 2Adam/conv2d_26/bias/m
/:-  2Adam/conv2d_27/kernel/m
!: 2Adam/conv2d_27/bias/m
/:- @2Adam/conv2d_28/kernel/m
!:@2Adam/conv2d_28/bias/m
/:-@@2Adam/conv2d_29/kernel/m
!:@2Adam/conv2d_29/bias/m
0:.@?2Adam/conv2d_30/kernel/m
": ?2Adam/conv2d_30/bias/m
1:/??2Adam/conv2d_31/kernel/m
": ?2Adam/conv2d_31/bias/m
(:&
?	?2Adam/dense_12/kernel/m
!:?2Adam/dense_12/bias/m
':%	?2Adam/dense_13/kernel/m
 :2Adam/dense_13/bias/m
/:- 2Adam/conv2d_26/kernel/v
!: 2Adam/conv2d_26/bias/v
/:-  2Adam/conv2d_27/kernel/v
!: 2Adam/conv2d_27/bias/v
/:- @2Adam/conv2d_28/kernel/v
!:@2Adam/conv2d_28/bias/v
/:-@@2Adam/conv2d_29/kernel/v
!:@2Adam/conv2d_29/bias/v
0:.@?2Adam/conv2d_30/kernel/v
": ?2Adam/conv2d_30/bias/v
1:/??2Adam/conv2d_31/kernel/v
": ?2Adam/conv2d_31/bias/v
(:&
?	?2Adam/dense_12/kernel/v
!:?2Adam/dense_12/bias/v
':%	?2Adam/dense_13/kernel/v
 :2Adam/dense_13/bias/v
?2?
"__inference__wrapped_model_6967625?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *6?3
1?.
conv2d_26_input?????????
?2?
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968565
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968673
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968104
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968013?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_sequential_6_layer_call_fn_6968361
.__inference_sequential_6_layer_call_fn_6968233
.__inference_sequential_6_layer_call_fn_6968710
.__inference_sequential_6_layer_call_fn_6968747?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_conv2d_26_layer_call_and_return_conditional_losses_6968770?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_26_layer_call_fn_6968779?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_27_layer_call_and_return_conditional_losses_6968802?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_27_layer_call_fn_6968811?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_6967631?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
2__inference_max_pooling2d_13_layer_call_fn_6967637?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
F__inference_conv2d_28_layer_call_and_return_conditional_losses_6968834?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_28_layer_call_fn_6968843?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_29_layer_call_and_return_conditional_losses_6968866?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_29_layer_call_fn_6968875?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_6967643?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
2__inference_max_pooling2d_14_layer_call_fn_6967649?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
F__inference_conv2d_30_layer_call_and_return_conditional_losses_6968898?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_30_layer_call_fn_6968907?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_31_layer_call_and_return_conditional_losses_6968930?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_31_layer_call_fn_6968939?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_6967655?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
2__inference_max_pooling2d_15_layer_call_fn_6967661?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
F__inference_flatten_6_layer_call_and_return_conditional_losses_6968945?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_6_layer_call_fn_6968950?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_12_layer_call_and_return_conditional_losses_6968973?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_12_layer_call_fn_6968982?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_1_layer_call_and_return_conditional_losses_6968999
F__inference_dropout_1_layer_call_and_return_conditional_losses_6968994?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_1_layer_call_fn_6969004
+__inference_dropout_1_layer_call_fn_6969009?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dense_13_layer_call_and_return_conditional_losses_6969020?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_13_layer_call_fn_6969029?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_6969040?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_6969051?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_6969062?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_6969073?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_6969084?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_5_6969095?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_6_6969106?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
%__inference_signature_wrapper_6968450conv2d_26_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_6967625?$%*+45:;HIRS@?=
6?3
1?.
conv2d_26_input?????????
? "3?0
.
dense_13"?
dense_13??????????
F__inference_conv2d_26_layer_call_and_return_conditional_losses_6968770l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
+__inference_conv2d_26_layer_call_fn_6968779_7?4
-?*
(?%
inputs?????????
? " ?????????? ?
F__inference_conv2d_27_layer_call_and_return_conditional_losses_6968802l7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
+__inference_conv2d_27_layer_call_fn_6968811_7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
F__inference_conv2d_28_layer_call_and_return_conditional_losses_6968834l$%7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_28_layer_call_fn_6968843_$%7?4
-?*
(?%
inputs????????? 
? " ??????????@?
F__inference_conv2d_29_layer_call_and_return_conditional_losses_6968866l*+7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_29_layer_call_fn_6968875_*+7?4
-?*
(?%
inputs?????????@
? " ??????????@?
F__inference_conv2d_30_layer_call_and_return_conditional_losses_6968898m457?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_30_layer_call_fn_6968907`457?4
-?*
(?%
inputs?????????@
? "!????????????
F__inference_conv2d_31_layer_call_and_return_conditional_losses_6968930n:;8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_31_layer_call_fn_6968939a:;8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_dense_12_layer_call_and_return_conditional_losses_6968973^HI0?-
&?#
!?
inputs??????????	
? "&?#
?
0??????????
? 
*__inference_dense_12_layer_call_fn_6968982QHI0?-
&?#
!?
inputs??????????	
? "????????????
E__inference_dense_13_layer_call_and_return_conditional_losses_6969020]RS0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_13_layer_call_fn_6969029PRS0?-
&?#
!?
inputs??????????
? "???????????
F__inference_dropout_1_layer_call_and_return_conditional_losses_6968994^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_6968999^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
+__inference_dropout_1_layer_call_fn_6969004Q4?1
*?'
!?
inputs??????????
p
? "????????????
+__inference_dropout_1_layer_call_fn_6969009Q4?1
*?'
!?
inputs??????????
p 
? "????????????
F__inference_flatten_6_layer_call_and_return_conditional_losses_6968945b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????	
? ?
+__inference_flatten_6_layer_call_fn_6968950U8?5
.?+
)?&
inputs??????????
? "???????????	<
__inference_loss_fn_0_6969040?

? 
? "? <
__inference_loss_fn_1_6969051?

? 
? "? <
__inference_loss_fn_2_6969062$?

? 
? "? <
__inference_loss_fn_3_6969073*?

? 
? "? <
__inference_loss_fn_4_69690844?

? 
? "? <
__inference_loss_fn_5_6969095:?

? 
? "? <
__inference_loss_fn_6_6969106H?

? 
? "? ?
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_6967631?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_13_layer_call_fn_6967637?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_6967643?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_14_layer_call_fn_6967649?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_6967655?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_15_layer_call_fn_6967661?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968013?$%*+45:;HIRSH?E
>?;
1?.
conv2d_26_input?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968104?$%*+45:;HIRSH?E
>?;
1?.
conv2d_26_input?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968565z$%*+45:;HIRS??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_6_layer_call_and_return_conditional_losses_6968673z$%*+45:;HIRS??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
.__inference_sequential_6_layer_call_fn_6968233v$%*+45:;HIRSH?E
>?;
1?.
conv2d_26_input?????????
p

 
? "???????????
.__inference_sequential_6_layer_call_fn_6968361v$%*+45:;HIRSH?E
>?;
1?.
conv2d_26_input?????????
p 

 
? "???????????
.__inference_sequential_6_layer_call_fn_6968710m$%*+45:;HIRS??<
5?2
(?%
inputs?????????
p

 
? "???????????
.__inference_sequential_6_layer_call_fn_6968747m$%*+45:;HIRS??<
5?2
(?%
inputs?????????
p 

 
? "???????????
%__inference_signature_wrapper_6968450?$%*+45:;HIRSS?P
? 
I?F
D
conv2d_26_input1?.
conv2d_26_input?????????"3?0
.
dense_13"?
dense_13?????????