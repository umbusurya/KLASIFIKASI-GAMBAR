�
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.17.02v2.17.0-rc1-2-gad6d8cc177d8��
�
0sequential/batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31sequential/batch_normalization_6/moving_variance/*
dtype0*
shape: *A
shared_name20sequential/batch_normalization_6/moving_variance
�
Dsequential/batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp0sequential/batch_normalization_6/moving_variance*
_output_shapes
: *
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOp0sequential/batch_normalization_6/moving_variance*
_class
loc:@Variable*
_output_shapes
: *
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
�
,sequential/batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-sequential/batch_normalization_6/moving_mean/*
dtype0*
shape: *=
shared_name.,sequential/batch_normalization_6/moving_mean
�
@sequential/batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp,sequential/batch_normalization_6/moving_mean*
_output_shapes
: *
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOp,sequential/batch_normalization_6/moving_mean*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape: *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
�
0sequential/batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31sequential/batch_normalization_5/moving_variance/*
dtype0*
shape:@*A
shared_name20sequential/batch_normalization_5/moving_variance
�
Dsequential/batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp0sequential/batch_normalization_5/moving_variance*
_output_shapes
:@*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOp0sequential/batch_normalization_5/moving_variance*
_class
loc:@Variable_2*
_output_shapes
:@*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:@*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:@*
dtype0
�
,sequential/batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-sequential/batch_normalization_5/moving_mean/*
dtype0*
shape:@*=
shared_name.,sequential/batch_normalization_5/moving_mean
�
@sequential/batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp,sequential/batch_normalization_5/moving_mean*
_output_shapes
:@*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOp,sequential/batch_normalization_5/moving_mean*
_class
loc:@Variable_3*
_output_shapes
:@*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:@*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
e
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:@*
dtype0
�
0sequential/batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31sequential/batch_normalization_4/moving_variance/*
dtype0*
shape:�*A
shared_name20sequential/batch_normalization_4/moving_variance
�
Dsequential/batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp0sequential/batch_normalization_4/moving_variance*
_output_shapes	
:�*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOp0sequential/batch_normalization_4/moving_variance*
_class
loc:@Variable_4*
_output_shapes	
:�*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:�*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
f
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes	
:�*
dtype0
�
,sequential/batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-sequential/batch_normalization_4/moving_mean/*
dtype0*
shape:�*=
shared_name.,sequential/batch_normalization_4/moving_mean
�
@sequential/batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp,sequential/batch_normalization_4/moving_mean*
_output_shapes	
:�*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOp,sequential/batch_normalization_4/moving_mean*
_class
loc:@Variable_5*
_output_shapes	
:�*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:�*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
f
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes	
:�*
dtype0
�
0sequential/batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31sequential/batch_normalization_3/moving_variance/*
dtype0*
shape:�*A
shared_name20sequential/batch_normalization_3/moving_variance
�
Dsequential/batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp0sequential/batch_normalization_3/moving_variance*
_output_shapes	
:�*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOp0sequential/batch_normalization_3/moving_variance*
_class
loc:@Variable_6*
_output_shapes	
:�*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:�*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
f
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes	
:�*
dtype0
�
,sequential/batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-sequential/batch_normalization_3/moving_mean/*
dtype0*
shape:�*=
shared_name.,sequential/batch_normalization_3/moving_mean
�
@sequential/batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp,sequential/batch_normalization_3/moving_mean*
_output_shapes	
:�*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOp,sequential/batch_normalization_3/moving_mean*
_class
loc:@Variable_7*
_output_shapes	
:�*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:�*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
f
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes	
:�*
dtype0
�
0sequential/batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31sequential/batch_normalization_2/moving_variance/*
dtype0*
shape:@*A
shared_name20sequential/batch_normalization_2/moving_variance
�
Dsequential/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp0sequential/batch_normalization_2/moving_variance*
_output_shapes
:@*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOp0sequential/batch_normalization_2/moving_variance*
_class
loc:@Variable_8*
_output_shapes
:@*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:@*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:@*
dtype0
�
,sequential/batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-sequential/batch_normalization_2/moving_mean/*
dtype0*
shape:@*=
shared_name.,sequential/batch_normalization_2/moving_mean
�
@sequential/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp,sequential/batch_normalization_2/moving_mean*
_output_shapes
:@*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOp,sequential/batch_normalization_2/moving_mean*
_class
loc:@Variable_9*
_output_shapes
:@*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:@*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
e
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
:@*
dtype0
�
0sequential/batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31sequential/batch_normalization_1/moving_variance/*
dtype0*
shape: *A
shared_name20sequential/batch_normalization_1/moving_variance
�
Dsequential/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp0sequential/batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOp0sequential/batch_normalization_1/moving_variance*
_class
loc:@Variable_10*
_output_shapes
: *
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape: *
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
g
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
: *
dtype0
�
,sequential/batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-sequential/batch_normalization_1/moving_mean/*
dtype0*
shape: *=
shared_name.,sequential/batch_normalization_1/moving_mean
�
@sequential/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp,sequential/batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOp,sequential/batch_normalization_1/moving_mean*
_class
loc:@Variable_11*
_output_shapes
: *
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape: *
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
g
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*
_output_shapes
: *
dtype0
�
.sequential/batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *?

debug_name1/sequential/batch_normalization/moving_variance/*
dtype0*
shape:*?
shared_name0.sequential/batch_normalization/moving_variance
�
Bsequential/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp.sequential/batch_normalization/moving_variance*
_output_shapes
:*
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOp.sequential/batch_normalization/moving_variance*
_class
loc:@Variable_12*
_output_shapes
:*
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape:*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
g
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
:*
dtype0
�
*sequential/batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *;

debug_name-+sequential/batch_normalization/moving_mean/*
dtype0*
shape:*;
shared_name,*sequential/batch_normalization/moving_mean
�
>sequential/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp*sequential/batch_normalization/moving_mean*
_output_shapes
:*
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOp*sequential/batch_normalization/moving_mean*
_class
loc:@Variable_13*
_output_shapes
:*
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape:*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
g
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
:*
dtype0
�
sequential/dense_3/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense_3/bias/*
dtype0*
shape:*(
shared_namesequential/dense_3/bias

+sequential/dense_3/bias/Read/ReadVariableOpReadVariableOpsequential/dense_3/bias*
_output_shapes
:*
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOpsequential/dense_3/bias*
_class
loc:@Variable_14*
_output_shapes
:*
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape:*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
g
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes
:*
dtype0
�
sequential/dense_3/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential/dense_3/kernel/*
dtype0*
shape
: **
shared_namesequential/dense_3/kernel
�
-sequential/dense_3/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_3/kernel*
_output_shapes

: *
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOpsequential/dense_3/kernel*
_class
loc:@Variable_15*
_output_shapes

: *
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape
: *
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
k
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes

: *
dtype0
�
%sequential/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *6

debug_name(&sequential/batch_normalization_6/beta/*
dtype0*
shape: *6
shared_name'%sequential/batch_normalization_6/beta
�
9sequential/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp%sequential/batch_normalization_6/beta*
_output_shapes
: *
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOp%sequential/batch_normalization_6/beta*
_class
loc:@Variable_16*
_output_shapes
: *
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape: *
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
g
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes
: *
dtype0
�
&sequential/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'sequential/batch_normalization_6/gamma/*
dtype0*
shape: *7
shared_name(&sequential/batch_normalization_6/gamma
�
:sequential/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp&sequential/batch_normalization_6/gamma*
_output_shapes
: *
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOp&sequential/batch_normalization_6/gamma*
_class
loc:@Variable_17*
_output_shapes
: *
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape: *
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
g
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes
: *
dtype0
�
sequential/dense_2/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense_2/bias/*
dtype0*
shape: *(
shared_namesequential/dense_2/bias

+sequential/dense_2/bias/Read/ReadVariableOpReadVariableOpsequential/dense_2/bias*
_output_shapes
: *
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOpsequential/dense_2/bias*
_class
loc:@Variable_18*
_output_shapes
: *
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape: *
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
g
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes
: *
dtype0
�
sequential/dense_2/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential/dense_2/kernel/*
dtype0*
shape
:@ **
shared_namesequential/dense_2/kernel
�
-sequential/dense_2/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_2/kernel*
_output_shapes

:@ *
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOpsequential/dense_2/kernel*
_class
loc:@Variable_19*
_output_shapes

:@ *
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape
:@ *
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
k
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*
_output_shapes

:@ *
dtype0
�
%sequential/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *6

debug_name(&sequential/batch_normalization_5/beta/*
dtype0*
shape:@*6
shared_name'%sequential/batch_normalization_5/beta
�
9sequential/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp%sequential/batch_normalization_5/beta*
_output_shapes
:@*
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOp%sequential/batch_normalization_5/beta*
_class
loc:@Variable_20*
_output_shapes
:@*
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape:@*
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
g
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes
:@*
dtype0
�
&sequential/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'sequential/batch_normalization_5/gamma/*
dtype0*
shape:@*7
shared_name(&sequential/batch_normalization_5/gamma
�
:sequential/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp&sequential/batch_normalization_5/gamma*
_output_shapes
:@*
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOp&sequential/batch_normalization_5/gamma*
_class
loc:@Variable_21*
_output_shapes
:@*
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape:@*
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
g
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21*
_output_shapes
:@*
dtype0
�
sequential/dense_1/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense_1/bias/*
dtype0*
shape:@*(
shared_namesequential/dense_1/bias

+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes
:@*
dtype0
�
&Variable_22/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_class
loc:@Variable_22*
_output_shapes
:@*
dtype0
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0*
shape:@*
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0
g
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22*
_output_shapes
:@*
dtype0
�
sequential/dense_1/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential/dense_1/kernel/*
dtype0*
shape:	�@**
shared_namesequential/dense_1/kernel
�
-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_output_shapes
:	�@*
dtype0
�
&Variable_23/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_class
loc:@Variable_23*
_output_shapes
:	�@*
dtype0
�
Variable_23VarHandleOp*
_class
loc:@Variable_23*
_output_shapes
: *

debug_nameVariable_23/*
dtype0*
shape:	�@*
shared_nameVariable_23
g
,Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_23*
_output_shapes
: 
h
Variable_23/AssignAssignVariableOpVariable_23&Variable_23/Initializer/ReadVariableOp*
dtype0
l
Variable_23/Read/ReadVariableOpReadVariableOpVariable_23*
_output_shapes
:	�@*
dtype0
�
%sequential/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *6

debug_name(&sequential/batch_normalization_4/beta/*
dtype0*
shape:�*6
shared_name'%sequential/batch_normalization_4/beta
�
9sequential/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp%sequential/batch_normalization_4/beta*
_output_shapes	
:�*
dtype0
�
&Variable_24/Initializer/ReadVariableOpReadVariableOp%sequential/batch_normalization_4/beta*
_class
loc:@Variable_24*
_output_shapes	
:�*
dtype0
�
Variable_24VarHandleOp*
_class
loc:@Variable_24*
_output_shapes
: *

debug_nameVariable_24/*
dtype0*
shape:�*
shared_nameVariable_24
g
,Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_24*
_output_shapes
: 
h
Variable_24/AssignAssignVariableOpVariable_24&Variable_24/Initializer/ReadVariableOp*
dtype0
h
Variable_24/Read/ReadVariableOpReadVariableOpVariable_24*
_output_shapes	
:�*
dtype0
�
&sequential/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'sequential/batch_normalization_4/gamma/*
dtype0*
shape:�*7
shared_name(&sequential/batch_normalization_4/gamma
�
:sequential/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp&sequential/batch_normalization_4/gamma*
_output_shapes	
:�*
dtype0
�
&Variable_25/Initializer/ReadVariableOpReadVariableOp&sequential/batch_normalization_4/gamma*
_class
loc:@Variable_25*
_output_shapes	
:�*
dtype0
�
Variable_25VarHandleOp*
_class
loc:@Variable_25*
_output_shapes
: *

debug_nameVariable_25/*
dtype0*
shape:�*
shared_nameVariable_25
g
,Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_25*
_output_shapes
: 
h
Variable_25/AssignAssignVariableOpVariable_25&Variable_25/Initializer/ReadVariableOp*
dtype0
h
Variable_25/Read/ReadVariableOpReadVariableOpVariable_25*
_output_shapes	
:�*
dtype0
�
sequential/dense/biasVarHandleOp*
_output_shapes
: *&

debug_namesequential/dense/bias/*
dtype0*
shape:�*&
shared_namesequential/dense/bias
|
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes	
:�*
dtype0
�
&Variable_26/Initializer/ReadVariableOpReadVariableOpsequential/dense/bias*
_class
loc:@Variable_26*
_output_shapes	
:�*
dtype0
�
Variable_26VarHandleOp*
_class
loc:@Variable_26*
_output_shapes
: *

debug_nameVariable_26/*
dtype0*
shape:�*
shared_nameVariable_26
g
,Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_26*
_output_shapes
: 
h
Variable_26/AssignAssignVariableOpVariable_26&Variable_26/Initializer/ReadVariableOp*
dtype0
h
Variable_26/Read/ReadVariableOpReadVariableOpVariable_26*
_output_shapes	
:�*
dtype0
�
sequential/dense/kernelVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense/kernel/*
dtype0*
shape:���*(
shared_namesequential/dense/kernel
�
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel*!
_output_shapes
:���*
dtype0
�
&Variable_27/Initializer/ReadVariableOpReadVariableOpsequential/dense/kernel*
_class
loc:@Variable_27*!
_output_shapes
:���*
dtype0
�
Variable_27VarHandleOp*
_class
loc:@Variable_27*
_output_shapes
: *

debug_nameVariable_27/*
dtype0*
shape:���*
shared_nameVariable_27
g
,Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_27*
_output_shapes
: 
h
Variable_27/AssignAssignVariableOpVariable_27&Variable_27/Initializer/ReadVariableOp*
dtype0
n
Variable_27/Read/ReadVariableOpReadVariableOpVariable_27*!
_output_shapes
:���*
dtype0
�
%sequential/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *6

debug_name(&sequential/batch_normalization_3/beta/*
dtype0*
shape:�*6
shared_name'%sequential/batch_normalization_3/beta
�
9sequential/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp%sequential/batch_normalization_3/beta*
_output_shapes	
:�*
dtype0
�
&Variable_28/Initializer/ReadVariableOpReadVariableOp%sequential/batch_normalization_3/beta*
_class
loc:@Variable_28*
_output_shapes	
:�*
dtype0
�
Variable_28VarHandleOp*
_class
loc:@Variable_28*
_output_shapes
: *

debug_nameVariable_28/*
dtype0*
shape:�*
shared_nameVariable_28
g
,Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_28*
_output_shapes
: 
h
Variable_28/AssignAssignVariableOpVariable_28&Variable_28/Initializer/ReadVariableOp*
dtype0
h
Variable_28/Read/ReadVariableOpReadVariableOpVariable_28*
_output_shapes	
:�*
dtype0
�
&sequential/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'sequential/batch_normalization_3/gamma/*
dtype0*
shape:�*7
shared_name(&sequential/batch_normalization_3/gamma
�
:sequential/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp&sequential/batch_normalization_3/gamma*
_output_shapes	
:�*
dtype0
�
&Variable_29/Initializer/ReadVariableOpReadVariableOp&sequential/batch_normalization_3/gamma*
_class
loc:@Variable_29*
_output_shapes	
:�*
dtype0
�
Variable_29VarHandleOp*
_class
loc:@Variable_29*
_output_shapes
: *

debug_nameVariable_29/*
dtype0*
shape:�*
shared_nameVariable_29
g
,Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_29*
_output_shapes
: 
h
Variable_29/AssignAssignVariableOpVariable_29&Variable_29/Initializer/ReadVariableOp*
dtype0
h
Variable_29/Read/ReadVariableOpReadVariableOpVariable_29*
_output_shapes	
:�*
dtype0
�
sequential/Conv2D_4/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/Conv2D_4/bias/*
dtype0*
shape:�*)
shared_namesequential/Conv2D_4/bias
�
,sequential/Conv2D_4/bias/Read/ReadVariableOpReadVariableOpsequential/Conv2D_4/bias*
_output_shapes	
:�*
dtype0
�
&Variable_30/Initializer/ReadVariableOpReadVariableOpsequential/Conv2D_4/bias*
_class
loc:@Variable_30*
_output_shapes	
:�*
dtype0
�
Variable_30VarHandleOp*
_class
loc:@Variable_30*
_output_shapes
: *

debug_nameVariable_30/*
dtype0*
shape:�*
shared_nameVariable_30
g
,Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_30*
_output_shapes
: 
h
Variable_30/AssignAssignVariableOpVariable_30&Variable_30/Initializer/ReadVariableOp*
dtype0
h
Variable_30/Read/ReadVariableOpReadVariableOpVariable_30*
_output_shapes	
:�*
dtype0
�
sequential/Conv2D_4/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/Conv2D_4/kernel/*
dtype0*
shape:@�*+
shared_namesequential/Conv2D_4/kernel
�
.sequential/Conv2D_4/kernel/Read/ReadVariableOpReadVariableOpsequential/Conv2D_4/kernel*'
_output_shapes
:@�*
dtype0
�
&Variable_31/Initializer/ReadVariableOpReadVariableOpsequential/Conv2D_4/kernel*
_class
loc:@Variable_31*'
_output_shapes
:@�*
dtype0
�
Variable_31VarHandleOp*
_class
loc:@Variable_31*
_output_shapes
: *

debug_nameVariable_31/*
dtype0*
shape:@�*
shared_nameVariable_31
g
,Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_31*
_output_shapes
: 
h
Variable_31/AssignAssignVariableOpVariable_31&Variable_31/Initializer/ReadVariableOp*
dtype0
t
Variable_31/Read/ReadVariableOpReadVariableOpVariable_31*'
_output_shapes
:@�*
dtype0
�
%sequential/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *6

debug_name(&sequential/batch_normalization_2/beta/*
dtype0*
shape:@*6
shared_name'%sequential/batch_normalization_2/beta
�
9sequential/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp%sequential/batch_normalization_2/beta*
_output_shapes
:@*
dtype0
�
&Variable_32/Initializer/ReadVariableOpReadVariableOp%sequential/batch_normalization_2/beta*
_class
loc:@Variable_32*
_output_shapes
:@*
dtype0
�
Variable_32VarHandleOp*
_class
loc:@Variable_32*
_output_shapes
: *

debug_nameVariable_32/*
dtype0*
shape:@*
shared_nameVariable_32
g
,Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_32*
_output_shapes
: 
h
Variable_32/AssignAssignVariableOpVariable_32&Variable_32/Initializer/ReadVariableOp*
dtype0
g
Variable_32/Read/ReadVariableOpReadVariableOpVariable_32*
_output_shapes
:@*
dtype0
�
&sequential/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'sequential/batch_normalization_2/gamma/*
dtype0*
shape:@*7
shared_name(&sequential/batch_normalization_2/gamma
�
:sequential/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp&sequential/batch_normalization_2/gamma*
_output_shapes
:@*
dtype0
�
&Variable_33/Initializer/ReadVariableOpReadVariableOp&sequential/batch_normalization_2/gamma*
_class
loc:@Variable_33*
_output_shapes
:@*
dtype0
�
Variable_33VarHandleOp*
_class
loc:@Variable_33*
_output_shapes
: *

debug_nameVariable_33/*
dtype0*
shape:@*
shared_nameVariable_33
g
,Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_33*
_output_shapes
: 
h
Variable_33/AssignAssignVariableOpVariable_33&Variable_33/Initializer/ReadVariableOp*
dtype0
g
Variable_33/Read/ReadVariableOpReadVariableOpVariable_33*
_output_shapes
:@*
dtype0
�
sequential/Conv2D_3/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/Conv2D_3/bias/*
dtype0*
shape:@*)
shared_namesequential/Conv2D_3/bias
�
,sequential/Conv2D_3/bias/Read/ReadVariableOpReadVariableOpsequential/Conv2D_3/bias*
_output_shapes
:@*
dtype0
�
&Variable_34/Initializer/ReadVariableOpReadVariableOpsequential/Conv2D_3/bias*
_class
loc:@Variable_34*
_output_shapes
:@*
dtype0
�
Variable_34VarHandleOp*
_class
loc:@Variable_34*
_output_shapes
: *

debug_nameVariable_34/*
dtype0*
shape:@*
shared_nameVariable_34
g
,Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_34*
_output_shapes
: 
h
Variable_34/AssignAssignVariableOpVariable_34&Variable_34/Initializer/ReadVariableOp*
dtype0
g
Variable_34/Read/ReadVariableOpReadVariableOpVariable_34*
_output_shapes
:@*
dtype0
�
sequential/Conv2D_3/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/Conv2D_3/kernel/*
dtype0*
shape: @*+
shared_namesequential/Conv2D_3/kernel
�
.sequential/Conv2D_3/kernel/Read/ReadVariableOpReadVariableOpsequential/Conv2D_3/kernel*&
_output_shapes
: @*
dtype0
�
&Variable_35/Initializer/ReadVariableOpReadVariableOpsequential/Conv2D_3/kernel*
_class
loc:@Variable_35*&
_output_shapes
: @*
dtype0
�
Variable_35VarHandleOp*
_class
loc:@Variable_35*
_output_shapes
: *

debug_nameVariable_35/*
dtype0*
shape: @*
shared_nameVariable_35
g
,Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_35*
_output_shapes
: 
h
Variable_35/AssignAssignVariableOpVariable_35&Variable_35/Initializer/ReadVariableOp*
dtype0
s
Variable_35/Read/ReadVariableOpReadVariableOpVariable_35*&
_output_shapes
: @*
dtype0
�
%sequential/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *6

debug_name(&sequential/batch_normalization_1/beta/*
dtype0*
shape: *6
shared_name'%sequential/batch_normalization_1/beta
�
9sequential/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp%sequential/batch_normalization_1/beta*
_output_shapes
: *
dtype0
�
&Variable_36/Initializer/ReadVariableOpReadVariableOp%sequential/batch_normalization_1/beta*
_class
loc:@Variable_36*
_output_shapes
: *
dtype0
�
Variable_36VarHandleOp*
_class
loc:@Variable_36*
_output_shapes
: *

debug_nameVariable_36/*
dtype0*
shape: *
shared_nameVariable_36
g
,Variable_36/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_36*
_output_shapes
: 
h
Variable_36/AssignAssignVariableOpVariable_36&Variable_36/Initializer/ReadVariableOp*
dtype0
g
Variable_36/Read/ReadVariableOpReadVariableOpVariable_36*
_output_shapes
: *
dtype0
�
&sequential/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'sequential/batch_normalization_1/gamma/*
dtype0*
shape: *7
shared_name(&sequential/batch_normalization_1/gamma
�
:sequential/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp&sequential/batch_normalization_1/gamma*
_output_shapes
: *
dtype0
�
&Variable_37/Initializer/ReadVariableOpReadVariableOp&sequential/batch_normalization_1/gamma*
_class
loc:@Variable_37*
_output_shapes
: *
dtype0
�
Variable_37VarHandleOp*
_class
loc:@Variable_37*
_output_shapes
: *

debug_nameVariable_37/*
dtype0*
shape: *
shared_nameVariable_37
g
,Variable_37/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_37*
_output_shapes
: 
h
Variable_37/AssignAssignVariableOpVariable_37&Variable_37/Initializer/ReadVariableOp*
dtype0
g
Variable_37/Read/ReadVariableOpReadVariableOpVariable_37*
_output_shapes
: *
dtype0
�
sequential/Conv2D_2/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/Conv2D_2/bias/*
dtype0*
shape: *)
shared_namesequential/Conv2D_2/bias
�
,sequential/Conv2D_2/bias/Read/ReadVariableOpReadVariableOpsequential/Conv2D_2/bias*
_output_shapes
: *
dtype0
�
&Variable_38/Initializer/ReadVariableOpReadVariableOpsequential/Conv2D_2/bias*
_class
loc:@Variable_38*
_output_shapes
: *
dtype0
�
Variable_38VarHandleOp*
_class
loc:@Variable_38*
_output_shapes
: *

debug_nameVariable_38/*
dtype0*
shape: *
shared_nameVariable_38
g
,Variable_38/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_38*
_output_shapes
: 
h
Variable_38/AssignAssignVariableOpVariable_38&Variable_38/Initializer/ReadVariableOp*
dtype0
g
Variable_38/Read/ReadVariableOpReadVariableOpVariable_38*
_output_shapes
: *
dtype0
�
sequential/Conv2D_2/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/Conv2D_2/kernel/*
dtype0*
shape: *+
shared_namesequential/Conv2D_2/kernel
�
.sequential/Conv2D_2/kernel/Read/ReadVariableOpReadVariableOpsequential/Conv2D_2/kernel*&
_output_shapes
: *
dtype0
�
&Variable_39/Initializer/ReadVariableOpReadVariableOpsequential/Conv2D_2/kernel*
_class
loc:@Variable_39*&
_output_shapes
: *
dtype0
�
Variable_39VarHandleOp*
_class
loc:@Variable_39*
_output_shapes
: *

debug_nameVariable_39/*
dtype0*
shape: *
shared_nameVariable_39
g
,Variable_39/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_39*
_output_shapes
: 
h
Variable_39/AssignAssignVariableOpVariable_39&Variable_39/Initializer/ReadVariableOp*
dtype0
s
Variable_39/Read/ReadVariableOpReadVariableOpVariable_39*&
_output_shapes
: *
dtype0
�
#sequential/batch_normalization/betaVarHandleOp*
_output_shapes
: *4

debug_name&$sequential/batch_normalization/beta/*
dtype0*
shape:*4
shared_name%#sequential/batch_normalization/beta
�
7sequential/batch_normalization/beta/Read/ReadVariableOpReadVariableOp#sequential/batch_normalization/beta*
_output_shapes
:*
dtype0
�
&Variable_40/Initializer/ReadVariableOpReadVariableOp#sequential/batch_normalization/beta*
_class
loc:@Variable_40*
_output_shapes
:*
dtype0
�
Variable_40VarHandleOp*
_class
loc:@Variable_40*
_output_shapes
: *

debug_nameVariable_40/*
dtype0*
shape:*
shared_nameVariable_40
g
,Variable_40/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_40*
_output_shapes
: 
h
Variable_40/AssignAssignVariableOpVariable_40&Variable_40/Initializer/ReadVariableOp*
dtype0
g
Variable_40/Read/ReadVariableOpReadVariableOpVariable_40*
_output_shapes
:*
dtype0
�
$sequential/batch_normalization/gammaVarHandleOp*
_output_shapes
: *5

debug_name'%sequential/batch_normalization/gamma/*
dtype0*
shape:*5
shared_name&$sequential/batch_normalization/gamma
�
8sequential/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp$sequential/batch_normalization/gamma*
_output_shapes
:*
dtype0
�
&Variable_41/Initializer/ReadVariableOpReadVariableOp$sequential/batch_normalization/gamma*
_class
loc:@Variable_41*
_output_shapes
:*
dtype0
�
Variable_41VarHandleOp*
_class
loc:@Variable_41*
_output_shapes
: *

debug_nameVariable_41/*
dtype0*
shape:*
shared_nameVariable_41
g
,Variable_41/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_41*
_output_shapes
: 
h
Variable_41/AssignAssignVariableOpVariable_41&Variable_41/Initializer/ReadVariableOp*
dtype0
g
Variable_41/Read/ReadVariableOpReadVariableOpVariable_41*
_output_shapes
:*
dtype0
�
sequential/Conv2D_1/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/Conv2D_1/bias/*
dtype0*
shape:*)
shared_namesequential/Conv2D_1/bias
�
,sequential/Conv2D_1/bias/Read/ReadVariableOpReadVariableOpsequential/Conv2D_1/bias*
_output_shapes
:*
dtype0
�
&Variable_42/Initializer/ReadVariableOpReadVariableOpsequential/Conv2D_1/bias*
_class
loc:@Variable_42*
_output_shapes
:*
dtype0
�
Variable_42VarHandleOp*
_class
loc:@Variable_42*
_output_shapes
: *

debug_nameVariable_42/*
dtype0*
shape:*
shared_nameVariable_42
g
,Variable_42/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_42*
_output_shapes
: 
h
Variable_42/AssignAssignVariableOpVariable_42&Variable_42/Initializer/ReadVariableOp*
dtype0
g
Variable_42/Read/ReadVariableOpReadVariableOpVariable_42*
_output_shapes
:*
dtype0
�
sequential/Conv2D_1/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/Conv2D_1/kernel/*
dtype0*
shape:*+
shared_namesequential/Conv2D_1/kernel
�
.sequential/Conv2D_1/kernel/Read/ReadVariableOpReadVariableOpsequential/Conv2D_1/kernel*&
_output_shapes
:*
dtype0
�
&Variable_43/Initializer/ReadVariableOpReadVariableOpsequential/Conv2D_1/kernel*
_class
loc:@Variable_43*&
_output_shapes
:*
dtype0
�
Variable_43VarHandleOp*
_class
loc:@Variable_43*
_output_shapes
: *

debug_nameVariable_43/*
dtype0*
shape:*
shared_nameVariable_43
g
,Variable_43/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_43*
_output_shapes
: 
h
Variable_43/AssignAssignVariableOpVariable_43&Variable_43/Initializer/ReadVariableOp*
dtype0
s
Variable_43/Read/ReadVariableOpReadVariableOpVariable_43*&
_output_shapes
:*
dtype0
�
%adam/sequential_dense_3_bias_velocityVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_3_bias_velocity/*
dtype0*
shape:*6
shared_name'%adam/sequential_dense_3_bias_velocity
�
9adam/sequential_dense_3_bias_velocity/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_3_bias_velocity*
_output_shapes
:*
dtype0
�
&Variable_44/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_3_bias_velocity*
_class
loc:@Variable_44*
_output_shapes
:*
dtype0
�
Variable_44VarHandleOp*
_class
loc:@Variable_44*
_output_shapes
: *

debug_nameVariable_44/*
dtype0*
shape:*
shared_nameVariable_44
g
,Variable_44/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_44*
_output_shapes
: 
h
Variable_44/AssignAssignVariableOpVariable_44&Variable_44/Initializer/ReadVariableOp*
dtype0
g
Variable_44/Read/ReadVariableOpReadVariableOpVariable_44*
_output_shapes
:*
dtype0
�
%adam/sequential_dense_3_bias_momentumVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_3_bias_momentum/*
dtype0*
shape:*6
shared_name'%adam/sequential_dense_3_bias_momentum
�
9adam/sequential_dense_3_bias_momentum/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_3_bias_momentum*
_output_shapes
:*
dtype0
�
&Variable_45/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_3_bias_momentum*
_class
loc:@Variable_45*
_output_shapes
:*
dtype0
�
Variable_45VarHandleOp*
_class
loc:@Variable_45*
_output_shapes
: *

debug_nameVariable_45/*
dtype0*
shape:*
shared_nameVariable_45
g
,Variable_45/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_45*
_output_shapes
: 
h
Variable_45/AssignAssignVariableOpVariable_45&Variable_45/Initializer/ReadVariableOp*
dtype0
g
Variable_45/Read/ReadVariableOpReadVariableOpVariable_45*
_output_shapes
:*
dtype0
�
'adam/sequential_dense_3_kernel_velocityVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_3_kernel_velocity/*
dtype0*
shape
: *8
shared_name)'adam/sequential_dense_3_kernel_velocity
�
;adam/sequential_dense_3_kernel_velocity/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_3_kernel_velocity*
_output_shapes

: *
dtype0
�
&Variable_46/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_3_kernel_velocity*
_class
loc:@Variable_46*
_output_shapes

: *
dtype0
�
Variable_46VarHandleOp*
_class
loc:@Variable_46*
_output_shapes
: *

debug_nameVariable_46/*
dtype0*
shape
: *
shared_nameVariable_46
g
,Variable_46/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_46*
_output_shapes
: 
h
Variable_46/AssignAssignVariableOpVariable_46&Variable_46/Initializer/ReadVariableOp*
dtype0
k
Variable_46/Read/ReadVariableOpReadVariableOpVariable_46*
_output_shapes

: *
dtype0
�
'adam/sequential_dense_3_kernel_momentumVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_3_kernel_momentum/*
dtype0*
shape
: *8
shared_name)'adam/sequential_dense_3_kernel_momentum
�
;adam/sequential_dense_3_kernel_momentum/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_3_kernel_momentum*
_output_shapes

: *
dtype0
�
&Variable_47/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_3_kernel_momentum*
_class
loc:@Variable_47*
_output_shapes

: *
dtype0
�
Variable_47VarHandleOp*
_class
loc:@Variable_47*
_output_shapes
: *

debug_nameVariable_47/*
dtype0*
shape
: *
shared_nameVariable_47
g
,Variable_47/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_47*
_output_shapes
: 
h
Variable_47/AssignAssignVariableOpVariable_47&Variable_47/Initializer/ReadVariableOp*
dtype0
k
Variable_47/Read/ReadVariableOpReadVariableOpVariable_47*
_output_shapes

: *
dtype0
�
3adam/sequential_batch_normalization_6_beta_velocityVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_6_beta_velocity/*
dtype0*
shape: *D
shared_name53adam/sequential_batch_normalization_6_beta_velocity
�
Gadam/sequential_batch_normalization_6_beta_velocity/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_6_beta_velocity*
_output_shapes
: *
dtype0
�
&Variable_48/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_6_beta_velocity*
_class
loc:@Variable_48*
_output_shapes
: *
dtype0
�
Variable_48VarHandleOp*
_class
loc:@Variable_48*
_output_shapes
: *

debug_nameVariable_48/*
dtype0*
shape: *
shared_nameVariable_48
g
,Variable_48/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_48*
_output_shapes
: 
h
Variable_48/AssignAssignVariableOpVariable_48&Variable_48/Initializer/ReadVariableOp*
dtype0
g
Variable_48/Read/ReadVariableOpReadVariableOpVariable_48*
_output_shapes
: *
dtype0
�
3adam/sequential_batch_normalization_6_beta_momentumVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_6_beta_momentum/*
dtype0*
shape: *D
shared_name53adam/sequential_batch_normalization_6_beta_momentum
�
Gadam/sequential_batch_normalization_6_beta_momentum/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_6_beta_momentum*
_output_shapes
: *
dtype0
�
&Variable_49/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_6_beta_momentum*
_class
loc:@Variable_49*
_output_shapes
: *
dtype0
�
Variable_49VarHandleOp*
_class
loc:@Variable_49*
_output_shapes
: *

debug_nameVariable_49/*
dtype0*
shape: *
shared_nameVariable_49
g
,Variable_49/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_49*
_output_shapes
: 
h
Variable_49/AssignAssignVariableOpVariable_49&Variable_49/Initializer/ReadVariableOp*
dtype0
g
Variable_49/Read/ReadVariableOpReadVariableOpVariable_49*
_output_shapes
: *
dtype0
�
4adam/sequential_batch_normalization_6_gamma_velocityVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_6_gamma_velocity/*
dtype0*
shape: *E
shared_name64adam/sequential_batch_normalization_6_gamma_velocity
�
Hadam/sequential_batch_normalization_6_gamma_velocity/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_6_gamma_velocity*
_output_shapes
: *
dtype0
�
&Variable_50/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_6_gamma_velocity*
_class
loc:@Variable_50*
_output_shapes
: *
dtype0
�
Variable_50VarHandleOp*
_class
loc:@Variable_50*
_output_shapes
: *

debug_nameVariable_50/*
dtype0*
shape: *
shared_nameVariable_50
g
,Variable_50/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_50*
_output_shapes
: 
h
Variable_50/AssignAssignVariableOpVariable_50&Variable_50/Initializer/ReadVariableOp*
dtype0
g
Variable_50/Read/ReadVariableOpReadVariableOpVariable_50*
_output_shapes
: *
dtype0
�
4adam/sequential_batch_normalization_6_gamma_momentumVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_6_gamma_momentum/*
dtype0*
shape: *E
shared_name64adam/sequential_batch_normalization_6_gamma_momentum
�
Hadam/sequential_batch_normalization_6_gamma_momentum/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_6_gamma_momentum*
_output_shapes
: *
dtype0
�
&Variable_51/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_6_gamma_momentum*
_class
loc:@Variable_51*
_output_shapes
: *
dtype0
�
Variable_51VarHandleOp*
_class
loc:@Variable_51*
_output_shapes
: *

debug_nameVariable_51/*
dtype0*
shape: *
shared_nameVariable_51
g
,Variable_51/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_51*
_output_shapes
: 
h
Variable_51/AssignAssignVariableOpVariable_51&Variable_51/Initializer/ReadVariableOp*
dtype0
g
Variable_51/Read/ReadVariableOpReadVariableOpVariable_51*
_output_shapes
: *
dtype0
�
%adam/sequential_dense_2_bias_velocityVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_2_bias_velocity/*
dtype0*
shape: *6
shared_name'%adam/sequential_dense_2_bias_velocity
�
9adam/sequential_dense_2_bias_velocity/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_2_bias_velocity*
_output_shapes
: *
dtype0
�
&Variable_52/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_2_bias_velocity*
_class
loc:@Variable_52*
_output_shapes
: *
dtype0
�
Variable_52VarHandleOp*
_class
loc:@Variable_52*
_output_shapes
: *

debug_nameVariable_52/*
dtype0*
shape: *
shared_nameVariable_52
g
,Variable_52/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_52*
_output_shapes
: 
h
Variable_52/AssignAssignVariableOpVariable_52&Variable_52/Initializer/ReadVariableOp*
dtype0
g
Variable_52/Read/ReadVariableOpReadVariableOpVariable_52*
_output_shapes
: *
dtype0
�
%adam/sequential_dense_2_bias_momentumVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_2_bias_momentum/*
dtype0*
shape: *6
shared_name'%adam/sequential_dense_2_bias_momentum
�
9adam/sequential_dense_2_bias_momentum/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_2_bias_momentum*
_output_shapes
: *
dtype0
�
&Variable_53/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_2_bias_momentum*
_class
loc:@Variable_53*
_output_shapes
: *
dtype0
�
Variable_53VarHandleOp*
_class
loc:@Variable_53*
_output_shapes
: *

debug_nameVariable_53/*
dtype0*
shape: *
shared_nameVariable_53
g
,Variable_53/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_53*
_output_shapes
: 
h
Variable_53/AssignAssignVariableOpVariable_53&Variable_53/Initializer/ReadVariableOp*
dtype0
g
Variable_53/Read/ReadVariableOpReadVariableOpVariable_53*
_output_shapes
: *
dtype0
�
'adam/sequential_dense_2_kernel_velocityVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_2_kernel_velocity/*
dtype0*
shape
:@ *8
shared_name)'adam/sequential_dense_2_kernel_velocity
�
;adam/sequential_dense_2_kernel_velocity/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_2_kernel_velocity*
_output_shapes

:@ *
dtype0
�
&Variable_54/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_2_kernel_velocity*
_class
loc:@Variable_54*
_output_shapes

:@ *
dtype0
�
Variable_54VarHandleOp*
_class
loc:@Variable_54*
_output_shapes
: *

debug_nameVariable_54/*
dtype0*
shape
:@ *
shared_nameVariable_54
g
,Variable_54/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_54*
_output_shapes
: 
h
Variable_54/AssignAssignVariableOpVariable_54&Variable_54/Initializer/ReadVariableOp*
dtype0
k
Variable_54/Read/ReadVariableOpReadVariableOpVariable_54*
_output_shapes

:@ *
dtype0
�
'adam/sequential_dense_2_kernel_momentumVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_2_kernel_momentum/*
dtype0*
shape
:@ *8
shared_name)'adam/sequential_dense_2_kernel_momentum
�
;adam/sequential_dense_2_kernel_momentum/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_2_kernel_momentum*
_output_shapes

:@ *
dtype0
�
&Variable_55/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_2_kernel_momentum*
_class
loc:@Variable_55*
_output_shapes

:@ *
dtype0
�
Variable_55VarHandleOp*
_class
loc:@Variable_55*
_output_shapes
: *

debug_nameVariable_55/*
dtype0*
shape
:@ *
shared_nameVariable_55
g
,Variable_55/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_55*
_output_shapes
: 
h
Variable_55/AssignAssignVariableOpVariable_55&Variable_55/Initializer/ReadVariableOp*
dtype0
k
Variable_55/Read/ReadVariableOpReadVariableOpVariable_55*
_output_shapes

:@ *
dtype0
�
3adam/sequential_batch_normalization_5_beta_velocityVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_5_beta_velocity/*
dtype0*
shape:@*D
shared_name53adam/sequential_batch_normalization_5_beta_velocity
�
Gadam/sequential_batch_normalization_5_beta_velocity/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_5_beta_velocity*
_output_shapes
:@*
dtype0
�
&Variable_56/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_5_beta_velocity*
_class
loc:@Variable_56*
_output_shapes
:@*
dtype0
�
Variable_56VarHandleOp*
_class
loc:@Variable_56*
_output_shapes
: *

debug_nameVariable_56/*
dtype0*
shape:@*
shared_nameVariable_56
g
,Variable_56/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_56*
_output_shapes
: 
h
Variable_56/AssignAssignVariableOpVariable_56&Variable_56/Initializer/ReadVariableOp*
dtype0
g
Variable_56/Read/ReadVariableOpReadVariableOpVariable_56*
_output_shapes
:@*
dtype0
�
3adam/sequential_batch_normalization_5_beta_momentumVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_5_beta_momentum/*
dtype0*
shape:@*D
shared_name53adam/sequential_batch_normalization_5_beta_momentum
�
Gadam/sequential_batch_normalization_5_beta_momentum/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_5_beta_momentum*
_output_shapes
:@*
dtype0
�
&Variable_57/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_5_beta_momentum*
_class
loc:@Variable_57*
_output_shapes
:@*
dtype0
�
Variable_57VarHandleOp*
_class
loc:@Variable_57*
_output_shapes
: *

debug_nameVariable_57/*
dtype0*
shape:@*
shared_nameVariable_57
g
,Variable_57/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_57*
_output_shapes
: 
h
Variable_57/AssignAssignVariableOpVariable_57&Variable_57/Initializer/ReadVariableOp*
dtype0
g
Variable_57/Read/ReadVariableOpReadVariableOpVariable_57*
_output_shapes
:@*
dtype0
�
4adam/sequential_batch_normalization_5_gamma_velocityVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_5_gamma_velocity/*
dtype0*
shape:@*E
shared_name64adam/sequential_batch_normalization_5_gamma_velocity
�
Hadam/sequential_batch_normalization_5_gamma_velocity/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_5_gamma_velocity*
_output_shapes
:@*
dtype0
�
&Variable_58/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_5_gamma_velocity*
_class
loc:@Variable_58*
_output_shapes
:@*
dtype0
�
Variable_58VarHandleOp*
_class
loc:@Variable_58*
_output_shapes
: *

debug_nameVariable_58/*
dtype0*
shape:@*
shared_nameVariable_58
g
,Variable_58/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_58*
_output_shapes
: 
h
Variable_58/AssignAssignVariableOpVariable_58&Variable_58/Initializer/ReadVariableOp*
dtype0
g
Variable_58/Read/ReadVariableOpReadVariableOpVariable_58*
_output_shapes
:@*
dtype0
�
4adam/sequential_batch_normalization_5_gamma_momentumVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_5_gamma_momentum/*
dtype0*
shape:@*E
shared_name64adam/sequential_batch_normalization_5_gamma_momentum
�
Hadam/sequential_batch_normalization_5_gamma_momentum/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_5_gamma_momentum*
_output_shapes
:@*
dtype0
�
&Variable_59/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_5_gamma_momentum*
_class
loc:@Variable_59*
_output_shapes
:@*
dtype0
�
Variable_59VarHandleOp*
_class
loc:@Variable_59*
_output_shapes
: *

debug_nameVariable_59/*
dtype0*
shape:@*
shared_nameVariable_59
g
,Variable_59/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_59*
_output_shapes
: 
h
Variable_59/AssignAssignVariableOpVariable_59&Variable_59/Initializer/ReadVariableOp*
dtype0
g
Variable_59/Read/ReadVariableOpReadVariableOpVariable_59*
_output_shapes
:@*
dtype0
�
%adam/sequential_dense_1_bias_velocityVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_1_bias_velocity/*
dtype0*
shape:@*6
shared_name'%adam/sequential_dense_1_bias_velocity
�
9adam/sequential_dense_1_bias_velocity/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_velocity*
_output_shapes
:@*
dtype0
�
&Variable_60/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_velocity*
_class
loc:@Variable_60*
_output_shapes
:@*
dtype0
�
Variable_60VarHandleOp*
_class
loc:@Variable_60*
_output_shapes
: *

debug_nameVariable_60/*
dtype0*
shape:@*
shared_nameVariable_60
g
,Variable_60/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_60*
_output_shapes
: 
h
Variable_60/AssignAssignVariableOpVariable_60&Variable_60/Initializer/ReadVariableOp*
dtype0
g
Variable_60/Read/ReadVariableOpReadVariableOpVariable_60*
_output_shapes
:@*
dtype0
�
%adam/sequential_dense_1_bias_momentumVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_1_bias_momentum/*
dtype0*
shape:@*6
shared_name'%adam/sequential_dense_1_bias_momentum
�
9adam/sequential_dense_1_bias_momentum/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_momentum*
_output_shapes
:@*
dtype0
�
&Variable_61/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_momentum*
_class
loc:@Variable_61*
_output_shapes
:@*
dtype0
�
Variable_61VarHandleOp*
_class
loc:@Variable_61*
_output_shapes
: *

debug_nameVariable_61/*
dtype0*
shape:@*
shared_nameVariable_61
g
,Variable_61/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_61*
_output_shapes
: 
h
Variable_61/AssignAssignVariableOpVariable_61&Variable_61/Initializer/ReadVariableOp*
dtype0
g
Variable_61/Read/ReadVariableOpReadVariableOpVariable_61*
_output_shapes
:@*
dtype0
�
'adam/sequential_dense_1_kernel_velocityVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_1_kernel_velocity/*
dtype0*
shape:	�@*8
shared_name)'adam/sequential_dense_1_kernel_velocity
�
;adam/sequential_dense_1_kernel_velocity/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_velocity*
_output_shapes
:	�@*
dtype0
�
&Variable_62/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_velocity*
_class
loc:@Variable_62*
_output_shapes
:	�@*
dtype0
�
Variable_62VarHandleOp*
_class
loc:@Variable_62*
_output_shapes
: *

debug_nameVariable_62/*
dtype0*
shape:	�@*
shared_nameVariable_62
g
,Variable_62/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_62*
_output_shapes
: 
h
Variable_62/AssignAssignVariableOpVariable_62&Variable_62/Initializer/ReadVariableOp*
dtype0
l
Variable_62/Read/ReadVariableOpReadVariableOpVariable_62*
_output_shapes
:	�@*
dtype0
�
'adam/sequential_dense_1_kernel_momentumVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_1_kernel_momentum/*
dtype0*
shape:	�@*8
shared_name)'adam/sequential_dense_1_kernel_momentum
�
;adam/sequential_dense_1_kernel_momentum/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_momentum*
_output_shapes
:	�@*
dtype0
�
&Variable_63/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_momentum*
_class
loc:@Variable_63*
_output_shapes
:	�@*
dtype0
�
Variable_63VarHandleOp*
_class
loc:@Variable_63*
_output_shapes
: *

debug_nameVariable_63/*
dtype0*
shape:	�@*
shared_nameVariable_63
g
,Variable_63/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_63*
_output_shapes
: 
h
Variable_63/AssignAssignVariableOpVariable_63&Variable_63/Initializer/ReadVariableOp*
dtype0
l
Variable_63/Read/ReadVariableOpReadVariableOpVariable_63*
_output_shapes
:	�@*
dtype0
�
3adam/sequential_batch_normalization_4_beta_velocityVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_4_beta_velocity/*
dtype0*
shape:�*D
shared_name53adam/sequential_batch_normalization_4_beta_velocity
�
Gadam/sequential_batch_normalization_4_beta_velocity/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_4_beta_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_64/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_4_beta_velocity*
_class
loc:@Variable_64*
_output_shapes	
:�*
dtype0
�
Variable_64VarHandleOp*
_class
loc:@Variable_64*
_output_shapes
: *

debug_nameVariable_64/*
dtype0*
shape:�*
shared_nameVariable_64
g
,Variable_64/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_64*
_output_shapes
: 
h
Variable_64/AssignAssignVariableOpVariable_64&Variable_64/Initializer/ReadVariableOp*
dtype0
h
Variable_64/Read/ReadVariableOpReadVariableOpVariable_64*
_output_shapes	
:�*
dtype0
�
3adam/sequential_batch_normalization_4_beta_momentumVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_4_beta_momentum/*
dtype0*
shape:�*D
shared_name53adam/sequential_batch_normalization_4_beta_momentum
�
Gadam/sequential_batch_normalization_4_beta_momentum/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_4_beta_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_65/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_4_beta_momentum*
_class
loc:@Variable_65*
_output_shapes	
:�*
dtype0
�
Variable_65VarHandleOp*
_class
loc:@Variable_65*
_output_shapes
: *

debug_nameVariable_65/*
dtype0*
shape:�*
shared_nameVariable_65
g
,Variable_65/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_65*
_output_shapes
: 
h
Variable_65/AssignAssignVariableOpVariable_65&Variable_65/Initializer/ReadVariableOp*
dtype0
h
Variable_65/Read/ReadVariableOpReadVariableOpVariable_65*
_output_shapes	
:�*
dtype0
�
4adam/sequential_batch_normalization_4_gamma_velocityVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_4_gamma_velocity/*
dtype0*
shape:�*E
shared_name64adam/sequential_batch_normalization_4_gamma_velocity
�
Hadam/sequential_batch_normalization_4_gamma_velocity/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_4_gamma_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_66/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_4_gamma_velocity*
_class
loc:@Variable_66*
_output_shapes	
:�*
dtype0
�
Variable_66VarHandleOp*
_class
loc:@Variable_66*
_output_shapes
: *

debug_nameVariable_66/*
dtype0*
shape:�*
shared_nameVariable_66
g
,Variable_66/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_66*
_output_shapes
: 
h
Variable_66/AssignAssignVariableOpVariable_66&Variable_66/Initializer/ReadVariableOp*
dtype0
h
Variable_66/Read/ReadVariableOpReadVariableOpVariable_66*
_output_shapes	
:�*
dtype0
�
4adam/sequential_batch_normalization_4_gamma_momentumVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_4_gamma_momentum/*
dtype0*
shape:�*E
shared_name64adam/sequential_batch_normalization_4_gamma_momentum
�
Hadam/sequential_batch_normalization_4_gamma_momentum/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_4_gamma_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_67/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_4_gamma_momentum*
_class
loc:@Variable_67*
_output_shapes	
:�*
dtype0
�
Variable_67VarHandleOp*
_class
loc:@Variable_67*
_output_shapes
: *

debug_nameVariable_67/*
dtype0*
shape:�*
shared_nameVariable_67
g
,Variable_67/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_67*
_output_shapes
: 
h
Variable_67/AssignAssignVariableOpVariable_67&Variable_67/Initializer/ReadVariableOp*
dtype0
h
Variable_67/Read/ReadVariableOpReadVariableOpVariable_67*
_output_shapes	
:�*
dtype0
�
#adam/sequential_dense_bias_velocityVarHandleOp*
_output_shapes
: *4

debug_name&$adam/sequential_dense_bias_velocity/*
dtype0*
shape:�*4
shared_name%#adam/sequential_dense_bias_velocity
�
7adam/sequential_dense_bias_velocity/Read/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_68/Initializer/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_velocity*
_class
loc:@Variable_68*
_output_shapes	
:�*
dtype0
�
Variable_68VarHandleOp*
_class
loc:@Variable_68*
_output_shapes
: *

debug_nameVariable_68/*
dtype0*
shape:�*
shared_nameVariable_68
g
,Variable_68/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_68*
_output_shapes
: 
h
Variable_68/AssignAssignVariableOpVariable_68&Variable_68/Initializer/ReadVariableOp*
dtype0
h
Variable_68/Read/ReadVariableOpReadVariableOpVariable_68*
_output_shapes	
:�*
dtype0
�
#adam/sequential_dense_bias_momentumVarHandleOp*
_output_shapes
: *4

debug_name&$adam/sequential_dense_bias_momentum/*
dtype0*
shape:�*4
shared_name%#adam/sequential_dense_bias_momentum
�
7adam/sequential_dense_bias_momentum/Read/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_69/Initializer/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_momentum*
_class
loc:@Variable_69*
_output_shapes	
:�*
dtype0
�
Variable_69VarHandleOp*
_class
loc:@Variable_69*
_output_shapes
: *

debug_nameVariable_69/*
dtype0*
shape:�*
shared_nameVariable_69
g
,Variable_69/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_69*
_output_shapes
: 
h
Variable_69/AssignAssignVariableOpVariable_69&Variable_69/Initializer/ReadVariableOp*
dtype0
h
Variable_69/Read/ReadVariableOpReadVariableOpVariable_69*
_output_shapes	
:�*
dtype0
�
%adam/sequential_dense_kernel_velocityVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_kernel_velocity/*
dtype0*
shape:���*6
shared_name'%adam/sequential_dense_kernel_velocity
�
9adam/sequential_dense_kernel_velocity/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_velocity*!
_output_shapes
:���*
dtype0
�
&Variable_70/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_velocity*
_class
loc:@Variable_70*!
_output_shapes
:���*
dtype0
�
Variable_70VarHandleOp*
_class
loc:@Variable_70*
_output_shapes
: *

debug_nameVariable_70/*
dtype0*
shape:���*
shared_nameVariable_70
g
,Variable_70/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_70*
_output_shapes
: 
h
Variable_70/AssignAssignVariableOpVariable_70&Variable_70/Initializer/ReadVariableOp*
dtype0
n
Variable_70/Read/ReadVariableOpReadVariableOpVariable_70*!
_output_shapes
:���*
dtype0
�
%adam/sequential_dense_kernel_momentumVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_kernel_momentum/*
dtype0*
shape:���*6
shared_name'%adam/sequential_dense_kernel_momentum
�
9adam/sequential_dense_kernel_momentum/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_momentum*!
_output_shapes
:���*
dtype0
�
&Variable_71/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_momentum*
_class
loc:@Variable_71*!
_output_shapes
:���*
dtype0
�
Variable_71VarHandleOp*
_class
loc:@Variable_71*
_output_shapes
: *

debug_nameVariable_71/*
dtype0*
shape:���*
shared_nameVariable_71
g
,Variable_71/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_71*
_output_shapes
: 
h
Variable_71/AssignAssignVariableOpVariable_71&Variable_71/Initializer/ReadVariableOp*
dtype0
n
Variable_71/Read/ReadVariableOpReadVariableOpVariable_71*!
_output_shapes
:���*
dtype0
�
3adam/sequential_batch_normalization_3_beta_velocityVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_3_beta_velocity/*
dtype0*
shape:�*D
shared_name53adam/sequential_batch_normalization_3_beta_velocity
�
Gadam/sequential_batch_normalization_3_beta_velocity/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_3_beta_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_72/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_3_beta_velocity*
_class
loc:@Variable_72*
_output_shapes	
:�*
dtype0
�
Variable_72VarHandleOp*
_class
loc:@Variable_72*
_output_shapes
: *

debug_nameVariable_72/*
dtype0*
shape:�*
shared_nameVariable_72
g
,Variable_72/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_72*
_output_shapes
: 
h
Variable_72/AssignAssignVariableOpVariable_72&Variable_72/Initializer/ReadVariableOp*
dtype0
h
Variable_72/Read/ReadVariableOpReadVariableOpVariable_72*
_output_shapes	
:�*
dtype0
�
3adam/sequential_batch_normalization_3_beta_momentumVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_3_beta_momentum/*
dtype0*
shape:�*D
shared_name53adam/sequential_batch_normalization_3_beta_momentum
�
Gadam/sequential_batch_normalization_3_beta_momentum/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_3_beta_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_73/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_3_beta_momentum*
_class
loc:@Variable_73*
_output_shapes	
:�*
dtype0
�
Variable_73VarHandleOp*
_class
loc:@Variable_73*
_output_shapes
: *

debug_nameVariable_73/*
dtype0*
shape:�*
shared_nameVariable_73
g
,Variable_73/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_73*
_output_shapes
: 
h
Variable_73/AssignAssignVariableOpVariable_73&Variable_73/Initializer/ReadVariableOp*
dtype0
h
Variable_73/Read/ReadVariableOpReadVariableOpVariable_73*
_output_shapes	
:�*
dtype0
�
4adam/sequential_batch_normalization_3_gamma_velocityVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_3_gamma_velocity/*
dtype0*
shape:�*E
shared_name64adam/sequential_batch_normalization_3_gamma_velocity
�
Hadam/sequential_batch_normalization_3_gamma_velocity/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_3_gamma_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_74/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_3_gamma_velocity*
_class
loc:@Variable_74*
_output_shapes	
:�*
dtype0
�
Variable_74VarHandleOp*
_class
loc:@Variable_74*
_output_shapes
: *

debug_nameVariable_74/*
dtype0*
shape:�*
shared_nameVariable_74
g
,Variable_74/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_74*
_output_shapes
: 
h
Variable_74/AssignAssignVariableOpVariable_74&Variable_74/Initializer/ReadVariableOp*
dtype0
h
Variable_74/Read/ReadVariableOpReadVariableOpVariable_74*
_output_shapes	
:�*
dtype0
�
4adam/sequential_batch_normalization_3_gamma_momentumVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_3_gamma_momentum/*
dtype0*
shape:�*E
shared_name64adam/sequential_batch_normalization_3_gamma_momentum
�
Hadam/sequential_batch_normalization_3_gamma_momentum/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_3_gamma_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_75/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_3_gamma_momentum*
_class
loc:@Variable_75*
_output_shapes	
:�*
dtype0
�
Variable_75VarHandleOp*
_class
loc:@Variable_75*
_output_shapes
: *

debug_nameVariable_75/*
dtype0*
shape:�*
shared_nameVariable_75
g
,Variable_75/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_75*
_output_shapes
: 
h
Variable_75/AssignAssignVariableOpVariable_75&Variable_75/Initializer/ReadVariableOp*
dtype0
h
Variable_75/Read/ReadVariableOpReadVariableOpVariable_75*
_output_shapes	
:�*
dtype0
�
&adam/sequential_Conv2D_4_bias_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_Conv2D_4_bias_velocity/*
dtype0*
shape:�*7
shared_name(&adam/sequential_Conv2D_4_bias_velocity
�
:adam/sequential_Conv2D_4_bias_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_4_bias_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_76/Initializer/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_4_bias_velocity*
_class
loc:@Variable_76*
_output_shapes	
:�*
dtype0
�
Variable_76VarHandleOp*
_class
loc:@Variable_76*
_output_shapes
: *

debug_nameVariable_76/*
dtype0*
shape:�*
shared_nameVariable_76
g
,Variable_76/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_76*
_output_shapes
: 
h
Variable_76/AssignAssignVariableOpVariable_76&Variable_76/Initializer/ReadVariableOp*
dtype0
h
Variable_76/Read/ReadVariableOpReadVariableOpVariable_76*
_output_shapes	
:�*
dtype0
�
&adam/sequential_Conv2D_4_bias_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_Conv2D_4_bias_momentum/*
dtype0*
shape:�*7
shared_name(&adam/sequential_Conv2D_4_bias_momentum
�
:adam/sequential_Conv2D_4_bias_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_4_bias_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_77/Initializer/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_4_bias_momentum*
_class
loc:@Variable_77*
_output_shapes	
:�*
dtype0
�
Variable_77VarHandleOp*
_class
loc:@Variable_77*
_output_shapes
: *

debug_nameVariable_77/*
dtype0*
shape:�*
shared_nameVariable_77
g
,Variable_77/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_77*
_output_shapes
: 
h
Variable_77/AssignAssignVariableOpVariable_77&Variable_77/Initializer/ReadVariableOp*
dtype0
h
Variable_77/Read/ReadVariableOpReadVariableOpVariable_77*
_output_shapes	
:�*
dtype0
�
(adam/sequential_Conv2D_4_kernel_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_Conv2D_4_kernel_velocity/*
dtype0*
shape:@�*9
shared_name*(adam/sequential_Conv2D_4_kernel_velocity
�
<adam/sequential_Conv2D_4_kernel_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_4_kernel_velocity*'
_output_shapes
:@�*
dtype0
�
&Variable_78/Initializer/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_4_kernel_velocity*
_class
loc:@Variable_78*'
_output_shapes
:@�*
dtype0
�
Variable_78VarHandleOp*
_class
loc:@Variable_78*
_output_shapes
: *

debug_nameVariable_78/*
dtype0*
shape:@�*
shared_nameVariable_78
g
,Variable_78/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_78*
_output_shapes
: 
h
Variable_78/AssignAssignVariableOpVariable_78&Variable_78/Initializer/ReadVariableOp*
dtype0
t
Variable_78/Read/ReadVariableOpReadVariableOpVariable_78*'
_output_shapes
:@�*
dtype0
�
(adam/sequential_Conv2D_4_kernel_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_Conv2D_4_kernel_momentum/*
dtype0*
shape:@�*9
shared_name*(adam/sequential_Conv2D_4_kernel_momentum
�
<adam/sequential_Conv2D_4_kernel_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_4_kernel_momentum*'
_output_shapes
:@�*
dtype0
�
&Variable_79/Initializer/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_4_kernel_momentum*
_class
loc:@Variable_79*'
_output_shapes
:@�*
dtype0
�
Variable_79VarHandleOp*
_class
loc:@Variable_79*
_output_shapes
: *

debug_nameVariable_79/*
dtype0*
shape:@�*
shared_nameVariable_79
g
,Variable_79/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_79*
_output_shapes
: 
h
Variable_79/AssignAssignVariableOpVariable_79&Variable_79/Initializer/ReadVariableOp*
dtype0
t
Variable_79/Read/ReadVariableOpReadVariableOpVariable_79*'
_output_shapes
:@�*
dtype0
�
3adam/sequential_batch_normalization_2_beta_velocityVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_2_beta_velocity/*
dtype0*
shape:@*D
shared_name53adam/sequential_batch_normalization_2_beta_velocity
�
Gadam/sequential_batch_normalization_2_beta_velocity/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_2_beta_velocity*
_output_shapes
:@*
dtype0
�
&Variable_80/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_2_beta_velocity*
_class
loc:@Variable_80*
_output_shapes
:@*
dtype0
�
Variable_80VarHandleOp*
_class
loc:@Variable_80*
_output_shapes
: *

debug_nameVariable_80/*
dtype0*
shape:@*
shared_nameVariable_80
g
,Variable_80/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_80*
_output_shapes
: 
h
Variable_80/AssignAssignVariableOpVariable_80&Variable_80/Initializer/ReadVariableOp*
dtype0
g
Variable_80/Read/ReadVariableOpReadVariableOpVariable_80*
_output_shapes
:@*
dtype0
�
3adam/sequential_batch_normalization_2_beta_momentumVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_2_beta_momentum/*
dtype0*
shape:@*D
shared_name53adam/sequential_batch_normalization_2_beta_momentum
�
Gadam/sequential_batch_normalization_2_beta_momentum/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_2_beta_momentum*
_output_shapes
:@*
dtype0
�
&Variable_81/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_2_beta_momentum*
_class
loc:@Variable_81*
_output_shapes
:@*
dtype0
�
Variable_81VarHandleOp*
_class
loc:@Variable_81*
_output_shapes
: *

debug_nameVariable_81/*
dtype0*
shape:@*
shared_nameVariable_81
g
,Variable_81/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_81*
_output_shapes
: 
h
Variable_81/AssignAssignVariableOpVariable_81&Variable_81/Initializer/ReadVariableOp*
dtype0
g
Variable_81/Read/ReadVariableOpReadVariableOpVariable_81*
_output_shapes
:@*
dtype0
�
4adam/sequential_batch_normalization_2_gamma_velocityVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_2_gamma_velocity/*
dtype0*
shape:@*E
shared_name64adam/sequential_batch_normalization_2_gamma_velocity
�
Hadam/sequential_batch_normalization_2_gamma_velocity/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_2_gamma_velocity*
_output_shapes
:@*
dtype0
�
&Variable_82/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_2_gamma_velocity*
_class
loc:@Variable_82*
_output_shapes
:@*
dtype0
�
Variable_82VarHandleOp*
_class
loc:@Variable_82*
_output_shapes
: *

debug_nameVariable_82/*
dtype0*
shape:@*
shared_nameVariable_82
g
,Variable_82/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_82*
_output_shapes
: 
h
Variable_82/AssignAssignVariableOpVariable_82&Variable_82/Initializer/ReadVariableOp*
dtype0
g
Variable_82/Read/ReadVariableOpReadVariableOpVariable_82*
_output_shapes
:@*
dtype0
�
4adam/sequential_batch_normalization_2_gamma_momentumVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_2_gamma_momentum/*
dtype0*
shape:@*E
shared_name64adam/sequential_batch_normalization_2_gamma_momentum
�
Hadam/sequential_batch_normalization_2_gamma_momentum/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_2_gamma_momentum*
_output_shapes
:@*
dtype0
�
&Variable_83/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_2_gamma_momentum*
_class
loc:@Variable_83*
_output_shapes
:@*
dtype0
�
Variable_83VarHandleOp*
_class
loc:@Variable_83*
_output_shapes
: *

debug_nameVariable_83/*
dtype0*
shape:@*
shared_nameVariable_83
g
,Variable_83/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_83*
_output_shapes
: 
h
Variable_83/AssignAssignVariableOpVariable_83&Variable_83/Initializer/ReadVariableOp*
dtype0
g
Variable_83/Read/ReadVariableOpReadVariableOpVariable_83*
_output_shapes
:@*
dtype0
�
&adam/sequential_Conv2D_3_bias_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_Conv2D_3_bias_velocity/*
dtype0*
shape:@*7
shared_name(&adam/sequential_Conv2D_3_bias_velocity
�
:adam/sequential_Conv2D_3_bias_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_3_bias_velocity*
_output_shapes
:@*
dtype0
�
&Variable_84/Initializer/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_3_bias_velocity*
_class
loc:@Variable_84*
_output_shapes
:@*
dtype0
�
Variable_84VarHandleOp*
_class
loc:@Variable_84*
_output_shapes
: *

debug_nameVariable_84/*
dtype0*
shape:@*
shared_nameVariable_84
g
,Variable_84/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_84*
_output_shapes
: 
h
Variable_84/AssignAssignVariableOpVariable_84&Variable_84/Initializer/ReadVariableOp*
dtype0
g
Variable_84/Read/ReadVariableOpReadVariableOpVariable_84*
_output_shapes
:@*
dtype0
�
&adam/sequential_Conv2D_3_bias_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_Conv2D_3_bias_momentum/*
dtype0*
shape:@*7
shared_name(&adam/sequential_Conv2D_3_bias_momentum
�
:adam/sequential_Conv2D_3_bias_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_3_bias_momentum*
_output_shapes
:@*
dtype0
�
&Variable_85/Initializer/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_3_bias_momentum*
_class
loc:@Variable_85*
_output_shapes
:@*
dtype0
�
Variable_85VarHandleOp*
_class
loc:@Variable_85*
_output_shapes
: *

debug_nameVariable_85/*
dtype0*
shape:@*
shared_nameVariable_85
g
,Variable_85/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_85*
_output_shapes
: 
h
Variable_85/AssignAssignVariableOpVariable_85&Variable_85/Initializer/ReadVariableOp*
dtype0
g
Variable_85/Read/ReadVariableOpReadVariableOpVariable_85*
_output_shapes
:@*
dtype0
�
(adam/sequential_Conv2D_3_kernel_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_Conv2D_3_kernel_velocity/*
dtype0*
shape: @*9
shared_name*(adam/sequential_Conv2D_3_kernel_velocity
�
<adam/sequential_Conv2D_3_kernel_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_3_kernel_velocity*&
_output_shapes
: @*
dtype0
�
&Variable_86/Initializer/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_3_kernel_velocity*
_class
loc:@Variable_86*&
_output_shapes
: @*
dtype0
�
Variable_86VarHandleOp*
_class
loc:@Variable_86*
_output_shapes
: *

debug_nameVariable_86/*
dtype0*
shape: @*
shared_nameVariable_86
g
,Variable_86/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_86*
_output_shapes
: 
h
Variable_86/AssignAssignVariableOpVariable_86&Variable_86/Initializer/ReadVariableOp*
dtype0
s
Variable_86/Read/ReadVariableOpReadVariableOpVariable_86*&
_output_shapes
: @*
dtype0
�
(adam/sequential_Conv2D_3_kernel_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_Conv2D_3_kernel_momentum/*
dtype0*
shape: @*9
shared_name*(adam/sequential_Conv2D_3_kernel_momentum
�
<adam/sequential_Conv2D_3_kernel_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_3_kernel_momentum*&
_output_shapes
: @*
dtype0
�
&Variable_87/Initializer/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_3_kernel_momentum*
_class
loc:@Variable_87*&
_output_shapes
: @*
dtype0
�
Variable_87VarHandleOp*
_class
loc:@Variable_87*
_output_shapes
: *

debug_nameVariable_87/*
dtype0*
shape: @*
shared_nameVariable_87
g
,Variable_87/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_87*
_output_shapes
: 
h
Variable_87/AssignAssignVariableOpVariable_87&Variable_87/Initializer/ReadVariableOp*
dtype0
s
Variable_87/Read/ReadVariableOpReadVariableOpVariable_87*&
_output_shapes
: @*
dtype0
�
3adam/sequential_batch_normalization_1_beta_velocityVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_1_beta_velocity/*
dtype0*
shape: *D
shared_name53adam/sequential_batch_normalization_1_beta_velocity
�
Gadam/sequential_batch_normalization_1_beta_velocity/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_1_beta_velocity*
_output_shapes
: *
dtype0
�
&Variable_88/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_1_beta_velocity*
_class
loc:@Variable_88*
_output_shapes
: *
dtype0
�
Variable_88VarHandleOp*
_class
loc:@Variable_88*
_output_shapes
: *

debug_nameVariable_88/*
dtype0*
shape: *
shared_nameVariable_88
g
,Variable_88/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_88*
_output_shapes
: 
h
Variable_88/AssignAssignVariableOpVariable_88&Variable_88/Initializer/ReadVariableOp*
dtype0
g
Variable_88/Read/ReadVariableOpReadVariableOpVariable_88*
_output_shapes
: *
dtype0
�
3adam/sequential_batch_normalization_1_beta_momentumVarHandleOp*
_output_shapes
: *D

debug_name64adam/sequential_batch_normalization_1_beta_momentum/*
dtype0*
shape: *D
shared_name53adam/sequential_batch_normalization_1_beta_momentum
�
Gadam/sequential_batch_normalization_1_beta_momentum/Read/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_1_beta_momentum*
_output_shapes
: *
dtype0
�
&Variable_89/Initializer/ReadVariableOpReadVariableOp3adam/sequential_batch_normalization_1_beta_momentum*
_class
loc:@Variable_89*
_output_shapes
: *
dtype0
�
Variable_89VarHandleOp*
_class
loc:@Variable_89*
_output_shapes
: *

debug_nameVariable_89/*
dtype0*
shape: *
shared_nameVariable_89
g
,Variable_89/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_89*
_output_shapes
: 
h
Variable_89/AssignAssignVariableOpVariable_89&Variable_89/Initializer/ReadVariableOp*
dtype0
g
Variable_89/Read/ReadVariableOpReadVariableOpVariable_89*
_output_shapes
: *
dtype0
�
4adam/sequential_batch_normalization_1_gamma_velocityVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_1_gamma_velocity/*
dtype0*
shape: *E
shared_name64adam/sequential_batch_normalization_1_gamma_velocity
�
Hadam/sequential_batch_normalization_1_gamma_velocity/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_1_gamma_velocity*
_output_shapes
: *
dtype0
�
&Variable_90/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_1_gamma_velocity*
_class
loc:@Variable_90*
_output_shapes
: *
dtype0
�
Variable_90VarHandleOp*
_class
loc:@Variable_90*
_output_shapes
: *

debug_nameVariable_90/*
dtype0*
shape: *
shared_nameVariable_90
g
,Variable_90/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_90*
_output_shapes
: 
h
Variable_90/AssignAssignVariableOpVariable_90&Variable_90/Initializer/ReadVariableOp*
dtype0
g
Variable_90/Read/ReadVariableOpReadVariableOpVariable_90*
_output_shapes
: *
dtype0
�
4adam/sequential_batch_normalization_1_gamma_momentumVarHandleOp*
_output_shapes
: *E

debug_name75adam/sequential_batch_normalization_1_gamma_momentum/*
dtype0*
shape: *E
shared_name64adam/sequential_batch_normalization_1_gamma_momentum
�
Hadam/sequential_batch_normalization_1_gamma_momentum/Read/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_1_gamma_momentum*
_output_shapes
: *
dtype0
�
&Variable_91/Initializer/ReadVariableOpReadVariableOp4adam/sequential_batch_normalization_1_gamma_momentum*
_class
loc:@Variable_91*
_output_shapes
: *
dtype0
�
Variable_91VarHandleOp*
_class
loc:@Variable_91*
_output_shapes
: *

debug_nameVariable_91/*
dtype0*
shape: *
shared_nameVariable_91
g
,Variable_91/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_91*
_output_shapes
: 
h
Variable_91/AssignAssignVariableOpVariable_91&Variable_91/Initializer/ReadVariableOp*
dtype0
g
Variable_91/Read/ReadVariableOpReadVariableOpVariable_91*
_output_shapes
: *
dtype0
�
&adam/sequential_Conv2D_2_bias_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_Conv2D_2_bias_velocity/*
dtype0*
shape: *7
shared_name(&adam/sequential_Conv2D_2_bias_velocity
�
:adam/sequential_Conv2D_2_bias_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_2_bias_velocity*
_output_shapes
: *
dtype0
�
&Variable_92/Initializer/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_2_bias_velocity*
_class
loc:@Variable_92*
_output_shapes
: *
dtype0
�
Variable_92VarHandleOp*
_class
loc:@Variable_92*
_output_shapes
: *

debug_nameVariable_92/*
dtype0*
shape: *
shared_nameVariable_92
g
,Variable_92/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_92*
_output_shapes
: 
h
Variable_92/AssignAssignVariableOpVariable_92&Variable_92/Initializer/ReadVariableOp*
dtype0
g
Variable_92/Read/ReadVariableOpReadVariableOpVariable_92*
_output_shapes
: *
dtype0
�
&adam/sequential_Conv2D_2_bias_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_Conv2D_2_bias_momentum/*
dtype0*
shape: *7
shared_name(&adam/sequential_Conv2D_2_bias_momentum
�
:adam/sequential_Conv2D_2_bias_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_2_bias_momentum*
_output_shapes
: *
dtype0
�
&Variable_93/Initializer/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_2_bias_momentum*
_class
loc:@Variable_93*
_output_shapes
: *
dtype0
�
Variable_93VarHandleOp*
_class
loc:@Variable_93*
_output_shapes
: *

debug_nameVariable_93/*
dtype0*
shape: *
shared_nameVariable_93
g
,Variable_93/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_93*
_output_shapes
: 
h
Variable_93/AssignAssignVariableOpVariable_93&Variable_93/Initializer/ReadVariableOp*
dtype0
g
Variable_93/Read/ReadVariableOpReadVariableOpVariable_93*
_output_shapes
: *
dtype0
�
(adam/sequential_Conv2D_2_kernel_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_Conv2D_2_kernel_velocity/*
dtype0*
shape: *9
shared_name*(adam/sequential_Conv2D_2_kernel_velocity
�
<adam/sequential_Conv2D_2_kernel_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_2_kernel_velocity*&
_output_shapes
: *
dtype0
�
&Variable_94/Initializer/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_2_kernel_velocity*
_class
loc:@Variable_94*&
_output_shapes
: *
dtype0
�
Variable_94VarHandleOp*
_class
loc:@Variable_94*
_output_shapes
: *

debug_nameVariable_94/*
dtype0*
shape: *
shared_nameVariable_94
g
,Variable_94/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_94*
_output_shapes
: 
h
Variable_94/AssignAssignVariableOpVariable_94&Variable_94/Initializer/ReadVariableOp*
dtype0
s
Variable_94/Read/ReadVariableOpReadVariableOpVariable_94*&
_output_shapes
: *
dtype0
�
(adam/sequential_Conv2D_2_kernel_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_Conv2D_2_kernel_momentum/*
dtype0*
shape: *9
shared_name*(adam/sequential_Conv2D_2_kernel_momentum
�
<adam/sequential_Conv2D_2_kernel_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_2_kernel_momentum*&
_output_shapes
: *
dtype0
�
&Variable_95/Initializer/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_2_kernel_momentum*
_class
loc:@Variable_95*&
_output_shapes
: *
dtype0
�
Variable_95VarHandleOp*
_class
loc:@Variable_95*
_output_shapes
: *

debug_nameVariable_95/*
dtype0*
shape: *
shared_nameVariable_95
g
,Variable_95/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_95*
_output_shapes
: 
h
Variable_95/AssignAssignVariableOpVariable_95&Variable_95/Initializer/ReadVariableOp*
dtype0
s
Variable_95/Read/ReadVariableOpReadVariableOpVariable_95*&
_output_shapes
: *
dtype0
�
1adam/sequential_batch_normalization_beta_velocityVarHandleOp*
_output_shapes
: *B

debug_name42adam/sequential_batch_normalization_beta_velocity/*
dtype0*
shape:*B
shared_name31adam/sequential_batch_normalization_beta_velocity
�
Eadam/sequential_batch_normalization_beta_velocity/Read/ReadVariableOpReadVariableOp1adam/sequential_batch_normalization_beta_velocity*
_output_shapes
:*
dtype0
�
&Variable_96/Initializer/ReadVariableOpReadVariableOp1adam/sequential_batch_normalization_beta_velocity*
_class
loc:@Variable_96*
_output_shapes
:*
dtype0
�
Variable_96VarHandleOp*
_class
loc:@Variable_96*
_output_shapes
: *

debug_nameVariable_96/*
dtype0*
shape:*
shared_nameVariable_96
g
,Variable_96/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_96*
_output_shapes
: 
h
Variable_96/AssignAssignVariableOpVariable_96&Variable_96/Initializer/ReadVariableOp*
dtype0
g
Variable_96/Read/ReadVariableOpReadVariableOpVariable_96*
_output_shapes
:*
dtype0
�
1adam/sequential_batch_normalization_beta_momentumVarHandleOp*
_output_shapes
: *B

debug_name42adam/sequential_batch_normalization_beta_momentum/*
dtype0*
shape:*B
shared_name31adam/sequential_batch_normalization_beta_momentum
�
Eadam/sequential_batch_normalization_beta_momentum/Read/ReadVariableOpReadVariableOp1adam/sequential_batch_normalization_beta_momentum*
_output_shapes
:*
dtype0
�
&Variable_97/Initializer/ReadVariableOpReadVariableOp1adam/sequential_batch_normalization_beta_momentum*
_class
loc:@Variable_97*
_output_shapes
:*
dtype0
�
Variable_97VarHandleOp*
_class
loc:@Variable_97*
_output_shapes
: *

debug_nameVariable_97/*
dtype0*
shape:*
shared_nameVariable_97
g
,Variable_97/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_97*
_output_shapes
: 
h
Variable_97/AssignAssignVariableOpVariable_97&Variable_97/Initializer/ReadVariableOp*
dtype0
g
Variable_97/Read/ReadVariableOpReadVariableOpVariable_97*
_output_shapes
:*
dtype0
�
2adam/sequential_batch_normalization_gamma_velocityVarHandleOp*
_output_shapes
: *C

debug_name53adam/sequential_batch_normalization_gamma_velocity/*
dtype0*
shape:*C
shared_name42adam/sequential_batch_normalization_gamma_velocity
�
Fadam/sequential_batch_normalization_gamma_velocity/Read/ReadVariableOpReadVariableOp2adam/sequential_batch_normalization_gamma_velocity*
_output_shapes
:*
dtype0
�
&Variable_98/Initializer/ReadVariableOpReadVariableOp2adam/sequential_batch_normalization_gamma_velocity*
_class
loc:@Variable_98*
_output_shapes
:*
dtype0
�
Variable_98VarHandleOp*
_class
loc:@Variable_98*
_output_shapes
: *

debug_nameVariable_98/*
dtype0*
shape:*
shared_nameVariable_98
g
,Variable_98/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_98*
_output_shapes
: 
h
Variable_98/AssignAssignVariableOpVariable_98&Variable_98/Initializer/ReadVariableOp*
dtype0
g
Variable_98/Read/ReadVariableOpReadVariableOpVariable_98*
_output_shapes
:*
dtype0
�
2adam/sequential_batch_normalization_gamma_momentumVarHandleOp*
_output_shapes
: *C

debug_name53adam/sequential_batch_normalization_gamma_momentum/*
dtype0*
shape:*C
shared_name42adam/sequential_batch_normalization_gamma_momentum
�
Fadam/sequential_batch_normalization_gamma_momentum/Read/ReadVariableOpReadVariableOp2adam/sequential_batch_normalization_gamma_momentum*
_output_shapes
:*
dtype0
�
&Variable_99/Initializer/ReadVariableOpReadVariableOp2adam/sequential_batch_normalization_gamma_momentum*
_class
loc:@Variable_99*
_output_shapes
:*
dtype0
�
Variable_99VarHandleOp*
_class
loc:@Variable_99*
_output_shapes
: *

debug_nameVariable_99/*
dtype0*
shape:*
shared_nameVariable_99
g
,Variable_99/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_99*
_output_shapes
: 
h
Variable_99/AssignAssignVariableOpVariable_99&Variable_99/Initializer/ReadVariableOp*
dtype0
g
Variable_99/Read/ReadVariableOpReadVariableOpVariable_99*
_output_shapes
:*
dtype0
�
&adam/sequential_Conv2D_1_bias_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_Conv2D_1_bias_velocity/*
dtype0*
shape:*7
shared_name(&adam/sequential_Conv2D_1_bias_velocity
�
:adam/sequential_Conv2D_1_bias_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_1_bias_velocity*
_output_shapes
:*
dtype0
�
'Variable_100/Initializer/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_1_bias_velocity*
_class
loc:@Variable_100*
_output_shapes
:*
dtype0
�
Variable_100VarHandleOp*
_class
loc:@Variable_100*
_output_shapes
: *

debug_nameVariable_100/*
dtype0*
shape:*
shared_nameVariable_100
i
-Variable_100/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_100*
_output_shapes
: 
k
Variable_100/AssignAssignVariableOpVariable_100'Variable_100/Initializer/ReadVariableOp*
dtype0
i
 Variable_100/Read/ReadVariableOpReadVariableOpVariable_100*
_output_shapes
:*
dtype0
�
&adam/sequential_Conv2D_1_bias_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_Conv2D_1_bias_momentum/*
dtype0*
shape:*7
shared_name(&adam/sequential_Conv2D_1_bias_momentum
�
:adam/sequential_Conv2D_1_bias_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_1_bias_momentum*
_output_shapes
:*
dtype0
�
'Variable_101/Initializer/ReadVariableOpReadVariableOp&adam/sequential_Conv2D_1_bias_momentum*
_class
loc:@Variable_101*
_output_shapes
:*
dtype0
�
Variable_101VarHandleOp*
_class
loc:@Variable_101*
_output_shapes
: *

debug_nameVariable_101/*
dtype0*
shape:*
shared_nameVariable_101
i
-Variable_101/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_101*
_output_shapes
: 
k
Variable_101/AssignAssignVariableOpVariable_101'Variable_101/Initializer/ReadVariableOp*
dtype0
i
 Variable_101/Read/ReadVariableOpReadVariableOpVariable_101*
_output_shapes
:*
dtype0
�
(adam/sequential_Conv2D_1_kernel_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_Conv2D_1_kernel_velocity/*
dtype0*
shape:*9
shared_name*(adam/sequential_Conv2D_1_kernel_velocity
�
<adam/sequential_Conv2D_1_kernel_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_1_kernel_velocity*&
_output_shapes
:*
dtype0
�
'Variable_102/Initializer/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_1_kernel_velocity*
_class
loc:@Variable_102*&
_output_shapes
:*
dtype0
�
Variable_102VarHandleOp*
_class
loc:@Variable_102*
_output_shapes
: *

debug_nameVariable_102/*
dtype0*
shape:*
shared_nameVariable_102
i
-Variable_102/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_102*
_output_shapes
: 
k
Variable_102/AssignAssignVariableOpVariable_102'Variable_102/Initializer/ReadVariableOp*
dtype0
u
 Variable_102/Read/ReadVariableOpReadVariableOpVariable_102*&
_output_shapes
:*
dtype0
�
(adam/sequential_Conv2D_1_kernel_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_Conv2D_1_kernel_momentum/*
dtype0*
shape:*9
shared_name*(adam/sequential_Conv2D_1_kernel_momentum
�
<adam/sequential_Conv2D_1_kernel_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_1_kernel_momentum*&
_output_shapes
:*
dtype0
�
'Variable_103/Initializer/ReadVariableOpReadVariableOp(adam/sequential_Conv2D_1_kernel_momentum*
_class
loc:@Variable_103*&
_output_shapes
:*
dtype0
�
Variable_103VarHandleOp*
_class
loc:@Variable_103*
_output_shapes
: *

debug_nameVariable_103/*
dtype0*
shape:*
shared_nameVariable_103
i
-Variable_103/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_103*
_output_shapes
: 
k
Variable_103/AssignAssignVariableOpVariable_103'Variable_103/Initializer/ReadVariableOp*
dtype0
u
 Variable_103/Read/ReadVariableOpReadVariableOpVariable_103*&
_output_shapes
:*
dtype0
�
adam/learning_rateVarHandleOp*
_output_shapes
: *#

debug_nameadam/learning_rate/*
dtype0*
shape: *#
shared_nameadam/learning_rate
q
&adam/learning_rate/Read/ReadVariableOpReadVariableOpadam/learning_rate*
_output_shapes
: *
dtype0
�
'Variable_104/Initializer/ReadVariableOpReadVariableOpadam/learning_rate*
_class
loc:@Variable_104*
_output_shapes
: *
dtype0
�
Variable_104VarHandleOp*
_class
loc:@Variable_104*
_output_shapes
: *

debug_nameVariable_104/*
dtype0*
shape: *
shared_nameVariable_104
i
-Variable_104/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_104*
_output_shapes
: 
k
Variable_104/AssignAssignVariableOpVariable_104'Variable_104/Initializer/ReadVariableOp*
dtype0
e
 Variable_104/Read/ReadVariableOpReadVariableOpVariable_104*
_output_shapes
: *
dtype0
�
adam/iterationVarHandleOp*
_output_shapes
: *

debug_nameadam/iteration/*
dtype0	*
shape: *
shared_nameadam/iteration
i
"adam/iteration/Read/ReadVariableOpReadVariableOpadam/iteration*
_output_shapes
: *
dtype0	
�
'Variable_105/Initializer/ReadVariableOpReadVariableOpadam/iteration*
_class
loc:@Variable_105*
_output_shapes
: *
dtype0	
�
Variable_105VarHandleOp*
_class
loc:@Variable_105*
_output_shapes
: *

debug_nameVariable_105/*
dtype0	*
shape: *
shared_nameVariable_105
i
-Variable_105/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_105*
_output_shapes
: 
k
Variable_105/AssignAssignVariableOpVariable_105'Variable_105/Initializer/ReadVariableOp*
dtype0	
e
 Variable_105/Read/ReadVariableOpReadVariableOpVariable_105*
_output_shapes
: *
dtype0	
�
serving_default_inputsPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputssequential/Conv2D_1/kernelsequential/Conv2D_1/bias*sequential/batch_normalization/moving_mean.sequential/batch_normalization/moving_variance$sequential/batch_normalization/gamma#sequential/batch_normalization/betasequential/Conv2D_2/kernelsequential/Conv2D_2/bias,sequential/batch_normalization_1/moving_mean0sequential/batch_normalization_1/moving_variance&sequential/batch_normalization_1/gamma%sequential/batch_normalization_1/betasequential/Conv2D_3/kernelsequential/Conv2D_3/bias,sequential/batch_normalization_2/moving_mean0sequential/batch_normalization_2/moving_variance&sequential/batch_normalization_2/gamma%sequential/batch_normalization_2/betasequential/Conv2D_4/kernelsequential/Conv2D_4/bias,sequential/batch_normalization_3/moving_mean0sequential/batch_normalization_3/moving_variance&sequential/batch_normalization_3/gamma%sequential/batch_normalization_3/betasequential/dense/kernelsequential/dense/bias,sequential/batch_normalization_4/moving_mean0sequential/batch_normalization_4/moving_variance&sequential/batch_normalization_4/gamma%sequential/batch_normalization_4/betasequential/dense_1/kernelsequential/dense_1/bias,sequential/batch_normalization_5/moving_mean0sequential/batch_normalization_5/moving_variance&sequential/batch_normalization_5/gamma%sequential/batch_normalization_5/betasequential/dense_2/kernelsequential/dense_2/bias,sequential/batch_normalization_6/moving_mean0sequential/batch_normalization_6/moving_variance&sequential/batch_normalization_6/gamma%sequential/batch_normalization_6/betasequential/dense_3/kernelsequential/dense_3/bias*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8� *<
f7R5
3__inference_signature_wrapper_serving_default_92191

NoOpNoOp
�}
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�|
value�|B�| B�|
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures*
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature*
�

_variables
_trainable_variables
 _trainable_variables_indices

iterations
_learning_rate

_momentums
_velocities*

trace_0* 
* 
* 
* 
* 
* 
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422*
* 

5serving_default* 
* 
* 
* 
* 
* 
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422*
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422*
* 
* 

6trace_0* 
�
0
1
72
83
94
:5
;6
<7
=8
>9
?10
@11
A12
B13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25
O26
P27
Q28
R29
S30
T31
U32
V33
W34
X35
Y36
Z37
[38
\39
]40
^41
_42
`43
a44
b45
c46
d47
e48
f49
g50
h51
i52
j53
k54
l55
m56
n57
o58
p59
q60
r61*
�
s0
t1
u2
v3
w4
x5
y6
z7
{8
|9
}10
~11
12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29*
* 
UO
VARIABLE_VALUEVariable_105/optimizer/iterations/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEVariable_1043optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
b
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override* 
{
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict* 
�
s_kernel
tbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
�
	ugamma
vbeta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict*
{
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict* 
�
w_kernel
xbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
�
	ygamma
zbeta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict*
{
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict* 
�
{_kernel
|bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
�
	}gamma
~beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict*
{
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict* 
�
_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
�

�gamma
	�beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict*
{
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict* 
{
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict* 
{
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict* 
�
�_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
�

�gamma
	�beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict*
�
�_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
�

�gamma
	�beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict*
�
�_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
�

�gamma
	�beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict*
�
�_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
* 
* 
WQ
VARIABLE_VALUEVariable_1031optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_1021optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_1011optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_1001optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_991optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_981optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_971optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_961optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_952optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_942optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_932optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_922optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_912optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_902optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_892optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_882optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_872optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_862optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_852optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_842optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_832optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_822optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_812optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_802optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_792optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_782optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_772optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_762optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_752optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_742optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_732optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_722optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_712optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_702optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_692optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_682optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_672optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_662optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_652optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_642optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_632optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_622optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_612optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_602optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_592optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_582optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_572optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_562optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_552optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_542optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_532optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_522optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_512optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_502optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_492optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_482optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_472optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_462optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_452optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_442optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_43;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_42;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_41;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_40;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_39;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_38;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_37;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_36;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_35;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_34;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_33<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_32<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_31<optimizer/_trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_30<optimizer/_trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_29<optimizer/_trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_28<optimizer/_trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_27<optimizer/_trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_26<optimizer/_trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_25<optimizer/_trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_24<optimizer/_trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_23<optimizer/_trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_22<optimizer/_trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_21<optimizer/_trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_20<optimizer/_trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_19<optimizer/_trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_18<optimizer/_trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_17<optimizer/_trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_16<optimizer/_trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_15<optimizer/_trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariable_14<optimizer/_trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
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
UO
VARIABLE_VALUEVariable_130_layers/3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEVariable_124_layers/3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
UO
VARIABLE_VALUEVariable_110_layers/6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEVariable_104_layers/6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
TN
VARIABLE_VALUE
Variable_90_layers/9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Variable_84_layers/9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
UO
VARIABLE_VALUE
Variable_71_layers/12/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE
Variable_65_layers/12/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
UO
VARIABLE_VALUE
Variable_51_layers/17/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE
Variable_45_layers/17/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
UO
VARIABLE_VALUE
Variable_31_layers/19/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE
Variable_25_layers/19/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
UO
VARIABLE_VALUE
Variable_11_layers/21/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable5_layers/21/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable_105Variable_104Variable_103Variable_102Variable_101Variable_100Variable_99Variable_98Variable_97Variable_96Variable_95Variable_94Variable_93Variable_92Variable_91Variable_90Variable_89Variable_88Variable_87Variable_86Variable_85Variable_84Variable_83Variable_82Variable_81Variable_80Variable_79Variable_78Variable_77Variable_76Variable_75Variable_74Variable_73Variable_72Variable_71Variable_70Variable_69Variable_68Variable_67Variable_66Variable_65Variable_64Variable_63Variable_62Variable_61Variable_60Variable_59Variable_58Variable_57Variable_56Variable_55Variable_54Variable_53Variable_52Variable_51Variable_50Variable_49Variable_48Variable_47Variable_46Variable_45Variable_44Variable_43Variable_42Variable_41Variable_40Variable_39Variable_38Variable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst*w
Tinp
n2l*
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
GPU2*0J 8� *'
f"R 
__inference__traced_save_93464
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_105Variable_104Variable_103Variable_102Variable_101Variable_100Variable_99Variable_98Variable_97Variable_96Variable_95Variable_94Variable_93Variable_92Variable_91Variable_90Variable_89Variable_88Variable_87Variable_86Variable_85Variable_84Variable_83Variable_82Variable_81Variable_80Variable_79Variable_78Variable_77Variable_76Variable_75Variable_74Variable_73Variable_72Variable_71Variable_70Variable_69Variable_68Variable_67Variable_66Variable_65Variable_64Variable_63Variable_62Variable_61Variable_60Variable_59Variable_58Variable_57Variable_56Variable_55Variable_54Variable_53Variable_52Variable_51Variable_50Variable_49Variable_48Variable_47Variable_46Variable_45Variable_44Variable_43Variable_42Variable_41Variable_40Variable_39Variable_38Variable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*v
Tino
m2k*
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
GPU2*0J 8� **
f%R#
!__inference__traced_restore_93791��
��
�Z
__inference__traced_save_93464
file_prefix-
#read_disablecopyonread_variable_105:	 /
%read_1_disablecopyonread_variable_104: ?
%read_2_disablecopyonread_variable_103:?
%read_3_disablecopyonread_variable_102:3
%read_4_disablecopyonread_variable_101:3
%read_5_disablecopyonread_variable_100:2
$read_6_disablecopyonread_variable_99:2
$read_7_disablecopyonread_variable_98:2
$read_8_disablecopyonread_variable_97:2
$read_9_disablecopyonread_variable_96:?
%read_10_disablecopyonread_variable_95: ?
%read_11_disablecopyonread_variable_94: 3
%read_12_disablecopyonread_variable_93: 3
%read_13_disablecopyonread_variable_92: 3
%read_14_disablecopyonread_variable_91: 3
%read_15_disablecopyonread_variable_90: 3
%read_16_disablecopyonread_variable_89: 3
%read_17_disablecopyonread_variable_88: ?
%read_18_disablecopyonread_variable_87: @?
%read_19_disablecopyonread_variable_86: @3
%read_20_disablecopyonread_variable_85:@3
%read_21_disablecopyonread_variable_84:@3
%read_22_disablecopyonread_variable_83:@3
%read_23_disablecopyonread_variable_82:@3
%read_24_disablecopyonread_variable_81:@3
%read_25_disablecopyonread_variable_80:@@
%read_26_disablecopyonread_variable_79:@�@
%read_27_disablecopyonread_variable_78:@�4
%read_28_disablecopyonread_variable_77:	�4
%read_29_disablecopyonread_variable_76:	�4
%read_30_disablecopyonread_variable_75:	�4
%read_31_disablecopyonread_variable_74:	�4
%read_32_disablecopyonread_variable_73:	�4
%read_33_disablecopyonread_variable_72:	�:
%read_34_disablecopyonread_variable_71:���:
%read_35_disablecopyonread_variable_70:���4
%read_36_disablecopyonread_variable_69:	�4
%read_37_disablecopyonread_variable_68:	�4
%read_38_disablecopyonread_variable_67:	�4
%read_39_disablecopyonread_variable_66:	�4
%read_40_disablecopyonread_variable_65:	�4
%read_41_disablecopyonread_variable_64:	�8
%read_42_disablecopyonread_variable_63:	�@8
%read_43_disablecopyonread_variable_62:	�@3
%read_44_disablecopyonread_variable_61:@3
%read_45_disablecopyonread_variable_60:@3
%read_46_disablecopyonread_variable_59:@3
%read_47_disablecopyonread_variable_58:@3
%read_48_disablecopyonread_variable_57:@3
%read_49_disablecopyonread_variable_56:@7
%read_50_disablecopyonread_variable_55:@ 7
%read_51_disablecopyonread_variable_54:@ 3
%read_52_disablecopyonread_variable_53: 3
%read_53_disablecopyonread_variable_52: 3
%read_54_disablecopyonread_variable_51: 3
%read_55_disablecopyonread_variable_50: 3
%read_56_disablecopyonread_variable_49: 3
%read_57_disablecopyonread_variable_48: 7
%read_58_disablecopyonread_variable_47: 7
%read_59_disablecopyonread_variable_46: 3
%read_60_disablecopyonread_variable_45:3
%read_61_disablecopyonread_variable_44:?
%read_62_disablecopyonread_variable_43:3
%read_63_disablecopyonread_variable_42:3
%read_64_disablecopyonread_variable_41:3
%read_65_disablecopyonread_variable_40:?
%read_66_disablecopyonread_variable_39: 3
%read_67_disablecopyonread_variable_38: 3
%read_68_disablecopyonread_variable_37: 3
%read_69_disablecopyonread_variable_36: ?
%read_70_disablecopyonread_variable_35: @3
%read_71_disablecopyonread_variable_34:@3
%read_72_disablecopyonread_variable_33:@3
%read_73_disablecopyonread_variable_32:@@
%read_74_disablecopyonread_variable_31:@�4
%read_75_disablecopyonread_variable_30:	�4
%read_76_disablecopyonread_variable_29:	�4
%read_77_disablecopyonread_variable_28:	�:
%read_78_disablecopyonread_variable_27:���4
%read_79_disablecopyonread_variable_26:	�4
%read_80_disablecopyonread_variable_25:	�4
%read_81_disablecopyonread_variable_24:	�8
%read_82_disablecopyonread_variable_23:	�@3
%read_83_disablecopyonread_variable_22:@3
%read_84_disablecopyonread_variable_21:@3
%read_85_disablecopyonread_variable_20:@7
%read_86_disablecopyonread_variable_19:@ 3
%read_87_disablecopyonread_variable_18: 3
%read_88_disablecopyonread_variable_17: 3
%read_89_disablecopyonread_variable_16: 7
%read_90_disablecopyonread_variable_15: 3
%read_91_disablecopyonread_variable_14:3
%read_92_disablecopyonread_variable_13:3
%read_93_disablecopyonread_variable_12:3
%read_94_disablecopyonread_variable_11: 3
%read_95_disablecopyonread_variable_10: 2
$read_96_disablecopyonread_variable_9:@2
$read_97_disablecopyonread_variable_8:@3
$read_98_disablecopyonread_variable_7:	�3
$read_99_disablecopyonread_variable_6:	�4
%read_100_disablecopyonread_variable_5:	�4
%read_101_disablecopyonread_variable_4:	�3
%read_102_disablecopyonread_variable_3:@3
%read_103_disablecopyonread_variable_2:@3
%read_104_disablecopyonread_variable_1: 1
#read_105_disablecopyonread_variable: 
savev2_const
identity_213��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_100/DisableCopyOnRead�Read_100/ReadVariableOp�Read_101/DisableCopyOnRead�Read_101/ReadVariableOp�Read_102/DisableCopyOnRead�Read_102/ReadVariableOp�Read_103/DisableCopyOnRead�Read_103/ReadVariableOp�Read_104/DisableCopyOnRead�Read_104/ReadVariableOp�Read_105/DisableCopyOnRead�Read_105/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_84/DisableCopyOnRead�Read_84/ReadVariableOp�Read_85/DisableCopyOnRead�Read_85/ReadVariableOp�Read_86/DisableCopyOnRead�Read_86/ReadVariableOp�Read_87/DisableCopyOnRead�Read_87/ReadVariableOp�Read_88/DisableCopyOnRead�Read_88/ReadVariableOp�Read_89/DisableCopyOnRead�Read_89/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOp�Read_90/DisableCopyOnRead�Read_90/ReadVariableOp�Read_91/DisableCopyOnRead�Read_91/ReadVariableOp�Read_92/DisableCopyOnRead�Read_92/ReadVariableOp�Read_93/DisableCopyOnRead�Read_93/ReadVariableOp�Read_94/DisableCopyOnRead�Read_94/ReadVariableOp�Read_95/DisableCopyOnRead�Read_95/ReadVariableOp�Read_96/DisableCopyOnRead�Read_96/ReadVariableOp�Read_97/DisableCopyOnRead�Read_97/ReadVariableOp�Read_98/DisableCopyOnRead�Read_98/ReadVariableOp�Read_99/DisableCopyOnRead�Read_99/ReadVariableOpw
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
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: f
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_variable_105*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_variable_105^Read/DisableCopyOnRead*
_output_shapes
: *
dtype0	R
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: j
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_variable_104*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_variable_104^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0V

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: [

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_2/DisableCopyOnReadDisableCopyOnRead%read_2_disablecopyonread_variable_103*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp%read_2_disablecopyonread_variable_103^Read_2/DisableCopyOnRead*&
_output_shapes
:*
dtype0f

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*&
_output_shapes
:k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:j
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_variable_102*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_variable_102^Read_3/DisableCopyOnRead*&
_output_shapes
:*
dtype0f

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*&
_output_shapes
:k

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*&
_output_shapes
:j
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_variable_101*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_variable_101^Read_4/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:j
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_variable_100*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_variable_100^Read_5/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_99*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_99^Read_6/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_98*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_98^Read_7/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_97*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_97^Read_8/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_96*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_96^Read_9/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_95*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_95^Read_10/DisableCopyOnRead*&
_output_shapes
: *
dtype0h
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*&
_output_shapes
: m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
: k
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_94*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_94^Read_11/DisableCopyOnRead*&
_output_shapes
: *
dtype0h
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*&
_output_shapes
: m
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*&
_output_shapes
: k
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_93*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_93^Read_12/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_variable_92*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_variable_92^Read_13/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_variable_91*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_variable_91^Read_14/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_variable_90*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_variable_90^Read_15/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_variable_89*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_variable_89^Read_16/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_variable_88*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_variable_88^Read_17/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_18/DisableCopyOnReadDisableCopyOnRead%read_18_disablecopyonread_variable_87*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp%read_18_disablecopyonread_variable_87^Read_18/DisableCopyOnRead*&
_output_shapes
: @*
dtype0h
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*&
_output_shapes
: @m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: @k
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_variable_86*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_variable_86^Read_19/DisableCopyOnRead*&
_output_shapes
: @*
dtype0h
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*&
_output_shapes
: @m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
: @k
Read_20/DisableCopyOnReadDisableCopyOnRead%read_20_disablecopyonread_variable_85*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp%read_20_disablecopyonread_variable_85^Read_20/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_21/DisableCopyOnReadDisableCopyOnRead%read_21_disablecopyonread_variable_84*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp%read_21_disablecopyonread_variable_84^Read_21/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_22/DisableCopyOnReadDisableCopyOnRead%read_22_disablecopyonread_variable_83*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp%read_22_disablecopyonread_variable_83^Read_22/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_23/DisableCopyOnReadDisableCopyOnRead%read_23_disablecopyonread_variable_82*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp%read_23_disablecopyonread_variable_82^Read_23/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_24/DisableCopyOnReadDisableCopyOnRead%read_24_disablecopyonread_variable_81*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp%read_24_disablecopyonread_variable_81^Read_24/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_25/DisableCopyOnReadDisableCopyOnRead%read_25_disablecopyonread_variable_80*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp%read_25_disablecopyonread_variable_80^Read_25/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_26/DisableCopyOnReadDisableCopyOnRead%read_26_disablecopyonread_variable_79*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp%read_26_disablecopyonread_variable_79^Read_26/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0i
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�n
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�k
Read_27/DisableCopyOnReadDisableCopyOnRead%read_27_disablecopyonread_variable_78*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp%read_27_disablecopyonread_variable_78^Read_27/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0i
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�n
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�k
Read_28/DisableCopyOnReadDisableCopyOnRead%read_28_disablecopyonread_variable_77*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp%read_28_disablecopyonread_variable_77^Read_28/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_56IdentityRead_28/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_29/DisableCopyOnReadDisableCopyOnRead%read_29_disablecopyonread_variable_76*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp%read_29_disablecopyonread_variable_76^Read_29/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_58IdentityRead_29/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_30/DisableCopyOnReadDisableCopyOnRead%read_30_disablecopyonread_variable_75*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp%read_30_disablecopyonread_variable_75^Read_30/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_60IdentityRead_30/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_31/DisableCopyOnReadDisableCopyOnRead%read_31_disablecopyonread_variable_74*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp%read_31_disablecopyonread_variable_74^Read_31/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_62IdentityRead_31/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_32/DisableCopyOnReadDisableCopyOnRead%read_32_disablecopyonread_variable_73*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp%read_32_disablecopyonread_variable_73^Read_32/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_64IdentityRead_32/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_33/DisableCopyOnReadDisableCopyOnRead%read_33_disablecopyonread_variable_72*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp%read_33_disablecopyonread_variable_72^Read_33/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_66IdentityRead_33/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_34/DisableCopyOnReadDisableCopyOnRead%read_34_disablecopyonread_variable_71*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp%read_34_disablecopyonread_variable_71^Read_34/DisableCopyOnRead*!
_output_shapes
:���*
dtype0c
Identity_68IdentityRead_34/ReadVariableOp:value:0*
T0*!
_output_shapes
:���h
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*!
_output_shapes
:���k
Read_35/DisableCopyOnReadDisableCopyOnRead%read_35_disablecopyonread_variable_70*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp%read_35_disablecopyonread_variable_70^Read_35/DisableCopyOnRead*!
_output_shapes
:���*
dtype0c
Identity_70IdentityRead_35/ReadVariableOp:value:0*
T0*!
_output_shapes
:���h
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*!
_output_shapes
:���k
Read_36/DisableCopyOnReadDisableCopyOnRead%read_36_disablecopyonread_variable_69*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp%read_36_disablecopyonread_variable_69^Read_36/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_72IdentityRead_36/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_37/DisableCopyOnReadDisableCopyOnRead%read_37_disablecopyonread_variable_68*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp%read_37_disablecopyonread_variable_68^Read_37/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_74IdentityRead_37/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_38/DisableCopyOnReadDisableCopyOnRead%read_38_disablecopyonread_variable_67*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp%read_38_disablecopyonread_variable_67^Read_38/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_76IdentityRead_38/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_39/DisableCopyOnReadDisableCopyOnRead%read_39_disablecopyonread_variable_66*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp%read_39_disablecopyonread_variable_66^Read_39/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_78IdentityRead_39/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_40/DisableCopyOnReadDisableCopyOnRead%read_40_disablecopyonread_variable_65*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp%read_40_disablecopyonread_variable_65^Read_40/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_80IdentityRead_40/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_41/DisableCopyOnReadDisableCopyOnRead%read_41_disablecopyonread_variable_64*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp%read_41_disablecopyonread_variable_64^Read_41/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_82IdentityRead_41/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_42/DisableCopyOnReadDisableCopyOnRead%read_42_disablecopyonread_variable_63*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp%read_42_disablecopyonread_variable_63^Read_42/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_84IdentityRead_42/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@k
Read_43/DisableCopyOnReadDisableCopyOnRead%read_43_disablecopyonread_variable_62*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp%read_43_disablecopyonread_variable_62^Read_43/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_86IdentityRead_43/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@k
Read_44/DisableCopyOnReadDisableCopyOnRead%read_44_disablecopyonread_variable_61*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp%read_44_disablecopyonread_variable_61^Read_44/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_88IdentityRead_44/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_45/DisableCopyOnReadDisableCopyOnRead%read_45_disablecopyonread_variable_60*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp%read_45_disablecopyonread_variable_60^Read_45/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_90IdentityRead_45/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_46/DisableCopyOnReadDisableCopyOnRead%read_46_disablecopyonread_variable_59*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp%read_46_disablecopyonread_variable_59^Read_46/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_92IdentityRead_46/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_47/DisableCopyOnReadDisableCopyOnRead%read_47_disablecopyonread_variable_58*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp%read_47_disablecopyonread_variable_58^Read_47/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_94IdentityRead_47/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_48/DisableCopyOnReadDisableCopyOnRead%read_48_disablecopyonread_variable_57*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp%read_48_disablecopyonread_variable_57^Read_48/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_96IdentityRead_48/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_49/DisableCopyOnReadDisableCopyOnRead%read_49_disablecopyonread_variable_56*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp%read_49_disablecopyonread_variable_56^Read_49/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_98IdentityRead_49/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_50/DisableCopyOnReadDisableCopyOnRead%read_50_disablecopyonread_variable_55*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp%read_50_disablecopyonread_variable_55^Read_50/DisableCopyOnRead*
_output_shapes

:@ *
dtype0a
Identity_100IdentityRead_50/ReadVariableOp:value:0*
T0*
_output_shapes

:@ g
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes

:@ k
Read_51/DisableCopyOnReadDisableCopyOnRead%read_51_disablecopyonread_variable_54*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp%read_51_disablecopyonread_variable_54^Read_51/DisableCopyOnRead*
_output_shapes

:@ *
dtype0a
Identity_102IdentityRead_51/ReadVariableOp:value:0*
T0*
_output_shapes

:@ g
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes

:@ k
Read_52/DisableCopyOnReadDisableCopyOnRead%read_52_disablecopyonread_variable_53*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp%read_52_disablecopyonread_variable_53^Read_52/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_104IdentityRead_52/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_53/DisableCopyOnReadDisableCopyOnRead%read_53_disablecopyonread_variable_52*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp%read_53_disablecopyonread_variable_52^Read_53/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_106IdentityRead_53/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_54/DisableCopyOnReadDisableCopyOnRead%read_54_disablecopyonread_variable_51*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp%read_54_disablecopyonread_variable_51^Read_54/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_108IdentityRead_54/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_55/DisableCopyOnReadDisableCopyOnRead%read_55_disablecopyonread_variable_50*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp%read_55_disablecopyonread_variable_50^Read_55/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_110IdentityRead_55/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_56/DisableCopyOnReadDisableCopyOnRead%read_56_disablecopyonread_variable_49*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp%read_56_disablecopyonread_variable_49^Read_56/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_112IdentityRead_56/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_57/DisableCopyOnReadDisableCopyOnRead%read_57_disablecopyonread_variable_48*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp%read_57_disablecopyonread_variable_48^Read_57/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_114IdentityRead_57/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_58/DisableCopyOnReadDisableCopyOnRead%read_58_disablecopyonread_variable_47*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp%read_58_disablecopyonread_variable_47^Read_58/DisableCopyOnRead*
_output_shapes

: *
dtype0a
Identity_116IdentityRead_58/ReadVariableOp:value:0*
T0*
_output_shapes

: g
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes

: k
Read_59/DisableCopyOnReadDisableCopyOnRead%read_59_disablecopyonread_variable_46*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp%read_59_disablecopyonread_variable_46^Read_59/DisableCopyOnRead*
_output_shapes

: *
dtype0a
Identity_118IdentityRead_59/ReadVariableOp:value:0*
T0*
_output_shapes

: g
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes

: k
Read_60/DisableCopyOnReadDisableCopyOnRead%read_60_disablecopyonread_variable_45*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp%read_60_disablecopyonread_variable_45^Read_60/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_120IdentityRead_60/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_61/DisableCopyOnReadDisableCopyOnRead%read_61_disablecopyonread_variable_44*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp%read_61_disablecopyonread_variable_44^Read_61/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_122IdentityRead_61/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_62/DisableCopyOnReadDisableCopyOnRead%read_62_disablecopyonread_variable_43*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp%read_62_disablecopyonread_variable_43^Read_62/DisableCopyOnRead*&
_output_shapes
:*
dtype0i
Identity_124IdentityRead_62/ReadVariableOp:value:0*
T0*&
_output_shapes
:o
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*&
_output_shapes
:k
Read_63/DisableCopyOnReadDisableCopyOnRead%read_63_disablecopyonread_variable_42*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp%read_63_disablecopyonread_variable_42^Read_63/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_126IdentityRead_63/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_64/DisableCopyOnReadDisableCopyOnRead%read_64_disablecopyonread_variable_41*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp%read_64_disablecopyonread_variable_41^Read_64/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_128IdentityRead_64/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_65/DisableCopyOnReadDisableCopyOnRead%read_65_disablecopyonread_variable_40*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp%read_65_disablecopyonread_variable_40^Read_65/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_130IdentityRead_65/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_66/DisableCopyOnReadDisableCopyOnRead%read_66_disablecopyonread_variable_39*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp%read_66_disablecopyonread_variable_39^Read_66/DisableCopyOnRead*&
_output_shapes
: *
dtype0i
Identity_132IdentityRead_66/ReadVariableOp:value:0*
T0*&
_output_shapes
: o
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*&
_output_shapes
: k
Read_67/DisableCopyOnReadDisableCopyOnRead%read_67_disablecopyonread_variable_38*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp%read_67_disablecopyonread_variable_38^Read_67/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_134IdentityRead_67/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_68/DisableCopyOnReadDisableCopyOnRead%read_68_disablecopyonread_variable_37*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp%read_68_disablecopyonread_variable_37^Read_68/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_136IdentityRead_68/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_69/DisableCopyOnReadDisableCopyOnRead%read_69_disablecopyonread_variable_36*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp%read_69_disablecopyonread_variable_36^Read_69/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_138IdentityRead_69/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_70/DisableCopyOnReadDisableCopyOnRead%read_70_disablecopyonread_variable_35*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp%read_70_disablecopyonread_variable_35^Read_70/DisableCopyOnRead*&
_output_shapes
: @*
dtype0i
Identity_140IdentityRead_70/ReadVariableOp:value:0*
T0*&
_output_shapes
: @o
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*&
_output_shapes
: @k
Read_71/DisableCopyOnReadDisableCopyOnRead%read_71_disablecopyonread_variable_34*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp%read_71_disablecopyonread_variable_34^Read_71/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_142IdentityRead_71/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_72/DisableCopyOnReadDisableCopyOnRead%read_72_disablecopyonread_variable_33*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp%read_72_disablecopyonread_variable_33^Read_72/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_144IdentityRead_72/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_73/DisableCopyOnReadDisableCopyOnRead%read_73_disablecopyonread_variable_32*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp%read_73_disablecopyonread_variable_32^Read_73/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_146IdentityRead_73/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_74/DisableCopyOnReadDisableCopyOnRead%read_74_disablecopyonread_variable_31*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp%read_74_disablecopyonread_variable_31^Read_74/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0j
Identity_148IdentityRead_74/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�p
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�k
Read_75/DisableCopyOnReadDisableCopyOnRead%read_75_disablecopyonread_variable_30*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp%read_75_disablecopyonread_variable_30^Read_75/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_150IdentityRead_75/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_76/DisableCopyOnReadDisableCopyOnRead%read_76_disablecopyonread_variable_29*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp%read_76_disablecopyonread_variable_29^Read_76/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_152IdentityRead_76/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_77/DisableCopyOnReadDisableCopyOnRead%read_77_disablecopyonread_variable_28*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp%read_77_disablecopyonread_variable_28^Read_77/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_154IdentityRead_77/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_78/DisableCopyOnReadDisableCopyOnRead%read_78_disablecopyonread_variable_27*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp%read_78_disablecopyonread_variable_27^Read_78/DisableCopyOnRead*!
_output_shapes
:���*
dtype0d
Identity_156IdentityRead_78/ReadVariableOp:value:0*
T0*!
_output_shapes
:���j
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*!
_output_shapes
:���k
Read_79/DisableCopyOnReadDisableCopyOnRead%read_79_disablecopyonread_variable_26*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp%read_79_disablecopyonread_variable_26^Read_79/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_158IdentityRead_79/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_80/DisableCopyOnReadDisableCopyOnRead%read_80_disablecopyonread_variable_25*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp%read_80_disablecopyonread_variable_25^Read_80/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_160IdentityRead_80/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_81/DisableCopyOnReadDisableCopyOnRead%read_81_disablecopyonread_variable_24*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOp%read_81_disablecopyonread_variable_24^Read_81/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_162IdentityRead_81/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_82/DisableCopyOnReadDisableCopyOnRead%read_82_disablecopyonread_variable_23*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOp%read_82_disablecopyonread_variable_23^Read_82/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0b
Identity_164IdentityRead_82/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@h
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@k
Read_83/DisableCopyOnReadDisableCopyOnRead%read_83_disablecopyonread_variable_22*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOp%read_83_disablecopyonread_variable_22^Read_83/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_166IdentityRead_83/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_84/DisableCopyOnReadDisableCopyOnRead%read_84_disablecopyonread_variable_21*
_output_shapes
 �
Read_84/ReadVariableOpReadVariableOp%read_84_disablecopyonread_variable_21^Read_84/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_168IdentityRead_84/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_85/DisableCopyOnReadDisableCopyOnRead%read_85_disablecopyonread_variable_20*
_output_shapes
 �
Read_85/ReadVariableOpReadVariableOp%read_85_disablecopyonread_variable_20^Read_85/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_170IdentityRead_85/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_86/DisableCopyOnReadDisableCopyOnRead%read_86_disablecopyonread_variable_19*
_output_shapes
 �
Read_86/ReadVariableOpReadVariableOp%read_86_disablecopyonread_variable_19^Read_86/DisableCopyOnRead*
_output_shapes

:@ *
dtype0a
Identity_172IdentityRead_86/ReadVariableOp:value:0*
T0*
_output_shapes

:@ g
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*
_output_shapes

:@ k
Read_87/DisableCopyOnReadDisableCopyOnRead%read_87_disablecopyonread_variable_18*
_output_shapes
 �
Read_87/ReadVariableOpReadVariableOp%read_87_disablecopyonread_variable_18^Read_87/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_174IdentityRead_87/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_88/DisableCopyOnReadDisableCopyOnRead%read_88_disablecopyonread_variable_17*
_output_shapes
 �
Read_88/ReadVariableOpReadVariableOp%read_88_disablecopyonread_variable_17^Read_88/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_176IdentityRead_88/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_89/DisableCopyOnReadDisableCopyOnRead%read_89_disablecopyonread_variable_16*
_output_shapes
 �
Read_89/ReadVariableOpReadVariableOp%read_89_disablecopyonread_variable_16^Read_89/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_178IdentityRead_89/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_90/DisableCopyOnReadDisableCopyOnRead%read_90_disablecopyonread_variable_15*
_output_shapes
 �
Read_90/ReadVariableOpReadVariableOp%read_90_disablecopyonread_variable_15^Read_90/DisableCopyOnRead*
_output_shapes

: *
dtype0a
Identity_180IdentityRead_90/ReadVariableOp:value:0*
T0*
_output_shapes

: g
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes

: k
Read_91/DisableCopyOnReadDisableCopyOnRead%read_91_disablecopyonread_variable_14*
_output_shapes
 �
Read_91/ReadVariableOpReadVariableOp%read_91_disablecopyonread_variable_14^Read_91/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_182IdentityRead_91/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_92/DisableCopyOnReadDisableCopyOnRead%read_92_disablecopyonread_variable_13*
_output_shapes
 �
Read_92/ReadVariableOpReadVariableOp%read_92_disablecopyonread_variable_13^Read_92/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_184IdentityRead_92/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_93/DisableCopyOnReadDisableCopyOnRead%read_93_disablecopyonread_variable_12*
_output_shapes
 �
Read_93/ReadVariableOpReadVariableOp%read_93_disablecopyonread_variable_12^Read_93/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_186IdentityRead_93/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_94/DisableCopyOnReadDisableCopyOnRead%read_94_disablecopyonread_variable_11*
_output_shapes
 �
Read_94/ReadVariableOpReadVariableOp%read_94_disablecopyonread_variable_11^Read_94/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_188IdentityRead_94/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_95/DisableCopyOnReadDisableCopyOnRead%read_95_disablecopyonread_variable_10*
_output_shapes
 �
Read_95/ReadVariableOpReadVariableOp%read_95_disablecopyonread_variable_10^Read_95/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_190IdentityRead_95/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_96/DisableCopyOnReadDisableCopyOnRead$read_96_disablecopyonread_variable_9*
_output_shapes
 �
Read_96/ReadVariableOpReadVariableOp$read_96_disablecopyonread_variable_9^Read_96/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_192IdentityRead_96/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_193IdentityIdentity_192:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_97/DisableCopyOnReadDisableCopyOnRead$read_97_disablecopyonread_variable_8*
_output_shapes
 �
Read_97/ReadVariableOpReadVariableOp$read_97_disablecopyonread_variable_8^Read_97/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_194IdentityRead_97/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_195IdentityIdentity_194:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_98/DisableCopyOnReadDisableCopyOnRead$read_98_disablecopyonread_variable_7*
_output_shapes
 �
Read_98/ReadVariableOpReadVariableOp$read_98_disablecopyonread_variable_7^Read_98/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_196IdentityRead_98/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_197IdentityIdentity_196:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_99/DisableCopyOnReadDisableCopyOnRead$read_99_disablecopyonread_variable_6*
_output_shapes
 �
Read_99/ReadVariableOpReadVariableOp$read_99_disablecopyonread_variable_6^Read_99/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_198IdentityRead_99/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_199IdentityIdentity_198:output:0"/device:CPU:0*
T0*
_output_shapes	
:�l
Read_100/DisableCopyOnReadDisableCopyOnRead%read_100_disablecopyonread_variable_5*
_output_shapes
 �
Read_100/ReadVariableOpReadVariableOp%read_100_disablecopyonread_variable_5^Read_100/DisableCopyOnRead*
_output_shapes	
:�*
dtype0_
Identity_200IdentityRead_100/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_201IdentityIdentity_200:output:0"/device:CPU:0*
T0*
_output_shapes	
:�l
Read_101/DisableCopyOnReadDisableCopyOnRead%read_101_disablecopyonread_variable_4*
_output_shapes
 �
Read_101/ReadVariableOpReadVariableOp%read_101_disablecopyonread_variable_4^Read_101/DisableCopyOnRead*
_output_shapes	
:�*
dtype0_
Identity_202IdentityRead_101/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_203IdentityIdentity_202:output:0"/device:CPU:0*
T0*
_output_shapes	
:�l
Read_102/DisableCopyOnReadDisableCopyOnRead%read_102_disablecopyonread_variable_3*
_output_shapes
 �
Read_102/ReadVariableOpReadVariableOp%read_102_disablecopyonread_variable_3^Read_102/DisableCopyOnRead*
_output_shapes
:@*
dtype0^
Identity_204IdentityRead_102/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_205IdentityIdentity_204:output:0"/device:CPU:0*
T0*
_output_shapes
:@l
Read_103/DisableCopyOnReadDisableCopyOnRead%read_103_disablecopyonread_variable_2*
_output_shapes
 �
Read_103/ReadVariableOpReadVariableOp%read_103_disablecopyonread_variable_2^Read_103/DisableCopyOnRead*
_output_shapes
:@*
dtype0^
Identity_206IdentityRead_103/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_207IdentityIdentity_206:output:0"/device:CPU:0*
T0*
_output_shapes
:@l
Read_104/DisableCopyOnReadDisableCopyOnRead%read_104_disablecopyonread_variable_1*
_output_shapes
 �
Read_104/ReadVariableOpReadVariableOp%read_104_disablecopyonread_variable_1^Read_104/DisableCopyOnRead*
_output_shapes
: *
dtype0^
Identity_208IdentityRead_104/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_209IdentityIdentity_208:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_105/DisableCopyOnReadDisableCopyOnRead#read_105_disablecopyonread_variable*
_output_shapes
 �
Read_105/ReadVariableOpReadVariableOp#read_105_disablecopyonread_variable^Read_105/DisableCopyOnRead*
_output_shapes
: *
dtype0^
Identity_210IdentityRead_105/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_211IdentityIdentity_210:output:0"/device:CPU:0*
T0*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �.
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:k*
dtype0*�-
value�-B�-kB/optimizer/iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUEB0_layers/3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB0_layers/6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB0_layers/9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1_layers/12/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5_layers/12/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1_layers/17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5_layers/17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1_layers/19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5_layers/19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1_layers/21/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5_layers/21/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:k*
dtype0*�
value�B�kB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0Identity_193:output:0Identity_195:output:0Identity_197:output:0Identity_199:output:0Identity_201:output:0Identity_203:output:0Identity_205:output:0Identity_207:output:0Identity_209:output:0Identity_211:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *y
dtypeso
m2k	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_212Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_213IdentityIdentity_212:output:0^NoOp*
T0*
_output_shapes
: �,
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_100/DisableCopyOnRead^Read_100/ReadVariableOp^Read_101/DisableCopyOnRead^Read_101/ReadVariableOp^Read_102/DisableCopyOnRead^Read_102/ReadVariableOp^Read_103/DisableCopyOnRead^Read_103/ReadVariableOp^Read_104/DisableCopyOnRead^Read_104/ReadVariableOp^Read_105/DisableCopyOnRead^Read_105/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp^Read_96/DisableCopyOnRead^Read_96/ReadVariableOp^Read_97/DisableCopyOnRead^Read_97/ReadVariableOp^Read_98/DisableCopyOnRead^Read_98/ReadVariableOp^Read_99/DisableCopyOnRead^Read_99/ReadVariableOp*
_output_shapes
 "%
identity_213Identity_213:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp28
Read_100/DisableCopyOnReadRead_100/DisableCopyOnRead22
Read_100/ReadVariableOpRead_100/ReadVariableOp28
Read_101/DisableCopyOnReadRead_101/DisableCopyOnRead22
Read_101/ReadVariableOpRead_101/ReadVariableOp28
Read_102/DisableCopyOnReadRead_102/DisableCopyOnRead22
Read_102/ReadVariableOpRead_102/ReadVariableOp28
Read_103/DisableCopyOnReadRead_103/DisableCopyOnRead22
Read_103/ReadVariableOpRead_103/ReadVariableOp28
Read_104/DisableCopyOnReadRead_104/DisableCopyOnRead22
Read_104/ReadVariableOpRead_104/ReadVariableOp28
Read_105/DisableCopyOnReadRead_105/DisableCopyOnRead22
Read_105/ReadVariableOpRead_105/ReadVariableOp26
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
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp26
Read_96/DisableCopyOnReadRead_96/DisableCopyOnRead20
Read_96/ReadVariableOpRead_96/ReadVariableOp26
Read_97/DisableCopyOnReadRead_97/DisableCopyOnRead20
Read_97/ReadVariableOpRead_97/ReadVariableOp26
Read_98/DisableCopyOnReadRead_98/DisableCopyOnRead20
Read_98/ReadVariableOpRead_98/ReadVariableOp26
Read_99/DisableCopyOnReadRead_99/DisableCopyOnRead20
Read_99/ReadVariableOpRead_99/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_user_specified_nameVariable_105:,(
&
_user_specified_nameVariable_104:,(
&
_user_specified_nameVariable_103:,(
&
_user_specified_nameVariable_102:,(
&
_user_specified_nameVariable_101:,(
&
_user_specified_nameVariable_100:+'
%
_user_specified_nameVariable_99:+'
%
_user_specified_nameVariable_98:+	'
%
_user_specified_nameVariable_97:+
'
%
_user_specified_nameVariable_96:+'
%
_user_specified_nameVariable_95:+'
%
_user_specified_nameVariable_94:+'
%
_user_specified_nameVariable_93:+'
%
_user_specified_nameVariable_92:+'
%
_user_specified_nameVariable_91:+'
%
_user_specified_nameVariable_90:+'
%
_user_specified_nameVariable_89:+'
%
_user_specified_nameVariable_88:+'
%
_user_specified_nameVariable_87:+'
%
_user_specified_nameVariable_86:+'
%
_user_specified_nameVariable_85:+'
%
_user_specified_nameVariable_84:+'
%
_user_specified_nameVariable_83:+'
%
_user_specified_nameVariable_82:+'
%
_user_specified_nameVariable_81:+'
%
_user_specified_nameVariable_80:+'
%
_user_specified_nameVariable_79:+'
%
_user_specified_nameVariable_78:+'
%
_user_specified_nameVariable_77:+'
%
_user_specified_nameVariable_76:+'
%
_user_specified_nameVariable_75:+ '
%
_user_specified_nameVariable_74:+!'
%
_user_specified_nameVariable_73:+"'
%
_user_specified_nameVariable_72:+#'
%
_user_specified_nameVariable_71:+$'
%
_user_specified_nameVariable_70:+%'
%
_user_specified_nameVariable_69:+&'
%
_user_specified_nameVariable_68:+''
%
_user_specified_nameVariable_67:+('
%
_user_specified_nameVariable_66:+)'
%
_user_specified_nameVariable_65:+*'
%
_user_specified_nameVariable_64:++'
%
_user_specified_nameVariable_63:+,'
%
_user_specified_nameVariable_62:+-'
%
_user_specified_nameVariable_61:+.'
%
_user_specified_nameVariable_60:+/'
%
_user_specified_nameVariable_59:+0'
%
_user_specified_nameVariable_58:+1'
%
_user_specified_nameVariable_57:+2'
%
_user_specified_nameVariable_56:+3'
%
_user_specified_nameVariable_55:+4'
%
_user_specified_nameVariable_54:+5'
%
_user_specified_nameVariable_53:+6'
%
_user_specified_nameVariable_52:+7'
%
_user_specified_nameVariable_51:+8'
%
_user_specified_nameVariable_50:+9'
%
_user_specified_nameVariable_49:+:'
%
_user_specified_nameVariable_48:+;'
%
_user_specified_nameVariable_47:+<'
%
_user_specified_nameVariable_46:+='
%
_user_specified_nameVariable_45:+>'
%
_user_specified_nameVariable_44:+?'
%
_user_specified_nameVariable_43:+@'
%
_user_specified_nameVariable_42:+A'
%
_user_specified_nameVariable_41:+B'
%
_user_specified_nameVariable_40:+C'
%
_user_specified_nameVariable_39:+D'
%
_user_specified_nameVariable_38:+E'
%
_user_specified_nameVariable_37:+F'
%
_user_specified_nameVariable_36:+G'
%
_user_specified_nameVariable_35:+H'
%
_user_specified_nameVariable_34:+I'
%
_user_specified_nameVariable_33:+J'
%
_user_specified_nameVariable_32:+K'
%
_user_specified_nameVariable_31:+L'
%
_user_specified_nameVariable_30:+M'
%
_user_specified_nameVariable_29:+N'
%
_user_specified_nameVariable_28:+O'
%
_user_specified_nameVariable_27:+P'
%
_user_specified_nameVariable_26:+Q'
%
_user_specified_nameVariable_25:+R'
%
_user_specified_nameVariable_24:+S'
%
_user_specified_nameVariable_23:+T'
%
_user_specified_nameVariable_22:+U'
%
_user_specified_nameVariable_21:+V'
%
_user_specified_nameVariable_20:+W'
%
_user_specified_nameVariable_19:+X'
%
_user_specified_nameVariable_18:+Y'
%
_user_specified_nameVariable_17:+Z'
%
_user_specified_nameVariable_16:+['
%
_user_specified_nameVariable_15:+\'
%
_user_specified_nameVariable_14:+]'
%
_user_specified_nameVariable_13:+^'
%
_user_specified_nameVariable_12:+_'
%
_user_specified_nameVariable_11:+`'
%
_user_specified_nameVariable_10:*a&
$
_user_specified_name
Variable_9:*b&
$
_user_specified_name
Variable_8:*c&
$
_user_specified_name
Variable_7:*d&
$
_user_specified_name
Variable_6:*e&
$
_user_specified_name
Variable_5:*f&
$
_user_specified_name
Variable_4:*g&
$
_user_specified_name
Variable_3:*h&
$
_user_specified_name
Variable_2:*i&
$
_user_specified_name
Variable_1:(j$
"
_user_specified_name
Variable:=k9

_output_shapes
: 

_user_specified_nameConst
��
�.
!__inference_serving_default_92382

inputsU
;functional_1_conv2d_1_1_convolution_readvariableop_resource:E
7functional_1_conv2d_1_1_reshape_readvariableop_resource:M
?functional_1_batch_normalization_1_cast_readvariableop_resource:O
Afunctional_1_batch_normalization_1_cast_1_readvariableop_resource:O
Afunctional_1_batch_normalization_1_cast_2_readvariableop_resource:O
Afunctional_1_batch_normalization_1_cast_3_readvariableop_resource:U
;functional_1_conv2d_2_1_convolution_readvariableop_resource: E
7functional_1_conv2d_2_1_reshape_readvariableop_resource: O
Afunctional_1_batch_normalization_1_2_cast_readvariableop_resource: Q
Cfunctional_1_batch_normalization_1_2_cast_1_readvariableop_resource: Q
Cfunctional_1_batch_normalization_1_2_cast_2_readvariableop_resource: Q
Cfunctional_1_batch_normalization_1_2_cast_3_readvariableop_resource: U
;functional_1_conv2d_3_1_convolution_readvariableop_resource: @E
7functional_1_conv2d_3_1_reshape_readvariableop_resource:@O
Afunctional_1_batch_normalization_2_1_cast_readvariableop_resource:@Q
Cfunctional_1_batch_normalization_2_1_cast_1_readvariableop_resource:@Q
Cfunctional_1_batch_normalization_2_1_cast_2_readvariableop_resource:@Q
Cfunctional_1_batch_normalization_2_1_cast_3_readvariableop_resource:@V
;functional_1_conv2d_4_1_convolution_readvariableop_resource:@�F
7functional_1_conv2d_4_1_reshape_readvariableop_resource:	�P
Afunctional_1_batch_normalization_3_1_cast_readvariableop_resource:	�R
Cfunctional_1_batch_normalization_3_1_cast_1_readvariableop_resource:	�R
Cfunctional_1_batch_normalization_3_1_cast_2_readvariableop_resource:	�R
Cfunctional_1_batch_normalization_3_1_cast_3_readvariableop_resource:	�F
1functional_1_dense_1_cast_readvariableop_resource:���?
0functional_1_dense_1_add_readvariableop_resource:	�P
Afunctional_1_batch_normalization_4_1_cast_readvariableop_resource:	�R
Cfunctional_1_batch_normalization_4_1_cast_1_readvariableop_resource:	�R
Cfunctional_1_batch_normalization_4_1_cast_2_readvariableop_resource:	�R
Cfunctional_1_batch_normalization_4_1_cast_3_readvariableop_resource:	�F
3functional_1_dense_1_2_cast_readvariableop_resource:	�@@
2functional_1_dense_1_2_add_readvariableop_resource:@O
Afunctional_1_batch_normalization_5_1_cast_readvariableop_resource:@Q
Cfunctional_1_batch_normalization_5_1_cast_1_readvariableop_resource:@Q
Cfunctional_1_batch_normalization_5_1_cast_2_readvariableop_resource:@Q
Cfunctional_1_batch_normalization_5_1_cast_3_readvariableop_resource:@E
3functional_1_dense_2_1_cast_readvariableop_resource:@ @
2functional_1_dense_2_1_add_readvariableop_resource: O
Afunctional_1_batch_normalization_6_1_cast_readvariableop_resource: Q
Cfunctional_1_batch_normalization_6_1_cast_1_readvariableop_resource: Q
Cfunctional_1_batch_normalization_6_1_cast_2_readvariableop_resource: Q
Cfunctional_1_batch_normalization_6_1_cast_3_readvariableop_resource: E
3functional_1_dense_3_1_cast_readvariableop_resource: @
2functional_1_dense_3_1_add_readvariableop_resource:
identity��.functional_1/Conv2D_1_1/Reshape/ReadVariableOp�2functional_1/Conv2D_1_1/convolution/ReadVariableOp�.functional_1/Conv2D_2_1/Reshape/ReadVariableOp�2functional_1/Conv2D_2_1/convolution/ReadVariableOp�.functional_1/Conv2D_3_1/Reshape/ReadVariableOp�2functional_1/Conv2D_3_1/convolution/ReadVariableOp�.functional_1/Conv2D_4_1/Reshape/ReadVariableOp�2functional_1/Conv2D_4_1/convolution/ReadVariableOp�6functional_1/batch_normalization_1/Cast/ReadVariableOp�8functional_1/batch_normalization_1/Cast_1/ReadVariableOp�8functional_1/batch_normalization_1/Cast_2/ReadVariableOp�8functional_1/batch_normalization_1/Cast_3/ReadVariableOp�8functional_1/batch_normalization_1_2/Cast/ReadVariableOp�:functional_1/batch_normalization_1_2/Cast_1/ReadVariableOp�:functional_1/batch_normalization_1_2/Cast_2/ReadVariableOp�:functional_1/batch_normalization_1_2/Cast_3/ReadVariableOp�8functional_1/batch_normalization_2_1/Cast/ReadVariableOp�:functional_1/batch_normalization_2_1/Cast_1/ReadVariableOp�:functional_1/batch_normalization_2_1/Cast_2/ReadVariableOp�:functional_1/batch_normalization_2_1/Cast_3/ReadVariableOp�8functional_1/batch_normalization_3_1/Cast/ReadVariableOp�:functional_1/batch_normalization_3_1/Cast_1/ReadVariableOp�:functional_1/batch_normalization_3_1/Cast_2/ReadVariableOp�:functional_1/batch_normalization_3_1/Cast_3/ReadVariableOp�8functional_1/batch_normalization_4_1/Cast/ReadVariableOp�:functional_1/batch_normalization_4_1/Cast_1/ReadVariableOp�:functional_1/batch_normalization_4_1/Cast_2/ReadVariableOp�:functional_1/batch_normalization_4_1/Cast_3/ReadVariableOp�8functional_1/batch_normalization_5_1/Cast/ReadVariableOp�:functional_1/batch_normalization_5_1/Cast_1/ReadVariableOp�:functional_1/batch_normalization_5_1/Cast_2/ReadVariableOp�:functional_1/batch_normalization_5_1/Cast_3/ReadVariableOp�8functional_1/batch_normalization_6_1/Cast/ReadVariableOp�:functional_1/batch_normalization_6_1/Cast_1/ReadVariableOp�:functional_1/batch_normalization_6_1/Cast_2/ReadVariableOp�:functional_1/batch_normalization_6_1/Cast_3/ReadVariableOp�'functional_1/dense_1/Add/ReadVariableOp�(functional_1/dense_1/Cast/ReadVariableOp�)functional_1/dense_1_2/Add/ReadVariableOp�*functional_1/dense_1_2/Cast/ReadVariableOp�)functional_1/dense_2_1/Add/ReadVariableOp�*functional_1/dense_2_1/Cast/ReadVariableOp�)functional_1/dense_3_1/Add/ReadVariableOp�*functional_1/dense_3_1/Cast/ReadVariableOpd
functional_1/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;f
!functional_1/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    a
functional_1/rescaling_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
functional_1/rescaling_1/mulMulinputs(functional_1/rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:������������
functional_1/rescaling_1/addAddV2 functional_1/rescaling_1/mul:z:0*functional_1/rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
2functional_1/Conv2D_1_1/convolution/ReadVariableOpReadVariableOp;functional_1_conv2d_1_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
#functional_1/Conv2D_1_1/convolutionConv2D functional_1/rescaling_1/add:z:0:functional_1/Conv2D_1_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
.functional_1/Conv2D_1_1/Reshape/ReadVariableOpReadVariableOp7functional_1_conv2d_1_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0~
%functional_1/Conv2D_1_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
functional_1/Conv2D_1_1/ReshapeReshape6functional_1/Conv2D_1_1/Reshape/ReadVariableOp:value:0.functional_1/Conv2D_1_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
functional_1/Conv2D_1_1/addAddV2,functional_1/Conv2D_1_1/convolution:output:0(functional_1/Conv2D_1_1/Reshape:output:0*
T0*1
_output_shapes
:������������
functional_1/Conv2D_1_1/ReluRelufunctional_1/Conv2D_1_1/add:z:0*
T0*1
_output_shapes
:������������
6functional_1/batch_normalization_1/Cast/ReadVariableOpReadVariableOp?functional_1_batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
8functional_1/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
8functional_1/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
8functional_1/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0w
2functional_1/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
0functional_1/batch_normalization_1/batchnorm/addAddV2@functional_1/batch_normalization_1/Cast_1/ReadVariableOp:value:0;functional_1/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
2functional_1/batch_normalization_1/batchnorm/RsqrtRsqrt4functional_1/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:�
0functional_1/batch_normalization_1/batchnorm/mulMul6functional_1/batch_normalization_1/batchnorm/Rsqrt:y:0@functional_1/batch_normalization_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:�
2functional_1/batch_normalization_1/batchnorm/mul_1Mul*functional_1/Conv2D_1_1/Relu:activations:04functional_1/batch_normalization_1/batchnorm/mul:z:0*
T0*1
_output_shapes
:������������
2functional_1/batch_normalization_1/batchnorm/mul_2Mul>functional_1/batch_normalization_1/Cast/ReadVariableOp:value:04functional_1/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:�
0functional_1/batch_normalization_1/batchnorm/subSub@functional_1/batch_normalization_1/Cast_3/ReadVariableOp:value:06functional_1/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
2functional_1/batch_normalization_1/batchnorm/add_1AddV26functional_1/batch_normalization_1/batchnorm/mul_1:z:04functional_1/batch_normalization_1/batchnorm/sub:z:0*
T0*1
_output_shapes
:������������
&functional_1/max_pooling2d_1/MaxPool2dMaxPool6functional_1/batch_normalization_1/batchnorm/add_1:z:0*/
_output_shapes
:���������oo*
ksize
*
paddingVALID*
strides
�
2functional_1/Conv2D_2_1/convolution/ReadVariableOpReadVariableOp;functional_1_conv2d_2_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
#functional_1/Conv2D_2_1/convolutionConv2D/functional_1/max_pooling2d_1/MaxPool2d:output:0:functional_1/Conv2D_2_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm *
paddingVALID*
strides
�
.functional_1/Conv2D_2_1/Reshape/ReadVariableOpReadVariableOp7functional_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0~
%functional_1/Conv2D_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
functional_1/Conv2D_2_1/ReshapeReshape6functional_1/Conv2D_2_1/Reshape/ReadVariableOp:value:0.functional_1/Conv2D_2_1/Reshape/shape:output:0*
T0*&
_output_shapes
: �
functional_1/Conv2D_2_1/addAddV2,functional_1/Conv2D_2_1/convolution:output:0(functional_1/Conv2D_2_1/Reshape:output:0*
T0*/
_output_shapes
:���������mm 
functional_1/Conv2D_2_1/ReluRelufunctional_1/Conv2D_2_1/add:z:0*
T0*/
_output_shapes
:���������mm �
8functional_1/batch_normalization_1_2/Cast/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_1_2_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
:functional_1/batch_normalization_1_2/Cast_1/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_1_2_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
:functional_1/batch_normalization_1_2/Cast_2/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_1_2_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
:functional_1/batch_normalization_1_2/Cast_3/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_1_2_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0y
4functional_1/batch_normalization_1_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2functional_1/batch_normalization_1_2/batchnorm/addAddV2Bfunctional_1/batch_normalization_1_2/Cast_1/ReadVariableOp:value:0=functional_1/batch_normalization_1_2/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
4functional_1/batch_normalization_1_2/batchnorm/RsqrtRsqrt6functional_1/batch_normalization_1_2/batchnorm/add:z:0*
T0*
_output_shapes
: �
2functional_1/batch_normalization_1_2/batchnorm/mulMul8functional_1/batch_normalization_1_2/batchnorm/Rsqrt:y:0Bfunctional_1/batch_normalization_1_2/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
4functional_1/batch_normalization_1_2/batchnorm/mul_1Mul*functional_1/Conv2D_2_1/Relu:activations:06functional_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������mm �
4functional_1/batch_normalization_1_2/batchnorm/mul_2Mul@functional_1/batch_normalization_1_2/Cast/ReadVariableOp:value:06functional_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*
_output_shapes
: �
2functional_1/batch_normalization_1_2/batchnorm/subSubBfunctional_1/batch_normalization_1_2/Cast_3/ReadVariableOp:value:08functional_1/batch_normalization_1_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
4functional_1/batch_normalization_1_2/batchnorm/add_1AddV28functional_1/batch_normalization_1_2/batchnorm/mul_1:z:06functional_1/batch_normalization_1_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������mm �
(functional_1/max_pooling2d_1_2/MaxPool2dMaxPool8functional_1/batch_normalization_1_2/batchnorm/add_1:z:0*/
_output_shapes
:���������66 *
ksize
*
paddingVALID*
strides
�
2functional_1/Conv2D_3_1/convolution/ReadVariableOpReadVariableOp;functional_1_conv2d_3_1_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
#functional_1/Conv2D_3_1/convolutionConv2D1functional_1/max_pooling2d_1_2/MaxPool2d:output:0:functional_1/Conv2D_3_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������44@*
paddingVALID*
strides
�
.functional_1/Conv2D_3_1/Reshape/ReadVariableOpReadVariableOp7functional_1_conv2d_3_1_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0~
%functional_1/Conv2D_3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
functional_1/Conv2D_3_1/ReshapeReshape6functional_1/Conv2D_3_1/Reshape/ReadVariableOp:value:0.functional_1/Conv2D_3_1/Reshape/shape:output:0*
T0*&
_output_shapes
:@�
functional_1/Conv2D_3_1/addAddV2,functional_1/Conv2D_3_1/convolution:output:0(functional_1/Conv2D_3_1/Reshape:output:0*
T0*/
_output_shapes
:���������44@
functional_1/Conv2D_3_1/ReluRelufunctional_1/Conv2D_3_1/add:z:0*
T0*/
_output_shapes
:���������44@�
8functional_1/batch_normalization_2_1/Cast/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_2_1_cast_readvariableop_resource*
_output_shapes
:@*
dtype0�
:functional_1/batch_normalization_2_1/Cast_1/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_2_1_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
:functional_1/batch_normalization_2_1/Cast_2/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_2_1_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
:functional_1/batch_normalization_2_1/Cast_3/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_2_1_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0y
4functional_1/batch_normalization_2_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2functional_1/batch_normalization_2_1/batchnorm/addAddV2Bfunctional_1/batch_normalization_2_1/Cast_1/ReadVariableOp:value:0=functional_1/batch_normalization_2_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
4functional_1/batch_normalization_2_1/batchnorm/RsqrtRsqrt6functional_1/batch_normalization_2_1/batchnorm/add:z:0*
T0*
_output_shapes
:@�
2functional_1/batch_normalization_2_1/batchnorm/mulMul8functional_1/batch_normalization_2_1/batchnorm/Rsqrt:y:0Bfunctional_1/batch_normalization_2_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
4functional_1/batch_normalization_2_1/batchnorm/mul_1Mul*functional_1/Conv2D_3_1/Relu:activations:06functional_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������44@�
4functional_1/batch_normalization_2_1/batchnorm/mul_2Mul@functional_1/batch_normalization_2_1/Cast/ReadVariableOp:value:06functional_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
2functional_1/batch_normalization_2_1/batchnorm/subSubBfunctional_1/batch_normalization_2_1/Cast_3/ReadVariableOp:value:08functional_1/batch_normalization_2_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
4functional_1/batch_normalization_2_1/batchnorm/add_1AddV28functional_1/batch_normalization_2_1/batchnorm/mul_1:z:06functional_1/batch_normalization_2_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������44@�
(functional_1/max_pooling2d_2_1/MaxPool2dMaxPool8functional_1/batch_normalization_2_1/batchnorm/add_1:z:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
2functional_1/Conv2D_4_1/convolution/ReadVariableOpReadVariableOp;functional_1_conv2d_4_1_convolution_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
#functional_1/Conv2D_4_1/convolutionConv2D1functional_1/max_pooling2d_2_1/MaxPool2d:output:0:functional_1/Conv2D_4_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
.functional_1/Conv2D_4_1/Reshape/ReadVariableOpReadVariableOp7functional_1_conv2d_4_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%functional_1/Conv2D_4_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
functional_1/Conv2D_4_1/ReshapeReshape6functional_1/Conv2D_4_1/Reshape/ReadVariableOp:value:0.functional_1/Conv2D_4_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
functional_1/Conv2D_4_1/addAddV2,functional_1/Conv2D_4_1/convolution:output:0(functional_1/Conv2D_4_1/Reshape:output:0*
T0*0
_output_shapes
:�����������
functional_1/Conv2D_4_1/ReluRelufunctional_1/Conv2D_4_1/add:z:0*
T0*0
_output_shapes
:�����������
8functional_1/batch_normalization_3_1/Cast/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_3_1_cast_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:functional_1/batch_normalization_3_1/Cast_1/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_3_1_cast_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:functional_1/batch_normalization_3_1/Cast_2/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_3_1_cast_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:functional_1/batch_normalization_3_1/Cast_3/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_3_1_cast_3_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4functional_1/batch_normalization_3_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2functional_1/batch_normalization_3_1/batchnorm/addAddV2Bfunctional_1/batch_normalization_3_1/Cast_1/ReadVariableOp:value:0=functional_1/batch_normalization_3_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4functional_1/batch_normalization_3_1/batchnorm/RsqrtRsqrt6functional_1/batch_normalization_3_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2functional_1/batch_normalization_3_1/batchnorm/mulMul8functional_1/batch_normalization_3_1/batchnorm/Rsqrt:y:0Bfunctional_1/batch_normalization_3_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4functional_1/batch_normalization_3_1/batchnorm/mul_1Mul*functional_1/Conv2D_4_1/Relu:activations:06functional_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*0
_output_shapes
:�����������
4functional_1/batch_normalization_3_1/batchnorm/mul_2Mul@functional_1/batch_normalization_3_1/Cast/ReadVariableOp:value:06functional_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
2functional_1/batch_normalization_3_1/batchnorm/subSubBfunctional_1/batch_normalization_3_1/Cast_3/ReadVariableOp:value:08functional_1/batch_normalization_3_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4functional_1/batch_normalization_3_1/batchnorm/add_1AddV28functional_1/batch_normalization_3_1/batchnorm/mul_1:z:06functional_1/batch_normalization_3_1/batchnorm/sub:z:0*
T0*0
_output_shapes
:�����������
(functional_1/max_pooling2d_3_1/MaxPool2dMaxPool8functional_1/batch_normalization_3_1/batchnorm/add_1:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
u
$functional_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"���� H  �
functional_1/flatten_1/ReshapeReshape1functional_1/max_pooling2d_3_1/MaxPool2d:output:0-functional_1/flatten_1/Reshape/shape:output:0*
T0*)
_output_shapes
:������������
(functional_1/dense_1/Cast/ReadVariableOpReadVariableOp1functional_1_dense_1_cast_readvariableop_resource*!
_output_shapes
:���*
dtype0�
functional_1/dense_1/MatMulMatMul'functional_1/flatten_1/Reshape:output:00functional_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'functional_1/dense_1/Add/ReadVariableOpReadVariableOp0functional_1_dense_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_1/AddAddV2%functional_1/dense_1/MatMul:product:0/functional_1/dense_1/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
functional_1/dense_1/ReluRelufunctional_1/dense_1/Add:z:0*
T0*(
_output_shapes
:�����������
8functional_1/batch_normalization_4_1/Cast/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_4_1_cast_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:functional_1/batch_normalization_4_1/Cast_1/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_4_1_cast_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:functional_1/batch_normalization_4_1/Cast_2/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_4_1_cast_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:functional_1/batch_normalization_4_1/Cast_3/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_4_1_cast_3_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4functional_1/batch_normalization_4_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2functional_1/batch_normalization_4_1/batchnorm/addAddV2Bfunctional_1/batch_normalization_4_1/Cast_1/ReadVariableOp:value:0=functional_1/batch_normalization_4_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4functional_1/batch_normalization_4_1/batchnorm/RsqrtRsqrt6functional_1/batch_normalization_4_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2functional_1/batch_normalization_4_1/batchnorm/mulMul8functional_1/batch_normalization_4_1/batchnorm/Rsqrt:y:0Bfunctional_1/batch_normalization_4_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4functional_1/batch_normalization_4_1/batchnorm/mul_1Mul'functional_1/dense_1/Relu:activations:06functional_1/batch_normalization_4_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
4functional_1/batch_normalization_4_1/batchnorm/mul_2Mul@functional_1/batch_normalization_4_1/Cast/ReadVariableOp:value:06functional_1/batch_normalization_4_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
2functional_1/batch_normalization_4_1/batchnorm/subSubBfunctional_1/batch_normalization_4_1/Cast_3/ReadVariableOp:value:08functional_1/batch_normalization_4_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4functional_1/batch_normalization_4_1/batchnorm/add_1AddV28functional_1/batch_normalization_4_1/batchnorm/mul_1:z:06functional_1/batch_normalization_4_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
*functional_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3functional_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
functional_1/dense_1_2/MatMulMatMul8functional_1/batch_normalization_4_1/batchnorm/add_1:z:02functional_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)functional_1/dense_1_2/Add/ReadVariableOpReadVariableOp2functional_1_dense_1_2_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
functional_1/dense_1_2/AddAddV2'functional_1/dense_1_2/MatMul:product:01functional_1/dense_1_2/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@u
functional_1/dense_1_2/ReluRelufunctional_1/dense_1_2/Add:z:0*
T0*'
_output_shapes
:���������@�
8functional_1/batch_normalization_5_1/Cast/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_5_1_cast_readvariableop_resource*
_output_shapes
:@*
dtype0�
:functional_1/batch_normalization_5_1/Cast_1/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_5_1_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
:functional_1/batch_normalization_5_1/Cast_2/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_5_1_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
:functional_1/batch_normalization_5_1/Cast_3/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_5_1_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0y
4functional_1/batch_normalization_5_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2functional_1/batch_normalization_5_1/batchnorm/addAddV2Bfunctional_1/batch_normalization_5_1/Cast_1/ReadVariableOp:value:0=functional_1/batch_normalization_5_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
4functional_1/batch_normalization_5_1/batchnorm/RsqrtRsqrt6functional_1/batch_normalization_5_1/batchnorm/add:z:0*
T0*
_output_shapes
:@�
2functional_1/batch_normalization_5_1/batchnorm/mulMul8functional_1/batch_normalization_5_1/batchnorm/Rsqrt:y:0Bfunctional_1/batch_normalization_5_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
4functional_1/batch_normalization_5_1/batchnorm/mul_1Mul)functional_1/dense_1_2/Relu:activations:06functional_1/batch_normalization_5_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������@�
4functional_1/batch_normalization_5_1/batchnorm/mul_2Mul@functional_1/batch_normalization_5_1/Cast/ReadVariableOp:value:06functional_1/batch_normalization_5_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
2functional_1/batch_normalization_5_1/batchnorm/subSubBfunctional_1/batch_normalization_5_1/Cast_3/ReadVariableOp:value:08functional_1/batch_normalization_5_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
4functional_1/batch_normalization_5_1/batchnorm/add_1AddV28functional_1/batch_normalization_5_1/batchnorm/mul_1:z:06functional_1/batch_normalization_5_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@�
*functional_1/dense_2_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

:@ *
dtype0�
functional_1/dense_2_1/MatMulMatMul8functional_1/batch_normalization_5_1/batchnorm/add_1:z:02functional_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
)functional_1/dense_2_1/Add/ReadVariableOpReadVariableOp2functional_1_dense_2_1_add_readvariableop_resource*
_output_shapes
: *
dtype0�
functional_1/dense_2_1/AddAddV2'functional_1/dense_2_1/MatMul:product:01functional_1/dense_2_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� u
functional_1/dense_2_1/ReluRelufunctional_1/dense_2_1/Add:z:0*
T0*'
_output_shapes
:��������� �
8functional_1/batch_normalization_6_1/Cast/ReadVariableOpReadVariableOpAfunctional_1_batch_normalization_6_1_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
:functional_1/batch_normalization_6_1/Cast_1/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_6_1_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
:functional_1/batch_normalization_6_1/Cast_2/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_6_1_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
:functional_1/batch_normalization_6_1/Cast_3/ReadVariableOpReadVariableOpCfunctional_1_batch_normalization_6_1_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0y
4functional_1/batch_normalization_6_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2functional_1/batch_normalization_6_1/batchnorm/addAddV2Bfunctional_1/batch_normalization_6_1/Cast_1/ReadVariableOp:value:0=functional_1/batch_normalization_6_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
4functional_1/batch_normalization_6_1/batchnorm/RsqrtRsqrt6functional_1/batch_normalization_6_1/batchnorm/add:z:0*
T0*
_output_shapes
: �
2functional_1/batch_normalization_6_1/batchnorm/mulMul8functional_1/batch_normalization_6_1/batchnorm/Rsqrt:y:0Bfunctional_1/batch_normalization_6_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
4functional_1/batch_normalization_6_1/batchnorm/mul_1Mul)functional_1/dense_2_1/Relu:activations:06functional_1/batch_normalization_6_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:��������� �
4functional_1/batch_normalization_6_1/batchnorm/mul_2Mul@functional_1/batch_normalization_6_1/Cast/ReadVariableOp:value:06functional_1/batch_normalization_6_1/batchnorm/mul:z:0*
T0*
_output_shapes
: �
2functional_1/batch_normalization_6_1/batchnorm/subSubBfunctional_1/batch_normalization_6_1/Cast_3/ReadVariableOp:value:08functional_1/batch_normalization_6_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
4functional_1/batch_normalization_6_1/batchnorm/add_1AddV28functional_1/batch_normalization_6_1/batchnorm/mul_1:z:06functional_1/batch_normalization_6_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:��������� �
*functional_1/dense_3_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_3_1_cast_readvariableop_resource*
_output_shapes

: *
dtype0�
functional_1/dense_3_1/MatMulMatMul8functional_1/batch_normalization_6_1/batchnorm/add_1:z:02functional_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)functional_1/dense_3_1/Add/ReadVariableOpReadVariableOp2functional_1_dense_3_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
functional_1/dense_3_1/AddAddV2'functional_1/dense_3_1/MatMul:product:01functional_1/dense_3_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������{
functional_1/dense_3_1/SoftmaxSoftmaxfunctional_1/dense_3_1/Add:z:0*
T0*'
_output_shapes
:���������w
IdentityIdentity(functional_1/dense_3_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^functional_1/Conv2D_1_1/Reshape/ReadVariableOp3^functional_1/Conv2D_1_1/convolution/ReadVariableOp/^functional_1/Conv2D_2_1/Reshape/ReadVariableOp3^functional_1/Conv2D_2_1/convolution/ReadVariableOp/^functional_1/Conv2D_3_1/Reshape/ReadVariableOp3^functional_1/Conv2D_3_1/convolution/ReadVariableOp/^functional_1/Conv2D_4_1/Reshape/ReadVariableOp3^functional_1/Conv2D_4_1/convolution/ReadVariableOp7^functional_1/batch_normalization_1/Cast/ReadVariableOp9^functional_1/batch_normalization_1/Cast_1/ReadVariableOp9^functional_1/batch_normalization_1/Cast_2/ReadVariableOp9^functional_1/batch_normalization_1/Cast_3/ReadVariableOp9^functional_1/batch_normalization_1_2/Cast/ReadVariableOp;^functional_1/batch_normalization_1_2/Cast_1/ReadVariableOp;^functional_1/batch_normalization_1_2/Cast_2/ReadVariableOp;^functional_1/batch_normalization_1_2/Cast_3/ReadVariableOp9^functional_1/batch_normalization_2_1/Cast/ReadVariableOp;^functional_1/batch_normalization_2_1/Cast_1/ReadVariableOp;^functional_1/batch_normalization_2_1/Cast_2/ReadVariableOp;^functional_1/batch_normalization_2_1/Cast_3/ReadVariableOp9^functional_1/batch_normalization_3_1/Cast/ReadVariableOp;^functional_1/batch_normalization_3_1/Cast_1/ReadVariableOp;^functional_1/batch_normalization_3_1/Cast_2/ReadVariableOp;^functional_1/batch_normalization_3_1/Cast_3/ReadVariableOp9^functional_1/batch_normalization_4_1/Cast/ReadVariableOp;^functional_1/batch_normalization_4_1/Cast_1/ReadVariableOp;^functional_1/batch_normalization_4_1/Cast_2/ReadVariableOp;^functional_1/batch_normalization_4_1/Cast_3/ReadVariableOp9^functional_1/batch_normalization_5_1/Cast/ReadVariableOp;^functional_1/batch_normalization_5_1/Cast_1/ReadVariableOp;^functional_1/batch_normalization_5_1/Cast_2/ReadVariableOp;^functional_1/batch_normalization_5_1/Cast_3/ReadVariableOp9^functional_1/batch_normalization_6_1/Cast/ReadVariableOp;^functional_1/batch_normalization_6_1/Cast_1/ReadVariableOp;^functional_1/batch_normalization_6_1/Cast_2/ReadVariableOp;^functional_1/batch_normalization_6_1/Cast_3/ReadVariableOp(^functional_1/dense_1/Add/ReadVariableOp)^functional_1/dense_1/Cast/ReadVariableOp*^functional_1/dense_1_2/Add/ReadVariableOp+^functional_1/dense_1_2/Cast/ReadVariableOp*^functional_1/dense_2_1/Add/ReadVariableOp+^functional_1/dense_2_1/Cast/ReadVariableOp*^functional_1/dense_3_1/Add/ReadVariableOp+^functional_1/dense_3_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.functional_1/Conv2D_1_1/Reshape/ReadVariableOp.functional_1/Conv2D_1_1/Reshape/ReadVariableOp2h
2functional_1/Conv2D_1_1/convolution/ReadVariableOp2functional_1/Conv2D_1_1/convolution/ReadVariableOp2`
.functional_1/Conv2D_2_1/Reshape/ReadVariableOp.functional_1/Conv2D_2_1/Reshape/ReadVariableOp2h
2functional_1/Conv2D_2_1/convolution/ReadVariableOp2functional_1/Conv2D_2_1/convolution/ReadVariableOp2`
.functional_1/Conv2D_3_1/Reshape/ReadVariableOp.functional_1/Conv2D_3_1/Reshape/ReadVariableOp2h
2functional_1/Conv2D_3_1/convolution/ReadVariableOp2functional_1/Conv2D_3_1/convolution/ReadVariableOp2`
.functional_1/Conv2D_4_1/Reshape/ReadVariableOp.functional_1/Conv2D_4_1/Reshape/ReadVariableOp2h
2functional_1/Conv2D_4_1/convolution/ReadVariableOp2functional_1/Conv2D_4_1/convolution/ReadVariableOp2p
6functional_1/batch_normalization_1/Cast/ReadVariableOp6functional_1/batch_normalization_1/Cast/ReadVariableOp2t
8functional_1/batch_normalization_1/Cast_1/ReadVariableOp8functional_1/batch_normalization_1/Cast_1/ReadVariableOp2t
8functional_1/batch_normalization_1/Cast_2/ReadVariableOp8functional_1/batch_normalization_1/Cast_2/ReadVariableOp2t
8functional_1/batch_normalization_1/Cast_3/ReadVariableOp8functional_1/batch_normalization_1/Cast_3/ReadVariableOp2t
8functional_1/batch_normalization_1_2/Cast/ReadVariableOp8functional_1/batch_normalization_1_2/Cast/ReadVariableOp2x
:functional_1/batch_normalization_1_2/Cast_1/ReadVariableOp:functional_1/batch_normalization_1_2/Cast_1/ReadVariableOp2x
:functional_1/batch_normalization_1_2/Cast_2/ReadVariableOp:functional_1/batch_normalization_1_2/Cast_2/ReadVariableOp2x
:functional_1/batch_normalization_1_2/Cast_3/ReadVariableOp:functional_1/batch_normalization_1_2/Cast_3/ReadVariableOp2t
8functional_1/batch_normalization_2_1/Cast/ReadVariableOp8functional_1/batch_normalization_2_1/Cast/ReadVariableOp2x
:functional_1/batch_normalization_2_1/Cast_1/ReadVariableOp:functional_1/batch_normalization_2_1/Cast_1/ReadVariableOp2x
:functional_1/batch_normalization_2_1/Cast_2/ReadVariableOp:functional_1/batch_normalization_2_1/Cast_2/ReadVariableOp2x
:functional_1/batch_normalization_2_1/Cast_3/ReadVariableOp:functional_1/batch_normalization_2_1/Cast_3/ReadVariableOp2t
8functional_1/batch_normalization_3_1/Cast/ReadVariableOp8functional_1/batch_normalization_3_1/Cast/ReadVariableOp2x
:functional_1/batch_normalization_3_1/Cast_1/ReadVariableOp:functional_1/batch_normalization_3_1/Cast_1/ReadVariableOp2x
:functional_1/batch_normalization_3_1/Cast_2/ReadVariableOp:functional_1/batch_normalization_3_1/Cast_2/ReadVariableOp2x
:functional_1/batch_normalization_3_1/Cast_3/ReadVariableOp:functional_1/batch_normalization_3_1/Cast_3/ReadVariableOp2t
8functional_1/batch_normalization_4_1/Cast/ReadVariableOp8functional_1/batch_normalization_4_1/Cast/ReadVariableOp2x
:functional_1/batch_normalization_4_1/Cast_1/ReadVariableOp:functional_1/batch_normalization_4_1/Cast_1/ReadVariableOp2x
:functional_1/batch_normalization_4_1/Cast_2/ReadVariableOp:functional_1/batch_normalization_4_1/Cast_2/ReadVariableOp2x
:functional_1/batch_normalization_4_1/Cast_3/ReadVariableOp:functional_1/batch_normalization_4_1/Cast_3/ReadVariableOp2t
8functional_1/batch_normalization_5_1/Cast/ReadVariableOp8functional_1/batch_normalization_5_1/Cast/ReadVariableOp2x
:functional_1/batch_normalization_5_1/Cast_1/ReadVariableOp:functional_1/batch_normalization_5_1/Cast_1/ReadVariableOp2x
:functional_1/batch_normalization_5_1/Cast_2/ReadVariableOp:functional_1/batch_normalization_5_1/Cast_2/ReadVariableOp2x
:functional_1/batch_normalization_5_1/Cast_3/ReadVariableOp:functional_1/batch_normalization_5_1/Cast_3/ReadVariableOp2t
8functional_1/batch_normalization_6_1/Cast/ReadVariableOp8functional_1/batch_normalization_6_1/Cast/ReadVariableOp2x
:functional_1/batch_normalization_6_1/Cast_1/ReadVariableOp:functional_1/batch_normalization_6_1/Cast_1/ReadVariableOp2x
:functional_1/batch_normalization_6_1/Cast_2/ReadVariableOp:functional_1/batch_normalization_6_1/Cast_2/ReadVariableOp2x
:functional_1/batch_normalization_6_1/Cast_3/ReadVariableOp:functional_1/batch_normalization_6_1/Cast_3/ReadVariableOp2R
'functional_1/dense_1/Add/ReadVariableOp'functional_1/dense_1/Add/ReadVariableOp2T
(functional_1/dense_1/Cast/ReadVariableOp(functional_1/dense_1/Cast/ReadVariableOp2V
)functional_1/dense_1_2/Add/ReadVariableOp)functional_1/dense_1_2/Add/ReadVariableOp2X
*functional_1/dense_1_2/Cast/ReadVariableOp*functional_1/dense_1_2/Cast/ReadVariableOp2V
)functional_1/dense_2_1/Add/ReadVariableOp)functional_1/dense_2_1/Add/ReadVariableOp2X
*functional_1/dense_2_1/Cast/ReadVariableOp*functional_1/dense_2_1/Cast/ReadVariableOp2V
)functional_1/dense_3_1/Add/ReadVariableOp)functional_1/dense_3_1/Add/ReadVariableOp2X
*functional_1/dense_3_1/Cast/ReadVariableOp*functional_1/dense_3_1/Cast/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
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
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource
��
�.
!__inference_serving_default_92097

inputsU
;sequential_1_conv2d_1_1_convolution_readvariableop_resource:E
7sequential_1_conv2d_1_1_reshape_readvariableop_resource:M
?sequential_1_batch_normalization_1_cast_readvariableop_resource:O
Asequential_1_batch_normalization_1_cast_1_readvariableop_resource:O
Asequential_1_batch_normalization_1_cast_2_readvariableop_resource:O
Asequential_1_batch_normalization_1_cast_3_readvariableop_resource:U
;sequential_1_conv2d_2_1_convolution_readvariableop_resource: E
7sequential_1_conv2d_2_1_reshape_readvariableop_resource: O
Asequential_1_batch_normalization_1_2_cast_readvariableop_resource: Q
Csequential_1_batch_normalization_1_2_cast_1_readvariableop_resource: Q
Csequential_1_batch_normalization_1_2_cast_2_readvariableop_resource: Q
Csequential_1_batch_normalization_1_2_cast_3_readvariableop_resource: U
;sequential_1_conv2d_3_1_convolution_readvariableop_resource: @E
7sequential_1_conv2d_3_1_reshape_readvariableop_resource:@O
Asequential_1_batch_normalization_2_1_cast_readvariableop_resource:@Q
Csequential_1_batch_normalization_2_1_cast_1_readvariableop_resource:@Q
Csequential_1_batch_normalization_2_1_cast_2_readvariableop_resource:@Q
Csequential_1_batch_normalization_2_1_cast_3_readvariableop_resource:@V
;sequential_1_conv2d_4_1_convolution_readvariableop_resource:@�F
7sequential_1_conv2d_4_1_reshape_readvariableop_resource:	�P
Asequential_1_batch_normalization_3_1_cast_readvariableop_resource:	�R
Csequential_1_batch_normalization_3_1_cast_1_readvariableop_resource:	�R
Csequential_1_batch_normalization_3_1_cast_2_readvariableop_resource:	�R
Csequential_1_batch_normalization_3_1_cast_3_readvariableop_resource:	�F
1sequential_1_dense_1_cast_readvariableop_resource:���?
0sequential_1_dense_1_add_readvariableop_resource:	�P
Asequential_1_batch_normalization_4_1_cast_readvariableop_resource:	�R
Csequential_1_batch_normalization_4_1_cast_1_readvariableop_resource:	�R
Csequential_1_batch_normalization_4_1_cast_2_readvariableop_resource:	�R
Csequential_1_batch_normalization_4_1_cast_3_readvariableop_resource:	�F
3sequential_1_dense_1_2_cast_readvariableop_resource:	�@@
2sequential_1_dense_1_2_add_readvariableop_resource:@O
Asequential_1_batch_normalization_5_1_cast_readvariableop_resource:@Q
Csequential_1_batch_normalization_5_1_cast_1_readvariableop_resource:@Q
Csequential_1_batch_normalization_5_1_cast_2_readvariableop_resource:@Q
Csequential_1_batch_normalization_5_1_cast_3_readvariableop_resource:@E
3sequential_1_dense_2_1_cast_readvariableop_resource:@ @
2sequential_1_dense_2_1_add_readvariableop_resource: O
Asequential_1_batch_normalization_6_1_cast_readvariableop_resource: Q
Csequential_1_batch_normalization_6_1_cast_1_readvariableop_resource: Q
Csequential_1_batch_normalization_6_1_cast_2_readvariableop_resource: Q
Csequential_1_batch_normalization_6_1_cast_3_readvariableop_resource: E
3sequential_1_dense_3_1_cast_readvariableop_resource: @
2sequential_1_dense_3_1_add_readvariableop_resource:
identity��.sequential_1/Conv2D_1_1/Reshape/ReadVariableOp�2sequential_1/Conv2D_1_1/convolution/ReadVariableOp�.sequential_1/Conv2D_2_1/Reshape/ReadVariableOp�2sequential_1/Conv2D_2_1/convolution/ReadVariableOp�.sequential_1/Conv2D_3_1/Reshape/ReadVariableOp�2sequential_1/Conv2D_3_1/convolution/ReadVariableOp�.sequential_1/Conv2D_4_1/Reshape/ReadVariableOp�2sequential_1/Conv2D_4_1/convolution/ReadVariableOp�6sequential_1/batch_normalization_1/Cast/ReadVariableOp�8sequential_1/batch_normalization_1/Cast_1/ReadVariableOp�8sequential_1/batch_normalization_1/Cast_2/ReadVariableOp�8sequential_1/batch_normalization_1/Cast_3/ReadVariableOp�8sequential_1/batch_normalization_1_2/Cast/ReadVariableOp�:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp�:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp�:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp�8sequential_1/batch_normalization_2_1/Cast/ReadVariableOp�:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp�:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp�:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp�8sequential_1/batch_normalization_3_1/Cast/ReadVariableOp�:sequential_1/batch_normalization_3_1/Cast_1/ReadVariableOp�:sequential_1/batch_normalization_3_1/Cast_2/ReadVariableOp�:sequential_1/batch_normalization_3_1/Cast_3/ReadVariableOp�8sequential_1/batch_normalization_4_1/Cast/ReadVariableOp�:sequential_1/batch_normalization_4_1/Cast_1/ReadVariableOp�:sequential_1/batch_normalization_4_1/Cast_2/ReadVariableOp�:sequential_1/batch_normalization_4_1/Cast_3/ReadVariableOp�8sequential_1/batch_normalization_5_1/Cast/ReadVariableOp�:sequential_1/batch_normalization_5_1/Cast_1/ReadVariableOp�:sequential_1/batch_normalization_5_1/Cast_2/ReadVariableOp�:sequential_1/batch_normalization_5_1/Cast_3/ReadVariableOp�8sequential_1/batch_normalization_6_1/Cast/ReadVariableOp�:sequential_1/batch_normalization_6_1/Cast_1/ReadVariableOp�:sequential_1/batch_normalization_6_1/Cast_2/ReadVariableOp�:sequential_1/batch_normalization_6_1/Cast_3/ReadVariableOp�'sequential_1/dense_1/Add/ReadVariableOp�(sequential_1/dense_1/Cast/ReadVariableOp�)sequential_1/dense_1_2/Add/ReadVariableOp�*sequential_1/dense_1_2/Cast/ReadVariableOp�)sequential_1/dense_2_1/Add/ReadVariableOp�*sequential_1/dense_2_1/Cast/ReadVariableOp�)sequential_1/dense_3_1/Add/ReadVariableOp�*sequential_1/dense_3_1/Cast/ReadVariableOpd
sequential_1/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;f
!sequential_1/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    a
sequential_1/rescaling_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
sequential_1/rescaling_1/mulMulinputs(sequential_1/rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:������������
sequential_1/rescaling_1/addAddV2 sequential_1/rescaling_1/mul:z:0*sequential_1/rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
2sequential_1/Conv2D_1_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_1_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
#sequential_1/Conv2D_1_1/convolutionConv2D sequential_1/rescaling_1/add:z:0:sequential_1/Conv2D_1_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
.sequential_1/Conv2D_1_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_1_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0~
%sequential_1/Conv2D_1_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
sequential_1/Conv2D_1_1/ReshapeReshape6sequential_1/Conv2D_1_1/Reshape/ReadVariableOp:value:0.sequential_1/Conv2D_1_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
sequential_1/Conv2D_1_1/addAddV2,sequential_1/Conv2D_1_1/convolution:output:0(sequential_1/Conv2D_1_1/Reshape:output:0*
T0*1
_output_shapes
:������������
sequential_1/Conv2D_1_1/ReluRelusequential_1/Conv2D_1_1/add:z:0*
T0*1
_output_shapes
:������������
6sequential_1/batch_normalization_1/Cast/ReadVariableOpReadVariableOp?sequential_1_batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
8sequential_1/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
8sequential_1/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
8sequential_1/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0w
2sequential_1/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
0sequential_1/batch_normalization_1/batchnorm/addAddV2@sequential_1/batch_normalization_1/Cast_1/ReadVariableOp:value:0;sequential_1/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
2sequential_1/batch_normalization_1/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:�
0sequential_1/batch_normalization_1/batchnorm/mulMul6sequential_1/batch_normalization_1/batchnorm/Rsqrt:y:0@sequential_1/batch_normalization_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:�
2sequential_1/batch_normalization_1/batchnorm/mul_1Mul*sequential_1/Conv2D_1_1/Relu:activations:04sequential_1/batch_normalization_1/batchnorm/mul:z:0*
T0*1
_output_shapes
:������������
2sequential_1/batch_normalization_1/batchnorm/mul_2Mul>sequential_1/batch_normalization_1/Cast/ReadVariableOp:value:04sequential_1/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:�
0sequential_1/batch_normalization_1/batchnorm/subSub@sequential_1/batch_normalization_1/Cast_3/ReadVariableOp:value:06sequential_1/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
2sequential_1/batch_normalization_1/batchnorm/add_1AddV26sequential_1/batch_normalization_1/batchnorm/mul_1:z:04sequential_1/batch_normalization_1/batchnorm/sub:z:0*
T0*1
_output_shapes
:������������
&sequential_1/max_pooling2d_1/MaxPool2dMaxPool6sequential_1/batch_normalization_1/batchnorm/add_1:z:0*/
_output_shapes
:���������oo*
ksize
*
paddingVALID*
strides
�
2sequential_1/Conv2D_2_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_2_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
#sequential_1/Conv2D_2_1/convolutionConv2D/sequential_1/max_pooling2d_1/MaxPool2d:output:0:sequential_1/Conv2D_2_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm *
paddingVALID*
strides
�
.sequential_1/Conv2D_2_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0~
%sequential_1/Conv2D_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
sequential_1/Conv2D_2_1/ReshapeReshape6sequential_1/Conv2D_2_1/Reshape/ReadVariableOp:value:0.sequential_1/Conv2D_2_1/Reshape/shape:output:0*
T0*&
_output_shapes
: �
sequential_1/Conv2D_2_1/addAddV2,sequential_1/Conv2D_2_1/convolution:output:0(sequential_1/Conv2D_2_1/Reshape:output:0*
T0*/
_output_shapes
:���������mm 
sequential_1/Conv2D_2_1/ReluRelusequential_1/Conv2D_2_1/add:z:0*
T0*/
_output_shapes
:���������mm �
8sequential_1/batch_normalization_1_2/Cast/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_2_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_1_2_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_1_2_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_1_2_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0y
4sequential_1/batch_normalization_1_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_1/batch_normalization_1_2/batchnorm/addAddV2Bsequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp:value:0=sequential_1/batch_normalization_1_2/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_1_2/batchnorm/RsqrtRsqrt6sequential_1/batch_normalization_1_2/batchnorm/add:z:0*
T0*
_output_shapes
: �
2sequential_1/batch_normalization_1_2/batchnorm/mulMul8sequential_1/batch_normalization_1_2/batchnorm/Rsqrt:y:0Bsequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_1_2/batchnorm/mul_1Mul*sequential_1/Conv2D_2_1/Relu:activations:06sequential_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������mm �
4sequential_1/batch_normalization_1_2/batchnorm/mul_2Mul@sequential_1/batch_normalization_1_2/Cast/ReadVariableOp:value:06sequential_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*
_output_shapes
: �
2sequential_1/batch_normalization_1_2/batchnorm/subSubBsequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp:value:08sequential_1/batch_normalization_1_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_1_2/batchnorm/add_1AddV28sequential_1/batch_normalization_1_2/batchnorm/mul_1:z:06sequential_1/batch_normalization_1_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������mm �
(sequential_1/max_pooling2d_1_2/MaxPool2dMaxPool8sequential_1/batch_normalization_1_2/batchnorm/add_1:z:0*/
_output_shapes
:���������66 *
ksize
*
paddingVALID*
strides
�
2sequential_1/Conv2D_3_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_3_1_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
#sequential_1/Conv2D_3_1/convolutionConv2D1sequential_1/max_pooling2d_1_2/MaxPool2d:output:0:sequential_1/Conv2D_3_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������44@*
paddingVALID*
strides
�
.sequential_1/Conv2D_3_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_3_1_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0~
%sequential_1/Conv2D_3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
sequential_1/Conv2D_3_1/ReshapeReshape6sequential_1/Conv2D_3_1/Reshape/ReadVariableOp:value:0.sequential_1/Conv2D_3_1/Reshape/shape:output:0*
T0*&
_output_shapes
:@�
sequential_1/Conv2D_3_1/addAddV2,sequential_1/Conv2D_3_1/convolution:output:0(sequential_1/Conv2D_3_1/Reshape:output:0*
T0*/
_output_shapes
:���������44@
sequential_1/Conv2D_3_1/ReluRelusequential_1/Conv2D_3_1/add:z:0*
T0*/
_output_shapes
:���������44@�
8sequential_1/batch_normalization_2_1/Cast/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_2_1_cast_readvariableop_resource*
_output_shapes
:@*
dtype0�
:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_2_1_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_2_1_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_2_1_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0y
4sequential_1/batch_normalization_2_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_1/batch_normalization_2_1/batchnorm/addAddV2Bsequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp:value:0=sequential_1/batch_normalization_2_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
4sequential_1/batch_normalization_2_1/batchnorm/RsqrtRsqrt6sequential_1/batch_normalization_2_1/batchnorm/add:z:0*
T0*
_output_shapes
:@�
2sequential_1/batch_normalization_2_1/batchnorm/mulMul8sequential_1/batch_normalization_2_1/batchnorm/Rsqrt:y:0Bsequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
4sequential_1/batch_normalization_2_1/batchnorm/mul_1Mul*sequential_1/Conv2D_3_1/Relu:activations:06sequential_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������44@�
4sequential_1/batch_normalization_2_1/batchnorm/mul_2Mul@sequential_1/batch_normalization_2_1/Cast/ReadVariableOp:value:06sequential_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
2sequential_1/batch_normalization_2_1/batchnorm/subSubBsequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp:value:08sequential_1/batch_normalization_2_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
4sequential_1/batch_normalization_2_1/batchnorm/add_1AddV28sequential_1/batch_normalization_2_1/batchnorm/mul_1:z:06sequential_1/batch_normalization_2_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������44@�
(sequential_1/max_pooling2d_2_1/MaxPool2dMaxPool8sequential_1/batch_normalization_2_1/batchnorm/add_1:z:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
2sequential_1/Conv2D_4_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_4_1_convolution_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
#sequential_1/Conv2D_4_1/convolutionConv2D1sequential_1/max_pooling2d_2_1/MaxPool2d:output:0:sequential_1/Conv2D_4_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
.sequential_1/Conv2D_4_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_4_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%sequential_1/Conv2D_4_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
sequential_1/Conv2D_4_1/ReshapeReshape6sequential_1/Conv2D_4_1/Reshape/ReadVariableOp:value:0.sequential_1/Conv2D_4_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
sequential_1/Conv2D_4_1/addAddV2,sequential_1/Conv2D_4_1/convolution:output:0(sequential_1/Conv2D_4_1/Reshape:output:0*
T0*0
_output_shapes
:�����������
sequential_1/Conv2D_4_1/ReluRelusequential_1/Conv2D_4_1/add:z:0*
T0*0
_output_shapes
:�����������
8sequential_1/batch_normalization_3_1/Cast/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_3_1_cast_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:sequential_1/batch_normalization_3_1/Cast_1/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_3_1_cast_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:sequential_1/batch_normalization_3_1/Cast_2/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_3_1_cast_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:sequential_1/batch_normalization_3_1/Cast_3/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_3_1_cast_3_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4sequential_1/batch_normalization_3_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_1/batch_normalization_3_1/batchnorm/addAddV2Bsequential_1/batch_normalization_3_1/Cast_1/ReadVariableOp:value:0=sequential_1/batch_normalization_3_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4sequential_1/batch_normalization_3_1/batchnorm/RsqrtRsqrt6sequential_1/batch_normalization_3_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2sequential_1/batch_normalization_3_1/batchnorm/mulMul8sequential_1/batch_normalization_3_1/batchnorm/Rsqrt:y:0Bsequential_1/batch_normalization_3_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4sequential_1/batch_normalization_3_1/batchnorm/mul_1Mul*sequential_1/Conv2D_4_1/Relu:activations:06sequential_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*0
_output_shapes
:�����������
4sequential_1/batch_normalization_3_1/batchnorm/mul_2Mul@sequential_1/batch_normalization_3_1/Cast/ReadVariableOp:value:06sequential_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
2sequential_1/batch_normalization_3_1/batchnorm/subSubBsequential_1/batch_normalization_3_1/Cast_3/ReadVariableOp:value:08sequential_1/batch_normalization_3_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4sequential_1/batch_normalization_3_1/batchnorm/add_1AddV28sequential_1/batch_normalization_3_1/batchnorm/mul_1:z:06sequential_1/batch_normalization_3_1/batchnorm/sub:z:0*
T0*0
_output_shapes
:�����������
(sequential_1/max_pooling2d_3_1/MaxPool2dMaxPool8sequential_1/batch_normalization_3_1/batchnorm/add_1:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
u
$sequential_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"���� H  �
sequential_1/flatten_1/ReshapeReshape1sequential_1/max_pooling2d_3_1/MaxPool2d:output:0-sequential_1/flatten_1/Reshape/shape:output:0*
T0*)
_output_shapes
:������������
(sequential_1/dense_1/Cast/ReadVariableOpReadVariableOp1sequential_1_dense_1_cast_readvariableop_resource*!
_output_shapes
:���*
dtype0�
sequential_1/dense_1/MatMulMatMul'sequential_1/flatten_1/Reshape:output:00sequential_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential_1/dense_1/Add/ReadVariableOpReadVariableOp0sequential_1_dense_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_1/dense_1/AddAddV2%sequential_1/dense_1/MatMul:product:0/sequential_1/dense_1/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
sequential_1/dense_1/ReluRelusequential_1/dense_1/Add:z:0*
T0*(
_output_shapes
:�����������
8sequential_1/batch_normalization_4_1/Cast/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_4_1_cast_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:sequential_1/batch_normalization_4_1/Cast_1/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_4_1_cast_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:sequential_1/batch_normalization_4_1/Cast_2/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_4_1_cast_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:sequential_1/batch_normalization_4_1/Cast_3/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_4_1_cast_3_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4sequential_1/batch_normalization_4_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_1/batch_normalization_4_1/batchnorm/addAddV2Bsequential_1/batch_normalization_4_1/Cast_1/ReadVariableOp:value:0=sequential_1/batch_normalization_4_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4sequential_1/batch_normalization_4_1/batchnorm/RsqrtRsqrt6sequential_1/batch_normalization_4_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2sequential_1/batch_normalization_4_1/batchnorm/mulMul8sequential_1/batch_normalization_4_1/batchnorm/Rsqrt:y:0Bsequential_1/batch_normalization_4_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4sequential_1/batch_normalization_4_1/batchnorm/mul_1Mul'sequential_1/dense_1/Relu:activations:06sequential_1/batch_normalization_4_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
4sequential_1/batch_normalization_4_1/batchnorm/mul_2Mul@sequential_1/batch_normalization_4_1/Cast/ReadVariableOp:value:06sequential_1/batch_normalization_4_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
2sequential_1/batch_normalization_4_1/batchnorm/subSubBsequential_1/batch_normalization_4_1/Cast_3/ReadVariableOp:value:08sequential_1/batch_normalization_4_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4sequential_1/batch_normalization_4_1/batchnorm/add_1AddV28sequential_1/batch_normalization_4_1/batchnorm/mul_1:z:06sequential_1/batch_normalization_4_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
*sequential_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3sequential_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
sequential_1/dense_1_2/MatMulMatMul8sequential_1/batch_normalization_4_1/batchnorm/add_1:z:02sequential_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)sequential_1/dense_1_2/Add/ReadVariableOpReadVariableOp2sequential_1_dense_1_2_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_1/dense_1_2/AddAddV2'sequential_1/dense_1_2/MatMul:product:01sequential_1/dense_1_2/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@u
sequential_1/dense_1_2/ReluRelusequential_1/dense_1_2/Add:z:0*
T0*'
_output_shapes
:���������@�
8sequential_1/batch_normalization_5_1/Cast/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_5_1_cast_readvariableop_resource*
_output_shapes
:@*
dtype0�
:sequential_1/batch_normalization_5_1/Cast_1/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_5_1_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
:sequential_1/batch_normalization_5_1/Cast_2/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_5_1_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
:sequential_1/batch_normalization_5_1/Cast_3/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_5_1_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0y
4sequential_1/batch_normalization_5_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_1/batch_normalization_5_1/batchnorm/addAddV2Bsequential_1/batch_normalization_5_1/Cast_1/ReadVariableOp:value:0=sequential_1/batch_normalization_5_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
4sequential_1/batch_normalization_5_1/batchnorm/RsqrtRsqrt6sequential_1/batch_normalization_5_1/batchnorm/add:z:0*
T0*
_output_shapes
:@�
2sequential_1/batch_normalization_5_1/batchnorm/mulMul8sequential_1/batch_normalization_5_1/batchnorm/Rsqrt:y:0Bsequential_1/batch_normalization_5_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
4sequential_1/batch_normalization_5_1/batchnorm/mul_1Mul)sequential_1/dense_1_2/Relu:activations:06sequential_1/batch_normalization_5_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������@�
4sequential_1/batch_normalization_5_1/batchnorm/mul_2Mul@sequential_1/batch_normalization_5_1/Cast/ReadVariableOp:value:06sequential_1/batch_normalization_5_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
2sequential_1/batch_normalization_5_1/batchnorm/subSubBsequential_1/batch_normalization_5_1/Cast_3/ReadVariableOp:value:08sequential_1/batch_normalization_5_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
4sequential_1/batch_normalization_5_1/batchnorm/add_1AddV28sequential_1/batch_normalization_5_1/batchnorm/mul_1:z:06sequential_1/batch_normalization_5_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@�
*sequential_1/dense_2_1/Cast/ReadVariableOpReadVariableOp3sequential_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

:@ *
dtype0�
sequential_1/dense_2_1/MatMulMatMul8sequential_1/batch_normalization_5_1/batchnorm/add_1:z:02sequential_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
)sequential_1/dense_2_1/Add/ReadVariableOpReadVariableOp2sequential_1_dense_2_1_add_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_1/dense_2_1/AddAddV2'sequential_1/dense_2_1/MatMul:product:01sequential_1/dense_2_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� u
sequential_1/dense_2_1/ReluRelusequential_1/dense_2_1/Add:z:0*
T0*'
_output_shapes
:��������� �
8sequential_1/batch_normalization_6_1/Cast/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_6_1_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_6_1/Cast_1/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_6_1_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_6_1/Cast_2/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_6_1_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
:sequential_1/batch_normalization_6_1/Cast_3/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_6_1_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0y
4sequential_1/batch_normalization_6_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_1/batch_normalization_6_1/batchnorm/addAddV2Bsequential_1/batch_normalization_6_1/Cast_1/ReadVariableOp:value:0=sequential_1/batch_normalization_6_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_6_1/batchnorm/RsqrtRsqrt6sequential_1/batch_normalization_6_1/batchnorm/add:z:0*
T0*
_output_shapes
: �
2sequential_1/batch_normalization_6_1/batchnorm/mulMul8sequential_1/batch_normalization_6_1/batchnorm/Rsqrt:y:0Bsequential_1/batch_normalization_6_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_6_1/batchnorm/mul_1Mul)sequential_1/dense_2_1/Relu:activations:06sequential_1/batch_normalization_6_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:��������� �
4sequential_1/batch_normalization_6_1/batchnorm/mul_2Mul@sequential_1/batch_normalization_6_1/Cast/ReadVariableOp:value:06sequential_1/batch_normalization_6_1/batchnorm/mul:z:0*
T0*
_output_shapes
: �
2sequential_1/batch_normalization_6_1/batchnorm/subSubBsequential_1/batch_normalization_6_1/Cast_3/ReadVariableOp:value:08sequential_1/batch_normalization_6_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
4sequential_1/batch_normalization_6_1/batchnorm/add_1AddV28sequential_1/batch_normalization_6_1/batchnorm/mul_1:z:06sequential_1/batch_normalization_6_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:��������� �
*sequential_1/dense_3_1/Cast/ReadVariableOpReadVariableOp3sequential_1_dense_3_1_cast_readvariableop_resource*
_output_shapes

: *
dtype0�
sequential_1/dense_3_1/MatMulMatMul8sequential_1/batch_normalization_6_1/batchnorm/add_1:z:02sequential_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)sequential_1/dense_3_1/Add/ReadVariableOpReadVariableOp2sequential_1_dense_3_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/dense_3_1/AddAddV2'sequential_1/dense_3_1/MatMul:product:01sequential_1/dense_3_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������{
sequential_1/dense_3_1/SoftmaxSoftmaxsequential_1/dense_3_1/Add:z:0*
T0*'
_output_shapes
:���������w
IdentityIdentity(sequential_1/dense_3_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^sequential_1/Conv2D_1_1/Reshape/ReadVariableOp3^sequential_1/Conv2D_1_1/convolution/ReadVariableOp/^sequential_1/Conv2D_2_1/Reshape/ReadVariableOp3^sequential_1/Conv2D_2_1/convolution/ReadVariableOp/^sequential_1/Conv2D_3_1/Reshape/ReadVariableOp3^sequential_1/Conv2D_3_1/convolution/ReadVariableOp/^sequential_1/Conv2D_4_1/Reshape/ReadVariableOp3^sequential_1/Conv2D_4_1/convolution/ReadVariableOp7^sequential_1/batch_normalization_1/Cast/ReadVariableOp9^sequential_1/batch_normalization_1/Cast_1/ReadVariableOp9^sequential_1/batch_normalization_1/Cast_2/ReadVariableOp9^sequential_1/batch_normalization_1/Cast_3/ReadVariableOp9^sequential_1/batch_normalization_1_2/Cast/ReadVariableOp;^sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp;^sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp;^sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp9^sequential_1/batch_normalization_2_1/Cast/ReadVariableOp;^sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp;^sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp;^sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp9^sequential_1/batch_normalization_3_1/Cast/ReadVariableOp;^sequential_1/batch_normalization_3_1/Cast_1/ReadVariableOp;^sequential_1/batch_normalization_3_1/Cast_2/ReadVariableOp;^sequential_1/batch_normalization_3_1/Cast_3/ReadVariableOp9^sequential_1/batch_normalization_4_1/Cast/ReadVariableOp;^sequential_1/batch_normalization_4_1/Cast_1/ReadVariableOp;^sequential_1/batch_normalization_4_1/Cast_2/ReadVariableOp;^sequential_1/batch_normalization_4_1/Cast_3/ReadVariableOp9^sequential_1/batch_normalization_5_1/Cast/ReadVariableOp;^sequential_1/batch_normalization_5_1/Cast_1/ReadVariableOp;^sequential_1/batch_normalization_5_1/Cast_2/ReadVariableOp;^sequential_1/batch_normalization_5_1/Cast_3/ReadVariableOp9^sequential_1/batch_normalization_6_1/Cast/ReadVariableOp;^sequential_1/batch_normalization_6_1/Cast_1/ReadVariableOp;^sequential_1/batch_normalization_6_1/Cast_2/ReadVariableOp;^sequential_1/batch_normalization_6_1/Cast_3/ReadVariableOp(^sequential_1/dense_1/Add/ReadVariableOp)^sequential_1/dense_1/Cast/ReadVariableOp*^sequential_1/dense_1_2/Add/ReadVariableOp+^sequential_1/dense_1_2/Cast/ReadVariableOp*^sequential_1/dense_2_1/Add/ReadVariableOp+^sequential_1/dense_2_1/Cast/ReadVariableOp*^sequential_1/dense_3_1/Add/ReadVariableOp+^sequential_1/dense_3_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.sequential_1/Conv2D_1_1/Reshape/ReadVariableOp.sequential_1/Conv2D_1_1/Reshape/ReadVariableOp2h
2sequential_1/Conv2D_1_1/convolution/ReadVariableOp2sequential_1/Conv2D_1_1/convolution/ReadVariableOp2`
.sequential_1/Conv2D_2_1/Reshape/ReadVariableOp.sequential_1/Conv2D_2_1/Reshape/ReadVariableOp2h
2sequential_1/Conv2D_2_1/convolution/ReadVariableOp2sequential_1/Conv2D_2_1/convolution/ReadVariableOp2`
.sequential_1/Conv2D_3_1/Reshape/ReadVariableOp.sequential_1/Conv2D_3_1/Reshape/ReadVariableOp2h
2sequential_1/Conv2D_3_1/convolution/ReadVariableOp2sequential_1/Conv2D_3_1/convolution/ReadVariableOp2`
.sequential_1/Conv2D_4_1/Reshape/ReadVariableOp.sequential_1/Conv2D_4_1/Reshape/ReadVariableOp2h
2sequential_1/Conv2D_4_1/convolution/ReadVariableOp2sequential_1/Conv2D_4_1/convolution/ReadVariableOp2p
6sequential_1/batch_normalization_1/Cast/ReadVariableOp6sequential_1/batch_normalization_1/Cast/ReadVariableOp2t
8sequential_1/batch_normalization_1/Cast_1/ReadVariableOp8sequential_1/batch_normalization_1/Cast_1/ReadVariableOp2t
8sequential_1/batch_normalization_1/Cast_2/ReadVariableOp8sequential_1/batch_normalization_1/Cast_2/ReadVariableOp2t
8sequential_1/batch_normalization_1/Cast_3/ReadVariableOp8sequential_1/batch_normalization_1/Cast_3/ReadVariableOp2t
8sequential_1/batch_normalization_1_2/Cast/ReadVariableOp8sequential_1/batch_normalization_1_2/Cast/ReadVariableOp2x
:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp2x
:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp2x
:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp2t
8sequential_1/batch_normalization_2_1/Cast/ReadVariableOp8sequential_1/batch_normalization_2_1/Cast/ReadVariableOp2x
:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp2x
:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp2x
:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp2t
8sequential_1/batch_normalization_3_1/Cast/ReadVariableOp8sequential_1/batch_normalization_3_1/Cast/ReadVariableOp2x
:sequential_1/batch_normalization_3_1/Cast_1/ReadVariableOp:sequential_1/batch_normalization_3_1/Cast_1/ReadVariableOp2x
:sequential_1/batch_normalization_3_1/Cast_2/ReadVariableOp:sequential_1/batch_normalization_3_1/Cast_2/ReadVariableOp2x
:sequential_1/batch_normalization_3_1/Cast_3/ReadVariableOp:sequential_1/batch_normalization_3_1/Cast_3/ReadVariableOp2t
8sequential_1/batch_normalization_4_1/Cast/ReadVariableOp8sequential_1/batch_normalization_4_1/Cast/ReadVariableOp2x
:sequential_1/batch_normalization_4_1/Cast_1/ReadVariableOp:sequential_1/batch_normalization_4_1/Cast_1/ReadVariableOp2x
:sequential_1/batch_normalization_4_1/Cast_2/ReadVariableOp:sequential_1/batch_normalization_4_1/Cast_2/ReadVariableOp2x
:sequential_1/batch_normalization_4_1/Cast_3/ReadVariableOp:sequential_1/batch_normalization_4_1/Cast_3/ReadVariableOp2t
8sequential_1/batch_normalization_5_1/Cast/ReadVariableOp8sequential_1/batch_normalization_5_1/Cast/ReadVariableOp2x
:sequential_1/batch_normalization_5_1/Cast_1/ReadVariableOp:sequential_1/batch_normalization_5_1/Cast_1/ReadVariableOp2x
:sequential_1/batch_normalization_5_1/Cast_2/ReadVariableOp:sequential_1/batch_normalization_5_1/Cast_2/ReadVariableOp2x
:sequential_1/batch_normalization_5_1/Cast_3/ReadVariableOp:sequential_1/batch_normalization_5_1/Cast_3/ReadVariableOp2t
8sequential_1/batch_normalization_6_1/Cast/ReadVariableOp8sequential_1/batch_normalization_6_1/Cast/ReadVariableOp2x
:sequential_1/batch_normalization_6_1/Cast_1/ReadVariableOp:sequential_1/batch_normalization_6_1/Cast_1/ReadVariableOp2x
:sequential_1/batch_normalization_6_1/Cast_2/ReadVariableOp:sequential_1/batch_normalization_6_1/Cast_2/ReadVariableOp2x
:sequential_1/batch_normalization_6_1/Cast_3/ReadVariableOp:sequential_1/batch_normalization_6_1/Cast_3/ReadVariableOp2R
'sequential_1/dense_1/Add/ReadVariableOp'sequential_1/dense_1/Add/ReadVariableOp2T
(sequential_1/dense_1/Cast/ReadVariableOp(sequential_1/dense_1/Cast/ReadVariableOp2V
)sequential_1/dense_1_2/Add/ReadVariableOp)sequential_1/dense_1_2/Add/ReadVariableOp2X
*sequential_1/dense_1_2/Cast/ReadVariableOp*sequential_1/dense_1_2/Cast/ReadVariableOp2V
)sequential_1/dense_2_1/Add/ReadVariableOp)sequential_1/dense_2_1/Add/ReadVariableOp2X
*sequential_1/dense_2_1/Cast/ReadVariableOp*sequential_1/dense_2_1/Cast/ReadVariableOp2V
)sequential_1/dense_3_1/Add/ReadVariableOp)sequential_1/dense_3_1/Add/ReadVariableOp2X
*sequential_1/dense_3_1/Cast/ReadVariableOp*sequential_1/dense_3_1/Cast/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
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
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource
�"
�

