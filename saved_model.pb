??
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
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
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
embedding_30/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?N *(
shared_nameembedding_30/embeddings
?
+embedding_30/embeddings/Read/ReadVariableOpReadVariableOpembedding_30/embeddings*
_output_shapes
:	?N *
dtype0
z
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_30/kernel
s
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel*
_output_shapes

:*
dtype0
r
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_30/bias
k
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes
:*
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
?
'simple_rnn_30/simple_rnn_cell_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *8
shared_name)'simple_rnn_30/simple_rnn_cell_30/kernel
?
;simple_rnn_30/simple_rnn_cell_30/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_30/simple_rnn_cell_30/kernel*
_output_shapes

: *
dtype0
?
1simple_rnn_30/simple_rnn_cell_30/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*B
shared_name31simple_rnn_30/simple_rnn_cell_30/recurrent_kernel
?
Esimple_rnn_30/simple_rnn_cell_30/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_30/simple_rnn_cell_30/recurrent_kernel*
_output_shapes

:*
dtype0
?
%simple_rnn_30/simple_rnn_cell_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%simple_rnn_30/simple_rnn_cell_30/bias
?
9simple_rnn_30/simple_rnn_cell_30/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_30/simple_rnn_cell_30/bias*
_output_shapes
:*
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
Adam/dense_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_30/kernel/m
?
*Adam/dense_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_30/bias/m
y
(Adam/dense_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/m*
_output_shapes
:*
dtype0
?
.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *?
shared_name0.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/m
?
BAdam/simple_rnn_30/simple_rnn_cell_30/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/m*
_output_shapes

: *
dtype0
?
8Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/m
?
LAdam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/m*
_output_shapes

:*
dtype0
?
,Adam/simple_rnn_30/simple_rnn_cell_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/simple_rnn_30/simple_rnn_cell_30/bias/m
?
@Adam/simple_rnn_30/simple_rnn_cell_30/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_30/simple_rnn_cell_30/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_30/kernel/v
?
*Adam/dense_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_30/bias/v
y
(Adam/dense_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/v*
_output_shapes
:*
dtype0
?
.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *?
shared_name0.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/v
?
BAdam/simple_rnn_30/simple_rnn_cell_30/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/v*
_output_shapes

: *
dtype0
?
8Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/v
?
LAdam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/v*
_output_shapes

:*
dtype0
?
,Adam/simple_rnn_30/simple_rnn_cell_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/simple_rnn_30/simple_rnn_cell_30/bias/v
?
@Adam/simple_rnn_30/simple_rnn_cell_30/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_30/simple_rnn_cell_30/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?'
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?&
value?&B?& B?&
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
b


embeddings
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	decay
learning_ratemLmM mN!mO"mPvQvR vS!vT"vU
*

0
 1
!2
"3
4
5
#
 0
!1
"2
3
4
 
?
#layer_metrics
	variables
$non_trainable_variables

%layers
&layer_regularization_losses
trainable_variables
regularization_losses
'metrics
 
ge
VARIABLE_VALUEembedding_30/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE


0
 
 
?
(layer_metrics
	variables
)non_trainable_variables

*layers
+layer_regularization_losses
trainable_variables
regularization_losses
,metrics
~

 kernel
!recurrent_kernel
"bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
 

 0
!1
"2

 0
!1
"2
 
?

1states
2layer_metrics
	variables
3non_trainable_variables

4layers
5layer_regularization_losses
trainable_variables
regularization_losses
6metrics
[Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_30/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
7layer_metrics
	variables
8non_trainable_variables

9layers
:layer_regularization_losses
trainable_variables
regularization_losses
;metrics
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
ca
VARIABLE_VALUE'simple_rnn_30/simple_rnn_cell_30/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1simple_rnn_30/simple_rnn_cell_30/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_30/simple_rnn_cell_30/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 


0

0
1
2
 

<0
=1
 


0
 
 
 

 0
!1
"2

 0
!1
"2
 
?
>layer_metrics
-	variables
?non_trainable_variables

@layers
Alayer_regularization_losses
.trainable_variables
/regularization_losses
Bmetrics
 
 
 

0
 
 
 
 
 
 
 
4
	Ctotal
	Dcount
E	variables
F	keras_api
D
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

C0
D1

E	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

G0
H1

J	variables
~|
VARIABLE_VALUEAdam/dense_30/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/simple_rnn_30/simple_rnn_cell_30/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_30/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/simple_rnn_30/simple_rnn_cell_30/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
"serving_default_embedding_30_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_embedding_30_inputembedding_30/embeddings'simple_rnn_30/simple_rnn_cell_30/kernel%simple_rnn_30/simple_rnn_cell_30/bias1simple_rnn_30/simple_rnn_cell_30/recurrent_kerneldense_30/kerneldense_30/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_78598
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+embedding_30/embeddings/Read/ReadVariableOp#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp;simple_rnn_30/simple_rnn_cell_30/kernel/Read/ReadVariableOpEsimple_rnn_30/simple_rnn_cell_30/recurrent_kernel/Read/ReadVariableOp9simple_rnn_30/simple_rnn_cell_30/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_30/kernel/m/Read/ReadVariableOp(Adam/dense_30/bias/m/Read/ReadVariableOpBAdam/simple_rnn_30/simple_rnn_cell_30/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_30/simple_rnn_cell_30/bias/m/Read/ReadVariableOp*Adam/dense_30/kernel/v/Read/ReadVariableOp(Adam/dense_30/bias/v/Read/ReadVariableOpBAdam/simple_rnn_30/simple_rnn_cell_30/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_30/simple_rnn_cell_30/bias/v/Read/ReadVariableOpConst*&
Tin
2	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_79795
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_30/embeddingsdense_30/kerneldense_30/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate'simple_rnn_30/simple_rnn_cell_30/kernel1simple_rnn_30/simple_rnn_cell_30/recurrent_kernel%simple_rnn_30/simple_rnn_cell_30/biastotalcounttotal_1count_1Adam/dense_30/kernel/mAdam/dense_30/bias/m.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/m8Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/m,Adam/simple_rnn_30/simple_rnn_cell_30/bias/mAdam/dense_30/kernel/vAdam/dense_30/bias/v.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/v8Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/v,Adam/simple_rnn_30/simple_rnn_cell_30/bias/v*%
Tin
2*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_79880Ϗ
?
?
-__inference_simple_rnn_30_layer_call_fn_79572
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_779822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?#
?
while_body_77919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_30_77941_0$
 while_simple_rnn_cell_30_77943_0$
 while_simple_rnn_cell_30_77945_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_30_77941"
while_simple_rnn_cell_30_77943"
while_simple_rnn_cell_30_77945??0while/simple_rnn_cell_30/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
0while/simple_rnn_cell_30/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_30_77941_0 while_simple_rnn_cell_30_77943_0 while_simple_rnn_cell_30_77945_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_7763722
0while/simple_rnn_cell_30/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_30/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_30/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_30/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_30/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_30/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity9while/simple_rnn_cell_30/StatefulPartitionedCall:output:11^while/simple_rnn_cell_30/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_30_77941 while_simple_rnn_cell_30_77941_0"B
while_simple_rnn_cell_30_77943 while_simple_rnn_cell_30_77943_0"B
while_simple_rnn_cell_30_77945 while_simple_rnn_cell_30_77945_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????: : :::2d
0while/simple_rnn_cell_30/StatefulPartitionedCall0while/simple_rnn_cell_30/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?R
?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_78421

inputs5
1simple_rnn_cell_30_matmul_readvariableop_resource6
2simple_rnn_cell_30_biasadd_readvariableop_resource7
3simple_rnn_cell_30_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_30/BiasAdd/ReadVariableOp?(simple_rnn_cell_30/MatMul/ReadVariableOp?*simple_rnn_cell_30/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:?????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
"simple_rnn_cell_30/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2$
"simple_rnn_cell_30/ones_like/Shape?
"simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"simple_rnn_cell_30/ones_like/Const?
simple_rnn_cell_30/ones_likeFill+simple_rnn_cell_30/ones_like/Shape:output:0+simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/ones_like?
$simple_rnn_cell_30/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2&
$simple_rnn_cell_30/ones_like_1/Shape?
$simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$simple_rnn_cell_30/ones_like_1/Const?
simple_rnn_cell_30/ones_like_1Fill-simple_rnn_cell_30/ones_like_1/Shape:output:0-simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2 
simple_rnn_cell_30/ones_like_1?
simple_rnn_cell_30/mulMulstrided_slice_2:output:0%simple_rnn_cell_30/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/mul?
(simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_30_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(simple_rnn_cell_30/MatMul/ReadVariableOp?
simple_rnn_cell_30/MatMulMatMulsimple_rnn_cell_30/mul:z:00simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul?
)simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)simple_rnn_cell_30/BiasAdd/ReadVariableOp?
simple_rnn_cell_30/BiasAddBiasAdd#simple_rnn_cell_30/MatMul:product:01simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/BiasAdd?
simple_rnn_cell_30/mul_1Mulzeros:output:0'simple_rnn_cell_30/ones_like_1:output:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/mul_1?
*simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_30_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02,
*simple_rnn_cell_30/MatMul_1/ReadVariableOp?
simple_rnn_cell_30/MatMul_1MatMulsimple_rnn_cell_30/mul_1:z:02simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul_1?
simple_rnn_cell_30/addAddV2#simple_rnn_cell_30/BiasAdd:output:0%simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/add?
simple_rnn_cell_30/TanhTanhsimple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_30_matmul_readvariableop_resource2simple_rnn_cell_30_biasadd_readvariableop_resource3simple_rnn_cell_30_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_78347*
condR
while_cond_78346*8
output_shapes'
%: : : : :?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_30/BiasAdd/ReadVariableOp)^simple_rnn_cell_30/MatMul/ReadVariableOp+^simple_rnn_cell_30/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::2V
)simple_rnn_cell_30/BiasAdd/ReadVariableOp)simple_rnn_cell_30/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_30/MatMul/ReadVariableOp(simple_rnn_cell_30/MatMul/ReadVariableOp2X
*simple_rnn_cell_30/MatMul_1/ReadVariableOp*simple_rnn_cell_30/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?<
?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_77982

inputs
simple_rnn_cell_30_77907
simple_rnn_cell_30_77909
simple_rnn_cell_30_77911
identity??*simple_rnn_cell_30/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
*simple_rnn_cell_30/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_30_77907simple_rnn_cell_30_77909simple_rnn_cell_30_77911*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_776372,
*simple_rnn_cell_30/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_30_77907simple_rnn_cell_30_77909simple_rnn_cell_30_77911*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_77919*
condR
while_cond_77918*8
output_shapes'
%: : : : :?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1?
IdentityIdentitystrided_slice_3:output:0+^simple_rnn_cell_30/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::2X
*simple_rnn_cell_30/StatefulPartitionedCall*simple_rnn_cell_30/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_79669

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddg
mul_1Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????2
mul_1?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMul	mul_1:z:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:????????? :?????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0
?
?
while_cond_78346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_78346___redundant_placeholder03
/while_while_cond_78346___redundant_placeholder13
/while_while_cond_78346___redundant_placeholder23
/while_while_cond_78346___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?<
?
__inference__traced_save_79795
file_prefix6
2savev2_embedding_30_embeddings_read_readvariableop.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopF
Bsavev2_simple_rnn_30_simple_rnn_cell_30_kernel_read_readvariableopP
Lsavev2_simple_rnn_30_simple_rnn_cell_30_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_30_simple_rnn_cell_30_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_30_kernel_m_read_readvariableop3
/savev2_adam_dense_30_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_30_simple_rnn_cell_30_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_30_simple_rnn_cell_30_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_30_simple_rnn_cell_30_bias_m_read_readvariableop5
1savev2_adam_dense_30_kernel_v_read_readvariableop3
/savev2_adam_dense_30_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_30_simple_rnn_cell_30_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_30_simple_rnn_cell_30_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_30_simple_rnn_cell_30_bias_v_read_readvariableop
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
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_30_embeddings_read_readvariableop*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopBsavev2_simple_rnn_30_simple_rnn_cell_30_kernel_read_readvariableopLsavev2_simple_rnn_30_simple_rnn_cell_30_recurrent_kernel_read_readvariableop@savev2_simple_rnn_30_simple_rnn_cell_30_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_30_kernel_m_read_readvariableop/savev2_adam_dense_30_bias_m_read_readvariableopIsavev2_adam_simple_rnn_30_simple_rnn_cell_30_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_30_simple_rnn_cell_30_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_30_simple_rnn_cell_30_bias_m_read_readvariableop1savev2_adam_dense_30_kernel_v_read_readvariableop/savev2_adam_dense_30_bias_v_read_readvariableopIsavev2_adam_simple_rnn_30_simple_rnn_cell_30_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_30_simple_rnn_cell_30_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_30_simple_rnn_cell_30_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?N ::: : : : : : ::: : : : ::: ::::: ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?N :$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$	 

_output_shapes

: :$
 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

: :$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?l
?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_78293

inputs5
1simple_rnn_cell_30_matmul_readvariableop_resource6
2simple_rnn_cell_30_biasadd_readvariableop_resource7
3simple_rnn_cell_30_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_30/BiasAdd/ReadVariableOp?(simple_rnn_cell_30/MatMul/ReadVariableOp?*simple_rnn_cell_30/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:?????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
"simple_rnn_cell_30/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2$
"simple_rnn_cell_30/ones_like/Shape?
"simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"simple_rnn_cell_30/ones_like/Const?
simple_rnn_cell_30/ones_likeFill+simple_rnn_cell_30/ones_like/Shape:output:0+simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/ones_like?
 simple_rnn_cell_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 simple_rnn_cell_30/dropout/Const?
simple_rnn_cell_30/dropout/MulMul%simple_rnn_cell_30/ones_like:output:0)simple_rnn_cell_30/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
simple_rnn_cell_30/dropout/Mul?
 simple_rnn_cell_30/dropout/ShapeShape%simple_rnn_cell_30/ones_like:output:0*
T0*
_output_shapes
:2"
 simple_rnn_cell_30/dropout/Shape?
7simple_rnn_cell_30/dropout/random_uniform/RandomUniformRandomUniform)simple_rnn_cell_30/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???29
7simple_rnn_cell_30/dropout/random_uniform/RandomUniform?
)simple_rnn_cell_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2+
)simple_rnn_cell_30/dropout/GreaterEqual/y?
'simple_rnn_cell_30/dropout/GreaterEqualGreaterEqual@simple_rnn_cell_30/dropout/random_uniform/RandomUniform:output:02simple_rnn_cell_30/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'simple_rnn_cell_30/dropout/GreaterEqual?
simple_rnn_cell_30/dropout/CastCast+simple_rnn_cell_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
simple_rnn_cell_30/dropout/Cast?
 simple_rnn_cell_30/dropout/Mul_1Mul"simple_rnn_cell_30/dropout/Mul:z:0#simple_rnn_cell_30/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 simple_rnn_cell_30/dropout/Mul_1?
$simple_rnn_cell_30/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2&
$simple_rnn_cell_30/ones_like_1/Shape?
$simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$simple_rnn_cell_30/ones_like_1/Const?
simple_rnn_cell_30/ones_like_1Fill-simple_rnn_cell_30/ones_like_1/Shape:output:0-simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2 
simple_rnn_cell_30/ones_like_1?
"simple_rnn_cell_30/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"simple_rnn_cell_30/dropout_1/Const?
 simple_rnn_cell_30/dropout_1/MulMul'simple_rnn_cell_30/ones_like_1:output:0+simple_rnn_cell_30/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2"
 simple_rnn_cell_30/dropout_1/Mul?