3__inference_signature_wrapper_serving_default_92191

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@%

unknown_17:@�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:���

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:	�@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@ 

unknown_36: 

unknown_37: 

unknown_38: 

unknown_39: 

unknown_40: 

unknown_41: 

unknown_42:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference_serving_default_92097o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name92101:%!

_user_specified_name92103:%!

_user_specified_name92105:%!

_user_specified_name92107:%!

_user_specified_name92109:%!

_user_specified_name92111:%!

_user_specified_name92113:%!

_user_specified_name92115:%	!

_user_specified_name92117:%
!

_user_specified_name92119:%!

_user_specified_name92121:%!

_user_specified_name92123:%!

_user_specified_name92125:%!

_user_specified_name92127:%!

_user_specified_name92129:%!

_user_specified_name92131:%!

_user_specified_name92133:%!

_user_specified_name92135:%!

_user_specified_name92137:%!

_user_specified_name92139:%!

_user_specified_name92141:%!

_user_specified_name92143:%!

_user_specified_name92145:%!

_user_specified_name92147:%!

_user_specified_name92149:%!

_user_specified_name92151:%!

_user_specified_name92153:%!

_user_specified_name92155:%!

_user_specified_name92157:%!

_user_specified_name92159:%!

_user_specified_name92161:% !