"simple_rnn_cell_30/dropout_1/ShapeShape'simple_rnn_cell_30/ones_like_1:output:0*
T0*
_output_shapes
:2$
"simple_rnn_cell_30/dropout_1/Shape?
9simple_rnn_cell_30/dropout_1/random_uniform/RandomUniformRandomUniform+simple_rnn_cell_30/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2???2;
9simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform?
+simple_rnn_cell_30/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+simple_rnn_cell_30/dropout_1/GreaterEqual/y?
)simple_rnn_cell_30/dropout_1/GreaterEqualGreaterEqualBsimple_rnn_cell_30/dropout_1/random_uniform/RandomUniform:output:04simple_rnn_cell_30/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2+
)simple_rnn_cell_30/dropout_1/GreaterEqual?
!simple_rnn_cell_30/dropout_1/CastCast-simple_rnn_cell_30/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2#
!simple_rnn_cell_30/dropout_1/Cast?
"simple_rnn_cell_30/dropout_1/Mul_1Mul$simple_rnn_cell_30/dropout_1/Mul:z:0%simple_rnn_cell_30/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2$
"simple_rnn_cell_30/dropout_1/Mul_1?
simple_rnn_cell_30/mulMulstrided_slice_2:output:0$simple_rnn_cell_30/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/mul?
(simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_30_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(simple_rnn_cell_30/MatMul/ReadVariableOp?
simple_rnn_cell_30/MatMulMatMulsimple_rnn_cell_30/mul:z:00simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul?
)simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)simple_rnn_cell_30/BiasAdd/ReadVariableOp?
simple_rnn_cell_30/BiasAddBiasAdd#simple_rnn_cell_30/MatMul:product:01simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/BiasAdd?
simple_rnn_cell_30/mul_1Mulzeros:output:0&simple_rnn_cell_30/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/mul_1?
*simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_30_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02,
*simple_rnn_cell_30/MatMul_1/ReadVariableOp?
simple_rnn_cell_30/MatMul_1MatMulsimple_rnn_cell_30/mul_1:z:02simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul_1?
simple_rnn_cell_30/addAddV2#simple_rnn_cell_30/BiasAdd:output:0%simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/add?
simple_rnn_cell_30/TanhTanhsimple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_30_matmul_readvariableop_resource2simple_rnn_cell_30_biasadd_readvariableop_resource3simple_rnn_cell_30_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_78203*
condR
while_cond_78202*8
output_shapes'
%: : : : :?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_30/BiasAdd/ReadVariableOp)^simple_rnn_cell_30/MatMul/ReadVariableOp+^simple_rnn_cell_30/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::2V
)simple_rnn_cell_30/BiasAdd/ReadVariableOp)simple_rnn_cell_30/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_30/MatMul/ReadVariableOp(simple_rnn_cell_30/MatMul/ReadVariableOp2X
*simple_rnn_cell_30/MatMul_1/ReadVariableOp*simple_rnn_cell_30/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?[
?
while_body_79343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_30_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_30_matmul_readvariableop_resource<
8while_simple_rnn_cell_30_biasadd_readvariableop_resource=
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource??/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_30/MatMul/ReadVariableOp?0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/simple_rnn_cell_30/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(while/simple_rnn_cell_30/ones_like/Shape?
(while/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(while/simple_rnn_cell_30/ones_like/Const?
"while/simple_rnn_cell_30/ones_likeFill1while/simple_rnn_cell_30/ones_like/Shape:output:01while/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"while/simple_rnn_cell_30/ones_like?
&while/simple_rnn_cell_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&while/simple_rnn_cell_30/dropout/Const?
$while/simple_rnn_cell_30/dropout/MulMul+while/simple_rnn_cell_30/ones_like:output:0/while/simple_rnn_cell_30/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$while/simple_rnn_cell_30/dropout/Mul?
&while/simple_rnn_cell_30/dropout/ShapeShape+while/simple_rnn_cell_30/ones_like:output:0*
T0*
_output_shapes
:2(
&while/simple_rnn_cell_30/dropout/Shape?
=while/simple_rnn_cell_30/dropout/random_uniform/RandomUniformRandomUniform/while/simple_rnn_cell_30/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2?
=while/simple_rnn_cell_30/dropout/random_uniform/RandomUniform?
/while/simple_rnn_cell_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>21
/while/simple_rnn_cell_30/dropout/GreaterEqual/y?
-while/simple_rnn_cell_30/dropout/GreaterEqualGreaterEqualFwhile/simple_rnn_cell_30/dropout/random_uniform/RandomUniform:output:08while/simple_rnn_cell_30/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2/
-while/simple_rnn_cell_30/dropout/GreaterEqual?
%while/simple_rnn_cell_30/dropout/CastCast1while/simple_rnn_cell_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2'
%while/simple_rnn_cell_30/dropout/Cast?
&while/simple_rnn_cell_30/dropout/Mul_1Mul(while/simple_rnn_cell_30/dropout/Mul:z:0)while/simple_rnn_cell_30/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2(
&while/simple_rnn_cell_30/dropout/Mul_1?
*while/simple_rnn_cell_30/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2,
*while/simple_rnn_cell_30/ones_like_1/Shape?
*while/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*while/simple_rnn_cell_30/ones_like_1/Const?
$while/simple_rnn_cell_30/ones_like_1Fill3while/simple_rnn_cell_30/ones_like_1/Shape:output:03while/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2&
$while/simple_rnn_cell_30/ones_like_1?
(while/simple_rnn_cell_30/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(while/simple_rnn_cell_30/dropout_1/Const?
&while/simple_rnn_cell_30/dropout_1/MulMul-while/simple_rnn_cell_30/ones_like_1:output:01while/simple_rnn_cell_30/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2(
&while/simple_rnn_cell_30/dropout_1/Mul?
(while/simple_rnn_cell_30/dropout_1/ShapeShape-while/simple_rnn_cell_30/ones_like_1:output:0*
T0*
_output_shapes
:2*
(while/simple_rnn_cell_30/dropout_1/Shape?
?while/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniformRandomUniform1while/simple_rnn_cell_30/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2???2A
?while/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform?
1while/simple_rnn_cell_30/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>23
1while/simple_rnn_cell_30/dropout_1/GreaterEqual/y?
/while/simple_rnn_cell_30/dropout_1/GreaterEqualGreaterEqualHwhile/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform:output:0:while/simple_rnn_cell_30/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????21
/while/simple_rnn_cell_30/dropout_1/GreaterEqual?
'while/simple_rnn_cell_30/dropout_1/CastCast3while/simple_rnn_cell_30/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2)
'while/simple_rnn_cell_30/dropout_1/Cast?
(while/simple_rnn_cell_30/dropout_1/Mul_1Mul*while/simple_rnn_cell_30/dropout_1/Mul:z:0+while/simple_rnn_cell_30/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2*
(while/simple_rnn_cell_30/dropout_1/Mul_1?
while/simple_rnn_cell_30/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/simple_rnn_cell_30/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/simple_rnn_cell_30/mul?
.while/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_30_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype020
.while/simple_rnn_cell_30/MatMul/ReadVariableOp?
while/simple_rnn_cell_30/MatMulMatMul while/simple_rnn_cell_30/mul:z:06while/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
while/simple_rnn_cell_30/MatMul?
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype021
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_30/BiasAddBiasAdd)while/simple_rnn_cell_30/MatMul:product:07while/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 while/simple_rnn_cell_30/BiasAdd?
while/simple_rnn_cell_30/mul_1Mulwhile_placeholder_2,while/simple_rnn_cell_30/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????2 
while/simple_rnn_cell_30/mul_1?
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype022
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_30/MatMul_1MatMul"while/simple_rnn_cell_30/mul_1:z:08while/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!while/simple_rnn_cell_30/MatMul_1?
while/simple_rnn_cell_30/addAddV2)while/simple_rnn_cell_30/BiasAdd:output:0+while/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/add?
while/simple_rnn_cell_30/TanhTanh while/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_30/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_30/Tanh:y:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_30_biasadd_readvariableop_resource:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_30_matmul_readvariableop_resource9while_simple_rnn_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????: : :::2b
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_30/MatMul/ReadVariableOp.while/simple_rnn_cell_30/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_30_layer_call_and_return_conditional_losses_78498
embedding_30_input
embedding_30_78482
simple_rnn_30_78485
simple_rnn_30_78487
simple_rnn_30_78489
dense_30_78492
dense_30_78494
identity?? dense_30/StatefulPartitionedCall?$embedding_30/StatefulPartitionedCall?%simple_rnn_30/StatefulPartitionedCall?
$embedding_30/StatefulPartitionedCallStatefulPartitionedCallembedding_30_inputembedding_30_78482*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_30_layer_call_and_return_conditional_losses_781222&
$embedding_30/StatefulPartitionedCall?
%simple_rnn_30/StatefulPartitionedCallStatefulPartitionedCall-embedding_30/StatefulPartitionedCall:output:0simple_rnn_30_78485simple_rnn_30_78487simple_rnn_30_78489*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_784212'
%simple_rnn_30/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_30/StatefulPartitionedCall:output:0dense_30_78492dense_30_78494*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_30_layer_call_and_return_conditional_losses_784622"
 dense_30/StatefulPartitionedCall?
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall%^embedding_30/StatefulPartitionedCall&^simple_rnn_30/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2L
$embedding_30/StatefulPartitionedCall$embedding_30/StatefulPartitionedCall2N
%simple_rnn_30/StatefulPartitionedCall%simple_rnn_30/StatefulPartitionedCall:\ X
(
_output_shapes
:??????????
,
_user_specified_nameembedding_30_input
?m
?
!__inference__traced_restore_79880
file_prefix,
(assignvariableop_embedding_30_embeddings&
"assignvariableop_1_dense_30_kernel$
 assignvariableop_2_dense_30_bias 
assignvariableop_3_adam_iter"
assignvariableop_4_adam_beta_1"
assignvariableop_5_adam_beta_2!
assignvariableop_6_adam_decay)
%assignvariableop_7_adam_learning_rate>
:assignvariableop_8_simple_rnn_30_simple_rnn_cell_30_kernelH
Dassignvariableop_9_simple_rnn_30_simple_rnn_cell_30_recurrent_kernel=
9assignvariableop_10_simple_rnn_30_simple_rnn_cell_30_bias
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_1.
*assignvariableop_15_adam_dense_30_kernel_m,
(assignvariableop_16_adam_dense_30_bias_mF
Bassignvariableop_17_adam_simple_rnn_30_simple_rnn_cell_30_kernel_mP
Lassignvariableop_18_adam_simple_rnn_30_simple_rnn_cell_30_recurrent_kernel_mD
@assignvariableop_19_adam_simple_rnn_30_simple_rnn_cell_30_bias_m.
*assignvariableop_20_adam_dense_30_kernel_v,
(assignvariableop_21_adam_dense_30_bias_vF
Bassignvariableop_22_adam_simple_rnn_30_simple_rnn_cell_30_kernel_vP
Lassignvariableop_23_adam_simple_rnn_30_simple_rnn_cell_30_recurrent_kernel_vD
@assignvariableop_24_adam_simple_rnn_30_simple_rnn_cell_30_bias_v
identity_26??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp(assignvariableop_embedding_30_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_30_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_30_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_simple_rnn_30_simple_rnn_cell_30_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpDassignvariableop_9_simple_rnn_30_simple_rnn_cell_30_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_simple_rnn_30_simple_rnn_cell_30_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_30_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_30_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpBassignvariableop_17_adam_simple_rnn_30_simple_rnn_cell_30_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpLassignvariableop_18_adam_simple_rnn_30_simple_rnn_cell_30_recurrent_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_simple_rnn_30_simple_rnn_cell_30_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_30_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_30_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpBassignvariableop_22_adam_simple_rnn_30_simple_rnn_cell_30_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpLassignvariableop_23_adam_simple_rnn_30_simple_rnn_cell_30_recurrent_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_simple_rnn_30_simple_rnn_cell_30_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_249
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_25?
Identity_26IdentityIdentity_25:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_26"#
identity_26Identity_26:output:0*y
_input_shapesh
f: :::::::::::::::::::::::::2$
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
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
while_cond_78035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_78035___redundant_placeholder03
/while_while_cond_78035___redundant_placeholder13
/while_while_cond_78035___redundant_placeholder23
/while_while_cond_78035___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
-__inference_simple_rnn_30_layer_call_fn_79273

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_784212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
H__inference_sequential_30_layer_call_and_return_conditional_losses_78479
embedding_30_input
embedding_30_78131
simple_rnn_30_78444
simple_rnn_30_78446
simple_rnn_30_78448
dense_30_78473
dense_30_78475
identity?? dense_30/StatefulPartitionedCall?$embedding_30/StatefulPartitionedCall?%simple_rnn_30/StatefulPartitionedCall?
$embedding_30/StatefulPartitionedCallStatefulPartitionedCallembedding_30_inputembedding_30_78131*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_30_layer_call_and_return_conditional_losses_781222&
$embedding_30/StatefulPartitionedCall?
%simple_rnn_30/StatefulPartitionedCallStatefulPartitionedCall-embedding_30/StatefulPartitionedCall:output:0simple_rnn_30_78444simple_rnn_30_78446simple_rnn_30_78448*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_782932'
%simple_rnn_30/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_30/StatefulPartitionedCall:output:0dense_30_78473dense_30_78475*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_30_layer_call_and_return_conditional_losses_784622"
 dense_30/StatefulPartitionedCall?
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall%^embedding_30/StatefulPartitionedCall&^simple_rnn_30/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2L
$embedding_30/StatefulPartitionedCall$embedding_30/StatefulPartitionedCall2N
%simple_rnn_30/StatefulPartitionedCall%simple_rnn_30/StatefulPartitionedCall:\ X
(
_output_shapes
:??????????
,
_user_specified_nameembedding_30_input
?

?
simple_rnn_30_while_cond_786738
4simple_rnn_30_while_simple_rnn_30_while_loop_counter>
:simple_rnn_30_while_simple_rnn_30_while_maximum_iterations#
simple_rnn_30_while_placeholder%
!simple_rnn_30_while_placeholder_1%
!simple_rnn_30_while_placeholder_2:
6simple_rnn_30_while_less_simple_rnn_30_strided_slice_1O
Ksimple_rnn_30_while_simple_rnn_30_while_cond_78673___redundant_placeholder0O
Ksimple_rnn_30_while_simple_rnn_30_while_cond_78673___redundant_placeholder1O
Ksimple_rnn_30_while_simple_rnn_30_while_cond_78673___redundant_placeholder2O
Ksimple_rnn_30_while_simple_rnn_30_while_cond_78673___redundant_placeholder3 
simple_rnn_30_while_identity
?
simple_rnn_30/while/LessLesssimple_rnn_30_while_placeholder6simple_rnn_30_while_less_simple_rnn_30_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_30/while/Less?
simple_rnn_30/while/IdentityIdentitysimple_rnn_30/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_30/while/Identity"E
simple_rnn_30_while_identity%simple_rnn_30/while/Identity:output:0*@
_input_shapes/
-: : : : :?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?#
?
while_body_78036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_30_78058_0$
 while_simple_rnn_cell_30_78060_0$
 while_simple_rnn_cell_30_78062_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_30_78058"
while_simple_rnn_cell_30_78060"
while_simple_rnn_cell_30_78062??0while/simple_rnn_cell_30/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
0while/simple_rnn_cell_30/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_30_78058_0 while_simple_rnn_cell_30_78060_0 while_simple_rnn_cell_30_78062_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_7766222
0while/simple_rnn_cell_30/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_30/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_30/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_30/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_30/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_30/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity9while/simple_rnn_cell_30/StatefulPartitionedCall:output:11^while/simple_rnn_cell_30/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_30_78058 while_simple_rnn_cell_30_78058_0"B
while_simple_rnn_cell_30_78060 while_simple_rnn_cell_30_78060_0"B
while_simple_rnn_cell_30_78062 while_simple_rnn_cell_30_78062_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????: : :::2d
0while/simple_rnn_cell_30/StatefulPartitionedCall0while/simple_rnn_cell_30/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?s
?
simple_rnn_30_while_body_786748
4simple_rnn_30_while_simple_rnn_30_while_loop_counter>
:simple_rnn_30_while_simple_rnn_30_while_maximum_iterations#
simple_rnn_30_while_placeholder%
!simple_rnn_30_while_placeholder_1%
!simple_rnn_30_while_placeholder_27
3simple_rnn_30_while_simple_rnn_30_strided_slice_1_0s
osimple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_30_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resource_0L
Hsimple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resource_0M
Isimple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0 
simple_rnn_30_while_identity"
simple_rnn_30_while_identity_1"
simple_rnn_30_while_identity_2"
simple_rnn_30_while_identity_3"
simple_rnn_30_while_identity_45
1simple_rnn_30_while_simple_rnn_30_strided_slice_1q
msimple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_30_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resourceJ
Fsimple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resourceK
Gsimple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource??=simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?<simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?>simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
Esimple_rnn_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2G
Esimple_rnn_30/while/TensorArrayV2Read/TensorListGetItem/element_shape?
7simple_rnn_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_30_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_30_while_placeholderNsimple_rnn_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype029
7simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem?
6simple_rnn_30/while/simple_rnn_cell_30/ones_like/ShapeShape>simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:28
6simple_rnn_30/while/simple_rnn_cell_30/ones_like/Shape?
6simple_rnn_30/while/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6simple_rnn_30/while/simple_rnn_cell_30/ones_like/Const?
0simple_rnn_30/while/simple_rnn_cell_30/ones_likeFill?simple_rnn_30/while/simple_rnn_cell_30/ones_like/Shape:output:0?simple_rnn_30/while/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 22
0simple_rnn_30/while/simple_rnn_cell_30/ones_like?
4simple_rnn_30/while/simple_rnn_cell_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4simple_rnn_30/while/simple_rnn_cell_30/dropout/Const?
2simple_rnn_30/while/simple_rnn_cell_30/dropout/MulMul9simple_rnn_30/while/simple_rnn_cell_30/ones_like:output:0=simple_rnn_30/while/simple_rnn_cell_30/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 24
2simple_rnn_30/while/simple_rnn_cell_30/dropout/Mul?
4simple_rnn_30/while/simple_rnn_cell_30/dropout/ShapeShape9simple_rnn_30/while/simple_rnn_cell_30/ones_like:output:0*
T0*
_output_shapes
:26
4simple_rnn_30/while/simple_rnn_cell_30/dropout/Shape?
Ksimple_rnn_30/while/simple_rnn_cell_30/dropout/random_uniform/RandomUniformRandomUniform=simple_rnn_30/while/simple_rnn_cell_30/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??92M
Ksimple_rnn_30/while/simple_rnn_cell_30/dropout/random_uniform/RandomUniform?
=simple_rnn_30/while/simple_rnn_cell_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2?
=simple_rnn_30/while/simple_rnn_cell_30/dropout/GreaterEqual/y?
;simple_rnn_30/while/simple_rnn_cell_30/dropout/GreaterEqualGreaterEqualTsimple_rnn_30/while/simple_rnn_cell_30/dropout/random_uniform/RandomUniform:output:0Fsimple_rnn_30/while/simple_rnn_cell_30/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2=
;simple_rnn_30/while/simple_rnn_cell_30/dropout/GreaterEqual?
3simple_rnn_30/while/simple_rnn_cell_30/dropout/CastCast?simple_rnn_30/while/simple_rnn_cell_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 25
3simple_rnn_30/while/simple_rnn_cell_30/dropout/Cast?
4simple_rnn_30/while/simple_rnn_cell_30/dropout/Mul_1Mul6simple_rnn_30/while/simple_rnn_cell_30/dropout/Mul:z:07simple_rnn_30/while/simple_rnn_cell_30/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 26
4simple_rnn_30/while/simple_rnn_cell_30/dropout/Mul_1?
8simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/ShapeShape!simple_rnn_30_while_placeholder_2*
T0*
_output_shapes
:2:
8simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Shape?
8simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Const?
2simple_rnn_30/while/simple_rnn_cell_30/ones_like_1FillAsimple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Shape:output:0Asimple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????24
2simple_rnn_30/while/simple_rnn_cell_30/ones_like_1?
6simple_rnn_30/while/simple_rnn_cell_30/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6simple_rnn_30/while/simple_rnn_cell_30/dropout_1/Const?
4simple_rnn_30/while/simple_rnn_cell_30/dropout_1/MulMul;simple_rnn_30/while/simple_rnn_cell_30/ones_like_1:output:0?simple_rnn_30/while/simple_rnn_cell_30/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????26
4simple_rnn_30/while/simple_rnn_cell_30/dropout_1/Mul?
6simple_rnn_30/while/simple_rnn_cell_30/dropout_1/ShapeShape;simple_rnn_30/while/simple_rnn_cell_30/ones_like_1:output:0*
T0*
_output_shapes
:28
6simple_rnn_30/while/simple_rnn_cell_30/dropout_1/Shape?
Msimple_rnn_30/while/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniformRandomUniform?simple_rnn_30/while/simple_rnn_cell_30/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2???2O
Msimple_rnn_30/while/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform?
?simple_rnn_30/while/simple_rnn_cell_30/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2A
?simple_rnn_30/while/simple_rnn_cell_30/dropout_1/GreaterEqual/y?
=simple_rnn_30/while/simple_rnn_cell_30/dropout_1/GreaterEqualGreaterEqualVsimple_rnn_30/while/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform:output:0Hsimple_rnn_30/while/simple_rnn_cell_30/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2?
=simple_rnn_30/while/simple_rnn_cell_30/dropout_1/GreaterEqual?
5simple_rnn_30/while/simple_rnn_cell_30/dropout_1/CastCastAsimple_rnn_30/while/simple_rnn_cell_30/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????27
5simple_rnn_30/while/simple_rnn_cell_30/dropout_1/Cast?
6simple_rnn_30/while/simple_rnn_cell_30/dropout_1/Mul_1Mul8simple_rnn_30/while/simple_rnn_cell_30/dropout_1/Mul:z:09simple_rnn_30/while/simple_rnn_cell_30/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????28
6simple_rnn_30/while/simple_rnn_cell_30/dropout_1/Mul_1?
*simple_rnn_30/while/simple_rnn_cell_30/mulMul>simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem:item:08simple_rnn_30/while/simple_rnn_cell_30/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2,
*simple_rnn_30/while/simple_rnn_cell_30/mul?
<simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02>
<simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?
-simple_rnn_30/while/simple_rnn_cell_30/MatMulMatMul.simple_rnn_30/while/simple_rnn_cell_30/mul:z:0Dsimple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2/
-simple_rnn_30/while/simple_rnn_cell_30/MatMul?
=simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02?
=simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
.simple_rnn_30/while/simple_rnn_cell_30/BiasAddBiasAdd7simple_rnn_30/while/simple_rnn_cell_30/MatMul:product:0Esimple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????20
.simple_rnn_30/while/simple_rnn_cell_30/BiasAdd?
,simple_rnn_30/while/simple_rnn_cell_30/mul_1Mul!simple_rnn_30_while_placeholder_2:simple_rnn_30/while/simple_rnn_cell_30/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????2.
,simple_rnn_30/while/simple_rnn_cell_30/mul_1?
>simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02@
>simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1MatMul0simple_rnn_30/while/simple_rnn_cell_30/mul_1:z:0Fsimple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????21
/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1?
*simple_rnn_30/while/simple_rnn_cell_30/addAddV27simple_rnn_30/while/simple_rnn_cell_30/BiasAdd:output:09simple_rnn_30/while/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2,
*simple_rnn_30/while/simple_rnn_cell_30/add?
+simple_rnn_30/while/simple_rnn_cell_30/TanhTanh.simple_rnn_30/while/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2-
+simple_rnn_30/while/simple_rnn_cell_30/Tanh?
8simple_rnn_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_30_while_placeholder_1simple_rnn_30_while_placeholder/simple_rnn_30/while/simple_rnn_cell_30/Tanh:y:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_30/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_30/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_30/while/add/y?
simple_rnn_30/while/addAddV2simple_rnn_30_while_placeholder"simple_rnn_30/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_30/while/add|
simple_rnn_30/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_30/while/add_1/y?
simple_rnn_30/while/add_1AddV24simple_rnn_30_while_simple_rnn_30_while_loop_counter$simple_rnn_30/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_30/while/add_1?
simple_rnn_30/while/IdentityIdentitysimple_rnn_30/while/add_1:z:0>^simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=^simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?^simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_30/while/Identity?
simple_rnn_30/while/Identity_1Identity:simple_rnn_30_while_simple_rnn_30_while_maximum_iterations>^simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=^simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?^simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_30/while/Identity_1?
simple_rnn_30/while/Identity_2Identitysimple_rnn_30/while/add:z:0>^simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=^simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?^simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_30/while/Identity_2?
simple_rnn_30/while/Identity_3IdentityHsimple_rnn_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=^simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?^simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_30/while/Identity_3?
simple_rnn_30/while/Identity_4Identity/simple_rnn_30/while/simple_rnn_cell_30/Tanh:y:0>^simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=^simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?^simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2 
simple_rnn_30/while/Identity_4"E
simple_rnn_30_while_identity%simple_rnn_30/while/Identity:output:0"I
simple_rnn_30_while_identity_1'simple_rnn_30/while/Identity_1:output:0"I
simple_rnn_30_while_identity_2'simple_rnn_30/while/Identity_2:output:0"I
simple_rnn_30_while_identity_3'simple_rnn_30/while/Identity_3:output:0"I
simple_rnn_30_while_identity_4'simple_rnn_30/while/Identity_4:output:0"h
1simple_rnn_30_while_simple_rnn_30_strided_slice_13simple_rnn_30_while_simple_rnn_30_strided_slice_1_0"?
Fsimple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resourceHsimple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resource_0"?
Gsimple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resourceIsimple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0"?
Esimple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resourceGsimple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resource_0"?
msimple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_30_tensorarrayunstack_tensorlistfromtensorosimple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_30_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????: : :::2~
=simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp2|
<simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp<simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp2?
>simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp>simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?[
?
while_body_78203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_30_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_30_matmul_readvariableop_resource<
8while_simple_rnn_cell_30_biasadd_readvariableop_resource=
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource??/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_30/MatMul/ReadVariableOp?0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/simple_rnn_cell_30/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(while/simple_rnn_cell_30/ones_like/Shape?
(while/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(while/simple_rnn_cell_30/ones_like/Const?
"while/simple_rnn_cell_30/ones_likeFill1while/simple_rnn_cell_30/ones_like/Shape:output:01while/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"while/simple_rnn_cell_30/ones_like?
&while/simple_rnn_cell_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&while/simple_rnn_cell_30/dropout/Const?
$while/simple_rnn_cell_30/dropout/MulMul+while/simple_rnn_cell_30/ones_like:output:0/while/simple_rnn_cell_30/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$while/simple_rnn_cell_30/dropout/Mul?
&while/simple_rnn_cell_30/dropout/ShapeShape+while/simple_rnn_cell_30/ones_like:output:0*
T0*
_output_shapes
:2(
&while/simple_rnn_cell_30/dropout/Shape?
=while/simple_rnn_cell_30/dropout/random_uniform/RandomUniformRandomUniform/while/simple_rnn_cell_30/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2?
=while/simple_rnn_cell_30/dropout/random_uniform/RandomUniform?
/while/simple_rnn_cell_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>21
/while/simple_rnn_cell_30/dropout/GreaterEqual/y?
-while/simple_rnn_cell_30/dropout/GreaterEqualGreaterEqualFwhile/simple_rnn_cell_30/dropout/random_uniform/RandomUniform:output:08while/simple_rnn_cell_30/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2/
-while/simple_rnn_cell_30/dropout/GreaterEqual?
%while/simple_rnn_cell_30/dropout/CastCast1while/simple_rnn_cell_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2'
%while/simple_rnn_cell_30/dropout/Cast?
&while/simple_rnn_cell_30/dropout/Mul_1Mul(while/simple_rnn_cell_30/dropout/Mul:z:0)while/simple_rnn_cell_30/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2(
&while/simple_rnn_cell_30/dropout/Mul_1?
*while/simple_rnn_cell_30/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2,
*while/simple_rnn_cell_30/ones_like_1/Shape?
*while/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*while/simple_rnn_cell_30/ones_like_1/Const?
$while/simple_rnn_cell_30/ones_like_1Fill3while/simple_rnn_cell_30/ones_like_1/Shape:output:03while/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2&
$while/simple_rnn_cell_30/ones_like_1?
(while/simple_rnn_cell_30/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(while/simple_rnn_cell_30/dropout_1/Const?
&while/simple_rnn_cell_30/dropout_1/MulMul-while/simple_rnn_cell_30/ones_like_1:output:01while/simple_rnn_cell_30/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2(
&while/simple_rnn_cell_30/dropout_1/Mul?
(while/simple_rnn_cell_30/dropout_1/ShapeShape-while/simple_rnn_cell_30/ones_like_1:output:0*
T0*
_output_shapes
:2*
(while/simple_rnn_cell_30/dropout_1/Shape?
?while/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniformRandomUniform1while/simple_rnn_cell_30/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2ֺ?2A
?while/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform?
1while/simple_rnn_cell_30/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>23
1while/simple_rnn_cell_30/dropout_1/GreaterEqual/y?
/while/simple_rnn_cell_30/dropout_1/GreaterEqualGreaterEqualHwhile/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform:output:0:while/simple_rnn_cell_30/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????21
/while/simple_rnn_cell_30/dropout_1/GreaterEqual?
'while/simple_rnn_cell_30/dropout_1/CastCast3while/simple_rnn_cell_30/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2)
'while/simple_rnn_cell_30/dropout_1/Cast?
(while/simple_rnn_cell_30/dropout_1/Mul_1Mul*while/simple_rnn_cell_30/dropout_1/Mul:z:0+while/simple_rnn_cell_30/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2*
(while/simple_rnn_cell_30/dropout_1/Mul_1?
while/simple_rnn_cell_30/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/simple_rnn_cell_30/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/simple_rnn_cell_30/mul?
.while/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_30_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype020
.while/simple_rnn_cell_30/MatMul/ReadVariableOp?
while/simple_rnn_cell_30/MatMulMatMul while/simple_rnn_cell_30/mul:z:06while/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
while/simple_rnn_cell_30/MatMul?
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype021
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_30/BiasAddBiasAdd)while/simple_rnn_cell_30/MatMul:product:07while/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 while/simple_rnn_cell_30/BiasAdd?
while/simple_rnn_cell_30/mul_1Mulwhile_placeholder_2,while/simple_rnn_cell_30/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????2 
while/simple_rnn_cell_30/mul_1?
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype022
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_30/MatMul_1MatMul"while/simple_rnn_cell_30/mul_1:z:08while/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!while/simple_rnn_cell_30/MatMul_1?
while/simple_rnn_cell_30/addAddV2)while/simple_rnn_cell_30/BiasAdd:output:0+while/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/add?
while/simple_rnn_cell_30/TanhTanh while/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_30/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_30/Tanh:y:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_30_biasadd_readvariableop_resource:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_30_matmul_readvariableop_resource9while_simple_rnn_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????: : :::2b
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_30/MatMul/ReadVariableOp.while/simple_rnn_cell_30/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?	
?
G__inference_embedding_30_layer_call_and_return_conditional_losses_78956

inputs
embedding_lookup_78950
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_78950Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/78950*,
_output_shapes
:?????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/78950*,
_output_shapes
:?????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
simple_rnn_30_while_cond_788308
4simple_rnn_30_while_simple_rnn_30_while_loop_counter>
:simple_rnn_30_while_simple_rnn_30_while_maximum_iterations#
simple_rnn_30_while_placeholder%
!simple_rnn_30_while_placeholder_1%
!simple_rnn_30_while_placeholder_2:
6simple_rnn_30_while_less_simple_rnn_30_strided_slice_1O
Ksimple_rnn_30_while_simple_rnn_30_while_cond_78830___redundant_placeholder0O
Ksimple_rnn_30_while_simple_rnn_30_while_cond_78830___redundant_placeholder1O
Ksimple_rnn_30_while_simple_rnn_30_while_cond_78830___redundant_placeholder2O
Ksimple_rnn_30_while_simple_rnn_30_while_cond_78830___redundant_placeholder3 
simple_rnn_30_while_identity
?
simple_rnn_30/while/LessLesssimple_rnn_30_while_placeholder6simple_rnn_30_while_less_simple_rnn_30_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_30/while/Less?
simple_rnn_30/while/IdentityIdentitysimple_rnn_30/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_30/while/Identity"E
simple_rnn_30_while_identity%simple_rnn_30/while/Identity:output:0*@
_input_shapes/
-: : : : :?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
-__inference_sequential_30_layer_call_fn_78535
embedding_30_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_30_layer_call_and_return_conditional_losses_785202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
(
_output_shapes
:??????????
,
_user_specified_nameembedding_30_input
?
?
while_cond_79342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_79342___redundant_placeholder03
/while_while_cond_79342___redundant_placeholder13
/while_while_cond_79342___redundant_placeholder23
/while_while_cond_79342___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
r
,__inference_embedding_30_layer_call_fn_78963

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_30_layer_call_and_return_conditional_losses_781222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?<
?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_78099

inputs
simple_rnn_cell_30_78024
simple_rnn_cell_30_78026
simple_rnn_cell_30_78028
identity??*simple_rnn_cell_30/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
*simple_rnn_cell_30/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_30_78024simple_rnn_cell_30_78026simple_rnn_cell_30_78028*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_776622,
*simple_rnn_cell_30/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_30_78024simple_rnn_cell_30_78026simple_rnn_cell_30_78028*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_78036*
condR
while_cond_78035*8
output_shapes'
%: : : : :?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1?
IdentityIdentitystrided_slice_3:output:0+^simple_rnn_cell_30/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::2X
*simple_rnn_cell_30/StatefulPartitionedCall*simple_rnn_cell_30/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
,sequential_30_simple_rnn_30_while_cond_77482T
Psequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_while_loop_counterZ
Vsequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_while_maximum_iterations1
-sequential_30_simple_rnn_30_while_placeholder3
/sequential_30_simple_rnn_30_while_placeholder_13
/sequential_30_simple_rnn_30_while_placeholder_2V
Rsequential_30_simple_rnn_30_while_less_sequential_30_simple_rnn_30_strided_slice_1k
gsequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_while_cond_77482___redundant_placeholder0k
gsequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_while_cond_77482___redundant_placeholder1k
gsequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_while_cond_77482___redundant_placeholder2k
gsequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_while_cond_77482___redundant_placeholder3.
*sequential_30_simple_rnn_30_while_identity
?
&sequential_30/simple_rnn_30/while/LessLess-sequential_30_simple_rnn_30_while_placeholderRsequential_30_simple_rnn_30_while_less_sequential_30_simple_rnn_30_strided_slice_1*
T0*
_output_shapes
: 2(
&sequential_30/simple_rnn_30/while/Less?
*sequential_30/simple_rnn_30/while/IdentityIdentity*sequential_30/simple_rnn_30/while/Less:z:0*
T0
*
_output_shapes
: 2,
*sequential_30/simple_rnn_30/while/Identity"a
*sequential_30_simple_rnn_30_while_identity3sequential_30/simple_rnn_30/while/Identity:output:0*@
_input_shapes/
-: : : : :?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_sequential_30_layer_call_and_return_conditional_losses_78556

inputs
embedding_30_78540
simple_rnn_30_78543
simple_rnn_30_78545
simple_rnn_30_78547
dense_30_78550
dense_30_78552
identity?? dense_30/StatefulPartitionedCall?$embedding_30/StatefulPartitionedCall?%simple_rnn_30/StatefulPartitionedCall?
$embedding_30/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_30_78540*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_30_layer_call_and_return_conditional_losses_781222&
$embedding_30/StatefulPartitionedCall?
%simple_rnn_30/StatefulPartitionedCallStatefulPartitionedCall-embedding_30/StatefulPartitionedCall:output:0simple_rnn_30_78543simple_rnn_30_78545simple_rnn_30_78547*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_784212'
%simple_rnn_30/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_30/StatefulPartitionedCall:output:0dense_30_78550dense_30_78552*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_30_layer_call_and_return_conditional_losses_784622"
 dense_30/StatefulPartitionedCall?
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall%^embedding_30/StatefulPartitionedCall&^simple_rnn_30/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2L
$embedding_30/StatefulPartitionedCall$embedding_30/StatefulPartitionedCall2N
%simple_rnn_30/StatefulPartitionedCall%simple_rnn_30/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_30_layer_call_fn_78571
embedding_30_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_30_layer_call_and_return_conditional_losses_785562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
(
_output_shapes
:??????????
,
_user_specified_nameembedding_30_input
?l
?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79433
inputs_05
1simple_rnn_cell_30_matmul_readvariableop_resource6
2simple_rnn_cell_30_biasadd_readvariableop_resource7
3simple_rnn_cell_30_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_30/BiasAdd/ReadVariableOp?(simple_rnn_cell_30/MatMul/ReadVariableOp?*simple_rnn_cell_30/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
"simple_rnn_cell_30/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2$
"simple_rnn_cell_30/ones_like/Shape?
"simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"simple_rnn_cell_30/ones_like/Const?
simple_rnn_cell_30/ones_likeFill+simple_rnn_cell_30/ones_like/Shape:output:0+simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/ones_like?
 simple_rnn_cell_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 simple_rnn_cell_30/dropout/Const?
simple_rnn_cell_30/dropout/MulMul%simple_rnn_cell_30/ones_like:output:0)simple_rnn_cell_30/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
simple_rnn_cell_30/dropout/Mul?
 simple_rnn_cell_30/dropout/ShapeShape%simple_rnn_cell_30/ones_like:output:0*
T0*
_output_shapes
:2"
 simple_rnn_cell_30/dropout/Shape?
7simple_rnn_cell_30/dropout/random_uniform/RandomUniformRandomUniform)simple_rnn_cell_30/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???29
7simple_rnn_cell_30/dropout/random_uniform/RandomUniform?
)simple_rnn_cell_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2+
)simple_rnn_cell_30/dropout/GreaterEqual/y?
'simple_rnn_cell_30/dropout/GreaterEqualGreaterEqual@simple_rnn_cell_30/dropout/random_uniform/RandomUniform:output:02simple_rnn_cell_30/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'simple_rnn_cell_30/dropout/GreaterEqual?
simple_rnn_cell_30/dropout/CastCast+simple_rnn_cell_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
simple_rnn_cell_30/dropout/Cast?
 simple_rnn_cell_30/dropout/Mul_1Mul"simple_rnn_cell_30/dropout/Mul:z:0#simple_rnn_cell_30/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 simple_rnn_cell_30/dropout/Mul_1?
$simple_rnn_cell_30/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2&
$simple_rnn_cell_30/ones_like_1/Shape?
$simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$simple_rnn_cell_30/ones_like_1/Const?
simple_rnn_cell_30/ones_like_1Fill-simple_rnn_cell_30/ones_like_1/Shape:output:0-simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2 
simple_rnn_cell_30/ones_like_1?
"simple_rnn_cell_30/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"simple_rnn_cell_30/dropout_1/Const?
 simple_rnn_cell_30/dropout_1/MulMul'simple_rnn_cell_30/ones_like_1:output:0+simple_rnn_cell_30/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2"
 simple_rnn_cell_30/dropout_1/Mul?
"simple_rnn_cell_30/dropout_1/ShapeShape'simple_rnn_cell_30/ones_like_1:output:0*
T0*
_output_shapes
:2$
"simple_rnn_cell_30/dropout_1/Shape?
9simple_rnn_cell_30/dropout_1/random_uniform/RandomUniformRandomUniform+simple_rnn_cell_30/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2???2;
9simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform?
+simple_rnn_cell_30/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+simple_rnn_cell_30/dropout_1/GreaterEqual/y?
)simple_rnn_cell_30/dropout_1/GreaterEqualGreaterEqualBsimple_rnn_cell_30/dropout_1/random_uniform/RandomUniform:output:04simple_rnn_cell_30/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2+
)simple_rnn_cell_30/dropout_1/GreaterEqual?
!simple_rnn_cell_30/dropout_1/CastCast-simple_rnn_cell_30/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2#
!simple_rnn_cell_30/dropout_1/Cast?
"simple_rnn_cell_30/dropout_1/Mul_1Mul$simple_rnn_cell_30/dropout_1/Mul:z:0%simple_rnn_cell_30/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2$
"simple_rnn_cell_30/dropout_1/Mul_1?
simple_rnn_cell_30/mulMulstrided_slice_2:output:0$simple_rnn_cell_30/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/mul?
(simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_30_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(simple_rnn_cell_30/MatMul/ReadVariableOp?
simple_rnn_cell_30/MatMulMatMulsimple_rnn_cell_30/mul:z:00simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul?
)simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)simple_rnn_cell_30/BiasAdd/ReadVariableOp?
simple_rnn_cell_30/BiasAddBiasAdd#simple_rnn_cell_30/MatMul:product:01simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/BiasAdd?
simple_rnn_cell_30/mul_1Mulzeros:output:0&simple_rnn_cell_30/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/mul_1?
*simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_30_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02,
*simple_rnn_cell_30/MatMul_1/ReadVariableOp?
simple_rnn_cell_30/MatMul_1MatMulsimple_rnn_cell_30/mul_1:z:02simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul_1?
simple_rnn_cell_30/addAddV2#simple_rnn_cell_30/BiasAdd:output:0%simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/add?
simple_rnn_cell_30/TanhTanhsimple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_30_matmul_readvariableop_resource2simple_rnn_cell_30_biasadd_readvariableop_resource3simple_rnn_cell_30_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_79343*
condR
while_cond_79342*8
output_shapes'
%: : : : :?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_30/BiasAdd/ReadVariableOp)^simple_rnn_cell_30/MatMul/ReadVariableOp+^simple_rnn_cell_30/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::2V
)simple_rnn_cell_30/BiasAdd/ReadVariableOp)simple_rnn_cell_30/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_30/MatMul/ReadVariableOp(simple_rnn_cell_30/MatMul/ReadVariableOp2X
*simple_rnn_cell_30/MatMul_1/ReadVariableOp*simple_rnn_cell_30/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
?
while_cond_77918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_77918___redundant_placeholder03
/while_while_cond_77918___redundant_placeholder13
/while_while_cond_77918___redundant_placeholder23
/while_while_cond_77918___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_79176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_79176___redundant_placeholder03
/while_while_cond_79176___redundant_placeholder13
/while_while_cond_79176___redundant_placeholder23
/while_while_cond_79176___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?	
?
C__inference_dense_30_layer_call_and_return_conditional_losses_78462

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?)
?
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_77637

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ǂ2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2
ones_like_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/Const?
dropout_1/MulMulones_like_1:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/Mulf
dropout_1/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_1/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
mul_1Mulstatesdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????2
mul_1?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMul	mul_1:z:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:????????? :?????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
?R
?
simple_rnn_30_while_body_788318
4simple_rnn_30_while_simple_rnn_30_while_loop_counter>
:simple_rnn_30_while_simple_rnn_30_while_maximum_iterations#
simple_rnn_30_while_placeholder%
!simple_rnn_30_while_placeholder_1%
!simple_rnn_30_while_placeholder_27
3simple_rnn_30_while_simple_rnn_30_strided_slice_1_0s
osimple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_30_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resource_0L
Hsimple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resource_0M
Isimple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0 
simple_rnn_30_while_identity"
simple_rnn_30_while_identity_1"
simple_rnn_30_while_identity_2"
simple_rnn_30_while_identity_3"
simple_rnn_30_while_identity_45
1simple_rnn_30_while_simple_rnn_30_strided_slice_1q
msimple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_30_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resourceJ
Fsimple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resourceK
Gsimple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource??=simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?<simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?>simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
Esimple_rnn_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2G
Esimple_rnn_30/while/TensorArrayV2Read/TensorListGetItem/element_shape?
7simple_rnn_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_30_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_30_while_placeholderNsimple_rnn_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype029
7simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem?
6simple_rnn_30/while/simple_rnn_cell_30/ones_like/ShapeShape>simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:28
6simple_rnn_30/while/simple_rnn_cell_30/ones_like/Shape?
6simple_rnn_30/while/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6simple_rnn_30/while/simple_rnn_cell_30/ones_like/Const?
0simple_rnn_30/while/simple_rnn_cell_30/ones_likeFill?simple_rnn_30/while/simple_rnn_cell_30/ones_like/Shape:output:0?simple_rnn_30/while/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 22
0simple_rnn_30/while/simple_rnn_cell_30/ones_like?
8simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/ShapeShape!simple_rnn_30_while_placeholder_2*
T0*
_output_shapes
:2:
8simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Shape?
8simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Const?
2simple_rnn_30/while/simple_rnn_cell_30/ones_like_1FillAsimple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Shape:output:0Asimple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????24
2simple_rnn_30/while/simple_rnn_cell_30/ones_like_1?
*simple_rnn_30/while/simple_rnn_cell_30/mulMul>simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem:item:09simple_rnn_30/while/simple_rnn_cell_30/ones_like:output:0*
T0*'
_output_shapes
:????????? 2,
*simple_rnn_30/while/simple_rnn_cell_30/mul?
<simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02>
<simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?
-simple_rnn_30/while/simple_rnn_cell_30/MatMulMatMul.simple_rnn_30/while/simple_rnn_cell_30/mul:z:0Dsimple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2/
-simple_rnn_30/while/simple_rnn_cell_30/MatMul?
=simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02?
=simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
.simple_rnn_30/while/simple_rnn_cell_30/BiasAddBiasAdd7simple_rnn_30/while/simple_rnn_cell_30/MatMul:product:0Esimple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????20
.simple_rnn_30/while/simple_rnn_cell_30/BiasAdd?
,simple_rnn_30/while/simple_rnn_cell_30/mul_1Mul!simple_rnn_30_while_placeholder_2;simple_rnn_30/while/simple_rnn_cell_30/ones_like_1:output:0*
T0*'
_output_shapes
:?????????2.
,simple_rnn_30/while/simple_rnn_cell_30/mul_1?
>simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02@
>simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1MatMul0simple_rnn_30/while/simple_rnn_cell_30/mul_1:z:0Fsimple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????21
/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1?
*simple_rnn_30/while/simple_rnn_cell_30/addAddV27simple_rnn_30/while/simple_rnn_cell_30/BiasAdd:output:09simple_rnn_30/while/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2,
*simple_rnn_30/while/simple_rnn_cell_30/add?
+simple_rnn_30/while/simple_rnn_cell_30/TanhTanh.simple_rnn_30/while/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2-
+simple_rnn_30/while/simple_rnn_cell_30/Tanh?
8simple_rnn_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_30_while_placeholder_1simple_rnn_30_while_placeholder/simple_rnn_30/while/simple_rnn_cell_30/Tanh:y:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_30/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_30/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_30/while/add/y?
simple_rnn_30/while/addAddV2simple_rnn_30_while_placeholder"simple_rnn_30/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_30/while/add|
simple_rnn_30/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_30/while/add_1/y?
simple_rnn_30/while/add_1AddV24simple_rnn_30_while_simple_rnn_30_while_loop_counter$simple_rnn_30/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_30/while/add_1?
simple_rnn_30/while/IdentityIdentitysimple_rnn_30/while/add_1:z:0>^simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=^simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?^simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_30/while/Identity?
simple_rnn_30/while/Identity_1Identity:simple_rnn_30_while_simple_rnn_30_while_maximum_iterations>^simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=^simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?^simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_30/while/Identity_1?
simple_rnn_30/while/Identity_2Identitysimple_rnn_30/while/add:z:0>^simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=^simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?^simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_30/while/Identity_2?
simple_rnn_30/while/Identity_3IdentityHsimple_rnn_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=^simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?^simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_30/while/Identity_3?
simple_rnn_30/while/Identity_4Identity/simple_rnn_30/while/simple_rnn_cell_30/Tanh:y:0>^simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=^simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?^simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2 
simple_rnn_30/while/Identity_4"E
simple_rnn_30_while_identity%simple_rnn_30/while/Identity:output:0"I
simple_rnn_30_while_identity_1'simple_rnn_30/while/Identity_1:output:0"I
simple_rnn_30_while_identity_2'simple_rnn_30/while/Identity_2:output:0"I
simple_rnn_30_while_identity_3'simple_rnn_30/while/Identity_3:output:0"I
simple_rnn_30_while_identity_4'simple_rnn_30/while/Identity_4:output:0"h
1simple_rnn_30_while_simple_rnn_30_strided_slice_13simple_rnn_30_while_simple_rnn_30_strided_slice_1_0"?
Fsimple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resourceHsimple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resource_0"?
Gsimple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resourceIsimple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0"?
Esimple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resourceGsimple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resource_0"?
msimple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_30_tensorarrayunstack_tensorlistfromtensorosimple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_30_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????: : :::2~
=simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp=simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp2|
<simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp<simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp2?
>simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp>simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_simple_rnn_30_layer_call_fn_79262

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_782932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?[
?
while_body_79033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_30_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_30_matmul_readvariableop_resource<
8while_simple_rnn_cell_30_biasadd_readvariableop_resource=
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource??/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_30/MatMul/ReadVariableOp?0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/simple_rnn_cell_30/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(while/simple_rnn_cell_30/ones_like/Shape?
(while/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(while/simple_rnn_cell_30/ones_like/Const?
"while/simple_rnn_cell_30/ones_likeFill1while/simple_rnn_cell_30/ones_like/Shape:output:01while/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"while/simple_rnn_cell_30/ones_like?
&while/simple_rnn_cell_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&while/simple_rnn_cell_30/dropout/Const?
$while/simple_rnn_cell_30/dropout/MulMul+while/simple_rnn_cell_30/ones_like:output:0/while/simple_rnn_cell_30/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$while/simple_rnn_cell_30/dropout/Mul?
&while/simple_rnn_cell_30/dropout/ShapeShape+while/simple_rnn_cell_30/ones_like:output:0*
T0*
_output_shapes
:2(
&while/simple_rnn_cell_30/dropout/Shape?
=while/simple_rnn_cell_30/dropout/random_uniform/RandomUniformRandomUniform/while/simple_rnn_cell_30/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?֞2?
=while/simple_rnn_cell_30/dropout/random_uniform/RandomUniform?
/while/simple_rnn_cell_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>21
/while/simple_rnn_cell_30/dropout/GreaterEqual/y?
-while/simple_rnn_cell_30/dropout/GreaterEqualGreaterEqualFwhile/simple_rnn_cell_30/dropout/random_uniform/RandomUniform:output:08while/simple_rnn_cell_30/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2/
-while/simple_rnn_cell_30/dropout/GreaterEqual?
%while/simple_rnn_cell_30/dropout/CastCast1while/simple_rnn_cell_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2'
%while/simple_rnn_cell_30/dropout/Cast?
&while/simple_rnn_cell_30/dropout/Mul_1Mul(while/simple_rnn_cell_30/dropout/Mul:z:0)while/simple_rnn_cell_30/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2(
&while/simple_rnn_cell_30/dropout/Mul_1?
*while/simple_rnn_cell_30/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2,
*while/simple_rnn_cell_30/ones_like_1/Shape?
*while/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*while/simple_rnn_cell_30/ones_like_1/Const?
$while/simple_rnn_cell_30/ones_like_1Fill3while/simple_rnn_cell_30/ones_like_1/Shape:output:03while/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2&
$while/simple_rnn_cell_30/ones_like_1?
(while/simple_rnn_cell_30/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(while/simple_rnn_cell_30/dropout_1/Const?
&while/simple_rnn_cell_30/dropout_1/MulMul-while/simple_rnn_cell_30/ones_like_1:output:01while/simple_rnn_cell_30/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2(
&while/simple_rnn_cell_30/dropout_1/Mul?
(while/simple_rnn_cell_30/dropout_1/ShapeShape-while/simple_rnn_cell_30/ones_like_1:output:0*
T0*
_output_shapes
:2*
(while/simple_rnn_cell_30/dropout_1/Shape?
?while/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniformRandomUniform1while/simple_rnn_cell_30/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2??-2A
?while/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform?
1while/simple_rnn_cell_30/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>23
1while/simple_rnn_cell_30/dropout_1/GreaterEqual/y?
/while/simple_rnn_cell_30/dropout_1/GreaterEqualGreaterEqualHwhile/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform:output:0:while/simple_rnn_cell_30/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????21
/while/simple_rnn_cell_30/dropout_1/GreaterEqual?
'while/simple_rnn_cell_30/dropout_1/CastCast3while/simple_rnn_cell_30/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2)
'while/simple_rnn_cell_30/dropout_1/Cast?
(while/simple_rnn_cell_30/dropout_1/Mul_1Mul*while/simple_rnn_cell_30/dropout_1/Mul:z:0+while/simple_rnn_cell_30/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2*
(while/simple_rnn_cell_30/dropout_1/Mul_1?
while/simple_rnn_cell_30/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/simple_rnn_cell_30/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/simple_rnn_cell_30/mul?
.while/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_30_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype020
.while/simple_rnn_cell_30/MatMul/ReadVariableOp?
while/simple_rnn_cell_30/MatMulMatMul while/simple_rnn_cell_30/mul:z:06while/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
while/simple_rnn_cell_30/MatMul?
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype021
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_30/BiasAddBiasAdd)while/simple_rnn_cell_30/MatMul:product:07while/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 while/simple_rnn_cell_30/BiasAdd?
while/simple_rnn_cell_30/mul_1Mulwhile_placeholder_2,while/simple_rnn_cell_30/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????2 
while/simple_rnn_cell_30/mul_1?
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype022
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_30/MatMul_1MatMul"while/simple_rnn_cell_30/mul_1:z:08while/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!while/simple_rnn_cell_30/MatMul_1?
while/simple_rnn_cell_30/addAddV2)while/simple_rnn_cell_30/BiasAdd:output:0+while/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/add?
while/simple_rnn_cell_30/TanhTanh while/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_30/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_30/Tanh:y:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_30_biasadd_readvariableop_resource:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_30_matmul_readvariableop_resource9while_simple_rnn_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????: : :::2b
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_30/MatMul/ReadVariableOp.while/simple_rnn_cell_30/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?e
?
,sequential_30_simple_rnn_30_while_body_77483T
Psequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_while_loop_counterZ
Vsequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_while_maximum_iterations1
-sequential_30_simple_rnn_30_while_placeholder3
/sequential_30_simple_rnn_30_while_placeholder_13
/sequential_30_simple_rnn_30_while_placeholder_2S
Osequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_strided_slice_1_0?
?sequential_30_simple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_sequential_30_simple_rnn_30_tensorarrayunstack_tensorlistfromtensor_0Y
Usequential_30_simple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resource_0Z
Vsequential_30_simple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resource_0[
Wsequential_30_simple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0.
*sequential_30_simple_rnn_30_while_identity0
,sequential_30_simple_rnn_30_while_identity_10
,sequential_30_simple_rnn_30_while_identity_20
,sequential_30_simple_rnn_30_while_identity_30
,sequential_30_simple_rnn_30_while_identity_4Q
Msequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_strided_slice_1?
?sequential_30_simple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_sequential_30_simple_rnn_30_tensorarrayunstack_tensorlistfromtensorW
Ssequential_30_simple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resourceX
Tsequential_30_simple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resourceY
Usequential_30_simple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource??Ksequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?Jsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?Lsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
Ssequential_30/simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2U
Ssequential_30/simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Esequential_30/simple_rnn_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_30_simple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_sequential_30_simple_rnn_30_tensorarrayunstack_tensorlistfromtensor_0-sequential_30_simple_rnn_30_while_placeholder\sequential_30/simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02G
Esequential_30/simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem?
Dsequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like/ShapeShapeLsequential_30/simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2F
Dsequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like/Shape?
Dsequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2F
Dsequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like/Const?
>sequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_likeFillMsequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like/Shape:output:0Msequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2@
>sequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like?
Fsequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/ShapeShape/sequential_30_simple_rnn_30_while_placeholder_2*
T0*
_output_shapes
:2H
Fsequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Shape?
Fsequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2H
Fsequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Const?
@sequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like_1FillOsequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Shape:output:0Osequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2B
@sequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like_1?
8sequential_30/simple_rnn_30/while/simple_rnn_cell_30/mulMulLsequential_30/simple_rnn_30/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like:output:0*
T0*'
_output_shapes
:????????? 2:
8sequential_30/simple_rnn_30/while/simple_rnn_cell_30/mul?
Jsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOpUsequential_30_simple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02L
Jsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp?
;sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMulMatMul<sequential_30/simple_rnn_30/while/simple_rnn_cell_30/mul:z:0Rsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2=
;sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul?
Ksequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOpVsequential_30_simple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02M
Ksequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
<sequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAddBiasAddEsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul:product:0Ssequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2>
<sequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd?
:sequential_30/simple_rnn_30/while/simple_rnn_cell_30/mul_1Mul/sequential_30_simple_rnn_30_while_placeholder_2Isequential_30/simple_rnn_30/while/simple_rnn_cell_30/ones_like_1:output:0*
T0*'
_output_shapes
:?????????2<
:sequential_30/simple_rnn_30/while/simple_rnn_cell_30/mul_1?
Lsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOpWsequential_30_simple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02N
Lsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
=sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1MatMul>sequential_30/simple_rnn_30/while/simple_rnn_cell_30/mul_1:z:0Tsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
=sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1?
8sequential_30/simple_rnn_30/while/simple_rnn_cell_30/addAddV2Esequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd:output:0Gsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2:
8sequential_30/simple_rnn_30/while/simple_rnn_cell_30/add?
9sequential_30/simple_rnn_30/while/simple_rnn_cell_30/TanhTanh<sequential_30/simple_rnn_30/while/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2;
9sequential_30/simple_rnn_30/while/simple_rnn_cell_30/Tanh?
Fsequential_30/simple_rnn_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_30_simple_rnn_30_while_placeholder_1-sequential_30_simple_rnn_30_while_placeholder=sequential_30/simple_rnn_30/while/simple_rnn_cell_30/Tanh:y:0*
_output_shapes
: *
element_dtype02H
Fsequential_30/simple_rnn_30/while/TensorArrayV2Write/TensorListSetItem?
'sequential_30/simple_rnn_30/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_30/simple_rnn_30/while/add/y?
%sequential_30/simple_rnn_30/while/addAddV2-sequential_30_simple_rnn_30_while_placeholder0sequential_30/simple_rnn_30/while/add/y:output:0*
T0*
_output_shapes
: 2'
%sequential_30/simple_rnn_30/while/add?
)sequential_30/simple_rnn_30/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_30/simple_rnn_30/while/add_1/y?
'sequential_30/simple_rnn_30/while/add_1AddV2Psequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_while_loop_counter2sequential_30/simple_rnn_30/while/add_1/y:output:0*
T0*
_output_shapes
: 2)
'sequential_30/simple_rnn_30/while/add_1?
*sequential_30/simple_rnn_30/while/IdentityIdentity+sequential_30/simple_rnn_30/while/add_1:z:0L^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpK^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOpM^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_30/simple_rnn_30/while/Identity?
,sequential_30/simple_rnn_30/while/Identity_1IdentityVsequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_while_maximum_iterationsL^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpK^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOpM^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2.
,sequential_30/simple_rnn_30/while/Identity_1?
,sequential_30/simple_rnn_30/while/Identity_2Identity)sequential_30/simple_rnn_30/while/add:z:0L^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpK^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOpM^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2.
,sequential_30/simple_rnn_30/while/Identity_2?
,sequential_30/simple_rnn_30/while/Identity_3IdentityVsequential_30/simple_rnn_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0L^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpK^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOpM^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2.
,sequential_30/simple_rnn_30/while/Identity_3?
,sequential_30/simple_rnn_30/while/Identity_4Identity=sequential_30/simple_rnn_30/while/simple_rnn_cell_30/Tanh:y:0L^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpK^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOpM^sequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2.
,sequential_30/simple_rnn_30/while/Identity_4"a
*sequential_30_simple_rnn_30_while_identity3sequential_30/simple_rnn_30/while/Identity:output:0"e
,sequential_30_simple_rnn_30_while_identity_15sequential_30/simple_rnn_30/while/Identity_1:output:0"e
,sequential_30_simple_rnn_30_while_identity_25sequential_30/simple_rnn_30/while/Identity_2:output:0"e
,sequential_30_simple_rnn_30_while_identity_35sequential_30/simple_rnn_30/while/Identity_3:output:0"e
,sequential_30_simple_rnn_30_while_identity_45sequential_30/simple_rnn_30/while/Identity_4:output:0"?
Msequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_strided_slice_1Osequential_30_simple_rnn_30_while_sequential_30_simple_rnn_30_strided_slice_1_0"?
Tsequential_30_simple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resourceVsequential_30_simple_rnn_30_while_simple_rnn_cell_30_biasadd_readvariableop_resource_0"?
Usequential_30_simple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resourceWsequential_30_simple_rnn_30_while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0"?
Ssequential_30_simple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resourceUsequential_30_simple_rnn_30_while_simple_rnn_cell_30_matmul_readvariableop_resource_0"?
?sequential_30_simple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_sequential_30_simple_rnn_30_tensorarrayunstack_tensorlistfromtensor?sequential_30_simple_rnn_30_while_tensorarrayv2read_tensorlistgetitem_sequential_30_simple_rnn_30_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????: : :::2?
Ksequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpKsequential_30/simple_rnn_30/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp2?
Jsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOpJsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul/ReadVariableOp2?
Lsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOpLsequential_30/simple_rnn_30/while/simple_rnn_cell_30/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_77662

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdde
mul_1Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????2
mul_1?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMul	mul_1:z:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:????????? :?????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
?
?
H__inference_sequential_30_layer_call_and_return_conditional_losses_78520

inputs
embedding_30_78504
simple_rnn_30_78507
simple_rnn_30_78509
simple_rnn_30_78511
dense_30_78514
dense_30_78516
identity?? dense_30/StatefulPartitionedCall?$embedding_30/StatefulPartitionedCall?%simple_rnn_30/StatefulPartitionedCall?
$embedding_30/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_30_78504*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_30_layer_call_and_return_conditional_losses_781222&
$embedding_30/StatefulPartitionedCall?
%simple_rnn_30/StatefulPartitionedCallStatefulPartitionedCall-embedding_30/StatefulPartitionedCall:output:0simple_rnn_30_78507simple_rnn_30_78509simple_rnn_30_78511*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_782932'
%simple_rnn_30/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_30/StatefulPartitionedCall:output:0dense_30_78514dense_30_78516*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_30_layer_call_and_return_conditional_losses_784622"
 dense_30/StatefulPartitionedCall?
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall%^embedding_30/StatefulPartitionedCall&^simple_rnn_30/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2L
$embedding_30/StatefulPartitionedCall$embedding_30/StatefulPartitionedCall2N
%simple_rnn_30/StatefulPartitionedCall%simple_rnn_30/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
2__inference_simple_rnn_cell_30_layer_call_fn_79683

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_776372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:????????? :?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0
?
?
while_cond_78202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_78202___redundant_placeholder03
/while_while_cond_78202___redundant_placeholder13
/while_while_cond_78202___redundant_placeholder23
/while_while_cond_78202___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_79486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_79486___redundant_placeholder03
/while_while_cond_79486___redundant_placeholder13
/while_while_cond_79486___redundant_placeholder23
/while_while_cond_79486___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
}
(__inference_dense_30_layer_call_fn_79603

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
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_30_layer_call_and_return_conditional_losses_784622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?@
?
while_body_79177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_30_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_30_matmul_readvariableop_resource<
8while_simple_rnn_cell_30_biasadd_readvariableop_resource=
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource??/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_30/MatMul/ReadVariableOp?0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/simple_rnn_cell_30/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(while/simple_rnn_cell_30/ones_like/Shape?
(while/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(while/simple_rnn_cell_30/ones_like/Const?
"while/simple_rnn_cell_30/ones_likeFill1while/simple_rnn_cell_30/ones_like/Shape:output:01while/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"while/simple_rnn_cell_30/ones_like?
*while/simple_rnn_cell_30/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2,
*while/simple_rnn_cell_30/ones_like_1/Shape?
*while/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*while/simple_rnn_cell_30/ones_like_1/Const?
$while/simple_rnn_cell_30/ones_like_1Fill3while/simple_rnn_cell_30/ones_like_1/Shape:output:03while/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2&
$while/simple_rnn_cell_30/ones_like_1?
while/simple_rnn_cell_30/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/simple_rnn_cell_30/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/simple_rnn_cell_30/mul?
.while/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_30_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype020
.while/simple_rnn_cell_30/MatMul/ReadVariableOp?
while/simple_rnn_cell_30/MatMulMatMul while/simple_rnn_cell_30/mul:z:06while/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
while/simple_rnn_cell_30/MatMul?
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype021
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_30/BiasAddBiasAdd)while/simple_rnn_cell_30/MatMul:product:07while/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 while/simple_rnn_cell_30/BiasAdd?
while/simple_rnn_cell_30/mul_1Mulwhile_placeholder_2-while/simple_rnn_cell_30/ones_like_1:output:0*
T0*'
_output_shapes
:?????????2 
while/simple_rnn_cell_30/mul_1?
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype022
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_30/MatMul_1MatMul"while/simple_rnn_cell_30/mul_1:z:08while/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!while/simple_rnn_cell_30/MatMul_1?
while/simple_rnn_cell_30/addAddV2)while/simple_rnn_cell_30/BiasAdd:output:0+while/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/add?
while/simple_rnn_cell_30/TanhTanh while/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_30/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_30/Tanh:y:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_30_biasadd_readvariableop_resource:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_30_matmul_readvariableop_resource9while_simple_rnn_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????: : :::2b
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_30/MatMul/ReadVariableOp.while/simple_rnn_cell_30/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?	
?
C__inference_dense_30_layer_call_and_return_conditional_losses_79594

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?)
?
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_79644

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2
ones_like_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/Const?
dropout_1/MulMulones_like_1:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/Mulf
dropout_1/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_1/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddf
mul_1Mulstates_0dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????2
mul_1?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMul	mul_1:z:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:????????? :?????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0
?@
?
while_body_79487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_30_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_30_matmul_readvariableop_resource<
8while_simple_rnn_cell_30_biasadd_readvariableop_resource=
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource??/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_30/MatMul/ReadVariableOp?0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/simple_rnn_cell_30/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(while/simple_rnn_cell_30/ones_like/Shape?
(while/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(while/simple_rnn_cell_30/ones_like/Const?
"while/simple_rnn_cell_30/ones_likeFill1while/simple_rnn_cell_30/ones_like/Shape:output:01while/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"while/simple_rnn_cell_30/ones_like?
*while/simple_rnn_cell_30/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2,
*while/simple_rnn_cell_30/ones_like_1/Shape?
*while/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*while/simple_rnn_cell_30/ones_like_1/Const?
$while/simple_rnn_cell_30/ones_like_1Fill3while/simple_rnn_cell_30/ones_like_1/Shape:output:03while/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2&
$while/simple_rnn_cell_30/ones_like_1?
while/simple_rnn_cell_30/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/simple_rnn_cell_30/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/simple_rnn_cell_30/mul?
.while/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_30_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype020
.while/simple_rnn_cell_30/MatMul/ReadVariableOp?
while/simple_rnn_cell_30/MatMulMatMul while/simple_rnn_cell_30/mul:z:06while/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
while/simple_rnn_cell_30/MatMul?
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype021
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_30/BiasAddBiasAdd)while/simple_rnn_cell_30/MatMul:product:07while/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 while/simple_rnn_cell_30/BiasAdd?
while/simple_rnn_cell_30/mul_1Mulwhile_placeholder_2-while/simple_rnn_cell_30/ones_like_1:output:0*
T0*'
_output_shapes
:?????????2 
while/simple_rnn_cell_30/mul_1?
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype022
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_30/MatMul_1MatMul"while/simple_rnn_cell_30/mul_1:z:08while/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!while/simple_rnn_cell_30/MatMul_1?
while/simple_rnn_cell_30/addAddV2)while/simple_rnn_cell_30/BiasAdd:output:0+while/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/add?
while/simple_rnn_cell_30/TanhTanh while/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_30/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_30/Tanh:y:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_30_biasadd_readvariableop_resource:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_30_matmul_readvariableop_resource9while_simple_rnn_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????: : :::2b
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_30/MatMul/ReadVariableOp.while/simple_rnn_cell_30/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?R
?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79251

inputs5
1simple_rnn_cell_30_matmul_readvariableop_resource6
2simple_rnn_cell_30_biasadd_readvariableop_resource7
3simple_rnn_cell_30_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_30/BiasAdd/ReadVariableOp?(simple_rnn_cell_30/MatMul/ReadVariableOp?*simple_rnn_cell_30/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:?????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
"simple_rnn_cell_30/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2$
"simple_rnn_cell_30/ones_like/Shape?
"simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"simple_rnn_cell_30/ones_like/Const?
simple_rnn_cell_30/ones_likeFill+simple_rnn_cell_30/ones_like/Shape:output:0+simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/ones_like?
$simple_rnn_cell_30/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2&
$simple_rnn_cell_30/ones_like_1/Shape?
$simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$simple_rnn_cell_30/ones_like_1/Const?
simple_rnn_cell_30/ones_like_1Fill-simple_rnn_cell_30/ones_like_1/Shape:output:0-simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2 
simple_rnn_cell_30/ones_like_1?
simple_rnn_cell_30/mulMulstrided_slice_2:output:0%simple_rnn_cell_30/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/mul?
(simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_30_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(simple_rnn_cell_30/MatMul/ReadVariableOp?
simple_rnn_cell_30/MatMulMatMulsimple_rnn_cell_30/mul:z:00simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul?
)simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)simple_rnn_cell_30/BiasAdd/ReadVariableOp?
simple_rnn_cell_30/BiasAddBiasAdd#simple_rnn_cell_30/MatMul:product:01simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/BiasAdd?
simple_rnn_cell_30/mul_1Mulzeros:output:0'simple_rnn_cell_30/ones_like_1:output:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/mul_1?
*simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_30_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02,
*simple_rnn_cell_30/MatMul_1/ReadVariableOp?
simple_rnn_cell_30/MatMul_1MatMulsimple_rnn_cell_30/mul_1:z:02simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul_1?
simple_rnn_cell_30/addAddV2#simple_rnn_cell_30/BiasAdd:output:0%simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/add?
simple_rnn_cell_30/TanhTanhsimple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_30_matmul_readvariableop_resource2simple_rnn_cell_30_biasadd_readvariableop_resource3simple_rnn_cell_30_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_79177*
condR
while_cond_79176*8
output_shapes'
%: : : : :?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_30/BiasAdd/ReadVariableOp)^simple_rnn_cell_30/MatMul/ReadVariableOp+^simple_rnn_cell_30/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::2V
)simple_rnn_cell_30/BiasAdd/ReadVariableOp)simple_rnn_cell_30/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_30/MatMul/ReadVariableOp(simple_rnn_cell_30/MatMul/ReadVariableOp2X
*simple_rnn_cell_30/MatMul_1/ReadVariableOp*simple_rnn_cell_30/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?l
?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79123

inputs5
1simple_rnn_cell_30_matmul_readvariableop_resource6
2simple_rnn_cell_30_biasadd_readvariableop_resource7
3simple_rnn_cell_30_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_30/BiasAdd/ReadVariableOp?(simple_rnn_cell_30/MatMul/ReadVariableOp?*simple_rnn_cell_30/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:?????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
"simple_rnn_cell_30/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2$
"simple_rnn_cell_30/ones_like/Shape?
"simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"simple_rnn_cell_30/ones_like/Const?
simple_rnn_cell_30/ones_likeFill+simple_rnn_cell_30/ones_like/Shape:output:0+simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/ones_like?
 simple_rnn_cell_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 simple_rnn_cell_30/dropout/Const?
simple_rnn_cell_30/dropout/MulMul%simple_rnn_cell_30/ones_like:output:0)simple_rnn_cell_30/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
simple_rnn_cell_30/dropout/Mul?
 simple_rnn_cell_30/dropout/ShapeShape%simple_rnn_cell_30/ones_like:output:0*
T0*
_output_shapes
:2"
 simple_rnn_cell_30/dropout/Shape?
7simple_rnn_cell_30/dropout/random_uniform/RandomUniformRandomUniform)simple_rnn_cell_30/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???29
7simple_rnn_cell_30/dropout/random_uniform/RandomUniform?
)simple_rnn_cell_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2+
)simple_rnn_cell_30/dropout/GreaterEqual/y?
'simple_rnn_cell_30/dropout/GreaterEqualGreaterEqual@simple_rnn_cell_30/dropout/random_uniform/RandomUniform:output:02simple_rnn_cell_30/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'simple_rnn_cell_30/dropout/GreaterEqual?
simple_rnn_cell_30/dropout/CastCast+simple_rnn_cell_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
simple_rnn_cell_30/dropout/Cast?
 simple_rnn_cell_30/dropout/Mul_1Mul"simple_rnn_cell_30/dropout/Mul:z:0#simple_rnn_cell_30/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 simple_rnn_cell_30/dropout/Mul_1?
$simple_rnn_cell_30/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2&
$simple_rnn_cell_30/ones_like_1/Shape?
$simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$simple_rnn_cell_30/ones_like_1/Const?
simple_rnn_cell_30/ones_like_1Fill-simple_rnn_cell_30/ones_like_1/Shape:output:0-simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2 
simple_rnn_cell_30/ones_like_1?
"simple_rnn_cell_30/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"simple_rnn_cell_30/dropout_1/Const?
 simple_rnn_cell_30/dropout_1/MulMul'simple_rnn_cell_30/ones_like_1:output:0+simple_rnn_cell_30/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2"
 simple_rnn_cell_30/dropout_1/Mul?
"simple_rnn_cell_30/dropout_1/ShapeShape'simple_rnn_cell_30/ones_like_1:output:0*
T0*
_output_shapes
:2$
"simple_rnn_cell_30/dropout_1/Shape?
9simple_rnn_cell_30/dropout_1/random_uniform/RandomUniformRandomUniform+simple_rnn_cell_30/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2?ؾ2;
9simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform?
+simple_rnn_cell_30/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+simple_rnn_cell_30/dropout_1/GreaterEqual/y?
)simple_rnn_cell_30/dropout_1/GreaterEqualGreaterEqualBsimple_rnn_cell_30/dropout_1/random_uniform/RandomUniform:output:04simple_rnn_cell_30/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2+
)simple_rnn_cell_30/dropout_1/GreaterEqual?
!simple_rnn_cell_30/dropout_1/CastCast-simple_rnn_cell_30/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2#
!simple_rnn_cell_30/dropout_1/Cast?
"simple_rnn_cell_30/dropout_1/Mul_1Mul$simple_rnn_cell_30/dropout_1/Mul:z:0%simple_rnn_cell_30/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2$
"simple_rnn_cell_30/dropout_1/Mul_1?
simple_rnn_cell_30/mulMulstrided_slice_2:output:0$simple_rnn_cell_30/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/mul?
(simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_30_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(simple_rnn_cell_30/MatMul/ReadVariableOp?
simple_rnn_cell_30/MatMulMatMulsimple_rnn_cell_30/mul:z:00simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul?
)simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)simple_rnn_cell_30/BiasAdd/ReadVariableOp?
simple_rnn_cell_30/BiasAddBiasAdd#simple_rnn_cell_30/MatMul:product:01simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/BiasAdd?
simple_rnn_cell_30/mul_1Mulzeros:output:0&simple_rnn_cell_30/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/mul_1?
*simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_30_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02,
*simple_rnn_cell_30/MatMul_1/ReadVariableOp?
simple_rnn_cell_30/MatMul_1MatMulsimple_rnn_cell_30/mul_1:z:02simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul_1?
simple_rnn_cell_30/addAddV2#simple_rnn_cell_30/BiasAdd:output:0%simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/add?
simple_rnn_cell_30/TanhTanhsimple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_30_matmul_readvariableop_resource2simple_rnn_cell_30_biasadd_readvariableop_resource3simple_rnn_cell_30_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_79033*
condR
while_cond_79032*8
output_shapes'
%: : : : :?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_30/BiasAdd/ReadVariableOp)^simple_rnn_cell_30/MatMul/ReadVariableOp+^simple_rnn_cell_30/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::2V
)simple_rnn_cell_30/BiasAdd/ReadVariableOp)simple_rnn_cell_30/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_30/MatMul/ReadVariableOp(simple_rnn_cell_30/MatMul/ReadVariableOp2X
*simple_rnn_cell_30/MatMul_1/ReadVariableOp*simple_rnn_cell_30/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?S
?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79561
inputs_05
1simple_rnn_cell_30_matmul_readvariableop_resource6
2simple_rnn_cell_30_biasadd_readvariableop_resource7
3simple_rnn_cell_30_matmul_1_readvariableop_resource
identity??)simple_rnn_cell_30/BiasAdd/ReadVariableOp?(simple_rnn_cell_30/MatMul/ReadVariableOp?*simple_rnn_cell_30/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
"simple_rnn_cell_30/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2$
"simple_rnn_cell_30/ones_like/Shape?
"simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"simple_rnn_cell_30/ones_like/Const?
simple_rnn_cell_30/ones_likeFill+simple_rnn_cell_30/ones_like/Shape:output:0+simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/ones_like?
$simple_rnn_cell_30/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2&
$simple_rnn_cell_30/ones_like_1/Shape?
$simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$simple_rnn_cell_30/ones_like_1/Const?
simple_rnn_cell_30/ones_like_1Fill-simple_rnn_cell_30/ones_like_1/Shape:output:0-simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2 
simple_rnn_cell_30/ones_like_1?
simple_rnn_cell_30/mulMulstrided_slice_2:output:0%simple_rnn_cell_30/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
simple_rnn_cell_30/mul?
(simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_30_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(simple_rnn_cell_30/MatMul/ReadVariableOp?
simple_rnn_cell_30/MatMulMatMulsimple_rnn_cell_30/mul:z:00simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul?
)simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)simple_rnn_cell_30/BiasAdd/ReadVariableOp?
simple_rnn_cell_30/BiasAddBiasAdd#simple_rnn_cell_30/MatMul:product:01simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/BiasAdd?
simple_rnn_cell_30/mul_1Mulzeros:output:0'simple_rnn_cell_30/ones_like_1:output:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/mul_1?
*simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_30_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02,
*simple_rnn_cell_30/MatMul_1/ReadVariableOp?
simple_rnn_cell_30/MatMul_1MatMulsimple_rnn_cell_30/mul_1:z:02simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/MatMul_1?
simple_rnn_cell_30/addAddV2#simple_rnn_cell_30/BiasAdd:output:0%simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/add?
simple_rnn_cell_30/TanhTanhsimple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
simple_rnn_cell_30/Tanh?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_30_matmul_readvariableop_resource2simple_rnn_cell_30_biasadd_readvariableop_resource3simple_rnn_cell_30_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_79487*
condR
while_cond_79486*8
output_shapes'
%: : : : :?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1?
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_30/BiasAdd/ReadVariableOp)^simple_rnn_cell_30/MatMul/ReadVariableOp+^simple_rnn_cell_30/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::2V
)simple_rnn_cell_30/BiasAdd/ReadVariableOp)simple_rnn_cell_30/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_30/MatMul/ReadVariableOp(simple_rnn_cell_30/MatMul/ReadVariableOp2X
*simple_rnn_cell_30/MatMul_1/ReadVariableOp*simple_rnn_cell_30/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
?
while_cond_79032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_79032___redundant_placeholder03
/while_while_cond_79032___redundant_placeholder13
/while_while_cond_79032___redundant_placeholder23
/while_while_cond_79032___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
-__inference_simple_rnn_30_layer_call_fn_79583
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_780992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?{
?
H__inference_sequential_30_layer_call_and_return_conditional_losses_78912

inputs'
#embedding_30_embedding_lookup_78775C
?simple_rnn_30_simple_rnn_cell_30_matmul_readvariableop_resourceD
@simple_rnn_30_simple_rnn_cell_30_biasadd_readvariableop_resourceE
Asimple_rnn_30_simple_rnn_cell_30_matmul_1_readvariableop_resource+
'dense_30_matmul_readvariableop_resource,
(dense_30_biasadd_readvariableop_resource
identity??dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?embedding_30/embedding_lookup?7simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp?6simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp?8simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp?simple_rnn_30/whilex
embedding_30/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_30/Cast?
embedding_30/embedding_lookupResourceGather#embedding_30_embedding_lookup_78775embedding_30/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_30/embedding_lookup/78775*,
_output_shapes
:?????????? *
dtype02
embedding_30/embedding_lookup?
&embedding_30/embedding_lookup/IdentityIdentity&embedding_30/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_30/embedding_lookup/78775*,
_output_shapes
:?????????? 2(
&embedding_30/embedding_lookup/Identity?
(embedding_30/embedding_lookup/Identity_1Identity/embedding_30/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2*
(embedding_30/embedding_lookup/Identity_1?
simple_rnn_30/ShapeShape1embedding_30/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn_30/Shape?
!simple_rnn_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_30/strided_slice/stack?
#simple_rnn_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_30/strided_slice/stack_1?
#simple_rnn_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_30/strided_slice/stack_2?
simple_rnn_30/strided_sliceStridedSlicesimple_rnn_30/Shape:output:0*simple_rnn_30/strided_slice/stack:output:0,simple_rnn_30/strided_slice/stack_1:output:0,simple_rnn_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_30/strided_slicex
simple_rnn_30/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_30/zeros/mul/y?
simple_rnn_30/zeros/mulMul$simple_rnn_30/strided_slice:output:0"simple_rnn_30/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_30/zeros/mul{
simple_rnn_30/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
simple_rnn_30/zeros/Less/y?
simple_rnn_30/zeros/LessLesssimple_rnn_30/zeros/mul:z:0#simple_rnn_30/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_30/zeros/Less~
simple_rnn_30/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_30/zeros/packed/1?
simple_rnn_30/zeros/packedPack$simple_rnn_30/strided_slice:output:0%simple_rnn_30/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_30/zeros/packed{
simple_rnn_30/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_30/zeros/Const?
simple_rnn_30/zerosFill#simple_rnn_30/zeros/packed:output:0"simple_rnn_30/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
simple_rnn_30/zeros?
simple_rnn_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_30/transpose/perm?
simple_rnn_30/transpose	Transpose1embedding_30/embedding_lookup/Identity_1:output:0%simple_rnn_30/transpose/perm:output:0*
T0*,
_output_shapes
:?????????? 2
simple_rnn_30/transposey
simple_rnn_30/Shape_1Shapesimple_rnn_30/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_30/Shape_1?
#simple_rnn_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_30/strided_slice_1/stack?
%simple_rnn_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_30/strided_slice_1/stack_1?
%simple_rnn_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_30/strided_slice_1/stack_2?
simple_rnn_30/strided_slice_1StridedSlicesimple_rnn_30/Shape_1:output:0,simple_rnn_30/strided_slice_1/stack:output:0.simple_rnn_30/strided_slice_1/stack_1:output:0.simple_rnn_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_30/strided_slice_1?
)simple_rnn_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2+
)simple_rnn_30/TensorArrayV2/element_shape?
simple_rnn_30/TensorArrayV2TensorListReserve2simple_rnn_30/TensorArrayV2/element_shape:output:0&simple_rnn_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_30/TensorArrayV2?
Csimple_rnn_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2E
Csimple_rnn_30/TensorArrayUnstack/TensorListFromTensor/element_shape?
5simple_rnn_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_30/transpose:y:0Lsimple_rnn_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_30/TensorArrayUnstack/TensorListFromTensor?
#simple_rnn_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_30/strided_slice_2/stack?
%simple_rnn_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_30/strided_slice_2/stack_1?
%simple_rnn_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_30/strided_slice_2/stack_2?
simple_rnn_30/strided_slice_2StridedSlicesimple_rnn_30/transpose:y:0,simple_rnn_30/strided_slice_2/stack:output:0.simple_rnn_30/strided_slice_2/stack_1:output:0.simple_rnn_30/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
simple_rnn_30/strided_slice_2?
0simple_rnn_30/simple_rnn_cell_30/ones_like/ShapeShape&simple_rnn_30/strided_slice_2:output:0*
T0*
_output_shapes
:22
0simple_rnn_30/simple_rnn_cell_30/ones_like/Shape?
0simple_rnn_30/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0simple_rnn_30/simple_rnn_cell_30/ones_like/Const?
*simple_rnn_30/simple_rnn_cell_30/ones_likeFill9simple_rnn_30/simple_rnn_cell_30/ones_like/Shape:output:09simple_rnn_30/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2,
*simple_rnn_30/simple_rnn_cell_30/ones_like?
2simple_rnn_30/simple_rnn_cell_30/ones_like_1/ShapeShapesimple_rnn_30/zeros:output:0*
T0*
_output_shapes
:24
2simple_rnn_30/simple_rnn_cell_30/ones_like_1/Shape?
2simple_rnn_30/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2simple_rnn_30/simple_rnn_cell_30/ones_like_1/Const?
,simple_rnn_30/simple_rnn_cell_30/ones_like_1Fill;simple_rnn_30/simple_rnn_cell_30/ones_like_1/Shape:output:0;simple_rnn_30/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2.
,simple_rnn_30/simple_rnn_cell_30/ones_like_1?
$simple_rnn_30/simple_rnn_cell_30/mulMul&simple_rnn_30/strided_slice_2:output:03simple_rnn_30/simple_rnn_cell_30/ones_like:output:0*
T0*'
_output_shapes
:????????? 2&
$simple_rnn_30/simple_rnn_cell_30/mul?
6simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp?simple_rnn_30_simple_rnn_cell_30_matmul_readvariableop_resource*
_output_shapes

: *
dtype028
6simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp?
'simple_rnn_30/simple_rnn_cell_30/MatMulMatMul(simple_rnn_30/simple_rnn_cell_30/mul:z:0>simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2)
'simple_rnn_30/simple_rnn_cell_30/MatMul?
7simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_30_simple_rnn_cell_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype029
7simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
(simple_rnn_30/simple_rnn_cell_30/BiasAddBiasAdd1simple_rnn_30/simple_rnn_cell_30/MatMul:product:0?simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(simple_rnn_30/simple_rnn_cell_30/BiasAdd?
&simple_rnn_30/simple_rnn_cell_30/mul_1Mulsimple_rnn_30/zeros:output:05simple_rnn_30/simple_rnn_cell_30/ones_like_1:output:0*
T0*'
_output_shapes
:?????????2(
&simple_rnn_30/simple_rnn_cell_30/mul_1?
8simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_30_simple_rnn_cell_30_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02:
8simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
)simple_rnn_30/simple_rnn_cell_30/MatMul_1MatMul*simple_rnn_30/simple_rnn_cell_30/mul_1:z:0@simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2+
)simple_rnn_30/simple_rnn_cell_30/MatMul_1?
$simple_rnn_30/simple_rnn_cell_30/addAddV21simple_rnn_30/simple_rnn_cell_30/BiasAdd:output:03simple_rnn_30/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2&
$simple_rnn_30/simple_rnn_cell_30/add?
%simple_rnn_30/simple_rnn_cell_30/TanhTanh(simple_rnn_30/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2'
%simple_rnn_30/simple_rnn_cell_30/Tanh?
+simple_rnn_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2-
+simple_rnn_30/TensorArrayV2_1/element_shape?
simple_rnn_30/TensorArrayV2_1TensorListReserve4simple_rnn_30/TensorArrayV2_1/element_shape:output:0&simple_rnn_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_30/TensorArrayV2_1j
simple_rnn_30/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_30/time?
&simple_rnn_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&simple_rnn_30/while/maximum_iterations?
 simple_rnn_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_30/while/loop_counter?
simple_rnn_30/whileWhile)simple_rnn_30/while/loop_counter:output:0/simple_rnn_30/while/maximum_iterations:output:0simple_rnn_30/time:output:0&simple_rnn_30/TensorArrayV2_1:handle:0simple_rnn_30/zeros:output:0&simple_rnn_30/strided_slice_1:output:0Esimple_rnn_30/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_30_simple_rnn_cell_30_matmul_readvariableop_resource@simple_rnn_30_simple_rnn_cell_30_biasadd_readvariableop_resourceAsimple_rnn_30_simple_rnn_cell_30_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_30_while_body_78831**
cond"R 
simple_rnn_30_while_cond_78830*8
output_shapes'
%: : : : :?????????: : : : : *
parallel_iterations 2
simple_rnn_30/while?
>simple_rnn_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>simple_rnn_30/TensorArrayV2Stack/TensorListStack/element_shape?
0simple_rnn_30/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_30/while:output:3Gsimple_rnn_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype022
0simple_rnn_30/TensorArrayV2Stack/TensorListStack?
#simple_rnn_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2%
#simple_rnn_30/strided_slice_3/stack?
%simple_rnn_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_30/strided_slice_3/stack_1?
%simple_rnn_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_30/strided_slice_3/stack_2?
simple_rnn_30/strided_slice_3StridedSlice9simple_rnn_30/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_30/strided_slice_3/stack:output:0.simple_rnn_30/strided_slice_3/stack_1:output:0.simple_rnn_30/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
simple_rnn_30/strided_slice_3?
simple_rnn_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_30/transpose_1/perm?
simple_rnn_30/transpose_1	Transpose9simple_rnn_30/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_30/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
simple_rnn_30/transpose_1?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMul&simple_rnn_30/strided_slice_3:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_30/BiasAdd|
dense_30/SigmoidSigmoiddense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_30/Sigmoid?
IdentityIdentitydense_30/Sigmoid:y:0 ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp^embedding_30/embedding_lookup8^simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp7^simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp9^simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp^simple_rnn_30/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2>
embedding_30/embedding_lookupembedding_30/embedding_lookup2r
7simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp7simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp2p
6simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp6simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp2t
8simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp8simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp2*
simple_rnn_30/whilesimple_rnn_30/while:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_78598
embedding_30_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_775642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
(
_output_shapes
:??????????
,
_user_specified_nameembedding_30_input
ٗ
?
 __inference__wrapped_model_77564
embedding_30_input5
1sequential_30_embedding_30_embedding_lookup_77427Q
Msequential_30_simple_rnn_30_simple_rnn_cell_30_matmul_readvariableop_resourceR
Nsequential_30_simple_rnn_30_simple_rnn_cell_30_biasadd_readvariableop_resourceS
Osequential_30_simple_rnn_30_simple_rnn_cell_30_matmul_1_readvariableop_resource9
5sequential_30_dense_30_matmul_readvariableop_resource:
6sequential_30_dense_30_biasadd_readvariableop_resource
identity??-sequential_30/dense_30/BiasAdd/ReadVariableOp?,sequential_30/dense_30/MatMul/ReadVariableOp?+sequential_30/embedding_30/embedding_lookup?Esequential_30/simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp?Dsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp?Fsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp?!sequential_30/simple_rnn_30/while?
sequential_30/embedding_30/CastCastembedding_30_input*

DstT0*

SrcT0*(
_output_shapes
:??????????2!
sequential_30/embedding_30/Cast?
+sequential_30/embedding_30/embedding_lookupResourceGather1sequential_30_embedding_30_embedding_lookup_77427#sequential_30/embedding_30/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*D
_class:
86loc:@sequential_30/embedding_30/embedding_lookup/77427*,
_output_shapes
:?????????? *
dtype02-
+sequential_30/embedding_30/embedding_lookup?
4sequential_30/embedding_30/embedding_lookup/IdentityIdentity4sequential_30/embedding_30/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@sequential_30/embedding_30/embedding_lookup/77427*,
_output_shapes
:?????????? 26
4sequential_30/embedding_30/embedding_lookup/Identity?
6sequential_30/embedding_30/embedding_lookup/Identity_1Identity=sequential_30/embedding_30/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 28
6sequential_30/embedding_30/embedding_lookup/Identity_1?
!sequential_30/simple_rnn_30/ShapeShape?sequential_30/embedding_30/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2#
!sequential_30/simple_rnn_30/Shape?
/sequential_30/simple_rnn_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_30/simple_rnn_30/strided_slice/stack?
1sequential_30/simple_rnn_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_30/simple_rnn_30/strided_slice/stack_1?
1sequential_30/simple_rnn_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_30/simple_rnn_30/strided_slice/stack_2?
)sequential_30/simple_rnn_30/strided_sliceStridedSlice*sequential_30/simple_rnn_30/Shape:output:08sequential_30/simple_rnn_30/strided_slice/stack:output:0:sequential_30/simple_rnn_30/strided_slice/stack_1:output:0:sequential_30/simple_rnn_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential_30/simple_rnn_30/strided_slice?
'sequential_30/simple_rnn_30/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_30/simple_rnn_30/zeros/mul/y?
%sequential_30/simple_rnn_30/zeros/mulMul2sequential_30/simple_rnn_30/strided_slice:output:00sequential_30/simple_rnn_30/zeros/mul/y:output:0*
T0*
_output_shapes
: 2'
%sequential_30/simple_rnn_30/zeros/mul?
(sequential_30/simple_rnn_30/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(sequential_30/simple_rnn_30/zeros/Less/y?
&sequential_30/simple_rnn_30/zeros/LessLess)sequential_30/simple_rnn_30/zeros/mul:z:01sequential_30/simple_rnn_30/zeros/Less/y:output:0*
T0*
_output_shapes
: 2(
&sequential_30/simple_rnn_30/zeros/Less?
*sequential_30/simple_rnn_30/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_30/simple_rnn_30/zeros/packed/1?
(sequential_30/simple_rnn_30/zeros/packedPack2sequential_30/simple_rnn_30/strided_slice:output:03sequential_30/simple_rnn_30/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(sequential_30/simple_rnn_30/zeros/packed?
'sequential_30/simple_rnn_30/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'sequential_30/simple_rnn_30/zeros/Const?
!sequential_30/simple_rnn_30/zerosFill1sequential_30/simple_rnn_30/zeros/packed:output:00sequential_30/simple_rnn_30/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2#
!sequential_30/simple_rnn_30/zeros?
*sequential_30/simple_rnn_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2,
*sequential_30/simple_rnn_30/transpose/perm?
%sequential_30/simple_rnn_30/transpose	Transpose?sequential_30/embedding_30/embedding_lookup/Identity_1:output:03sequential_30/simple_rnn_30/transpose/perm:output:0*
T0*,
_output_shapes
:?????????? 2'
%sequential_30/simple_rnn_30/transpose?
#sequential_30/simple_rnn_30/Shape_1Shape)sequential_30/simple_rnn_30/transpose:y:0*
T0*
_output_shapes
:2%
#sequential_30/simple_rnn_30/Shape_1?
1sequential_30/simple_rnn_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_30/simple_rnn_30/strided_slice_1/stack?
3sequential_30/simple_rnn_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_30/simple_rnn_30/strided_slice_1/stack_1?
3sequential_30/simple_rnn_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_30/simple_rnn_30/strided_slice_1/stack_2?
+sequential_30/simple_rnn_30/strided_slice_1StridedSlice,sequential_30/simple_rnn_30/Shape_1:output:0:sequential_30/simple_rnn_30/strided_slice_1/stack:output:0<sequential_30/simple_rnn_30/strided_slice_1/stack_1:output:0<sequential_30/simple_rnn_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_30/simple_rnn_30/strided_slice_1?
7sequential_30/simple_rnn_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????29
7sequential_30/simple_rnn_30/TensorArrayV2/element_shape?
)sequential_30/simple_rnn_30/TensorArrayV2TensorListReserve@sequential_30/simple_rnn_30/TensorArrayV2/element_shape:output:04sequential_30/simple_rnn_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)sequential_30/simple_rnn_30/TensorArrayV2?
Qsequential_30/simple_rnn_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2S
Qsequential_30/simple_rnn_30/TensorArrayUnstack/TensorListFromTensor/element_shape?
Csequential_30/simple_rnn_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_30/simple_rnn_30/transpose:y:0Zsequential_30/simple_rnn_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02E
Csequential_30/simple_rnn_30/TensorArrayUnstack/TensorListFromTensor?
1sequential_30/simple_rnn_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_30/simple_rnn_30/strided_slice_2/stack?
3sequential_30/simple_rnn_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_30/simple_rnn_30/strided_slice_2/stack_1?
3sequential_30/simple_rnn_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_30/simple_rnn_30/strided_slice_2/stack_2?
+sequential_30/simple_rnn_30/strided_slice_2StridedSlice)sequential_30/simple_rnn_30/transpose:y:0:sequential_30/simple_rnn_30/strided_slice_2/stack:output:0<sequential_30/simple_rnn_30/strided_slice_2/stack_1:output:0<sequential_30/simple_rnn_30/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2-
+sequential_30/simple_rnn_30/strided_slice_2?
>sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like/ShapeShape4sequential_30/simple_rnn_30/strided_slice_2:output:0*
T0*
_output_shapes
:2@
>sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like/Shape?
>sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2@
>sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like/Const?
8sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_likeFillGsequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like/Shape:output:0Gsequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2:
8sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like?
@sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like_1/ShapeShape*sequential_30/simple_rnn_30/zeros:output:0*
T0*
_output_shapes
:2B
@sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like_1/Shape?
@sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2B
@sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like_1/Const?
:sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like_1FillIsequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like_1/Shape:output:0Isequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2<
:sequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like_1?
2sequential_30/simple_rnn_30/simple_rnn_cell_30/mulMul4sequential_30/simple_rnn_30/strided_slice_2:output:0Asequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like:output:0*
T0*'
_output_shapes
:????????? 24
2sequential_30/simple_rnn_30/simple_rnn_cell_30/mul?
Dsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOpMsequential_30_simple_rnn_30_simple_rnn_cell_30_matmul_readvariableop_resource*
_output_shapes

: *
dtype02F
Dsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp?
5sequential_30/simple_rnn_30/simple_rnn_cell_30/MatMulMatMul6sequential_30/simple_rnn_30/simple_rnn_cell_30/mul:z:0Lsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????27
5sequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul?
Esequential_30/simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOpNsequential_30_simple_rnn_30_simple_rnn_cell_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02G
Esequential_30/simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
6sequential_30/simple_rnn_30/simple_rnn_cell_30/BiasAddBiasAdd?sequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul:product:0Msequential_30/simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????28
6sequential_30/simple_rnn_30/simple_rnn_cell_30/BiasAdd?
4sequential_30/simple_rnn_30/simple_rnn_cell_30/mul_1Mul*sequential_30/simple_rnn_30/zeros:output:0Csequential_30/simple_rnn_30/simple_rnn_cell_30/ones_like_1:output:0*
T0*'
_output_shapes
:?????????26
4sequential_30/simple_rnn_30/simple_rnn_cell_30/mul_1?
Fsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOpOsequential_30_simple_rnn_30_simple_rnn_cell_30_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02H
Fsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
7sequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul_1MatMul8sequential_30/simple_rnn_30/simple_rnn_cell_30/mul_1:z:0Nsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????29
7sequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul_1?
2sequential_30/simple_rnn_30/simple_rnn_cell_30/addAddV2?sequential_30/simple_rnn_30/simple_rnn_cell_30/BiasAdd:output:0Asequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????24
2sequential_30/simple_rnn_30/simple_rnn_cell_30/add?
3sequential_30/simple_rnn_30/simple_rnn_cell_30/TanhTanh6sequential_30/simple_rnn_30/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????25
3sequential_30/simple_rnn_30/simple_rnn_cell_30/Tanh?
9sequential_30/simple_rnn_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2;
9sequential_30/simple_rnn_30/TensorArrayV2_1/element_shape?
+sequential_30/simple_rnn_30/TensorArrayV2_1TensorListReserveBsequential_30/simple_rnn_30/TensorArrayV2_1/element_shape:output:04sequential_30/simple_rnn_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+sequential_30/simple_rnn_30/TensorArrayV2_1?
 sequential_30/simple_rnn_30/timeConst*
_output_shapes
: *
dtype0*
value	B : 2"
 sequential_30/simple_rnn_30/time?
4sequential_30/simple_rnn_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????26
4sequential_30/simple_rnn_30/while/maximum_iterations?
.sequential_30/simple_rnn_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_30/simple_rnn_30/while/loop_counter?
!sequential_30/simple_rnn_30/whileWhile7sequential_30/simple_rnn_30/while/loop_counter:output:0=sequential_30/simple_rnn_30/while/maximum_iterations:output:0)sequential_30/simple_rnn_30/time:output:04sequential_30/simple_rnn_30/TensorArrayV2_1:handle:0*sequential_30/simple_rnn_30/zeros:output:04sequential_30/simple_rnn_30/strided_slice_1:output:0Ssequential_30/simple_rnn_30/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_30_simple_rnn_30_simple_rnn_cell_30_matmul_readvariableop_resourceNsequential_30_simple_rnn_30_simple_rnn_cell_30_biasadd_readvariableop_resourceOsequential_30_simple_rnn_30_simple_rnn_cell_30_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????: : : : : *%
_read_only_resource_inputs
	*8
body0R.
,sequential_30_simple_rnn_30_while_body_77483*8
cond0R.
,sequential_30_simple_rnn_30_while_cond_77482*8
output_shapes'
%: : : : :?????????: : : : : *
parallel_iterations 2#
!sequential_30/simple_rnn_30/while?
Lsequential_30/simple_rnn_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2N
Lsequential_30/simple_rnn_30/TensorArrayV2Stack/TensorListStack/element_shape?
>sequential_30/simple_rnn_30/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_30/simple_rnn_30/while:output:3Usequential_30/simple_rnn_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02@
>sequential_30/simple_rnn_30/TensorArrayV2Stack/TensorListStack?
1sequential_30/simple_rnn_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????23
1sequential_30/simple_rnn_30/strided_slice_3/stack?
3sequential_30/simple_rnn_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_30/simple_rnn_30/strided_slice_3/stack_1?
3sequential_30/simple_rnn_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_30/simple_rnn_30/strided_slice_3/stack_2?
+sequential_30/simple_rnn_30/strided_slice_3StridedSliceGsequential_30/simple_rnn_30/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_30/simple_rnn_30/strided_slice_3/stack:output:0<sequential_30/simple_rnn_30/strided_slice_3/stack_1:output:0<sequential_30/simple_rnn_30/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2-
+sequential_30/simple_rnn_30/strided_slice_3?
,sequential_30/simple_rnn_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential_30/simple_rnn_30/transpose_1/perm?
'sequential_30/simple_rnn_30/transpose_1	TransposeGsequential_30/simple_rnn_30/TensorArrayV2Stack/TensorListStack:tensor:05sequential_30/simple_rnn_30/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2)
'sequential_30/simple_rnn_30/transpose_1?
,sequential_30/dense_30/MatMul/ReadVariableOpReadVariableOp5sequential_30_dense_30_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_30/dense_30/MatMul/ReadVariableOp?
sequential_30/dense_30/MatMulMatMul4sequential_30/simple_rnn_30/strided_slice_3:output:04sequential_30/dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_30/dense_30/MatMul?
-sequential_30/dense_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_30_dense_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_30/dense_30/BiasAdd/ReadVariableOp?
sequential_30/dense_30/BiasAddBiasAdd'sequential_30/dense_30/MatMul:product:05sequential_30/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_30/dense_30/BiasAdd?
sequential_30/dense_30/SigmoidSigmoid'sequential_30/dense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_30/dense_30/Sigmoid?
IdentityIdentity"sequential_30/dense_30/Sigmoid:y:0.^sequential_30/dense_30/BiasAdd/ReadVariableOp-^sequential_30/dense_30/MatMul/ReadVariableOp,^sequential_30/embedding_30/embedding_lookupF^sequential_30/simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOpE^sequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOpG^sequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp"^sequential_30/simple_rnn_30/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2^
-sequential_30/dense_30/BiasAdd/ReadVariableOp-sequential_30/dense_30/BiasAdd/ReadVariableOp2\
,sequential_30/dense_30/MatMul/ReadVariableOp,sequential_30/dense_30/MatMul/ReadVariableOp2Z
+sequential_30/embedding_30/embedding_lookup+sequential_30/embedding_30/embedding_lookup2?
Esequential_30/simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOpEsequential_30/simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp2?
Dsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOpDsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp2?
Fsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOpFsequential_30/simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp2F
!sequential_30/simple_rnn_30/while!sequential_30/simple_rnn_30/while:\ X
(
_output_shapes
:??????????
,
_user_specified_nameembedding_30_input

?
H__inference_sequential_30_layer_call_and_return_conditional_losses_78771

inputs'
#embedding_30_embedding_lookup_78602C
?simple_rnn_30_simple_rnn_cell_30_matmul_readvariableop_resourceD
@simple_rnn_30_simple_rnn_cell_30_biasadd_readvariableop_resourceE
Asimple_rnn_30_simple_rnn_cell_30_matmul_1_readvariableop_resource+
'dense_30_matmul_readvariableop_resource,
(dense_30_biasadd_readvariableop_resource
identity??dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?embedding_30/embedding_lookup?7simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp?6simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp?8simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp?simple_rnn_30/whilex
embedding_30/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_30/Cast?
embedding_30/embedding_lookupResourceGather#embedding_30_embedding_lookup_78602embedding_30/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_30/embedding_lookup/78602*,
_output_shapes
:?????????? *
dtype02
embedding_30/embedding_lookup?
&embedding_30/embedding_lookup/IdentityIdentity&embedding_30/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_30/embedding_lookup/78602*,
_output_shapes
:?????????? 2(
&embedding_30/embedding_lookup/Identity?
(embedding_30/embedding_lookup/Identity_1Identity/embedding_30/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2*
(embedding_30/embedding_lookup/Identity_1?
simple_rnn_30/ShapeShape1embedding_30/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn_30/Shape?
!simple_rnn_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_30/strided_slice/stack?
#simple_rnn_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_30/strided_slice/stack_1?
#simple_rnn_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_30/strided_slice/stack_2?
simple_rnn_30/strided_sliceStridedSlicesimple_rnn_30/Shape:output:0*simple_rnn_30/strided_slice/stack:output:0,simple_rnn_30/strided_slice/stack_1:output:0,simple_rnn_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_30/strided_slicex
simple_rnn_30/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_30/zeros/mul/y?
simple_rnn_30/zeros/mulMul$simple_rnn_30/strided_slice:output:0"simple_rnn_30/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_30/zeros/mul{
simple_rnn_30/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
simple_rnn_30/zeros/Less/y?
simple_rnn_30/zeros/LessLesssimple_rnn_30/zeros/mul:z:0#simple_rnn_30/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_30/zeros/Less~
simple_rnn_30/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_30/zeros/packed/1?
simple_rnn_30/zeros/packedPack$simple_rnn_30/strided_slice:output:0%simple_rnn_30/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_30/zeros/packed{
simple_rnn_30/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_30/zeros/Const?
simple_rnn_30/zerosFill#simple_rnn_30/zeros/packed:output:0"simple_rnn_30/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
simple_rnn_30/zeros?
simple_rnn_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_30/transpose/perm?
simple_rnn_30/transpose	Transpose1embedding_30/embedding_lookup/Identity_1:output:0%simple_rnn_30/transpose/perm:output:0*
T0*,
_output_shapes
:?????????? 2
simple_rnn_30/transposey
simple_rnn_30/Shape_1Shapesimple_rnn_30/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_30/Shape_1?
#simple_rnn_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_30/strided_slice_1/stack?
%simple_rnn_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_30/strided_slice_1/stack_1?
%simple_rnn_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_30/strided_slice_1/stack_2?
simple_rnn_30/strided_slice_1StridedSlicesimple_rnn_30/Shape_1:output:0,simple_rnn_30/strided_slice_1/stack:output:0.simple_rnn_30/strided_slice_1/stack_1:output:0.simple_rnn_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_30/strided_slice_1?
)simple_rnn_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2+
)simple_rnn_30/TensorArrayV2/element_shape?
simple_rnn_30/TensorArrayV2TensorListReserve2simple_rnn_30/TensorArrayV2/element_shape:output:0&simple_rnn_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_30/TensorArrayV2?
Csimple_rnn_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2E
Csimple_rnn_30/TensorArrayUnstack/TensorListFromTensor/element_shape?
5simple_rnn_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_30/transpose:y:0Lsimple_rnn_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_30/TensorArrayUnstack/TensorListFromTensor?
#simple_rnn_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_30/strided_slice_2/stack?
%simple_rnn_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_30/strided_slice_2/stack_1?
%simple_rnn_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_30/strided_slice_2/stack_2?
simple_rnn_30/strided_slice_2StridedSlicesimple_rnn_30/transpose:y:0,simple_rnn_30/strided_slice_2/stack:output:0.simple_rnn_30/strided_slice_2/stack_1:output:0.simple_rnn_30/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
simple_rnn_30/strided_slice_2?
0simple_rnn_30/simple_rnn_cell_30/ones_like/ShapeShape&simple_rnn_30/strided_slice_2:output:0*
T0*
_output_shapes
:22
0simple_rnn_30/simple_rnn_cell_30/ones_like/Shape?
0simple_rnn_30/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0simple_rnn_30/simple_rnn_cell_30/ones_like/Const?
*simple_rnn_30/simple_rnn_cell_30/ones_likeFill9simple_rnn_30/simple_rnn_cell_30/ones_like/Shape:output:09simple_rnn_30/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2,
*simple_rnn_30/simple_rnn_cell_30/ones_like?
.simple_rnn_30/simple_rnn_cell_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.simple_rnn_30/simple_rnn_cell_30/dropout/Const?
,simple_rnn_30/simple_rnn_cell_30/dropout/MulMul3simple_rnn_30/simple_rnn_cell_30/ones_like:output:07simple_rnn_30/simple_rnn_cell_30/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2.
,simple_rnn_30/simple_rnn_cell_30/dropout/Mul?
.simple_rnn_30/simple_rnn_cell_30/dropout/ShapeShape3simple_rnn_30/simple_rnn_cell_30/ones_like:output:0*
T0*
_output_shapes
:20
.simple_rnn_30/simple_rnn_cell_30/dropout/Shape?
Esimple_rnn_30/simple_rnn_cell_30/dropout/random_uniform/RandomUniformRandomUniform7simple_rnn_30/simple_rnn_cell_30/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2G
Esimple_rnn_30/simple_rnn_cell_30/dropout/random_uniform/RandomUniform?
7simple_rnn_30/simple_rnn_cell_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>29
7simple_rnn_30/simple_rnn_cell_30/dropout/GreaterEqual/y?
5simple_rnn_30/simple_rnn_cell_30/dropout/GreaterEqualGreaterEqualNsimple_rnn_30/simple_rnn_cell_30/dropout/random_uniform/RandomUniform:output:0@simple_rnn_30/simple_rnn_cell_30/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 27
5simple_rnn_30/simple_rnn_cell_30/dropout/GreaterEqual?
-simple_rnn_30/simple_rnn_cell_30/dropout/CastCast9simple_rnn_30/simple_rnn_cell_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2/
-simple_rnn_30/simple_rnn_cell_30/dropout/Cast?
.simple_rnn_30/simple_rnn_cell_30/dropout/Mul_1Mul0simple_rnn_30/simple_rnn_cell_30/dropout/Mul:z:01simple_rnn_30/simple_rnn_cell_30/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 20
.simple_rnn_30/simple_rnn_cell_30/dropout/Mul_1?
2simple_rnn_30/simple_rnn_cell_30/ones_like_1/ShapeShapesimple_rnn_30/zeros:output:0*
T0*
_output_shapes
:24
2simple_rnn_30/simple_rnn_cell_30/ones_like_1/Shape?
2simple_rnn_30/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2simple_rnn_30/simple_rnn_cell_30/ones_like_1/Const?
,simple_rnn_30/simple_rnn_cell_30/ones_like_1Fill;simple_rnn_30/simple_rnn_cell_30/ones_like_1/Shape:output:0;simple_rnn_30/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2.
,simple_rnn_30/simple_rnn_cell_30/ones_like_1?
0simple_rnn_30/simple_rnn_cell_30/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0simple_rnn_30/simple_rnn_cell_30/dropout_1/Const?
.simple_rnn_30/simple_rnn_cell_30/dropout_1/MulMul5simple_rnn_30/simple_rnn_cell_30/ones_like_1:output:09simple_rnn_30/simple_rnn_cell_30/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.simple_rnn_30/simple_rnn_cell_30/dropout_1/Mul?
0simple_rnn_30/simple_rnn_cell_30/dropout_1/ShapeShape5simple_rnn_30/simple_rnn_cell_30/ones_like_1:output:0*
T0*
_output_shapes
:22
0simple_rnn_30/simple_rnn_cell_30/dropout_1/Shape?
Gsimple_rnn_30/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniformRandomUniform9simple_rnn_30/simple_rnn_cell_30/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*
seed???)*
seed2???2I
Gsimple_rnn_30/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform?
9simple_rnn_30/simple_rnn_cell_30/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2;
9simple_rnn_30/simple_rnn_cell_30/dropout_1/GreaterEqual/y?
7simple_rnn_30/simple_rnn_cell_30/dropout_1/GreaterEqualGreaterEqualPsimple_rnn_30/simple_rnn_cell_30/dropout_1/random_uniform/RandomUniform:output:0Bsimple_rnn_30/simple_rnn_cell_30/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????29
7simple_rnn_30/simple_rnn_cell_30/dropout_1/GreaterEqual?
/simple_rnn_30/simple_rnn_cell_30/dropout_1/CastCast;simple_rnn_30/simple_rnn_cell_30/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????21
/simple_rnn_30/simple_rnn_cell_30/dropout_1/Cast?
0simple_rnn_30/simple_rnn_cell_30/dropout_1/Mul_1Mul2simple_rnn_30/simple_rnn_cell_30/dropout_1/Mul:z:03simple_rnn_30/simple_rnn_cell_30/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????22
0simple_rnn_30/simple_rnn_cell_30/dropout_1/Mul_1?
$simple_rnn_30/simple_rnn_cell_30/mulMul&simple_rnn_30/strided_slice_2:output:02simple_rnn_30/simple_rnn_cell_30/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2&
$simple_rnn_30/simple_rnn_cell_30/mul?
6simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp?simple_rnn_30_simple_rnn_cell_30_matmul_readvariableop_resource*
_output_shapes

: *
dtype028
6simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp?
'simple_rnn_30/simple_rnn_cell_30/MatMulMatMul(simple_rnn_30/simple_rnn_cell_30/mul:z:0>simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2)
'simple_rnn_30/simple_rnn_cell_30/MatMul?
7simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_30_simple_rnn_cell_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype029
7simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
(simple_rnn_30/simple_rnn_cell_30/BiasAddBiasAdd1simple_rnn_30/simple_rnn_cell_30/MatMul:product:0?simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(simple_rnn_30/simple_rnn_cell_30/BiasAdd?
&simple_rnn_30/simple_rnn_cell_30/mul_1Mulsimple_rnn_30/zeros:output:04simple_rnn_30/simple_rnn_cell_30/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????2(
&simple_rnn_30/simple_rnn_cell_30/mul_1?
8simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_30_simple_rnn_cell_30_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02:
8simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
)simple_rnn_30/simple_rnn_cell_30/MatMul_1MatMul*simple_rnn_30/simple_rnn_cell_30/mul_1:z:0@simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2+
)simple_rnn_30/simple_rnn_cell_30/MatMul_1?
$simple_rnn_30/simple_rnn_cell_30/addAddV21simple_rnn_30/simple_rnn_cell_30/BiasAdd:output:03simple_rnn_30/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2&
$simple_rnn_30/simple_rnn_cell_30/add?
%simple_rnn_30/simple_rnn_cell_30/TanhTanh(simple_rnn_30/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2'
%simple_rnn_30/simple_rnn_cell_30/Tanh?
+simple_rnn_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2-
+simple_rnn_30/TensorArrayV2_1/element_shape?
simple_rnn_30/TensorArrayV2_1TensorListReserve4simple_rnn_30/TensorArrayV2_1/element_shape:output:0&simple_rnn_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_30/TensorArrayV2_1j
simple_rnn_30/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_30/time?
&simple_rnn_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&simple_rnn_30/while/maximum_iterations?
 simple_rnn_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_30/while/loop_counter?
simple_rnn_30/whileWhile)simple_rnn_30/while/loop_counter:output:0/simple_rnn_30/while/maximum_iterations:output:0simple_rnn_30/time:output:0&simple_rnn_30/TensorArrayV2_1:handle:0simple_rnn_30/zeros:output:0&simple_rnn_30/strided_slice_1:output:0Esimple_rnn_30/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_30_simple_rnn_cell_30_matmul_readvariableop_resource@simple_rnn_30_simple_rnn_cell_30_biasadd_readvariableop_resourceAsimple_rnn_30_simple_rnn_cell_30_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_30_while_body_78674**
cond"R 
simple_rnn_30_while_cond_78673*8
output_shapes'
%: : : : :?????????: : : : : *
parallel_iterations 2
simple_rnn_30/while?
>simple_rnn_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>simple_rnn_30/TensorArrayV2Stack/TensorListStack/element_shape?
0simple_rnn_30/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_30/while:output:3Gsimple_rnn_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype022
0simple_rnn_30/TensorArrayV2Stack/TensorListStack?
#simple_rnn_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2%
#simple_rnn_30/strided_slice_3/stack?
%simple_rnn_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_30/strided_slice_3/stack_1?
%simple_rnn_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_30/strided_slice_3/stack_2?
simple_rnn_30/strided_slice_3StridedSlice9simple_rnn_30/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_30/strided_slice_3/stack:output:0.simple_rnn_30/strided_slice_3/stack_1:output:0.simple_rnn_30/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
simple_rnn_30/strided_slice_3?
simple_rnn_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_30/transpose_1/perm?
simple_rnn_30/transpose_1	Transpose9simple_rnn_30/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_30/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
simple_rnn_30/transpose_1?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMul&simple_rnn_30/strided_slice_3:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_30/BiasAdd|
dense_30/SigmoidSigmoiddense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_30/Sigmoid?
IdentityIdentitydense_30/Sigmoid:y:0 ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp^embedding_30/embedding_lookup8^simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp7^simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp9^simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp^simple_rnn_30/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2>
embedding_30/embedding_lookupembedding_30/embedding_lookup2r
7simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp7simple_rnn_30/simple_rnn_cell_30/BiasAdd/ReadVariableOp2p
6simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp6simple_rnn_30/simple_rnn_cell_30/MatMul/ReadVariableOp2t
8simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp8simple_rnn_30/simple_rnn_cell_30/MatMul_1/ReadVariableOp2*
simple_rnn_30/whilesimple_rnn_30/while:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_30_layer_call_fn_78929

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_30_layer_call_and_return_conditional_losses_785202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
2__inference_simple_rnn_cell_30_layer_call_fn_79697

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_776622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:????????? :?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0
?	
?
G__inference_embedding_30_layer_call_and_return_conditional_losses_78122

inputs
embedding_lookup_78116
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_78116Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/78116*,
_output_shapes
:?????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/78116*,
_output_shapes
:?????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?@
?
while_body_78347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_30_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_30_matmul_readvariableop_resource<
8while_simple_rnn_cell_30_biasadd_readvariableop_resource=
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource??/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?.while/simple_rnn_cell_30/MatMul/ReadVariableOp?0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/simple_rnn_cell_30/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(while/simple_rnn_cell_30/ones_like/Shape?
(while/simple_rnn_cell_30/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(while/simple_rnn_cell_30/ones_like/Const?
"while/simple_rnn_cell_30/ones_likeFill1while/simple_rnn_cell_30/ones_like/Shape:output:01while/simple_rnn_cell_30/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"while/simple_rnn_cell_30/ones_like?
*while/simple_rnn_cell_30/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2,
*while/simple_rnn_cell_30/ones_like_1/Shape?
*while/simple_rnn_cell_30/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*while/simple_rnn_cell_30/ones_like_1/Const?
$while/simple_rnn_cell_30/ones_like_1Fill3while/simple_rnn_cell_30/ones_like_1/Shape:output:03while/simple_rnn_cell_30/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????2&
$while/simple_rnn_cell_30/ones_like_1?
while/simple_rnn_cell_30/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/simple_rnn_cell_30/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/simple_rnn_cell_30/mul?
.while/simple_rnn_cell_30/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_30_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype020
.while/simple_rnn_cell_30/MatMul/ReadVariableOp?
while/simple_rnn_cell_30/MatMulMatMul while/simple_rnn_cell_30/mul:z:06while/simple_rnn_cell_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
while/simple_rnn_cell_30/MatMul?
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype021
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp?
 while/simple_rnn_cell_30/BiasAddBiasAdd)while/simple_rnn_cell_30/MatMul:product:07while/simple_rnn_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 while/simple_rnn_cell_30/BiasAdd?
while/simple_rnn_cell_30/mul_1Mulwhile_placeholder_2-while/simple_rnn_cell_30/ones_like_1:output:0*
T0*'
_output_shapes
:?????????2 
while/simple_rnn_cell_30/mul_1?
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype022
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp?
!while/simple_rnn_cell_30/MatMul_1MatMul"while/simple_rnn_cell_30/mul_1:z:08while/simple_rnn_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!while/simple_rnn_cell_30/MatMul_1?
while/simple_rnn_cell_30/addAddV2)while/simple_rnn_cell_30/BiasAdd:output:0+while/simple_rnn_cell_30/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/add?
while/simple_rnn_cell_30/TanhTanh while/simple_rnn_cell_30/add:z:0*
T0*'
_output_shapes
:?????????2
while/simple_rnn_cell_30/Tanh?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_30/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity!while/simple_rnn_cell_30/Tanh:y:00^while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_30/MatMul/ReadVariableOp1^while/simple_rnn_cell_30/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_30_biasadd_readvariableop_resource:while_simple_rnn_cell_30_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_30_matmul_1_readvariableop_resource;while_simple_rnn_cell_30_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_30_matmul_readvariableop_resource9while_simple_rnn_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :?????????: : :::2b
/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp/while/simple_rnn_cell_30/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_30/MatMul/ReadVariableOp.while/simple_rnn_cell_30/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp0while/simple_rnn_cell_30/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_30_layer_call_fn_78946

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_30_layer_call_and_return_conditional_losses_785562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
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
R
embedding_30_input<
$serving_default_embedding_30_input:0??????????<
dense_300
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?&
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
*V&call_and_return_all_conditional_losses
W__call__
X_default_save_signature"?$
_tf_keras_sequential?${"class_name": "Sequential", "name": "sequential_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_30", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_30_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_30", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "input_dim": 10000, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 200}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_30", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 2, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_30", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_30_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_30", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "input_dim": 10000, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 200}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_30", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 2, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?


embeddings
	variables
trainable_variables
regularization_losses
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_30", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_30", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "input_dim": 10000, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 200}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"?	
_tf_keras_rnn_layer?	{"class_name": "SimpleRNN", "name": "simple_rnn_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_30", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 2, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 32]}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2]}}
?
iter

beta_1

beta_2
	decay
learning_ratemLmM mN!mO"mPvQvR vS!vT"vU"
	optimizer
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
C
 0
!1
"2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
#layer_metrics
	variables
$non_trainable_variables

%layers
&layer_regularization_losses
trainable_variables
regularization_losses
'metrics
W__call__
X_default_save_signature
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
,
_serving_default"
signature_map
*:(	?N 2embedding_30/embeddings
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
(layer_metrics
	variables
)non_trainable_variables

*layers
+layer_regularization_losses
trainable_variables
regularization_losses
,metrics
Z__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
?

 kernel
!recurrent_kernel
"bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
*`&call_and_return_all_conditional_losses
a__call__"?
_tf_keras_layer?{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_30", "trainable": true, "dtype": "float32", "units": 2, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2}}
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

1states
2layer_metrics
	variables
3non_trainable_variables

4layers
5layer_regularization_losses
trainable_variables
regularization_losses
6metrics
\__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
!:2dense_30/kernel
:2dense_30/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
7layer_metrics
	variables
8non_trainable_variables

9layers
:layer_regularization_losses
trainable_variables
regularization_losses
;metrics
^__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
9:7 2'simple_rnn_30/simple_rnn_cell_30/kernel
C:A21simple_rnn_30/simple_rnn_cell_30/recurrent_kernel
3:12%simple_rnn_30/simple_rnn_cell_30/bias
 "
trackable_dict_wrapper
'

0"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_dict_wrapper
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
>layer_metrics
-	variables
?non_trainable_variables

@layers
Alayer_regularization_losses
.trainable_variables
/regularization_losses
Bmetrics
a__call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
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
?
	Ctotal
	Dcount
E	variables
F	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}}
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
:  (2total
:  (2count
.
C0
D1"
trackable_list_wrapper
-
E	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
G0
H1"
trackable_list_wrapper
-
J	variables"
_generic_user_object
&:$2Adam/dense_30/kernel/m
 :2Adam/dense_30/bias/m
>:< 2.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/m
H:F28Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/m
8:62,Adam/simple_rnn_30/simple_rnn_cell_30/bias/m
&:$2Adam/dense_30/kernel/v
 :2Adam/dense_30/bias/v
>:< 2.Adam/simple_rnn_30/simple_rnn_cell_30/kernel/v
H:F28Adam/simple_rnn_30/simple_rnn_cell_30/recurrent_kernel/v
8:62,Adam/simple_rnn_30/simple_rnn_cell_30/bias/v
?2?
H__inference_sequential_30_layer_call_and_return_conditional_losses_78912
H__inference_sequential_30_layer_call_and_return_conditional_losses_78771
H__inference_sequential_30_layer_call_and_return_conditional_losses_78498
H__inference_sequential_30_layer_call_and_return_conditional_losses_78479?
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
?2?
-__inference_sequential_30_layer_call_fn_78535
-__inference_sequential_30_layer_call_fn_78571
-__inference_sequential_30_layer_call_fn_78946
-__inference_sequential_30_layer_call_fn_78929?
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
 __inference__wrapped_model_77564?
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
annotations? *2?/
-?*
embedding_30_input??????????
?2?
G__inference_embedding_30_layer_call_and_return_conditional_losses_78956?
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
,__inference_embedding_30_layer_call_fn_78963?
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
?2?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79433
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79561
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79123
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79251?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_simple_rnn_30_layer_call_fn_79273
-__inference_simple_rnn_30_layer_call_fn_79572
-__inference_simple_rnn_30_layer_call_fn_79262
-__inference_simple_rnn_30_layer_call_fn_79583?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_dense_30_layer_call_and_return_conditional_losses_79594?
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
(__inference_dense_30_layer_call_fn_79603?
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
?B?
#__inference_signature_wrapper_78598embedding_30_input"?
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
 
?2?
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_79669
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_79644?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
2__inference_simple_rnn_cell_30_layer_call_fn_79697
2__inference_simple_rnn_cell_30_layer_call_fn_79683?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
 ?
 __inference__wrapped_model_77564{
 "!<?9
2?/
-?*
embedding_30_input??????????
? "3?0
.
dense_30"?
dense_30??????????
C__inference_dense_30_layer_call_and_return_conditional_losses_79594\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
(__inference_dense_30_layer_call_fn_79603O/?,
%?"
 ?
inputs?????????
? "???????????
G__inference_embedding_30_layer_call_and_return_conditional_losses_78956a
0?-
&?#
!?
inputs??????????
? "*?'
 ?
0?????????? 
? ?
,__inference_embedding_30_layer_call_fn_78963T
0?-
&?#
!?
inputs??????????
? "??????????? ?
H__inference_sequential_30_layer_call_and_return_conditional_losses_78479u
 "!D?A
:?7
-?*
embedding_30_input??????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_30_layer_call_and_return_conditional_losses_78498u
 "!D?A
:?7
-?*
embedding_30_input??????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_30_layer_call_and_return_conditional_losses_78771i
 "!8?5
.?+
!?
inputs??????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_30_layer_call_and_return_conditional_losses_78912i
 "!8?5
.?+
!?
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
-__inference_sequential_30_layer_call_fn_78535h
 "!D?A
:?7
-?*
embedding_30_input??????????
p

 
? "???????????
-__inference_sequential_30_layer_call_fn_78571h
 "!D?A
:?7
-?*
embedding_30_input??????????
p 

 
? "???????????
-__inference_sequential_30_layer_call_fn_78929\
 "!8?5
.?+
!?
inputs??????????
p

 
? "???????????
-__inference_sequential_30_layer_call_fn_78946\
 "!8?5
.?+
!?
inputs??????????
p 

 
? "???????????
#__inference_signature_wrapper_78598?
 "!R?O
? 
H?E
C
embedding_30_input-?*
embedding_30_input??????????"3?0
.
dense_30"?
dense_30??????????
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79123n "!@?=
6?3
%?"
inputs?????????? 

 
p

 
? "%?"
?
0?????????
? ?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79251n "!@?=
6?3
%?"
inputs?????????? 

 
p 

 
? "%?"
?
0?????????
? ?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79433} "!O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "%?"
?
0?????????
? ?
H__inference_simple_rnn_30_layer_call_and_return_conditional_losses_79561} "!O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "%?"
?
0?????????
? ?
-__inference_simple_rnn_30_layer_call_fn_79262a "!@?=
6?3
%?"
inputs?????????? 

 
p

 
? "???????????
-__inference_simple_rnn_30_layer_call_fn_79273a "!@?=
6?3
%?"
inputs?????????? 

 
p 

 
? "???????????
-__inference_simple_rnn_30_layer_call_fn_79572p "!O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "???????????
-__inference_simple_rnn_30_layer_call_fn_79583p "!O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "???????????
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_79644? "!\?Y
R?O
 ?
inputs????????? 
'?$
"?
states/0?????????
p
? "R?O
H?E
?
0/0?????????
$?!
?
0/1/0?????????
? ?
M__inference_simple_rnn_cell_30_layer_call_and_return_conditional_losses_79669? "!\?Y
R?O
 ?
inputs????????? 
'?$
"?
states/0?????????
p 
? "R?O
H?E
?
0/0?????????
$?!
?
0/1/0?????????
? ?
2__inference_simple_rnn_cell_30_layer_call_fn_79683? "!\?Y
R?O
 ?
inputs????????? 
'?$
"?
states/0?????????
p
? "D?A
?
0?????????
"?
?
1/0??????????
2__inference_simple_rnn_cell_30_layer_call_fn_79697? "!\?Y
R?O
 ?
inputs????????? 
'?$
"?
states/0?????????
p 
? "D?A
?
0?????????
"?
?
1/0?????????