_user_specified_name92163:%!!

_user_specified_name92165:%"!

_user_specified_name92167:%#!

_user_specified_name92169:%$!

_user_specified_name92171:%%!

_user_specified_name92173:%&!

_user_specified_name92175:%'!

_user_specified_name92177:%(!

_user_specified_name92179:%)!

_user_specified_name92181:%*!

_user_specified_name92183:%+!

_user_specified_name92185:%,!

_user_specified_name92187
��
�;
!__inference__traced_restore_93791
file_prefix'
assignvariableop_variable_105:	 )
assignvariableop_1_variable_104: 9
assignvariableop_2_variable_103:9
assignvariableop_3_variable_102:-
assignvariableop_4_variable_101:-
assignvariableop_5_variable_100:,
assignvariableop_6_variable_99:,
assignvariableop_7_variable_98:,
assignvariableop_8_variable_97:,
assignvariableop_9_variable_96:9
assignvariableop_10_variable_95: 9
assignvariableop_11_variable_94: -
assignvariableop_12_variable_93: -
assignvariableop_13_variable_92: -
assignvariableop_14_variable_91: -
assignvariableop_15_variable_90: -
assignvariableop_16_variable_89: -
assignvariableop_17_variable_88: 9
assignvariableop_18_variable_87: @9
assignvariableop_19_variable_86: @-
assignvariableop_20_variable_85:@-
assignvariableop_21_variable_84:@-
assignvariableop_22_variable_83:@-
assignvariableop_23_variable_82:@-
assignvariableop_24_variable_81:@-
assignvariableop_25_variable_80:@:
assignvariableop_26_variable_79:@�:
assignvariableop_27_variable_78:@�.
assignvariableop_28_variable_77:	�.
assignvariableop_29_variable_76:	�.
assignvariableop_30_variable_75:	�.
assignvariableop_31_variable_74:	�.
assignvariableop_32_variable_73:	�.
assignvariableop_33_variable_72:	�4
assignvariableop_34_variable_71:���4
assignvariableop_35_variable_70:���.
assignvariableop_36_variable_69:	�.
assignvariableop_37_variable_68:	�.
assignvariableop_38_variable_67:	�.
assignvariableop_39_variable_66:	�.
assignvariableop_40_variable_65:	�.
assignvariableop_41_variable_64:	�2
assignvariableop_42_variable_63:	�@2
assignvariableop_43_variable_62:	�@-
assignvariableop_44_variable_61:@-
assignvariableop_45_variable_60:@-
assignvariableop_46_variable_59:@-
assignvariableop_47_variable_58:@-
assignvariableop_48_variable_57:@-
assignvariableop_49_variable_56:@1
assignvariableop_50_variable_55:@ 1
assignvariableop_51_variable_54:@ -
assignvariableop_52_variable_53: -
assignvariableop_53_variable_52: -
assignvariableop_54_variable_51: -
assignvariableop_55_variable_50: -
assignvariableop_56_variable_49: -
assignvariableop_57_variable_48: 1
assignvariableop_58_variable_47: 1
assignvariableop_59_variable_46: -
assignvariableop_60_variable_45:-
assignvariableop_61_variable_44:9
assignvariableop_62_variable_43:-
assignvariableop_63_variable_42:-
assignvariableop_64_variable_41:-
assignvariableop_65_variable_40:9
assignvariableop_66_variable_39: -
assignvariableop_67_variable_38: -
assignvariableop_68_variable_37: -
assignvariableop_69_variable_36: 9
assignvariableop_70_variable_35: @-
assignvariableop_71_variable_34:@-
assignvariableop_72_variable_33:@-
assignvariableop_73_variable_32:@:
assignvariableop_74_variable_31:@�.
assignvariableop_75_variable_30:	�.
assignvariableop_76_variable_29:	�.
assignvariableop_77_variable_28:	�4
assignvariableop_78_variable_27:���.
assignvariableop_79_variable_26:	�.
assignvariableop_80_variable_25:	�.
assignvariableop_81_variable_24:	�2
assignvariableop_82_variable_23:	�@-
assignvariableop_83_variable_22:@-
assignvariableop_84_variable_21:@-
assignvariableop_85_variable_20:@1
assignvariableop_86_variable_19:@ -
assignvariableop_87_variable_18: -
assignvariableop_88_variable_17: -
assignvariableop_89_variable_16: 1
assignvariableop_90_variable_15: -
assignvariableop_91_variable_14:-
assignvariableop_92_variable_13:-
assignvariableop_93_variable_12:-
assignvariableop_94_variable_11: -
assignvariableop_95_variable_10: ,
assignvariableop_96_variable_9:@,
assignvariableop_97_variable_8:@-
assignvariableop_98_variable_7:	�-
assignvariableop_99_variable_6:	�.
assignvariableop_100_variable_5:	�.
assignvariableop_101_variable_4:	�-
assignvariableop_102_variable_3:@-
assignvariableop_103_variable_2:@-
assignvariableop_104_variable_1: +
assignvariableop_105_variable: 
identity_107��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�.
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:k*
dtype0*�-
value�-B�-kB/optimizer/iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUEB0_layers/3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB0_layers/6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB0_layers/9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1_layers/12/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5_layers/12/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1_layers/17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5_layers/17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1_layers/19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5_layers/19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1_layers/21/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5_layers/21/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:k*
dtype0*�
value�B�kB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*y
dtypeso
m2k	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_105Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_104Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_103Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_102Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_101Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_100Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_99Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_98Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_97Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_96Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_95Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_94Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_93Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_92Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_91Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_90Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_89Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_88Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_87Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_86Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_85Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_84Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_83Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_variable_82Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_variable_81Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_variable_80Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_79Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_variable_78Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_variable_77Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_variable_76Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_variable_75Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_variable_74Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_variable_73Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_variable_72Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_variable_71Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_variable_70Identity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_variable_69Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_variable_68Identity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_variable_67Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_variable_66Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_variable_65Identity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_variable_64Identity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_variable_63Identity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_variable_62Identity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_variable_61Identity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpassignvariableop_45_variable_60Identity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpassignvariableop_46_variable_59Identity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpassignvariableop_47_variable_58Identity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpassignvariableop_48_variable_57Identity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpassignvariableop_49_variable_56Identity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpassignvariableop_50_variable_55Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpassignvariableop_51_variable_54Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpassignvariableop_52_variable_53Identity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpassignvariableop_53_variable_52Identity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpassignvariableop_54_variable_51Identity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpassignvariableop_55_variable_50Identity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpassignvariableop_56_variable_49Identity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpassignvariableop_57_variable_48Identity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOpassignvariableop_58_variable_47Identity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOpassignvariableop_59_variable_46Identity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOpassignvariableop_60_variable_45Identity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOpassignvariableop_61_variable_44Identity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOpassignvariableop_62_variable_43Identity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOpassignvariableop_63_variable_42Identity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOpassignvariableop_64_variable_41Identity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOpassignvariableop_65_variable_40Identity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOpassignvariableop_66_variable_39Identity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOpassignvariableop_67_variable_38Identity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOpassignvariableop_68_variable_37Identity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOpassignvariableop_69_variable_36Identity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpassignvariableop_70_variable_35Identity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOpassignvariableop_71_variable_34Identity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOpassignvariableop_72_variable_33Identity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOpassignvariableop_73_variable_32Identity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOpassignvariableop_74_variable_31Identity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOpassignvariableop_75_variable_30Identity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOpassignvariableop_76_variable_29Identity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOpassignvariableop_77_variable_28Identity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOpassignvariableop_78_variable_27Identity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOpassignvariableop_79_variable_26Identity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOpassignvariableop_80_variable_25Identity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOpassignvariableop_81_variable_24Identity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOpassignvariableop_82_variable_23Identity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOpassignvariableop_83_variable_22Identity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOpassignvariableop_84_variable_21Identity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOpassignvariableop_85_variable_20Identity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOpassignvariableop_86_variable_19Identity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOpassignvariableop_87_variable_18Identity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOpassignvariableop_88_variable_17Identity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOpassignvariableop_89_variable_16Identity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOpassignvariableop_90_variable_15Identity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOpassignvariableop_91_variable_14Identity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOpassignvariableop_92_variable_13Identity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOpassignvariableop_93_variable_12Identity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOpassignvariableop_94_variable_11Identity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOpassignvariableop_95_variable_10Identity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOpassignvariableop_96_variable_9Identity_96:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOpassignvariableop_97_variable_8Identity_97:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOpassignvariableop_98_variable_7Identity_98:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOpassignvariableop_99_variable_6Identity_99:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOpassignvariableop_100_variable_5Identity_100:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOpassignvariableop_101_variable_4Identity_101:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOpassignvariableop_102_variable_3Identity_102:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOpassignvariableop_103_variable_2Identity_103:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOpassignvariableop_104_variable_1Identity_104:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOpassignvariableop_105_variableIdentity_105:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_106Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_107IdentityIdentity_106:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
_output_shapes
 "%
identity_107Identity_107:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052*
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
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_user_specified_nameVariable_105:,(
&
_user_specified_nameVariable_104:,(
&
_user_specified_nameVariable_103:,(
&
_user_specified_nameVariable_102:,(
&
_user_specified_nameVariable_101:,(
&
_user_specified_nameVariable_100:+'
%
_user_specified_nameVariable_99:+'
%
_user_specified_nameVariable_98:+	'
%
_user_specified_nameVariable_97:+
'
%
_user_specified_nameVariable_96:+'
%
_user_specified_nameVariable_95:+'
%
_user_specified_nameVariable_94:+'
%
_user_specified_nameVariable_93:+'
%
_user_specified_nameVariable_92:+'
%
_user_specified_nameVariable_91:+'
%
_user_specified_nameVariable_90:+'
%
_user_specified_nameVariable_89:+'
%
_user_specified_nameVariable_88:+'
%
_user_specified_nameVariable_87:+'
%
_user_specified_nameVariable_86:+'
%
_user_specified_nameVariable_85:+'
%
_user_specified_nameVariable_84:+'
%
_user_specified_nameVariable_83:+'
%
_user_specified_nameVariable_82:+'
%
_user_specified_nameVariable_81:+'
%
_user_specified_nameVariable_80:+'
%
_user_specified_nameVariable_79:+'
%
_user_specified_nameVariable_78:+'
%
_user_specified_nameVariable_77:+'
%
_user_specified_nameVariable_76:+'
%
_user_specified_nameVariable_75:+ '
%
_user_specified_nameVariable_74:+!'
%
_user_specified_nameVariable_73:+"'
%
_user_specified_nameVariable_72:+#'
%
_user_specified_nameVariable_71:+$'
%
_user_specified_nameVariable_70:+%'
%
_user_specified_nameVariable_69:+&'
%
_user_specified_nameVariable_68:+''
%
_user_specified_nameVariable_67:+('
%
_user_specified_nameVariable_66:+)'
%
_user_specified_nameVariable_65:+*'
%
_user_specified_nameVariable_64:++'
%
_user_specified_nameVariable_63:+,'
%
_user_specified_nameVariable_62:+-'
%
_user_specified_nameVariable_61:+.'
%
_user_specified_nameVariable_60:+/'
%
_user_specified_nameVariable_59:+0'
%
_user_specified_nameVariable_58:+1'
%
_user_specified_nameVariable_57:+2'
%
_user_specified_nameVariable_56:+3'
%
_user_specified_nameVariable_55:+4'
%
_user_specified_nameVariable_54:+5'
%
_user_specified_nameVariable_53:+6'
%
_user_specified_nameVariable_52:+7'
%
_user_specified_nameVariable_51:+8'
%
_user_specified_nameVariable_50:+9'
%
_user_specified_nameVariable_49:+:'
%
_user_specified_nameVariable_48:+;'
%
_user_specified_nameVariable_47:+<'
%
_user_specified_nameVariable_46:+='
%
_user_specified_nameVariable_45:+>'
%
_user_specified_nameVariable_44:+?'
%
_user_specified_nameVariable_43:+@'
%
_user_specified_nameVariable_42:+A'
%
_user_specified_nameVariable_41:+B'
%
_user_specified_nameVariable_40:+C'
%
_user_specified_nameVariable_39:+D'
%
_user_specified_nameVariable_38:+E'
%
_user_specified_nameVariable_37:+F'
%
_user_specified_nameVariable_36:+G'
%
_user_specified_nameVariable_35:+H'
%
_user_specified_nameVariable_34:+I'
%
_user_specified_nameVariable_33:+J'
%
_user_specified_nameVariable_32:+K'
%
_user_specified_nameVariable_31:+L'
%
_user_specified_nameVariable_30:+M'
%
_user_specified_nameVariable_29:+N'
%
_user_specified_nameVariable_28:+O'
%
_user_specified_nameVariable_27:+P'
%
_user_specified_nameVariable_26:+Q'
%
_user_specified_nameVariable_25:+R'
%
_user_specified_nameVariable_24:+S'
%
_user_specified_nameVariable_23:+T'
%
_user_specified_nameVariable_22:+U'
%
_user_specified_nameVariable_21:+V'
%
_user_specified_nameVariable_20:+W'
%
_user_specified_nameVariable_19:+X'
%
_user_specified_nameVariable_18:+Y'
%
_user_specified_nameVariable_17:+Z'
%
_user_specified_nameVariable_16:+['
%
_user_specified_nameVariable_15:+\'
%
_user_specified_nameVariable_14:+]'
%
_user_specified_nameVariable_13:+^'
%
_user_specified_nameVariable_12:+_'
%
_user_specified_nameVariable_11:+`'
%
_user_specified_nameVariable_10:*a&
$
_user_specified_name
Variable_9:*b&
$
_user_specified_name
Variable_8:*c&
$
_user_specified_name
Variable_7:*d&
$
_user_specified_name
Variable_6:*e&
$
_user_specified_name
Variable_5:*f&
$
_user_specified_name
Variable_4:*g&
$
_user_specified_name
Variable_3:*h&
$
_user_specified_name
Variable_2:*i&
$
_user_specified_name
Variable_1:(j$
"
_user_specified_name
Variable"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
inputs9
serving_default_inputs:0�����������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures"
_generic_user_object
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature"
_generic_user_object
�

_variables
_trainable_variables
 _trainable_variables_indices

iterations
_learning_rate

_momentums
_velocities"
_generic_user_object
�
trace_02�
!__inference_serving_default_92097�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422"
trackable_list_wrapper
 "
trackable_dict_wrapper
,
5serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422"
trackable_list_wrapper
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
6trace_02�
!__inference_serving_default_92382�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������z6trace_0
�
0
1
72
83
94
:5
;6
<7
=8
>9
?10
@11
A12
B13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25
O26
P27
Q28
R29
S30
T31
U32
V33
W34
X35
Y36
Z37
[38
\39
]40
^41
_42
`43
a44
b45
c46
d47
e48
f49
g50
h51
i52
j53
k54
l55
m56
n57
o58
p59
q60
r61"
trackable_list_wrapper
�
s0
t1
u2
v3
w4
x5
y6
z7
{8
|9
}10
~11
12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29"
trackable_list_wrapper
 "
trackable_dict_wrapper
:	 2adam/iteration
: 2adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
!__inference_serving_default_92097inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
~
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override"
_generic_user_object
�
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
s_kernel
tbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
	ugamma
vbeta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict"
_generic_user_object
�
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
w_kernel
xbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
	ygamma
zbeta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict"
_generic_user_object
�
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
{_kernel
|bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
	}gamma
~beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict"
_generic_user_object
�
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�

�gamma
	�beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict"
_generic_user_object
�
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
�_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�

�gamma
	�beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict"
_generic_user_object
�
�_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�

�gamma
	�beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict"
_generic_user_object
�
�_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�

�gamma
	�beta
�moving_mean
�moving_variance
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_reduction_axes
�_build_shapes_dict"
_generic_user_object
�
�_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�B�
3__inference_signature_wrapper_serving_default_92191inputs"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jinputs
kwonlydefaults
 
annotations� *
 
�B�
!__inference_serving_default_92382inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
@:>2(adam/sequential_Conv2D_1_kernel_momentum
@:>2(adam/sequential_Conv2D_1_kernel_velocity
2:02&adam/sequential_Conv2D_1_bias_momentum
2:02&adam/sequential_Conv2D_1_bias_velocity
>:<22adam/sequential_batch_normalization_gamma_momentum
>:<22adam/sequential_batch_normalization_gamma_velocity
=:;21adam/sequential_batch_normalization_beta_momentum
=:;21adam/sequential_batch_normalization_beta_velocity
@:> 2(adam/sequential_Conv2D_2_kernel_momentum
@:> 2(adam/sequential_Conv2D_2_kernel_velocity
2:0 2&adam/sequential_Conv2D_2_bias_momentum
2:0 2&adam/sequential_Conv2D_2_bias_velocity
@:> 24adam/sequential_batch_normalization_1_gamma_momentum
@:> 24adam/sequential_batch_normalization_1_gamma_velocity
?:= 23adam/sequential_batch_normalization_1_beta_momentum
?:= 23adam/sequential_batch_normalization_1_beta_velocity
@:> @2(adam/sequential_Conv2D_3_kernel_momentum
@:> @2(adam/sequential_Conv2D_3_kernel_velocity
2:0@2&adam/sequential_Conv2D_3_bias_momentum
2:0@2&adam/sequential_Conv2D_3_bias_velocity
@:>@24adam/sequential_batch_normalization_2_gamma_momentum
@:>@24adam/sequential_batch_normalization_2_gamma_velocity
?:=@23adam/sequential_batch_normalization_2_beta_momentum
?:=@23adam/sequential_batch_normalization_2_beta_velocity
A:?@�2(adam/sequential_Conv2D_4_kernel_momentum
A:?@�2(adam/sequential_Conv2D_4_kernel_velocity
3:1�2&adam/sequential_Conv2D_4_bias_momentum
3:1�2&adam/sequential_Conv2D_4_bias_velocity
A:?�24adam/sequential_batch_normalization_3_gamma_momentum
A:?�24adam/sequential_batch_normalization_3_gamma_velocity
@:>�23adam/sequential_batch_normalization_3_beta_momentum
@:>�23adam/sequential_batch_normalization_3_beta_velocity
8:6���2%adam/sequential_dense_kernel_momentum
8:6���2%adam/sequential_dense_kernel_velocity
0:.�2#adam/sequential_dense_bias_momentum
0:.�2#adam/sequential_dense_bias_velocity
A:?�24adam/sequential_batch_normalization_4_gamma_momentum
A:?�24adam/sequential_batch_normalization_4_gamma_velocity
@:>�23adam/sequential_batch_normalization_4_beta_momentum
@:>�23adam/sequential_batch_normalization_4_beta_velocity
8:6	�@2'adam/sequential_dense_1_kernel_momentum
8:6	�@2'adam/sequential_dense_1_kernel_velocity
1:/@2%adam/sequential_dense_1_bias_momentum
1:/@2%adam/sequential_dense_1_bias_velocity
@:>@24adam/sequential_batch_normalization_5_gamma_momentum
@:>@24adam/sequential_batch_normalization_5_gamma_velocity
?:=@23adam/sequential_batch_normalization_5_beta_momentum
?:=@23adam/sequential_batch_normalization_5_beta_velocity
7:5@ 2'adam/sequential_dense_2_kernel_momentum
7:5@ 2'adam/sequential_dense_2_kernel_velocity
1:/ 2%adam/sequential_dense_2_bias_momentum
1:/ 2%adam/sequential_dense_2_bias_velocity
@:> 24adam/sequential_batch_normalization_6_gamma_momentum
@:> 24adam/sequential_batch_normalization_6_gamma_velocity
?:= 23adam/sequential_batch_normalization_6_beta_momentum
?:= 23adam/sequential_batch_normalization_6_beta_velocity
7:5 2'adam/sequential_dense_3_kernel_momentum
7:5 2'adam/sequential_dense_3_kernel_velocity
1:/2%adam/sequential_dense_3_bias_momentum
1:/2%adam/sequential_dense_3_bias_velocity
4:22sequential/Conv2D_1/kernel
&:$2sequential/Conv2D_1/bias
2:02$sequential/batch_normalization/gamma
1:/2#sequential/batch_normalization/beta
4:2 2sequential/Conv2D_2/kernel
&:$ 2sequential/Conv2D_2/bias
4:2 2&sequential/batch_normalization_1/gamma
3:1 2%sequential/batch_normalization_1/beta
4:2 @2sequential/Conv2D_3/kernel
&:$@2sequential/Conv2D_3/bias
4:2@2&sequential/batch_normalization_2/gamma
3:1@2%sequential/batch_normalization_2/beta
5:3@�2sequential/Conv2D_4/kernel
':%�2sequential/Conv2D_4/bias
5:3�2&sequential/batch_normalization_3/gamma
4:2�2%sequential/batch_normalization_3/beta
,:*���2sequential/dense/kernel
$:"�2sequential/dense/bias
5:3�2&sequential/batch_normalization_4/gamma
4:2�2%sequential/batch_normalization_4/beta
,:*	�@2sequential/dense_1/kernel
%:#@2sequential/dense_1/bias
4:2@2&sequential/batch_normalization_5/gamma
3:1@2%sequential/batch_normalization_5/beta
+:)@ 2sequential/dense_2/kernel
%:# 2sequential/dense_2/bias
4:2 2&sequential/batch_normalization_6/gamma
3:1 2%sequential/batch_normalization_6/beta
+:) 2sequential/dense_3/kernel
%:#2sequential/dense_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_dict_wrapper
6:42*sequential/batch_normalization/moving_mean
::82.sequential/batch_normalization/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_dict_wrapper
8:6 2,sequential/batch_normalization_1/moving_mean
<:: 20sequential/batch_normalization_1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_dict_wrapper
8:6@2,sequential/batch_normalization_2/moving_mean
<::@20sequential/batch_normalization_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_dict_wrapper
9:7�2,sequential/batch_normalization_3/moving_mean
=:;�20sequential/batch_normalization_3/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_dict_wrapper
9:7�2,sequential/batch_normalization_4/moving_mean
=:;�20sequential/batch_normalization_4/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_dict_wrapper
8:6@2,sequential/batch_normalization_5/moving_mean
<::@20sequential/batch_normalization_5/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_dict_wrapper
8:6 2,sequential/batch_normalization_6/moving_mean
<:: 20sequential/batch_normalization_6/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_dict_wrapper�
!__inference_serving_default_92097�Kst��uvwx��yz{|��}~�������������������������9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
!__inference_serving_default_92382�Kst��uvwx��yz{|��}~�������������������������9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
3__inference_signature_wrapper_serving_default_92191�Kst��uvwx��yz{|��}~�������������������������C�@
� 
9�6
4
inputs*�'
inputs�����������"3�0
.
output_0"�
output_0���������