┤с 
▓KГK
9
Add
x"T
y"T
z"T"
Ttype:
2	
V
AddN
inputs"T*N
sum"T"
Nint(0" 
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
э
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА"
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Ъ
ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
r
	AssignAdd
ref"TА

value"T

output_ref"TА"
Ttype:
2	"
use_lockingbool( 
r
	AssignSub
ref"TА

value"T

output_ref"TА"
Ttype:
2	"
use_lockingbool( 
}
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
}
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

ControlTrigger
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

A
Equal
x"T
y"T
z
"
Ttype:
2	
Р
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
+
Floor
x"T
y"T"
Ttype:
2
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
М
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
A
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
З
Iterator

handle"
shared_namestring"
	containerstring"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
Л
IteratorFromStringHandle
string_handle
resource_handle" 
output_types
list(type)
 (""
output_shapeslist(shape)
 (И
А
IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
1
L2Loss
t"T
output"T"
Ttype:
2
9
Less
x"T
y"T
z
"
Ttype:
2	
\
ListDiff
x"T
y"T
out"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
!
LoopCond	
input


output

,
MakeIterator
dataset
iteratorИ
│

MapDataset
input_dataset
other_arguments2
Targuments

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
Л
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	Р
М
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
Л
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р
-
Neg
x"T
y"T"
Ttype:
	2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
п
OneShotIterator

handle"
dataset_factoryfunc"
output_types
list(type)(0" 
output_shapeslist(shape)(0"
	containerstring "
shared_namestring И
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
╦
PaddedBatchDataset
input_dataset

batch_size	
padded_shapes	*N
padding_values2Toutput_types

handle"
Toutput_types
list(type)(0" 
output_shapeslist(shape)(0"
Nint(0
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
М
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0И
К
ReverseSequence

input"T
seq_lengths"Tlen
output"T"
seq_dimint"
	batch_dimint "	
Ttype"
Tlentype0	:
2	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
O
ScalarSummary
tags
values"T
summary"
Ttype:
2	
д

ScatterAdd
ref"TА
indices"Tindices
updates"T

output_ref"TА"
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
/
Sigmoid
x"T
y"T"
Ttype:	
2
<
SigmoidGrad
y"T
dy"T
z"T"
Ttype:	
2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
Т
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
,
Sqrt
x"T
y"T"
Ttype:	
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
A

StackPopV2

handle
elem"	elem_type"
	elem_typetypeИ
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( И
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring И
Ў
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
9
Sub
x"T
y"T
z"T"
Ttype:
2	
Л
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
V
TFRecordDataset
	filenames
compression_type
buffer_size	

handleИ
,
Tanh
x"T
y"T"
Ttype:	
2
9
TanhGrad
y"T
dy"T
z"T"
Ttype:	
2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestringИ
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
╕
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
Т
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments
output"T"
Ttype:
2	"
Tindicestype:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
D
Where

input"T	
index	"$
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*	1.4.0-rc02v1.3.0-rc1-3448-g50f09ea╗Х
i
	filenamesConst*,
value#B!B/tmp/training.tf_record*
dtype0*
_output_shapes
:
U
compression_typeConst*
valueB
 BZLIB*
dtype0*
_output_shapes
: 
O
buffer_sizeConst*
valueB		 RАА*
dtype0	*
_output_shapes
: 
Q
buffer_size_1Const*
valueB		 RЁУ	*
dtype0	*
_output_shapes
: 
F
seedConst*
value	B	 R *
dtype0	*
_output_shapes
: 
G
seed2Const*
value	B	 R *
dtype0	*
_output_shapes
: 
P
countConst*
dtype0	*
_output_shapes
: *
valueB	 R
         
H
ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Z
Const_1Const*
valueB	R
         *
dtype0	*
_output_shapes
:
Z
Const_2Const*
dtype0	*
_output_shapes
:*
valueB	R
         
O
padding_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Q
padding_value_1Const*
dtype0	*
_output_shapes
: *
value	B	 R 
Q
padding_value_2Const*
value	B	 R *
dtype0	*
_output_shapes
: 
m
filenames_1Const*.
value%B#B/tmp/validation.tf_record*
dtype0*
_output_shapes
:
W
compression_type_1Const*
valueB
 BZLIB*
dtype0*
_output_shapes
: 
Q
buffer_size_2Const*
valueB		 RАА*
dtype0	*
_output_shapes
: 
J
Const_3Const*
valueB	 *
dtype0	*
_output_shapes
: 
Z
Const_4Const*
_output_shapes
:*
valueB	R
         *
dtype0	
Z
Const_5Const*
valueB	R
         *
dtype0	*
_output_shapes
:
Q
padding_value_3Const*
dtype0	*
_output_shapes
: *
value	B	 R 
Q
padding_value_4Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Q
padding_value_5Const*
dtype0	*
_output_shapes
: *
value	B	 R 
L
PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 
╬
IteratorFromStringHandleIteratorFromStringHandlePlaceholder*
output_types
2			*Z
output_shapesI
G:         :                  :                  *
_output_shapes
: 
О
IteratorGetNextIteratorGetNextIteratorFromStringHandle*Z
output_shapesI
G:         :                  :                  *[
_output_shapesI
G:         :                  :                  *
output_types
2			
В
OneShotIteratorOneShotIterator*
_output_shapes
: *-
dataset_factoryR
_make_dataset_9be6fe52*
shared_name *Z
output_shapesI
G:         :                  :                  *
	container *
output_types
2			
┼
IteratorIterator*
output_types
2			*
shared_name *Z
output_shapesI
G:         :                  :                  *
_output_shapes
: *
	container 
З
TFRecordDatasetTFRecordDatasetfilenames_1compression_type_1buffer_size_2*
_output_shapes
: *
_class
loc:@Iterator
▌

MapDataset
MapDatasetTFRecordDataset*

Targuments
 *
_output_shapes
: *3
output_shapes"
 : :         :         *
_class
loc:@Iterator*
fR
tf_map_func_44a91aae*
output_types
2			
}
PaddedBatchDataset/batch_sizeConst*
_output_shapes
: *
value
B	 RА*
_class
loc:@Iterator*
dtype0	
╒
PaddedBatchDatasetPaddedBatchDataset
MapDatasetPaddedBatchDataset/batch_sizeConst_3Const_4Const_5padding_value_3padding_value_4padding_value_5*Z
output_shapesI
G:         :                  :                  *
Toutput_types
2			*
_class
loc:@Iterator*
N*
_output_shapes
: 
W
MakeIteratorMakeIteratorPaddedBatchDatasetIterator*
_class
loc:@Iterator
N
Placeholder_1Placeholder*
dtype0
*
_output_shapes
: *
shape: 
K
CastCastPlaceholder_1*

SrcT0
*
_output_shapes
: *

DstT0
J
mul/yConst*
valueB
 *  @?*
dtype0*
_output_shapes
: 
8
mulMulCastmul/y*
_output_shapes
: *
T0
e
random_uniform/shapeConst*
valueB"▓   А   *
dtype0*
_output_shapes
:
W
random_uniform/minConst*
_output_shapes
: *
valueB
 *  А┐*
dtype0
W
random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
Ф
random_uniform/RandomUniformRandomUniformrandom_uniform/shape*
dtype0* 
_output_shapes
:
▓А*
seed2 *

seed *
T0
b
random_uniform/subSubrandom_uniform/maxrandom_uniform/min*
_output_shapes
: *
T0
v
random_uniform/mulMulrandom_uniform/RandomUniformrandom_uniform/sub*
T0* 
_output_shapes
:
▓А
h
random_uniformAddrandom_uniform/mulrandom_uniform/min*
T0* 
_output_shapes
:
▓А
А
Variable
VariableV2* 
_output_shapes
:
▓А*
	container *
shape:
▓А*
shared_name *
dtype0
д
Variable/AssignAssignVariablerandom_uniform*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
▓А
k
Variable/readIdentityVariable*
_class
loc:@Variable* 
_output_shapes
:
▓А*
T0
╟
embedding_lookupGatherVariable/readIteratorGetNext:1*
Tindices0	*
validate_indices(*
Tparams0*
_class
loc:@Variable*5
_output_shapes#
!:                  А
J
sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
7
subSubsub/xmul*
_output_shapes
: *
T0
]
DropoutWrapperInit/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
_
DropoutWrapperInit/Const_1Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
[
bidirectional_rnn/fw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
b
 bidirectional_rnn/fw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
b
 bidirectional_rnn/fw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
к
bidirectional_rnn/fw/rangeRange bidirectional_rnn/fw/range/startbidirectional_rnn/fw/Rank bidirectional_rnn/fw/range/delta*
_output_shapes
:*

Tidx0
u
$bidirectional_rnn/fw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
b
 bidirectional_rnn/fw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
┼
bidirectional_rnn/fw/concatConcatV2$bidirectional_rnn/fw/concat/values_0bidirectional_rnn/fw/range bidirectional_rnn/fw/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
з
bidirectional_rnn/fw/transpose	Transposeembedding_lookupbidirectional_rnn/fw/concat*5
_output_shapes#
!:                  А*
Tperm0*
T0
r
bidirectional_rnn/fw/ToInt32CastIteratorGetNext*#
_output_shapes
:         *

DstT0*

SrcT0	
|
$bidirectional_rnn/fw/sequence_lengthIdentitybidirectional_rnn/fw/ToInt32*
T0*#
_output_shapes
:         
{
bidirectional_rnn/fw/fw/ShapeShapebidirectional_rnn/fw/transpose*
_output_shapes
:*
T0*
out_type0
u
+bidirectional_rnn/fw/fw/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-bidirectional_rnn/fw/fw/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
w
-bidirectional_rnn/fw/fw/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ё
%bidirectional_rnn/fw/fw/strided_sliceStridedSlicebidirectional_rnn/fw/fw/Shape+bidirectional_rnn/fw/fw/strided_slice/stack-bidirectional_rnn/fw/fw/strided_slice/stack_1-bidirectional_rnn/fw/fw/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
С
Obidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
В
Kbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims
ExpandDims%bidirectional_rnn/fw/fw/strided_sliceObidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
С
Fbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
О
Lbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ё
Gbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/concatConcatV2Kbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDimsFbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ConstLbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
С
Lbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ш
Fbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zerosFillGbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/concatLbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros/Const*(
_output_shapes
:         А*
T0
У
Qbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
Mbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1
ExpandDims%bidirectional_rnn/fw/fw/strided_sliceQbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1/dim*
T0*
_output_shapes
:*

Tdim0
У
Hbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/Const_1Const*
_output_shapes
:*
valueB:А*
dtype0
Г
bidirectional_rnn/fw/fw/Shape_1Shape$bidirectional_rnn/fw/sequence_length*
T0*
out_type0*
_output_shapes
:
Ж
bidirectional_rnn/fw/fw/stackPack%bidirectional_rnn/fw/fw/strided_slice*

axis *
N*
_output_shapes
:*
T0
Л
bidirectional_rnn/fw/fw/EqualEqualbidirectional_rnn/fw/fw/Shape_1bidirectional_rnn/fw/fw/stack*
_output_shapes
:*
T0
g
bidirectional_rnn/fw/fw/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Х
bidirectional_rnn/fw/fw/AllAllbidirectional_rnn/fw/fw/Equalbidirectional_rnn/fw/fw/Const*

Tidx0*
	keep_dims( *
_output_shapes
: 
й
$bidirectional_rnn/fw/fw/Assert/ConstConst*U
valueLBJ BDExpected shape for Tensor bidirectional_rnn/fw/sequence_length:0 is *
dtype0*
_output_shapes
: 
w
&bidirectional_rnn/fw/fw/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
▒
,bidirectional_rnn/fw/fw/Assert/Assert/data_0Const*U
valueLBJ BDExpected shape for Tensor bidirectional_rnn/fw/sequence_length:0 is *
dtype0*
_output_shapes
: 
}
,bidirectional_rnn/fw/fw/Assert/Assert/data_2Const*
_output_shapes
: *!
valueB B but saw shape: *
dtype0
И
%bidirectional_rnn/fw/fw/Assert/AssertAssertbidirectional_rnn/fw/fw/All,bidirectional_rnn/fw/fw/Assert/Assert/data_0bidirectional_rnn/fw/fw/stack,bidirectional_rnn/fw/fw/Assert/Assert/data_2bidirectional_rnn/fw/fw/Shape_1*
T
2*
	summarize
л
#bidirectional_rnn/fw/fw/CheckSeqLenIdentity$bidirectional_rnn/fw/sequence_length&^bidirectional_rnn/fw/fw/Assert/Assert*
T0*#
_output_shapes
:         
}
bidirectional_rnn/fw/fw/Shape_2Shapebidirectional_rnn/fw/transpose*
out_type0*
_output_shapes
:*
T0
w
-bidirectional_rnn/fw/fw/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/bidirectional_rnn/fw/fw/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
y
/bidirectional_rnn/fw/fw/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
√
'bidirectional_rnn/fw/fw/strided_slice_1StridedSlicebidirectional_rnn/fw/fw/Shape_2-bidirectional_rnn/fw/fw/strided_slice_1/stack/bidirectional_rnn/fw/fw/strided_slice_1/stack_1/bidirectional_rnn/fw/fw/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
}
bidirectional_rnn/fw/fw/Shape_3Shapebidirectional_rnn/fw/transpose*
T0*
out_type0*
_output_shapes
:
w
-bidirectional_rnn/fw/fw/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
y
/bidirectional_rnn/fw/fw/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/fw/fw/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
√
'bidirectional_rnn/fw/fw/strided_slice_2StridedSlicebidirectional_rnn/fw/fw/Shape_3-bidirectional_rnn/fw/fw/strided_slice_2/stack/bidirectional_rnn/fw/fw/strided_slice_2/stack_1/bidirectional_rnn/fw/fw/strided_slice_2/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
h
&bidirectional_rnn/fw/fw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
▓
"bidirectional_rnn/fw/fw/ExpandDims
ExpandDims'bidirectional_rnn/fw/fw/strided_slice_2&bidirectional_rnn/fw/fw/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
j
bidirectional_rnn/fw/fw/Const_1Const*
dtype0*
_output_shapes
:*
valueB:А
e
#bidirectional_rnn/fw/fw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╬
bidirectional_rnn/fw/fw/concatConcatV2"bidirectional_rnn/fw/fw/ExpandDimsbidirectional_rnn/fw/fw/Const_1#bidirectional_rnn/fw/fw/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
h
#bidirectional_rnn/fw/fw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Э
bidirectional_rnn/fw/fw/zerosFillbidirectional_rnn/fw/fw/concat#bidirectional_rnn/fw/fw/zeros/Const*
T0*(
_output_shapes
:         А
i
bidirectional_rnn/fw/fw/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
ж
bidirectional_rnn/fw/fw/MinMin#bidirectional_rnn/fw/fw/CheckSeqLenbidirectional_rnn/fw/fw/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
i
bidirectional_rnn/fw/fw/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
ж
bidirectional_rnn/fw/fw/MaxMax#bidirectional_rnn/fw/fw/CheckSeqLenbidirectional_rnn/fw/fw/Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
^
bidirectional_rnn/fw/fw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
Р
#bidirectional_rnn/fw/fw/TensorArrayTensorArrayV3'bidirectional_rnn/fw/fw/strided_slice_1*C
tensor_array_name.,bidirectional_rnn/fw/fw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:*
dynamic_size( *
clear_after_read(
С
%bidirectional_rnn/fw/fw/TensorArray_1TensorArrayV3'bidirectional_rnn/fw/fw/strided_slice_1*B
tensor_array_name-+bidirectional_rnn/fw/fw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:*
dynamic_size( *
clear_after_read(
О
0bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeShapebidirectional_rnn/fw/transpose*
_output_shapes
:*
T0*
out_type0
И
>bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
К
@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
К
@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
╨
8bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceStridedSlice0bidirectional_rnn/fw/fw/TensorArrayUnstack/Shape>bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
x
6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
x
6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ф
0bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeRange6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/start8bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:         
р
Rbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3%bidirectional_rnn/fw/fw/TensorArray_10bidirectional_rnn/fw/fw/TensorArrayUnstack/rangebidirectional_rnn/fw/transpose'bidirectional_rnn/fw/fw/TensorArray_1:1*
_output_shapes
: *
T0*1
_class'
%#loc:@bidirectional_rnn/fw/transpose
╓
#bidirectional_rnn/fw/fw/while/EnterEnterbidirectional_rnn/fw/fw/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
с
%bidirectional_rnn/fw/fw/while/Enter_1Enter%bidirectional_rnn/fw/fw/TensorArray:1*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
Ф
%bidirectional_rnn/fw/fw/while/Enter_2EnterFbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros*(
_output_shapes
:         А*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( *
parallel_iterations 
к
#bidirectional_rnn/fw/fw/while/MergeMerge#bidirectional_rnn/fw/fw/while/Enter+bidirectional_rnn/fw/fw/while/NextIteration*
T0*
N*
_output_shapes
: : 
░
%bidirectional_rnn/fw/fw/while/Merge_1Merge%bidirectional_rnn/fw/fw/while/Enter_1-bidirectional_rnn/fw/fw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
┬
%bidirectional_rnn/fw/fw/while/Merge_2Merge%bidirectional_rnn/fw/fw/while/Enter_2-bidirectional_rnn/fw/fw/while/NextIteration_2*
T0*
N**
_output_shapes
:         А: 
ц
(bidirectional_rnn/fw/fw/while/Less/EnterEnter'bidirectional_rnn/fw/fw/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
Ъ
"bidirectional_rnn/fw/fw/while/LessLess#bidirectional_rnn/fw/fw/while/Merge(bidirectional_rnn/fw/fw/while/Less/Enter*
_output_shapes
: *
T0
n
&bidirectional_rnn/fw/fw/while/LoopCondLoopCond"bidirectional_rnn/fw/fw/while/Less*
_output_shapes
: 
╓
$bidirectional_rnn/fw/fw/while/SwitchSwitch#bidirectional_rnn/fw/fw/while/Merge&bidirectional_rnn/fw/fw/while/LoopCond*
T0*6
_class,
*(loc:@bidirectional_rnn/fw/fw/while/Merge*
_output_shapes
: : 
▄
&bidirectional_rnn/fw/fw/while/Switch_1Switch%bidirectional_rnn/fw/fw/while/Merge_1&bidirectional_rnn/fw/fw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/fw/while/Merge_1*
_output_shapes
: : 
А
&bidirectional_rnn/fw/fw/while/Switch_2Switch%bidirectional_rnn/fw/fw/while/Merge_2&bidirectional_rnn/fw/fw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/fw/while/Merge_2*<
_output_shapes*
(:         А:         А
{
&bidirectional_rnn/fw/fw/while/IdentityIdentity&bidirectional_rnn/fw/fw/while/Switch:1*
T0*
_output_shapes
: 

(bidirectional_rnn/fw/fw/while/Identity_1Identity(bidirectional_rnn/fw/fw/while/Switch_1:1*
T0*
_output_shapes
: 
С
(bidirectional_rnn/fw/fw/while/Identity_2Identity(bidirectional_rnn/fw/fw/while/Switch_2:1*
T0*(
_output_shapes
:         А
ї
5bidirectional_rnn/fw/fw/while/TensorArrayReadV3/EnterEnter%bidirectional_rnn/fw/fw/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
а
7bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1EnterRbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
У
/bidirectional_rnn/fw/fw/while/TensorArrayReadV3TensorArrayReadV35bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter&bidirectional_rnn/fw/fw/while/Identity7bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:         А
█
Kbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
valueB"      *
dtype0*
_output_shapes
:
═
Ibidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
valueB
 *╫│▌╜*
dtype0*
_output_shapes
: 
═
Ibidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
valueB
 *╫│▌=*
dtype0*
_output_shapes
: 
┴
Sbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniformKbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
АА*

seed *
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
seed2 
╞
Ibidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/subSubIbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/maxIbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
_output_shapes
: 
┌
Ibidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/mulMulSbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformIbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
╠
Ebidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniformAddIbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/mulIbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
с
*bidirectional_rnn/fw/gru_cell/gates/kernel
VariableV2*
dtype0* 
_output_shapes
:
АА*
shared_name *=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
	container *
shape:
АА
┴
1bidirectional_rnn/fw/gru_cell/gates/kernel/AssignAssign*bidirectional_rnn/fw/gru_cell/gates/kernelEbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform*
use_locking(*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
АА
Т
/bidirectional_rnn/fw/gru_cell/gates/kernel/readIdentity*bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА*
T0
╞
:bidirectional_rnn/fw/gru_cell/gates/bias/Initializer/ConstConst*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
valueBА*  А?*
dtype0*
_output_shapes	
:А
╙
(bidirectional_rnn/fw/gru_cell/gates/bias
VariableV2*
shared_name *;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
л
/bidirectional_rnn/fw/gru_cell/gates/bias/AssignAssign(bidirectional_rnn/fw/gru_cell/gates/bias:bidirectional_rnn/fw/gru_cell/gates/bias/Initializer/Const*
use_locking(*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:А
Й
-bidirectional_rnn/fw/gru_cell/gates/bias/readIdentity(bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А*
T0
а
5bidirectional_rnn/fw/fw/while/fw/gru_cell/concat/axisConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ц
0bidirectional_rnn/fw/fw/while/fw/gru_cell/concatConcatV2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3(bidirectional_rnn/fw/fw/while/Identity_25bidirectional_rnn/fw/fw/while/fw/gru_cell/concat/axis*(
_output_shapes
:         А*

Tidx0*
T0*
N
Ж
6bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/EnterEnter/bidirectional_rnn/fw/gru_cell/gates/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
¤
0bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMulMatMul0bidirectional_rnn/fw/fw/while/fw/gru_cell/concat6bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter*
transpose_b( *
T0*(
_output_shapes
:         А*
transpose_a( 
А
7bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/EnterEnter-bidirectional_rnn/fw/gru_cell/gates/bias/read*
_output_shapes	
:А*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
ё
1bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAddBiasAdd0bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul7bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:         А
в
1bidirectional_rnn/fw/fw/while/fw/gru_cell/SigmoidSigmoid1bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd*(
_output_shapes
:         А*
T0
Ъ
/bidirectional_rnn/fw/fw/while/fw/gru_cell/ConstConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
д
9bidirectional_rnn/fw/fw/while/fw/gru_cell/split/split_dimConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
■
/bidirectional_rnn/fw/fw/while/fw/gru_cell/splitSplit9bidirectional_rnn/fw/fw/while/fw/gru_cell/split/split_dim1bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid*<
_output_shapes*
(:         А:         А*
	num_split*
T0
┬
-bidirectional_rnn/fw/fw/while/fw/gru_cell/mulMul/bidirectional_rnn/fw/fw/while/fw/gru_cell/split(bidirectional_rnn/fw/fw/while/Identity_2*
T0*(
_output_shapes
:         А
у
Obidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
valueB"   А   
╒
Mbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/minConst*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
valueB
 *   ╛*
dtype0*
_output_shapes
: 
╒
Mbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/maxConst*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
valueB
 *   >*
dtype0*
_output_shapes
: 
═
Wbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniformRandomUniformObidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
АА*

seed *
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
seed2 
╓
Mbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/subSubMbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/maxMbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/min*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
_output_shapes
: 
ъ
Mbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/mulMulWbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniformMbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/sub*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА*
T0
▄
Ibidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniformAddMbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/mulMbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/min*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА*
T0
щ
.bidirectional_rnn/fw/gru_cell/candidate/kernel
VariableV2*
dtype0* 
_output_shapes
:
АА*
shared_name *A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
	container *
shape:
АА
╤
5bidirectional_rnn/fw/gru_cell/candidate/kernel/AssignAssign.bidirectional_rnn/fw/gru_cell/candidate/kernelIbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0
Ъ
3bidirectional_rnn/fw/gru_cell/candidate/kernel/readIdentity.bidirectional_rnn/fw/gru_cell/candidate/kernel*
T0* 
_output_shapes
:
АА
╬
>bidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/ConstConst*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
█
,bidirectional_rnn/fw/gru_cell/candidate/bias
VariableV2*
_output_shapes	
:А*
shared_name *?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
	container *
shape:А*
dtype0
╗
3bidirectional_rnn/fw/gru_cell/candidate/bias/AssignAssign,bidirectional_rnn/fw/gru_cell/candidate/bias>bidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/Const*
use_locking(*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:А
С
1bidirectional_rnn/fw/gru_cell/candidate/bias/readIdentity,bidirectional_rnn/fw/gru_cell/candidate/bias*
T0*
_output_shapes	
:А
в
7bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1/axisConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Я
2bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1ConcatV2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3-bidirectional_rnn/fw/fw/while/fw/gru_cell/mul7bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1/axis*
T0*
N*(
_output_shapes
:         А*

Tidx0
М
8bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/EnterEnter3bidirectional_rnn/fw/gru_cell/candidate/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
Г
2bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1MatMul2bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_18bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b( 
Ж
9bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/EnterEnter1bidirectional_rnn/fw/gru_cell/candidate/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
ў
3bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1BiasAdd2bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_19bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter*(
_output_shapes
:         А*
T0*
data_formatNHWC
Ю
.bidirectional_rnn/fw/fw/while/fw/gru_cell/TanhTanh3bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1*
T0*(
_output_shapes
:         А
╞
/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1Mul1bidirectional_rnn/fw/fw/while/fw/gru_cell/split:1(bidirectional_rnn/fw/fw/while/Identity_2*
T0*(
_output_shapes
:         А
Э
/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub/xConst'^bidirectional_rnn/fw/fw/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  А?
╦
-bidirectional_rnn/fw/fw/while/fw/gru_cell/subSub/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub/x1bidirectional_rnn/fw/fw/while/fw/gru_cell/split:1*(
_output_shapes
:         А*
T0
╚
/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2Mul-bidirectional_rnn/fw/fw/while/fw/gru_cell/sub.bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh*
T0*(
_output_shapes
:         А
╔
-bidirectional_rnn/fw/fw/while/fw/gru_cell/addAdd/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2*
T0*(
_output_shapes
:         А
Ш
+bidirectional_rnn/fw/fw/while/dropout/ShapeShape-bidirectional_rnn/fw/fw/while/fw/gru_cell/add*
out_type0*
_output_shapes
:*
T0
ж
8bidirectional_rnn/fw/fw/while/dropout/random_uniform/minConst'^bidirectional_rnn/fw/fw/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
8bidirectional_rnn/fw/fw/while/dropout/random_uniform/maxConst'^bidirectional_rnn/fw/fw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
┘
Bbidirectional_rnn/fw/fw/while/dropout/random_uniform/RandomUniformRandomUniform+bidirectional_rnn/fw/fw/while/dropout/Shape*

seed *
T0*
dtype0*(
_output_shapes
:         А*
seed2 
╘
8bidirectional_rnn/fw/fw/while/dropout/random_uniform/subSub8bidirectional_rnn/fw/fw/while/dropout/random_uniform/max8bidirectional_rnn/fw/fw/while/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ё
8bidirectional_rnn/fw/fw/while/dropout/random_uniform/mulMulBbidirectional_rnn/fw/fw/while/dropout/random_uniform/RandomUniform8bidirectional_rnn/fw/fw/while/dropout/random_uniform/sub*(
_output_shapes
:         А*
T0
т
4bidirectional_rnn/fw/fw/while/dropout/random_uniformAdd8bidirectional_rnn/fw/fw/while/dropout/random_uniform/mul8bidirectional_rnn/fw/fw/while/dropout/random_uniform/min*
T0*(
_output_shapes
:         А
╔
/bidirectional_rnn/fw/fw/while/dropout/add/EnterEntersub*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
╩
)bidirectional_rnn/fw/fw/while/dropout/addAdd/bidirectional_rnn/fw/fw/while/dropout/add/Enter4bidirectional_rnn/fw/fw/while/dropout/random_uniform*
T0*(
_output_shapes
:         А
Т
+bidirectional_rnn/fw/fw/while/dropout/FloorFloor)bidirectional_rnn/fw/fw/while/dropout/add*(
_output_shapes
:         А*
T0
╟
)bidirectional_rnn/fw/fw/while/dropout/divRealDiv-bidirectional_rnn/fw/fw/while/fw/gru_cell/add/bidirectional_rnn/fw/fw/while/dropout/add/Enter*(
_output_shapes
:         А*
T0
╗
)bidirectional_rnn/fw/fw/while/dropout/mulMul)bidirectional_rnn/fw/fw/while/dropout/div+bidirectional_rnn/fw/fw/while/dropout/Floor*
T0*(
_output_shapes
:         А
ў
0bidirectional_rnn/fw/fw/while/GreaterEqual/EnterEnter#bidirectional_rnn/fw/fw/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *#
_output_shapes
:         *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
┬
*bidirectional_rnn/fw/fw/while/GreaterEqualGreaterEqual&bidirectional_rnn/fw/fw/while/Identity0bidirectional_rnn/fw/fw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
о
*bidirectional_rnn/fw/fw/while/Select/EnterEnterbidirectional_rnn/fw/fw/zeros*
T0*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*
parallel_iterations *
is_constant(*(
_output_shapes
:         А*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
в
$bidirectional_rnn/fw/fw/while/SelectSelect*bidirectional_rnn/fw/fw/while/GreaterEqual*bidirectional_rnn/fw/fw/while/Select/Enter)bidirectional_rnn/fw/fw/while/dropout/mul*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*(
_output_shapes
:         А*
T0
─
,bidirectional_rnn/fw/fw/while/GreaterEqual_1GreaterEqual&bidirectional_rnn/fw/fw/while/Identity0bidirectional_rnn/fw/fw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
м
&bidirectional_rnn/fw/fw/while/Select_1Select,bidirectional_rnn/fw/fw/while/GreaterEqual_1(bidirectional_rnn/fw/fw/while/Identity_2-bidirectional_rnn/fw/fw/while/fw/gru_cell/add*
T0*@
_class6
42loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/add*(
_output_shapes
:         А
├
Gbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter#bidirectional_rnn/fw/fw/TensorArray*
T0*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*
parallel_iterations *
is_constant(*
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
ў
Abidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Gbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter&bidirectional_rnn/fw/fw/while/Identity$bidirectional_rnn/fw/fw/while/Select(bidirectional_rnn/fw/fw/while/Identity_1*
T0*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*
_output_shapes
: 
О
#bidirectional_rnn/fw/fw/while/add/yConst'^bidirectional_rnn/fw/fw/while/Identity*
_output_shapes
: *
value	B :*
dtype0
Ц
!bidirectional_rnn/fw/fw/while/addAdd&bidirectional_rnn/fw/fw/while/Identity#bidirectional_rnn/fw/fw/while/add/y*
T0*
_output_shapes
: 
А
+bidirectional_rnn/fw/fw/while/NextIterationNextIteration!bidirectional_rnn/fw/fw/while/add*
T0*
_output_shapes
: 
в
-bidirectional_rnn/fw/fw/while/NextIteration_1NextIterationAbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
Щ
-bidirectional_rnn/fw/fw/while/NextIteration_2NextIteration&bidirectional_rnn/fw/fw/while/Select_1*(
_output_shapes
:         А*
T0
q
"bidirectional_rnn/fw/fw/while/ExitExit$bidirectional_rnn/fw/fw/while/Switch*
_output_shapes
: *
T0
u
$bidirectional_rnn/fw/fw/while/Exit_1Exit&bidirectional_rnn/fw/fw/while/Switch_1*
_output_shapes
: *
T0
З
$bidirectional_rnn/fw/fw/while/Exit_2Exit&bidirectional_rnn/fw/fw/while/Switch_2*(
_output_shapes
:         А*
T0
ъ
:bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3#bidirectional_rnn/fw/fw/TensorArray$bidirectional_rnn/fw/fw/while/Exit_1*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
: 
о
4bidirectional_rnn/fw/fw/TensorArrayStack/range/startConst*
value	B : *6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
dtype0*
_output_shapes
: 
о
4bidirectional_rnn/fw/fw/TensorArrayStack/range/deltaConst*
value	B :*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
dtype0*
_output_shapes
: 
╚
.bidirectional_rnn/fw/fw/TensorArrayStack/rangeRange4bidirectional_rnn/fw/fw/TensorArrayStack/range/start:bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV34bidirectional_rnn/fw/fw/TensorArrayStack/range/delta*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*#
_output_shapes
:         *

Tidx0
ё
<bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3#bidirectional_rnn/fw/fw/TensorArray.bidirectional_rnn/fw/fw/TensorArrayStack/range$bidirectional_rnn/fw/fw/while/Exit_1*%
element_shape:         А*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
dtype0*5
_output_shapes#
!:                  А
j
bidirectional_rnn/fw/fw/Const_4Const*
dtype0*
_output_shapes
:*
valueB:А
^
bidirectional_rnn/fw/fw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
e
#bidirectional_rnn/fw/fw/range/startConst*
_output_shapes
: *
value	B :*
dtype0
e
#bidirectional_rnn/fw/fw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
╢
bidirectional_rnn/fw/fw/rangeRange#bidirectional_rnn/fw/fw/range/startbidirectional_rnn/fw/fw/Rank#bidirectional_rnn/fw/fw/range/delta*

Tidx0*
_output_shapes
:
z
)bidirectional_rnn/fw/fw/concat_1/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
g
%bidirectional_rnn/fw/fw/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╫
 bidirectional_rnn/fw/fw/concat_1ConcatV2)bidirectional_rnn/fw/fw/concat_1/values_0bidirectional_rnn/fw/fw/range%bidirectional_rnn/fw/fw/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
█
!bidirectional_rnn/fw/fw/transpose	Transpose<bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3 bidirectional_rnn/fw/fw/concat_1*5
_output_shapes#
!:                  А*
Tperm0*
T0
╞
$bidirectional_rnn/bw/ReverseSequenceReverseSequenceembedding_lookupIteratorGetNext*
	batch_dim *
T0*
seq_dim*5
_output_shapes#
!:                  А*

Tlen0	
[
bidirectional_rnn/bw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
b
 bidirectional_rnn/bw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
b
 bidirectional_rnn/bw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
к
bidirectional_rnn/bw/rangeRange bidirectional_rnn/bw/range/startbidirectional_rnn/bw/Rank bidirectional_rnn/bw/range/delta*
_output_shapes
:*

Tidx0
u
$bidirectional_rnn/bw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
b
 bidirectional_rnn/bw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
┼
bidirectional_rnn/bw/concatConcatV2$bidirectional_rnn/bw/concat/values_0bidirectional_rnn/bw/range bidirectional_rnn/bw/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
╗
bidirectional_rnn/bw/transpose	Transpose$bidirectional_rnn/bw/ReverseSequencebidirectional_rnn/bw/concat*
T0*5
_output_shapes#
!:                  А*
Tperm0
r
bidirectional_rnn/bw/ToInt32CastIteratorGetNext*

SrcT0	*#
_output_shapes
:         *

DstT0
|
$bidirectional_rnn/bw/sequence_lengthIdentitybidirectional_rnn/bw/ToInt32*
T0*#
_output_shapes
:         
{
bidirectional_rnn/bw/bw/ShapeShapebidirectional_rnn/bw/transpose*
T0*
out_type0*
_output_shapes
:
u
+bidirectional_rnn/bw/bw/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-bidirectional_rnn/bw/bw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-bidirectional_rnn/bw/bw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ё
%bidirectional_rnn/bw/bw/strided_sliceStridedSlicebidirectional_rnn/bw/bw/Shape+bidirectional_rnn/bw/bw/strided_slice/stack-bidirectional_rnn/bw/bw/strided_slice/stack_1-bidirectional_rnn/bw/bw/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
С
Obidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
В
Kbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims
ExpandDims%bidirectional_rnn/bw/bw/strided_sliceObidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
С
Fbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ConstConst*
_output_shapes
:*
valueB:А*
dtype0
О
Lbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ё
Gbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/concatConcatV2Kbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDimsFbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ConstLbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
С
Lbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ш
Fbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zerosFillGbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/concatLbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros/Const*(
_output_shapes
:         А*
T0
У
Qbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
Mbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1
ExpandDims%bidirectional_rnn/bw/bw/strided_sliceQbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
У
Hbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
Г
bidirectional_rnn/bw/bw/Shape_1Shape$bidirectional_rnn/bw/sequence_length*
_output_shapes
:*
T0*
out_type0
Ж
bidirectional_rnn/bw/bw/stackPack%bidirectional_rnn/bw/bw/strided_slice*
T0*

axis *
N*
_output_shapes
:
Л
bidirectional_rnn/bw/bw/EqualEqualbidirectional_rnn/bw/bw/Shape_1bidirectional_rnn/bw/bw/stack*
_output_shapes
:*
T0
g
bidirectional_rnn/bw/bw/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Х
bidirectional_rnn/bw/bw/AllAllbidirectional_rnn/bw/bw/Equalbidirectional_rnn/bw/bw/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
й
$bidirectional_rnn/bw/bw/Assert/ConstConst*U
valueLBJ BDExpected shape for Tensor bidirectional_rnn/bw/sequence_length:0 is *
dtype0*
_output_shapes
: 
w
&bidirectional_rnn/bw/bw/Assert/Const_1Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
▒
,bidirectional_rnn/bw/bw/Assert/Assert/data_0Const*U
valueLBJ BDExpected shape for Tensor bidirectional_rnn/bw/sequence_length:0 is *
dtype0*
_output_shapes
: 
}
,bidirectional_rnn/bw/bw/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
И
%bidirectional_rnn/bw/bw/Assert/AssertAssertbidirectional_rnn/bw/bw/All,bidirectional_rnn/bw/bw/Assert/Assert/data_0bidirectional_rnn/bw/bw/stack,bidirectional_rnn/bw/bw/Assert/Assert/data_2bidirectional_rnn/bw/bw/Shape_1*
T
2*
	summarize
л
#bidirectional_rnn/bw/bw/CheckSeqLenIdentity$bidirectional_rnn/bw/sequence_length&^bidirectional_rnn/bw/bw/Assert/Assert*
T0*#
_output_shapes
:         
}
bidirectional_rnn/bw/bw/Shape_2Shapebidirectional_rnn/bw/transpose*
T0*
out_type0*
_output_shapes
:
w
-bidirectional_rnn/bw/bw/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/bidirectional_rnn/bw/bw/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/bw/bw/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
√
'bidirectional_rnn/bw/bw/strided_slice_1StridedSlicebidirectional_rnn/bw/bw/Shape_2-bidirectional_rnn/bw/bw/strided_slice_1/stack/bidirectional_rnn/bw/bw/strided_slice_1/stack_1/bidirectional_rnn/bw/bw/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
}
bidirectional_rnn/bw/bw/Shape_3Shapebidirectional_rnn/bw/transpose*
T0*
out_type0*
_output_shapes
:
w
-bidirectional_rnn/bw/bw/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/bw/bw/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/bw/bw/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
√
'bidirectional_rnn/bw/bw/strided_slice_2StridedSlicebidirectional_rnn/bw/bw/Shape_3-bidirectional_rnn/bw/bw/strided_slice_2/stack/bidirectional_rnn/bw/bw/strided_slice_2/stack_1/bidirectional_rnn/bw/bw/strided_slice_2/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
h
&bidirectional_rnn/bw/bw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
▓
"bidirectional_rnn/bw/bw/ExpandDims
ExpandDims'bidirectional_rnn/bw/bw/strided_slice_2&bidirectional_rnn/bw/bw/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
j
bidirectional_rnn/bw/bw/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
e
#bidirectional_rnn/bw/bw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╬
bidirectional_rnn/bw/bw/concatConcatV2"bidirectional_rnn/bw/bw/ExpandDimsbidirectional_rnn/bw/bw/Const_1#bidirectional_rnn/bw/bw/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
h
#bidirectional_rnn/bw/bw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Э
bidirectional_rnn/bw/bw/zerosFillbidirectional_rnn/bw/bw/concat#bidirectional_rnn/bw/bw/zeros/Const*
T0*(
_output_shapes
:         А
i
bidirectional_rnn/bw/bw/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
ж
bidirectional_rnn/bw/bw/MinMin#bidirectional_rnn/bw/bw/CheckSeqLenbidirectional_rnn/bw/bw/Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
i
bidirectional_rnn/bw/bw/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
ж
bidirectional_rnn/bw/bw/MaxMax#bidirectional_rnn/bw/bw/CheckSeqLenbidirectional_rnn/bw/bw/Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
^
bidirectional_rnn/bw/bw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
Р
#bidirectional_rnn/bw/bw/TensorArrayTensorArrayV3'bidirectional_rnn/bw/bw/strided_slice_1*
element_shape:*
dynamic_size( *
clear_after_read(*C
tensor_array_name.,bidirectional_rnn/bw/bw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
С
%bidirectional_rnn/bw/bw/TensorArray_1TensorArrayV3'bidirectional_rnn/bw/bw/strided_slice_1*B
tensor_array_name-+bidirectional_rnn/bw/bw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:*
dynamic_size( *
clear_after_read(
О
0bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeShapebidirectional_rnn/bw/transpose*
T0*
out_type0*
_output_shapes
:
И
>bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
К
@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
К
@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
8bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceStridedSlice0bidirectional_rnn/bw/bw/TensorArrayUnstack/Shape>bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
x
6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startConst*
_output_shapes
: *
value	B : *
dtype0
x
6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ф
0bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeRange6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/start8bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/delta*#
_output_shapes
:         *

Tidx0
р
Rbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3%bidirectional_rnn/bw/bw/TensorArray_10bidirectional_rnn/bw/bw/TensorArrayUnstack/rangebidirectional_rnn/bw/transpose'bidirectional_rnn/bw/bw/TensorArray_1:1*
T0*1
_class'
%#loc:@bidirectional_rnn/bw/transpose*
_output_shapes
: 
╓
#bidirectional_rnn/bw/bw/while/EnterEnterbidirectional_rnn/bw/bw/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
с
%bidirectional_rnn/bw/bw/while/Enter_1Enter%bidirectional_rnn/bw/bw/TensorArray:1*
is_constant( *
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0
Ф
%bidirectional_rnn/bw/bw/while/Enter_2EnterFbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros*(
_output_shapes
:         А*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( *
parallel_iterations 
к
#bidirectional_rnn/bw/bw/while/MergeMerge#bidirectional_rnn/bw/bw/while/Enter+bidirectional_rnn/bw/bw/while/NextIteration*
N*
_output_shapes
: : *
T0
░
%bidirectional_rnn/bw/bw/while/Merge_1Merge%bidirectional_rnn/bw/bw/while/Enter_1-bidirectional_rnn/bw/bw/while/NextIteration_1*
N*
_output_shapes
: : *
T0
┬
%bidirectional_rnn/bw/bw/while/Merge_2Merge%bidirectional_rnn/bw/bw/while/Enter_2-bidirectional_rnn/bw/bw/while/NextIteration_2**
_output_shapes
:         А: *
T0*
N
ц
(bidirectional_rnn/bw/bw/while/Less/EnterEnter'bidirectional_rnn/bw/bw/strided_slice_1*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0
Ъ
"bidirectional_rnn/bw/bw/while/LessLess#bidirectional_rnn/bw/bw/while/Merge(bidirectional_rnn/bw/bw/while/Less/Enter*
T0*
_output_shapes
: 
n
&bidirectional_rnn/bw/bw/while/LoopCondLoopCond"bidirectional_rnn/bw/bw/while/Less*
_output_shapes
: 
╓
$bidirectional_rnn/bw/bw/while/SwitchSwitch#bidirectional_rnn/bw/bw/while/Merge&bidirectional_rnn/bw/bw/while/LoopCond*
T0*6
_class,
*(loc:@bidirectional_rnn/bw/bw/while/Merge*
_output_shapes
: : 
▄
&bidirectional_rnn/bw/bw/while/Switch_1Switch%bidirectional_rnn/bw/bw/while/Merge_1&bidirectional_rnn/bw/bw/while/LoopCond*
_output_shapes
: : *
T0*8
_class.
,*loc:@bidirectional_rnn/bw/bw/while/Merge_1
А
&bidirectional_rnn/bw/bw/while/Switch_2Switch%bidirectional_rnn/bw/bw/while/Merge_2&bidirectional_rnn/bw/bw/while/LoopCond*<
_output_shapes*
(:         А:         А*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/bw/while/Merge_2
{
&bidirectional_rnn/bw/bw/while/IdentityIdentity&bidirectional_rnn/bw/bw/while/Switch:1*
T0*
_output_shapes
: 

(bidirectional_rnn/bw/bw/while/Identity_1Identity(bidirectional_rnn/bw/bw/while/Switch_1:1*
_output_shapes
: *
T0
С
(bidirectional_rnn/bw/bw/while/Identity_2Identity(bidirectional_rnn/bw/bw/while/Switch_2:1*(
_output_shapes
:         А*
T0
ї
5bidirectional_rnn/bw/bw/while/TensorArrayReadV3/EnterEnter%bidirectional_rnn/bw/bw/TensorArray_1*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0
а
7bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1EnterRbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
У
/bidirectional_rnn/bw/bw/while/TensorArrayReadV3TensorArrayReadV35bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter&bidirectional_rnn/bw/bw/while/Identity7bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:         А
в
7bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2/axisConst'^bidirectional_rnn/bw/bw/while/Identity*
_output_shapes
: *
value	B :*
dtype0
Ъ
2bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2ConcatV2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3(bidirectional_rnn/bw/bw/while/Identity_27bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2/axis*
N*(
_output_shapes
:         А*

Tidx0*
T0
И
8bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/EnterEnter/bidirectional_rnn/fw/gru_cell/gates/kernel/read* 
_output_shapes
:
АА*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Г
2bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2MatMul2bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_28bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b( 
В
9bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/EnterEnter-bidirectional_rnn/fw/gru_cell/gates/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
ў
3bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2BiasAdd2bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_29bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter*(
_output_shapes
:         А*
T0*
data_formatNHWC
ж
3bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1Sigmoid3bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2*(
_output_shapes
:         А*
T0
Ь
1bidirectional_rnn/fw/fw/while/fw/gru_cell/Const_1Const'^bidirectional_rnn/bw/bw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
ж
;bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1/split_dimConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Д
1bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1Split;bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1/split_dim3bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1*
T0*<
_output_shapes*
(:         А:         А*
	num_split
╞
/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3Mul1bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1(bidirectional_rnn/bw/bw/while/Identity_2*
T0*(
_output_shapes
:         А
в
7bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3/axisConst'^bidirectional_rnn/bw/bw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
б
2bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3ConcatV2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_37bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3/axis*
T0*
N*(
_output_shapes
:         А*

Tidx0
М
8bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/EnterEnter3bidirectional_rnn/fw/gru_cell/candidate/kernel/read*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0
Г
2bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3MatMul2bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_38bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b( 
Ж
9bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/EnterEnter1bidirectional_rnn/fw/gru_cell/candidate/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
ў
3bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3BiasAdd2bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_39bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter*
T0*
data_formatNHWC*(
_output_shapes
:         А
а
0bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1Tanh3bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3*
T0*(
_output_shapes
:         А
╚
/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4Mul3bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1:1(bidirectional_rnn/bw/bw/while/Identity_2*
T0*(
_output_shapes
:         А
Я
1bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1/xConst'^bidirectional_rnn/bw/bw/while/Identity*
_output_shapes
: *
valueB
 *  А?*
dtype0
╤
/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1Sub1bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1/x3bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1:1*(
_output_shapes
:         А*
T0
╠
/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5Mul/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_10bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1*
T0*(
_output_shapes
:         А
╦
/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1Add/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5*(
_output_shapes
:         А*
T0
Ъ
+bidirectional_rnn/bw/bw/while/dropout/ShapeShape/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1*
T0*
out_type0*
_output_shapes
:
ж
8bidirectional_rnn/bw/bw/while/dropout/random_uniform/minConst'^bidirectional_rnn/bw/bw/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
8bidirectional_rnn/bw/bw/while/dropout/random_uniform/maxConst'^bidirectional_rnn/bw/bw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
┘
Bbidirectional_rnn/bw/bw/while/dropout/random_uniform/RandomUniformRandomUniform+bidirectional_rnn/bw/bw/while/dropout/Shape*

seed *
T0*
dtype0*(
_output_shapes
:         А*
seed2 
╘
8bidirectional_rnn/bw/bw/while/dropout/random_uniform/subSub8bidirectional_rnn/bw/bw/while/dropout/random_uniform/max8bidirectional_rnn/bw/bw/while/dropout/random_uniform/min*
_output_shapes
: *
T0
Ё
8bidirectional_rnn/bw/bw/while/dropout/random_uniform/mulMulBbidirectional_rnn/bw/bw/while/dropout/random_uniform/RandomUniform8bidirectional_rnn/bw/bw/while/dropout/random_uniform/sub*
T0*(
_output_shapes
:         А
т
4bidirectional_rnn/bw/bw/while/dropout/random_uniformAdd8bidirectional_rnn/bw/bw/while/dropout/random_uniform/mul8bidirectional_rnn/bw/bw/while/dropout/random_uniform/min*
T0*(
_output_shapes
:         А
╔
/bidirectional_rnn/bw/bw/while/dropout/add/EnterEntersub*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0
╩
)bidirectional_rnn/bw/bw/while/dropout/addAdd/bidirectional_rnn/bw/bw/while/dropout/add/Enter4bidirectional_rnn/bw/bw/while/dropout/random_uniform*
T0*(
_output_shapes
:         А
Т
+bidirectional_rnn/bw/bw/while/dropout/FloorFloor)bidirectional_rnn/bw/bw/while/dropout/add*(
_output_shapes
:         А*
T0
╔
)bidirectional_rnn/bw/bw/while/dropout/divRealDiv/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1/bidirectional_rnn/bw/bw/while/dropout/add/Enter*
T0*(
_output_shapes
:         А
╗
)bidirectional_rnn/bw/bw/while/dropout/mulMul)bidirectional_rnn/bw/bw/while/dropout/div+bidirectional_rnn/bw/bw/while/dropout/Floor*
T0*(
_output_shapes
:         А
ў
0bidirectional_rnn/bw/bw/while/GreaterEqual/EnterEnter#bidirectional_rnn/bw/bw/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *#
_output_shapes
:         *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
┬
*bidirectional_rnn/bw/bw/while/GreaterEqualGreaterEqual&bidirectional_rnn/bw/bw/while/Identity0bidirectional_rnn/bw/bw/while/GreaterEqual/Enter*#
_output_shapes
:         *
T0
о
*bidirectional_rnn/bw/bw/while/Select/EnterEnterbidirectional_rnn/bw/bw/zeros*
is_constant(*(
_output_shapes
:         А*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*
parallel_iterations 
в
$bidirectional_rnn/bw/bw/while/SelectSelect*bidirectional_rnn/bw/bw/while/GreaterEqual*bidirectional_rnn/bw/bw/while/Select/Enter)bidirectional_rnn/bw/bw/while/dropout/mul*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*(
_output_shapes
:         А
─
,bidirectional_rnn/bw/bw/while/GreaterEqual_1GreaterEqual&bidirectional_rnn/bw/bw/while/Identity0bidirectional_rnn/bw/bw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
░
&bidirectional_rnn/bw/bw/while/Select_1Select,bidirectional_rnn/bw/bw/while/GreaterEqual_1(bidirectional_rnn/bw/bw/while/Identity_2/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1*(
_output_shapes
:         А*
T0*B
_class8
64loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1
├
Gbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter#bidirectional_rnn/bw/bw/TensorArray*
is_constant(*
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*
parallel_iterations 
ў
Abidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Gbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter&bidirectional_rnn/bw/bw/while/Identity$bidirectional_rnn/bw/bw/while/Select(bidirectional_rnn/bw/bw/while/Identity_1*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*
_output_shapes
: 
О
#bidirectional_rnn/bw/bw/while/add/yConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ц
!bidirectional_rnn/bw/bw/while/addAdd&bidirectional_rnn/bw/bw/while/Identity#bidirectional_rnn/bw/bw/while/add/y*
T0*
_output_shapes
: 
А
+bidirectional_rnn/bw/bw/while/NextIterationNextIteration!bidirectional_rnn/bw/bw/while/add*
T0*
_output_shapes
: 
в
-bidirectional_rnn/bw/bw/while/NextIteration_1NextIterationAbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
Щ
-bidirectional_rnn/bw/bw/while/NextIteration_2NextIteration&bidirectional_rnn/bw/bw/while/Select_1*
T0*(
_output_shapes
:         А
q
"bidirectional_rnn/bw/bw/while/ExitExit$bidirectional_rnn/bw/bw/while/Switch*
_output_shapes
: *
T0
u
$bidirectional_rnn/bw/bw/while/Exit_1Exit&bidirectional_rnn/bw/bw/while/Switch_1*
T0*
_output_shapes
: 
З
$bidirectional_rnn/bw/bw/while/Exit_2Exit&bidirectional_rnn/bw/bw/while/Switch_2*(
_output_shapes
:         А*
T0
ъ
:bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3#bidirectional_rnn/bw/bw/TensorArray$bidirectional_rnn/bw/bw/while/Exit_1*
_output_shapes
: *6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray
о
4bidirectional_rnn/bw/bw/TensorArrayStack/range/startConst*
value	B : *6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
о
4bidirectional_rnn/bw/bw/TensorArrayStack/range/deltaConst*
value	B :*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
╚
.bidirectional_rnn/bw/bw/TensorArrayStack/rangeRange4bidirectional_rnn/bw/bw/TensorArrayStack/range/start:bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV34bidirectional_rnn/bw/bw/TensorArrayStack/range/delta*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*#
_output_shapes
:         *

Tidx0
ё
<bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3#bidirectional_rnn/bw/bw/TensorArray.bidirectional_rnn/bw/bw/TensorArrayStack/range$bidirectional_rnn/bw/bw/while/Exit_1*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
dtype0*5
_output_shapes#
!:                  А*%
element_shape:         А
j
bidirectional_rnn/bw/bw/Const_4Const*
valueB:А*
dtype0*
_output_shapes
:
^
bidirectional_rnn/bw/bw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
e
#bidirectional_rnn/bw/bw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
e
#bidirectional_rnn/bw/bw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
╢
bidirectional_rnn/bw/bw/rangeRange#bidirectional_rnn/bw/bw/range/startbidirectional_rnn/bw/bw/Rank#bidirectional_rnn/bw/bw/range/delta*

Tidx0*
_output_shapes
:
z
)bidirectional_rnn/bw/bw/concat_1/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
g
%bidirectional_rnn/bw/bw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╫
 bidirectional_rnn/bw/bw/concat_1ConcatV2)bidirectional_rnn/bw/bw/concat_1/values_0bidirectional_rnn/bw/bw/range%bidirectional_rnn/bw/bw/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
█
!bidirectional_rnn/bw/bw/transpose	Transpose<bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3 bidirectional_rnn/bw/bw/concat_1*
T0*5
_output_shapes#
!:                  А*
Tperm0
┬
ReverseSequenceReverseSequence!bidirectional_rnn/bw/bw/transposeIteratorGetNext*
	batch_dim *
T0*
seq_dim*5
_output_shapes#
!:                  А*

Tlen0	
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
и
concatConcatV2!bidirectional_rnn/fw/fw/transposeReverseSequenceconcat/axis*
T0*
N*5
_output_shapes#
!:                  А*

Tidx0
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
_class
loc:@dense/kernel*
valueB
 *Ц(╛*
dtype0
С
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *Ц(>*
dtype0*
_output_shapes
: 
ц
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	А*

seed *
T0*
_class
loc:@dense/kernel*
seed2 
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
с
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
╙
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
г
dense/kernel
VariableV2*
dtype0*
_output_shapes
:	А*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:	А
╚
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
v
dense/kernel/readIdentitydense/kernel*
_output_shapes
:	А*
T0*
_class
loc:@dense/kernel
И
dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes
:
Х

dense/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense/bias*
	container *
shape:
▓
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
k
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
_output_shapes
:*
T0
[
dense/Tensordot/ShapeShapeconcat*
T0*
out_type0*
_output_shapes
:
V
dense/Tensordot/RankConst*
value	B :*
dtype0*
_output_shapes
: 
^
dense/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
`
dense/Tensordot/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
З
dense/Tensordot/GreaterEqualGreaterEqualdense/Tensordot/axesdense/Tensordot/GreaterEqual/y*
T0*
_output_shapes
:
n
dense/Tensordot/CastCastdense/Tensordot/GreaterEqual*

SrcT0
*
_output_shapes
:*

DstT0
k
dense/Tensordot/mulMuldense/Tensordot/Castdense/Tensordot/axes*
T0*
_output_shapes
:
X
dense/Tensordot/Less/yConst*
value	B : *
dtype0*
_output_shapes
: 
o
dense/Tensordot/LessLessdense/Tensordot/axesdense/Tensordot/Less/y*
T0*
_output_shapes
:
h
dense/Tensordot/Cast_1Castdense/Tensordot/Less*

SrcT0
*
_output_shapes
:*

DstT0
k
dense/Tensordot/addAdddense/Tensordot/axesdense/Tensordot/Rank*
_output_shapes
:*
T0
n
dense/Tensordot/mul_1Muldense/Tensordot/Cast_1dense/Tensordot/add*
T0*
_output_shapes
:
m
dense/Tensordot/add_1Adddense/Tensordot/muldense/Tensordot/mul_1*
_output_shapes
:*
T0
]
dense/Tensordot/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
]
dense/Tensordot/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
dense/Tensordot/rangeRangedense/Tensordot/range/startdense/Tensordot/Rankdense/Tensordot/range/delta*
_output_shapes
:*

Tidx0
Ю
dense/Tensordot/ListDiffListDiffdense/Tensordot/rangedense/Tensordot/add_1*
out_idx0*
T0*2
_output_shapes 
:         :         
н
dense/Tensordot/GatherGatherdense/Tensordot/Shapedense/Tensordot/ListDiff*
Tindices0*
validate_indices(*
Tparams0*#
_output_shapes
:         
г
dense/Tensordot/Gather_1Gatherdense/Tensordot/Shapedense/Tensordot/add_1*
_output_shapes
:*
Tindices0*
validate_indices(*
Tparams0
_
dense/Tensordot/ConstConst*
_output_shapes
:*
valueB: *
dtype0
Й
dense/Tensordot/ProdProddense/Tensordot/Gatherdense/Tensordot/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
a
dense/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
П
dense/Tensordot/Prod_1Proddense/Tensordot/Gather_1dense/Tensordot/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
]
dense/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
┤
dense/Tensordot/concatConcatV2dense/Tensordot/Gather_1dense/Tensordot/Gatherdense/Tensordot/concat/axis*#
_output_shapes
:         *

Tidx0*
T0*
N
_
dense/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╖
dense/Tensordot/concat_1ConcatV2dense/Tensordot/ListDiffdense/Tensordot/add_1dense/Tensordot/concat_1/axis*

Tidx0*
T0*
N*#
_output_shapes
:         
Е
dense/Tensordot/stackPackdense/Tensordot/Proddense/Tensordot/Prod_1*
T0*

axis *
N*
_output_shapes
:
Э
dense/Tensordot/transpose	Transposeconcatdense/Tensordot/concat_1*
Tperm0*
T0*=
_output_shapes+
):'                           
Э
dense/Tensordot/ReshapeReshapedense/Tensordot/transposedense/Tensordot/stack*
T0*
Tshape0*0
_output_shapes
:                  
q
 dense/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ф
dense/Tensordot/transpose_1	Transposedense/kernel/read dense/Tensordot/transpose_1/perm*
Tperm0*
T0*
_output_shapes
:	А
p
dense/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
Ъ
dense/Tensordot/Reshape_1Reshapedense/Tensordot/transpose_1dense/Tensordot/Reshape_1/shape*
_output_shapes
:	А*
T0*
Tshape0
м
dense/Tensordot/MatMulMatMuldense/Tensordot/Reshapedense/Tensordot/Reshape_1*
transpose_b( *
T0*'
_output_shapes
:         *
transpose_a( 
a
dense/Tensordot/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
_
dense/Tensordot/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╖
dense/Tensordot/concat_2ConcatV2dense/Tensordot/Gatherdense/Tensordot/Const_2dense/Tensordot/concat_2/axis*
T0*
N*#
_output_shapes
:         *

Tidx0
Щ
dense/TensordotReshapedense/Tensordot/MatMuldense/Tensordot/concat_2*
T0*
Tshape0*4
_output_shapes"
 :                  
Р
dense/BiasAddBiasAdddense/Tensordotdense/bias/read*
T0*
data_formatNHWC*4
_output_shapes"
 :                  
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:2*
T0	*
out_type0*
_output_shapes
:
x
+SparseSoftmaxCrossEntropyWithLogits/Shape_1Shapedense/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
(SparseSoftmaxCrossEntropyWithLogits/RankConst*
value	B :*
dtype0*
_output_shapes
: 
k
)SparseSoftmaxCrossEntropyWithLogits/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
д
'SparseSoftmaxCrossEntropyWithLogits/subSub(SparseSoftmaxCrossEntropyWithLogits/Rank)SparseSoftmaxCrossEntropyWithLogits/sub/y*
_output_shapes
: *
T0
k
)SparseSoftmaxCrossEntropyWithLogits/add/yConst*
value	B :*
dtype0*
_output_shapes
: 
г
'SparseSoftmaxCrossEntropyWithLogits/addAdd'SparseSoftmaxCrossEntropyWithLogits/sub)SparseSoftmaxCrossEntropyWithLogits/add/y*
_output_shapes
: *
T0
в
7SparseSoftmaxCrossEntropyWithLogits/strided_slice/stackPack'SparseSoftmaxCrossEntropyWithLogits/sub*
N*
_output_shapes
:*
T0*

axis 
д
9SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_1Pack'SparseSoftmaxCrossEntropyWithLogits/add*
T0*

axis *
N*
_output_shapes
:
Г
9SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
п
1SparseSoftmaxCrossEntropyWithLogits/strided_sliceStridedSlice+SparseSoftmaxCrossEntropyWithLogits/Shape_17SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack9SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_19SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
~
3SparseSoftmaxCrossEntropyWithLogits/Reshape/shape/0Const*
valueB :
         *
dtype0*
_output_shapes
: 
█
1SparseSoftmaxCrossEntropyWithLogits/Reshape/shapePack3SparseSoftmaxCrossEntropyWithLogits/Reshape/shape/01SparseSoftmaxCrossEntropyWithLogits/strided_slice*
T0*

axis *
N*
_output_shapes
:
┴
+SparseSoftmaxCrossEntropyWithLogits/ReshapeReshapedense/BiasAdd1SparseSoftmaxCrossEntropyWithLogits/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:                  
Ж
3SparseSoftmaxCrossEntropyWithLogits/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
╝
-SparseSoftmaxCrossEntropyWithLogits/Reshape_1ReshapeIteratorGetNext:23SparseSoftmaxCrossEntropyWithLogits/Reshape_1/shape*
T0	*
Tshape0*#
_output_shapes
:         
г
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits+SparseSoftmaxCrossEntropyWithLogits/Reshape-SparseSoftmaxCrossEntropyWithLogits/Reshape_1*?
_output_shapes-
+:         :                  *
Tlabels0	*
T0
ї
-SparseSoftmaxCrossEntropyWithLogits/Reshape_2ReshapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits)SparseSoftmaxCrossEntropyWithLogits/Shape*0
_output_shapes
:                  *
T0*
Tshape0
\
SequenceMask/ConstConst*
valueB: *
dtype0*
_output_shapes
:
z
SequenceMask/MaxMaxIteratorGetNextSequenceMask/Const*

Tidx0*
	keep_dims( *
T0	*
_output_shapes
: 
V
SequenceMask/Const_1Const*
dtype0	*
_output_shapes
: *
value	B	 R 
V
SequenceMask/Const_2Const*
value	B	 R*
dtype0	*
_output_shapes
: 
К
SequenceMask/RangeRangeSequenceMask/Const_1SequenceMask/MaxSequenceMask/Const_2*#
_output_shapes
:         *

Tidx0	
f
SequenceMask/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
С
SequenceMask/ExpandDims
ExpandDimsIteratorGetNextSequenceMask/ExpandDims/dim*'
_output_shapes
:         *

Tdim0*
T0	
s
SequenceMask/CastCastSequenceMask/ExpandDims*'
_output_shapes
:         *

DstT0	*

SrcT0	
{
SequenceMask/LessLessSequenceMask/RangeSequenceMask/Cast*
T0	*0
_output_shapes
:                  

boolean_mask/ShapeShape-SparseSoftmaxCrossEntropyWithLogits/Reshape_2*
_output_shapes
:*
T0*
out_type0
j
 boolean_mask/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"boolean_mask/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"boolean_mask/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╛
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape boolean_mask/strided_slice/stack"boolean_mask/strided_slice/stack_1"boolean_mask/strided_slice/stack_2*
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
m
#boolean_mask/Prod/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
Ш
boolean_mask/ProdProdboolean_mask/strided_slice#boolean_mask/Prod/reduction_indices*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Б
boolean_mask/Shape_1Shape-SparseSoftmaxCrossEntropyWithLogits/Reshape_2*
T0*
out_type0*
_output_shapes
:
l
"boolean_mask/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
n
$boolean_mask/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
n
$boolean_mask/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╞
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1"boolean_mask/strided_slice_1/stack$boolean_mask/strided_slice_1/stack_1$boolean_mask/strided_slice_1/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0
q
boolean_mask/concat/values_0Packboolean_mask/Prod*

axis *
N*
_output_shapes
:*
T0
Z
boolean_mask/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
п
boolean_mask/concatConcatV2boolean_mask/concat/values_0boolean_mask/strided_slice_1boolean_mask/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Я
boolean_mask/ReshapeReshape-SparseSoftmaxCrossEntropyWithLogits/Reshape_2boolean_mask/concat*
T0*
Tshape0*#
_output_shapes
:         
o
boolean_mask/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
О
boolean_mask/Reshape_1ReshapeSequenceMask/Lessboolean_mask/Reshape_1/shape*
T0
*
Tshape0*#
_output_shapes
:         
t
boolean_mask/Where/CastCastboolean_mask/Reshape_1*

SrcT0
*#
_output_shapes
:         *

DstT0

]
boolean_mask/WhereWhereboolean_mask/Where/Cast*'
_output_shapes
:         
x
boolean_mask/SqueezeSqueezeboolean_mask/Where*#
_output_shapes
:         *
squeeze_dims
*
T0	
е
boolean_mask/GatherGatherboolean_mask/Reshapeboolean_mask/Squeeze*#
_output_shapes
:         *
Tindices0	*
validate_indices(*
Tparams0
Q
Const_6Const*
valueB: *
dtype0*
_output_shapes
:
h
MeanMeanboolean_mask/GatherConst_6*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Л
ArgMaxArgMaxdense/BiasAddArgMax/dimension*
T0*
output_type0	*0
_output_shapes
:                  *

Tidx0
Z
boolean_mask_1/ShapeShapeArgMax*
T0	*
out_type0*
_output_shapes
:
l
"boolean_mask_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$boolean_mask_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$boolean_mask_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╚
boolean_mask_1/strided_sliceStridedSliceboolean_mask_1/Shape"boolean_mask_1/strided_slice/stack$boolean_mask_1/strided_slice/stack_1$boolean_mask_1/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
o
%boolean_mask_1/Prod/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
Ю
boolean_mask_1/ProdProdboolean_mask_1/strided_slice%boolean_mask_1/Prod/reduction_indices*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
\
boolean_mask_1/Shape_1ShapeArgMax*
_output_shapes
:*
T0	*
out_type0
n
$boolean_mask_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
p
&boolean_mask_1/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
p
&boolean_mask_1/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
╨
boolean_mask_1/strided_slice_1StridedSliceboolean_mask_1/Shape_1$boolean_mask_1/strided_slice_1/stack&boolean_mask_1/strided_slice_1/stack_1&boolean_mask_1/strided_slice_1/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask 
u
boolean_mask_1/concat/values_0Packboolean_mask_1/Prod*
N*
_output_shapes
:*
T0*

axis 
\
boolean_mask_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╖
boolean_mask_1/concatConcatV2boolean_mask_1/concat/values_0boolean_mask_1/strided_slice_1boolean_mask_1/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
|
boolean_mask_1/ReshapeReshapeArgMaxboolean_mask_1/concat*
T0	*
Tshape0*#
_output_shapes
:         
q
boolean_mask_1/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
Т
boolean_mask_1/Reshape_1ReshapeSequenceMask/Lessboolean_mask_1/Reshape_1/shape*
T0
*
Tshape0*#
_output_shapes
:         
x
boolean_mask_1/Where/CastCastboolean_mask_1/Reshape_1*

SrcT0
*#
_output_shapes
:         *

DstT0

a
boolean_mask_1/WhereWhereboolean_mask_1/Where/Cast*'
_output_shapes
:         
|
boolean_mask_1/SqueezeSqueezeboolean_mask_1/Where*
T0	*#
_output_shapes
:         *
squeeze_dims

л
boolean_mask_1/GatherGatherboolean_mask_1/Reshapeboolean_mask_1/Squeeze*#
_output_shapes
:         *
Tindices0	*
validate_indices(*
Tparams0	
e
boolean_mask_2/ShapeShapeIteratorGetNext:2*
T0	*
out_type0*
_output_shapes
:
l
"boolean_mask_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$boolean_mask_2/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
n
$boolean_mask_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╚
boolean_mask_2/strided_sliceStridedSliceboolean_mask_2/Shape"boolean_mask_2/strided_slice/stack$boolean_mask_2/strided_slice/stack_1$boolean_mask_2/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
o
%boolean_mask_2/Prod/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
Ю
boolean_mask_2/ProdProdboolean_mask_2/strided_slice%boolean_mask_2/Prod/reduction_indices*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
g
boolean_mask_2/Shape_1ShapeIteratorGetNext:2*
T0	*
out_type0*
_output_shapes
:
n
$boolean_mask_2/strided_slice_1/stackConst*
_output_shapes
:*
valueB:*
dtype0
p
&boolean_mask_2/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
p
&boolean_mask_2/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
boolean_mask_2/strided_slice_1StridedSliceboolean_mask_2/Shape_1$boolean_mask_2/strided_slice_1/stack&boolean_mask_2/strided_slice_1/stack_1&boolean_mask_2/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
u
boolean_mask_2/concat/values_0Packboolean_mask_2/Prod*
T0*

axis *
N*
_output_shapes
:
\
boolean_mask_2/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╖
boolean_mask_2/concatConcatV2boolean_mask_2/concat/values_0boolean_mask_2/strided_slice_1boolean_mask_2/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
З
boolean_mask_2/ReshapeReshapeIteratorGetNext:2boolean_mask_2/concat*#
_output_shapes
:         *
T0	*
Tshape0
q
boolean_mask_2/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Т
boolean_mask_2/Reshape_1ReshapeSequenceMask/Lessboolean_mask_2/Reshape_1/shape*#
_output_shapes
:         *
T0
*
Tshape0
x
boolean_mask_2/Where/CastCastboolean_mask_2/Reshape_1*#
_output_shapes
:         *

DstT0
*

SrcT0

a
boolean_mask_2/WhereWhereboolean_mask_2/Where/Cast*'
_output_shapes
:         
|
boolean_mask_2/SqueezeSqueezeboolean_mask_2/Where*#
_output_shapes
:         *
squeeze_dims
*
T0	
л
boolean_mask_2/GatherGatherboolean_mask_2/Reshapeboolean_mask_2/Squeeze*
validate_indices(*
Tparams0	*#
_output_shapes
:         *
Tindices0	
Z
Variable_1/initial_valueConst*
value	B : *
dtype0*
_output_shapes
: 
n

Variable_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
к
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
g
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1*
_output_shapes
: 
N
Placeholder_2Placeholder*
shape: *
dtype0*
_output_shapes
: 
_
OptimizeLoss/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
e
 OptimizeLoss/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Д
OptimizeLoss/gradients/FillFillOptimizeLoss/gradients/Shape OptimizeLoss/gradients/grad_ys_0*
_output_shapes
: *
T0
`
OptimizeLoss/gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
╒
 OptimizeLoss/gradients/f_count_1EnterOptimizeLoss/gradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
Щ
OptimizeLoss/gradients/MergeMerge OptimizeLoss/gradients/f_count_1$OptimizeLoss/gradients/NextIteration*
T0*
N*
_output_shapes
: : 
Р
OptimizeLoss/gradients/SwitchSwitchOptimizeLoss/gradients/Merge&bidirectional_rnn/fw/fw/while/LoopCond*
T0*
_output_shapes
: : 
З
OptimizeLoss/gradients/Add/yConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Б
OptimizeLoss/gradients/AddAddOptimizeLoss/gradients/Switch:1OptimizeLoss/gradients/Add/y*
T0*
_output_shapes
: 
к
$OptimizeLoss/gradients/NextIterationNextIterationOptimizeLoss/gradients/Add|^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPushV2V^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPushV2T^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPushV2h^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2j^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1V^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPushV2X^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPushV2h^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2V^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPushV2l^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2n^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1n^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2p^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/StackPushV2n^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2p^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1\^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/StackPushV2^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/StackPushV2l^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2d^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2b^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPushV2d^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPushV2_1l^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2n^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1\^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/StackPushV2f^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2b^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/StackPushV2*
_output_shapes
: *
T0
h
 OptimizeLoss/gradients/f_count_2ExitOptimizeLoss/gradients/Switch*
T0*
_output_shapes
: 
`
OptimizeLoss/gradients/b_countConst*
value	B :*
dtype0*
_output_shapes
: 
ю
 OptimizeLoss/gradients/b_count_1Enter OptimizeLoss/gradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
Э
OptimizeLoss/gradients/Merge_1Merge OptimizeLoss/gradients/b_count_1&OptimizeLoss/gradients/NextIteration_1*
N*
_output_shapes
: : *
T0
ї
)OptimizeLoss/gradients/GreaterEqual/EnterEnterOptimizeLoss/gradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
Я
#OptimizeLoss/gradients/GreaterEqualGreaterEqualOptimizeLoss/gradients/Merge_1)OptimizeLoss/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
i
 OptimizeLoss/gradients/b_count_2LoopCond#OptimizeLoss/gradients/GreaterEqual*
_output_shapes
: 
О
OptimizeLoss/gradients/Switch_1SwitchOptimizeLoss/gradients/Merge_1 OptimizeLoss/gradients/b_count_2*
_output_shapes
: : *
T0
Р
OptimizeLoss/gradients/SubSub!OptimizeLoss/gradients/Switch_1:1)OptimizeLoss/gradients/GreaterEqual/Enter*
_output_shapes
: *
T0
э
&OptimizeLoss/gradients/NextIteration_1NextIterationOptimizeLoss/gradients/Subw^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
j
 OptimizeLoss/gradients/b_count_3ExitOptimizeLoss/gradients/Switch_1*
T0*
_output_shapes
: 
b
 OptimizeLoss/gradients/f_count_3Const*
value	B : *
dtype0*
_output_shapes
: 
╫
 OptimizeLoss/gradients/f_count_4Enter OptimizeLoss/gradients/f_count_3*
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( *
parallel_iterations 
Э
OptimizeLoss/gradients/Merge_2Merge OptimizeLoss/gradients/f_count_4&OptimizeLoss/gradients/NextIteration_2*
N*
_output_shapes
: : *
T0
Ф
OptimizeLoss/gradients/Switch_2SwitchOptimizeLoss/gradients/Merge_2&bidirectional_rnn/bw/bw/while/LoopCond*
T0*
_output_shapes
: : 
Й
OptimizeLoss/gradients/Add_1/yConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
З
OptimizeLoss/gradients/Add_1Add!OptimizeLoss/gradients/Switch_2:1OptimizeLoss/gradients/Add_1/y*
T0*
_output_shapes
: 
╛
&OptimizeLoss/gradients/NextIteration_2NextIterationOptimizeLoss/gradients/Add_1|^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2Z^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPushV2V^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPushV2T^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPushV2h^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2j^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1V^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPushV2X^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPushV2h^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2V^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPushV2n^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2p^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1n^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2p^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/StackPushV2n^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2p^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1\^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/StackPushV2^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/StackPushV2n^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPushV2d^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/StackPushV2b^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPushV2d^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPushV2_1n^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2p^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/StackPushV2h^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPushV2d^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/StackPushV2*
T0*
_output_shapes
: 
j
 OptimizeLoss/gradients/f_count_5ExitOptimizeLoss/gradients/Switch_2*
T0*
_output_shapes
: 
b
 OptimizeLoss/gradients/b_count_4Const*
_output_shapes
: *
value	B :*
dtype0
ю
 OptimizeLoss/gradients/b_count_5Enter OptimizeLoss/gradients/f_count_5*
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( *
parallel_iterations 
Э
OptimizeLoss/gradients/Merge_3Merge OptimizeLoss/gradients/b_count_5&OptimizeLoss/gradients/NextIteration_3*
T0*
N*
_output_shapes
: : 
∙
+OptimizeLoss/gradients/GreaterEqual_1/EnterEnter OptimizeLoss/gradients/b_count_4*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
г
%OptimizeLoss/gradients/GreaterEqual_1GreaterEqualOptimizeLoss/gradients/Merge_3+OptimizeLoss/gradients/GreaterEqual_1/Enter*
T0*
_output_shapes
: 
k
 OptimizeLoss/gradients/b_count_6LoopCond%OptimizeLoss/gradients/GreaterEqual_1*
_output_shapes
: 
О
OptimizeLoss/gradients/Switch_3SwitchOptimizeLoss/gradients/Merge_3 OptimizeLoss/gradients/b_count_6*
_output_shapes
: : *
T0
Ф
OptimizeLoss/gradients/Sub_1Sub!OptimizeLoss/gradients/Switch_3:1+OptimizeLoss/gradients/GreaterEqual_1/Enter*
_output_shapes
: *
T0
я
&OptimizeLoss/gradients/NextIteration_3NextIterationOptimizeLoss/gradients/Sub_1w^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
_output_shapes
: *
T0
j
 OptimizeLoss/gradients/b_count_7ExitOptimizeLoss/gradients/Switch_3*
T0*
_output_shapes
: 
x
.OptimizeLoss/gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
│
(OptimizeLoss/gradients/Mean_grad/ReshapeReshapeOptimizeLoss/gradients/Fill.OptimizeLoss/gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
y
&OptimizeLoss/gradients/Mean_grad/ShapeShapeboolean_mask/Gather*
T0*
out_type0*
_output_shapes
:
┐
%OptimizeLoss/gradients/Mean_grad/TileTile(OptimizeLoss/gradients/Mean_grad/Reshape&OptimizeLoss/gradients/Mean_grad/Shape*#
_output_shapes
:         *

Tmultiples0*
T0
{
(OptimizeLoss/gradients/Mean_grad/Shape_1Shapeboolean_mask/Gather*
T0*
out_type0*
_output_shapes
:
k
(OptimizeLoss/gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
p
&OptimizeLoss/gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
╜
%OptimizeLoss/gradients/Mean_grad/ProdProd(OptimizeLoss/gradients/Mean_grad/Shape_1&OptimizeLoss/gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
r
(OptimizeLoss/gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
┴
'OptimizeLoss/gradients/Mean_grad/Prod_1Prod(OptimizeLoss/gradients/Mean_grad/Shape_2(OptimizeLoss/gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
l
*OptimizeLoss/gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
й
(OptimizeLoss/gradients/Mean_grad/MaximumMaximum'OptimizeLoss/gradients/Mean_grad/Prod_1*OptimizeLoss/gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0
з
)OptimizeLoss/gradients/Mean_grad/floordivFloorDiv%OptimizeLoss/gradients/Mean_grad/Prod(OptimizeLoss/gradients/Mean_grad/Maximum*
_output_shapes
: *
T0
И
%OptimizeLoss/gradients/Mean_grad/CastCast)OptimizeLoss/gradients/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
п
(OptimizeLoss/gradients/Mean_grad/truedivRealDiv%OptimizeLoss/gradients/Mean_grad/Tile%OptimizeLoss/gradients/Mean_grad/Cast*#
_output_shapes
:         *
T0
▓
5OptimizeLoss/gradients/boolean_mask/Gather_grad/ShapeShapeboolean_mask/Reshape*
T0*
out_type0	*'
_class
loc:@boolean_mask/Reshape*
_output_shapes
:
╙
7OptimizeLoss/gradients/boolean_mask/Gather_grad/ToInt32Cast5OptimizeLoss/gradients/boolean_mask/Gather_grad/Shape*

SrcT0	*'
_class
loc:@boolean_mask/Reshape*
_output_shapes
:*

DstT0
Г
4OptimizeLoss/gradients/boolean_mask/Gather_grad/SizeSizeboolean_mask/Squeeze*
T0	*
out_type0*
_output_shapes
: 
А
>OptimizeLoss/gradients/boolean_mask/Gather_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
я
:OptimizeLoss/gradients/boolean_mask/Gather_grad/ExpandDims
ExpandDims4OptimizeLoss/gradients/boolean_mask/Gather_grad/Size>OptimizeLoss/gradients/boolean_mask/Gather_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
Н
COptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
П
EOptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
П
EOptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
э
=OptimizeLoss/gradients/boolean_mask/Gather_grad/strided_sliceStridedSlice7OptimizeLoss/gradients/boolean_mask/Gather_grad/ToInt32COptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stackEOptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stack_1EOptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
}
;OptimizeLoss/gradients/boolean_mask/Gather_grad/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
┤
6OptimizeLoss/gradients/boolean_mask/Gather_grad/concatConcatV2:OptimizeLoss/gradients/boolean_mask/Gather_grad/ExpandDims=OptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice;OptimizeLoss/gradients/boolean_mask/Gather_grad/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
р
7OptimizeLoss/gradients/boolean_mask/Gather_grad/ReshapeReshape(OptimizeLoss/gradients/Mean_grad/truediv6OptimizeLoss/gradients/boolean_mask/Gather_grad/concat*
T0*
Tshape0*#
_output_shapes
:         
╥
9OptimizeLoss/gradients/boolean_mask/Gather_grad/Reshape_1Reshapeboolean_mask/Squeeze:OptimizeLoss/gradients/boolean_mask/Gather_grad/ExpandDims*
T0	*
Tshape0*#
_output_shapes
:         
г
6OptimizeLoss/gradients/boolean_mask/Reshape_grad/ShapeShape-SparseSoftmaxCrossEntropyWithLogits/Reshape_2*
T0*
out_type0*
_output_shapes
:
Ц
LOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ш
NOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ш
NOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
П
FOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_sliceStridedSlice7OptimizeLoss/gradients/boolean_mask/Gather_grad/ToInt32LOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stackNOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1NOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
╧
?OptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/tensorUnsortedSegmentSum7OptimizeLoss/gradients/boolean_mask/Gather_grad/Reshape9OptimizeLoss/gradients/boolean_mask/Gather_grad/Reshape_1FOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice*#
_output_shapes
:         *
Tindices0	*
T0
Е
8OptimizeLoss/gradients/boolean_mask/Reshape_grad/ReshapeReshape?OptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/tensor6OptimizeLoss/gradients/boolean_mask/Reshape_grad/Shape*0
_output_shapes
:                  *
T0*
Tshape0
╓
OOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
_output_shapes
:*
T0
г
QOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/ReshapeReshape8OptimizeLoss/gradients/boolean_mask/Reshape_grad/ReshapeOOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/Shape*#
_output_shapes
:         *
T0*
Tshape0
┤
!OptimizeLoss/gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:                  
├
sOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*┤
messageиеCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*0
_output_shapes
:                  
╜
rOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
valueB :
         *
dtype0
Б
nOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsQOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/ReshaperOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*'
_output_shapes
:         *

Tdim0
О
gOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulnOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimssOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*0
_output_shapes
:                  
Ъ
MOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/ShapeShapedense/BiasAdd*
T0*
out_type0*
_output_shapes
:
▀
OOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/ReshapeReshapegOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Shape*
T0*
Tshape0*4
_output_shapes"
 :                  
╤
5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGradOOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Reshape*
_output_shapes
:*
T0*
data_formatNHWC
╠
:OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_depsNoOpP^OptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Reshape6^OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad
 
BOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentityOOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Reshape;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*4
_output_shapes"
 :                  *
T0*b
_classX
VTloc:@OptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Reshape
│
DOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad
З
1OptimizeLoss/gradients/dense/Tensordot_grad/ShapeShapedense/Tensordot/MatMul*
_output_shapes
:*
T0*
out_type0
ї
3OptimizeLoss/gradients/dense/Tensordot_grad/ReshapeReshapeBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency1OptimizeLoss/gradients/dense/Tensordot_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
ь
9OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMulMatMul3OptimizeLoss/gradients/dense/Tensordot_grad/Reshapedense/Tensordot/Reshape_1*(
_output_shapes
:         А*
transpose_a( *
transpose_b(*
T0
ы
;OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul_1MatMuldense/Tensordot/Reshape3OptimizeLoss/gradients/dense/Tensordot_grad/Reshape*
T0*'
_output_shapes
:         *
transpose_a(*
transpose_b( 
┼
COptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul_1
┘
KOptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMulD^OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul*(
_output_shapes
:         А
╓
MOptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul_1D^OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/group_deps*
_output_shapes
:	А*
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul_1
Т
9OptimizeLoss/gradients/dense/Tensordot/Reshape_grad/ShapeShapedense/Tensordot/transpose*
_output_shapes
:*
T0*
out_type0
д
;OptimizeLoss/gradients/dense/Tensordot/Reshape_grad/ReshapeReshapeKOptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/control_dependency9OptimizeLoss/gradients/dense/Tensordot/Reshape_grad/Shape*
T0*
Tshape0*=
_output_shapes+
):'                           
М
;OptimizeLoss/gradients/dense/Tensordot/Reshape_1_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
М
=OptimizeLoss/gradients/dense/Tensordot/Reshape_1_grad/ReshapeReshapeMOptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/control_dependency_1;OptimizeLoss/gradients/dense/Tensordot/Reshape_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:	А
д
GOptimizeLoss/gradients/dense/Tensordot/transpose_grad/InvertPermutationInvertPermutationdense/Tensordot/concat_1*
T0*#
_output_shapes
:         
Я
?OptimizeLoss/gradients/dense/Tensordot/transpose_grad/transpose	Transpose;OptimizeLoss/gradients/dense/Tensordot/Reshape_grad/ReshapeGOptimizeLoss/gradients/dense/Tensordot/transpose_grad/InvertPermutation*5
_output_shapes#
!:                  А*
Tperm0*
T0
е
IOptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/InvertPermutationInvertPermutation dense/Tensordot/transpose_1/perm*
_output_shapes
:*
T0
П
AOptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/transpose	Transpose=OptimizeLoss/gradients/dense/Tensordot/Reshape_1_grad/ReshapeIOptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/InvertPermutation*
Tperm0*
T0*
_output_shapes
:	А
i
'OptimizeLoss/gradients/concat_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Й
&OptimizeLoss/gradients/concat_grad/modFloorModconcat/axis'OptimizeLoss/gradients/concat_grad/Rank*
T0*
_output_shapes
: 
Й
(OptimizeLoss/gradients/concat_grad/ShapeShape!bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
л
)OptimizeLoss/gradients/concat_grad/ShapeNShapeN!bidirectional_rnn/fw/fw/transposeReverseSequence*
T0*
out_type0*
N* 
_output_shapes
::
ъ
/OptimizeLoss/gradients/concat_grad/ConcatOffsetConcatOffset&OptimizeLoss/gradients/concat_grad/mod)OptimizeLoss/gradients/concat_grad/ShapeN+OptimizeLoss/gradients/concat_grad/ShapeN:1*
N* 
_output_shapes
::
г
(OptimizeLoss/gradients/concat_grad/SliceSlice?OptimizeLoss/gradients/dense/Tensordot/transpose_grad/transpose/OptimizeLoss/gradients/concat_grad/ConcatOffset)OptimizeLoss/gradients/concat_grad/ShapeN*=
_output_shapes+
):'                           *
Index0*
T0
й
*OptimizeLoss/gradients/concat_grad/Slice_1Slice?OptimizeLoss/gradients/dense/Tensordot/transpose_grad/transpose1OptimizeLoss/gradients/concat_grad/ConcatOffset:1+OptimizeLoss/gradients/concat_grad/ShapeN:1*=
_output_shapes+
):'                           *
Index0*
T0
У
3OptimizeLoss/gradients/concat_grad/tuple/group_depsNoOp)^OptimizeLoss/gradients/concat_grad/Slice+^OptimizeLoss/gradients/concat_grad/Slice_1
д
;OptimizeLoss/gradients/concat_grad/tuple/control_dependencyIdentity(OptimizeLoss/gradients/concat_grad/Slice4^OptimizeLoss/gradients/concat_grad/tuple/group_deps*
T0*;
_class1
/-loc:@OptimizeLoss/gradients/concat_grad/Slice*5
_output_shapes#
!:                  А
к
=OptimizeLoss/gradients/concat_grad/tuple/control_dependency_1Identity*OptimizeLoss/gradients/concat_grad/Slice_14^OptimizeLoss/gradients/concat_grad/tuple/group_deps*
T0*=
_class3
1/loc:@OptimizeLoss/gradients/concat_grad/Slice_1*5
_output_shapes#
!:                  А
л
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_grad/InvertPermutationInvertPermutation bidirectional_rnn/fw/fw/concat_1*
T0*
_output_shapes
:
п
GOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_grad/transpose	Transpose;OptimizeLoss/gradients/concat_grad/tuple/control_dependencyOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_grad/InvertPermutation*
T0*5
_output_shapes#
!:                  А*
Tperm0
К
;OptimizeLoss/gradients/ReverseSequence_grad/ReverseSequenceReverseSequence=OptimizeLoss/gradients/concat_grad/tuple/control_dependency_1IteratorGetNext*
seq_dim*5
_output_shapes#
!:                  А*

Tlen0	*
	batch_dim *
T0
╘
zOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3#bidirectional_rnn/fw/fw/TensorArray$bidirectional_rnn/fw/fw/while/Exit_1*"
sourceOptimizeLoss/gradients*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
_output_shapes

:: 
■
vOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity$bidirectional_rnn/fw/fw/while/Exit_1{^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
: *
T0
з
АOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3zOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3.bidirectional_rnn/fw/fw/TensorArrayStack/rangeGOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_grad/transposevOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
л
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_grad/InvertPermutationInvertPermutation bidirectional_rnn/bw/bw/concat_1*
_output_shapes
:*
T0
п
GOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_grad/transpose	Transpose;OptimizeLoss/gradients/ReverseSequence_grad/ReverseSequenceOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_grad/InvertPermutation*5
_output_shapes#
!:                  А*
Tperm0*
T0
╘
zOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3#bidirectional_rnn/bw/bw/TensorArray$bidirectional_rnn/bw/bw/while/Exit_1*"
sourceOptimizeLoss/gradients*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
_output_shapes

:: 
■
vOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity$bidirectional_rnn/bw/bw/while/Exit_1{^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
з
АOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3zOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3.bidirectional_rnn/bw/bw/TensorArrayStack/rangeGOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_grad/transposevOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
_output_shapes
: *
T0
Й
#OptimizeLoss/gradients/zeros_like_1	ZerosLike$bidirectional_rnn/fw/fw/while/Exit_2*
T0*(
_output_shapes
:         А
Ў
GOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Exit_1_grad/b_exitEnterАOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
к
GOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Exit_2_grad/b_exitEnter#OptimizeLoss/gradients/zeros_like_1*
is_constant( *
parallel_iterations *(
_output_shapes
:         А*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0
Й
#OptimizeLoss/gradients/zeros_like_2	ZerosLike$bidirectional_rnn/bw/bw/while/Exit_2*(
_output_shapes
:         А*
T0
Э
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_1_grad/b_switchMergeGOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Exit_1_grad/b_exitROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_1_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
п
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switchMergeGOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Exit_2_grad/b_exitROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad_1/NextIteration*
T0*
N**
_output_shapes
:         А: 
Ў
GOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Exit_1_grad/b_exitEnterАOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
к
GOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Exit_2_grad/b_exitEnter#OptimizeLoss/gradients/zeros_like_2*
T0*
is_constant( *
parallel_iterations *(
_output_shapes
:         А*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
─
HOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/SwitchSwitchKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_1_grad/b_switch OptimizeLoss/gradients/b_count_2*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_1_grad/b_switch*
_output_shapes
: : 
е
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/tuple/group_depsNoOpI^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/Switch
Ж
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/tuple/control_dependencyIdentityHOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/SwitchS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_1_grad/b_switch*
_output_shapes
: 
К
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/tuple/control_dependency_1IdentityJOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/Switch:1S^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_1_grad/b_switch*
_output_shapes
: 
ш
HOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/SwitchSwitchKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch OptimizeLoss/gradients/b_count_2*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch*<
_output_shapes*
(:         А:         А
е
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_depsNoOpI^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/Switch
Ш
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependencyIdentityHOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/SwitchS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch*(
_output_shapes
:         А
Ь
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1IdentityJOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/Switch:1S^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch*(
_output_shapes
:         А
Э
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_1_grad/b_switchMergeGOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Exit_1_grad/b_exitROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_1_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
п
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switchMergeGOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Exit_2_grad/b_exitROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad_1/NextIteration*
N**
_output_shapes
:         А: *
T0
╦
FOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Enter_1_grad/ExitExitZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/tuple/control_dependency*
T0*
_output_shapes
: 
▌
FOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Enter_2_grad/ExitExitZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
─
HOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/SwitchSwitchKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_1_grad/b_switch OptimizeLoss/gradients/b_count_6*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_1_grad/b_switch*
_output_shapes
: : 
е
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/tuple/group_depsNoOpI^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/Switch
Ж
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/tuple/control_dependencyIdentityHOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/SwitchS^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_1_grad/b_switch*
_output_shapes
: 
К
\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/tuple/control_dependency_1IdentityJOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/Switch:1S^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_1_grad/b_switch*
_output_shapes
: 
ш
HOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/SwitchSwitchKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch OptimizeLoss/gradients/b_count_6*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch*<
_output_shapes*
(:         А:         А
е
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_depsNoOpI^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/Switch
Ш
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependencyIdentityHOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/SwitchS^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_deps*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch*(
_output_shapes
:         А*
T0
Ь
\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1IdentityJOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/Switch:1S^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_deps*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch*(
_output_shapes
:         А*
T0
Щ
ЕOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter#bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*
parallel_iterations *
is_constant(
·
OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3ЕOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/tuple/control_dependency_1*"
sourceOptimizeLoss/gradients*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*
_output_shapes

:: 
╟
{OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/tuple/control_dependency_1А^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul
Д
~OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc/max_sizeConst*
valueB :
         *9
_class/
-+loc:@bidirectional_rnn/fw/fw/while/Identity*
dtype0*
_output_shapes
: 
·
uOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2~OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc/max_size*
	elem_type0*9
_class/
-+loc:@bidirectional_rnn/fw/fw/while/Identity*

stack_name *
_output_shapes
:
Е
uOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnteruOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
·
{OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2uOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter&bidirectional_rnn/fw/fw/while/Identity^OptimizeLoss/gradients/Add*
T0*
_output_shapes
: *
swap_memory( 
и
АOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnteruOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
╤
zOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2АOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
_output_shapes
: *
	elem_type0
д
vOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTrigger{^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Y^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2U^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2S^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2g^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2i^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1U^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPopV2W^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPopV2g^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2U^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPopV2k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2o^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/StackPopV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2o^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/StackPopV2]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/StackPopV2k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2c^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2a^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPopV2c^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPopV2_1k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/StackPopV2e^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2a^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/StackPopV2
е
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3zOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2{OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:
╟
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOp]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/tuple/control_dependency_1p^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
Ь
vOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityoOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3o^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*В
_classx
vtloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*(
_output_shapes
:         А*
T0
╘
xOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1Identity\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_1_grad/tuple/control_dependency_1o^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_1_grad/b_switch*
_output_shapes
: 
╣
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
▌
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/SumSumFOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Enter_2_grad/ExithOptimizeLoss/gradients/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
ф
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc/max_sizeConst*
valueB :
         *;
_class1
/-loc:@bidirectional_rnn/fw/fw/while/Identity_2*
dtype0*
_output_shapes
: 
╕
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_accStackV2\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc/max_size*;
_class1
/-loc:@bidirectional_rnn/fw/fw/while/Identity_2*

stack_name *
_output_shapes
:*
	elem_type0
┴
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/EnterEnterSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
╩
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPushV2StackPushV2SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Enter(bidirectional_rnn/fw/fw/while/Identity_2^OptimizeLoss/gradients/Add*(
_output_shapes
:         А*
swap_memory( *
T0
у
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2/EnterEnterSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0
Ю
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
ч
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like	ZerosLikeXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:         А
ф
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc/max_sizeConst*
valueB :
         *?
_class5
31loc:@bidirectional_rnn/fw/fw/while/GreaterEqual_1*
dtype0*
_output_shapes
: 
┤
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_accStackV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc/max_size*
_output_shapes
:*
	elem_type0
*?
_class5
31loc:@bidirectional_rnn/fw/fw/while/GreaterEqual_1*

stack_name 
╣
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc*
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
┴
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Enter,bidirectional_rnn/fw/fw/while/GreaterEqual_1^OptimizeLoss/gradients/Add*
T0
*#
_output_shapes
:         *
swap_memory( 
█
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
С
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2/Enter^OptimizeLoss/gradients/Sub*#
_output_shapes
:         *
	elem_type0

Й
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/SelectSelectTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like*
T0*(
_output_shapes
:         А
Л
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1SelectTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1*(
_output_shapes
:         А*
T0
ї
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_depsNoOpJ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/SelectL^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1
Щ
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependencyIdentityIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/SelectT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_deps*
T0*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select*(
_output_shapes
:         А
Я
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependency_1IdentityKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1T^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1*(
_output_shapes
:         А
╦
FOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Enter_1_grad/ExitExitZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/tuple/control_dependency*
T0*
_output_shapes
: 
▌
FOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Enter_2_grad/ExitExitZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
о
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like/EnterEnterbidirectional_rnn/fw/fw/zeros*
T0*
is_constant(*
parallel_iterations *(
_output_shapes
:         А*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
√
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like	ZerosLikeQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like/Enter^OptimizeLoss/gradients/Sub*
T0*(
_output_shapes
:         А
р
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_acc/max_sizeConst*
valueB :
         *=
_class3
1/loc:@bidirectional_rnn/fw/fw/while/GreaterEqual*
dtype0*
_output_shapes
: 
о
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_accStackV2VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_acc/max_size*=
_class3
1/loc:@bidirectional_rnn/fw/fw/while/GreaterEqual*

stack_name *
_output_shapes
:*
	elem_type0

╡
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/EnterEnterMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_acc*
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
╗
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPushV2StackPushV2MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/Enter*bidirectional_rnn/fw/fw/while/GreaterEqual^OptimizeLoss/gradients/Add*
T0
*#
_output_shapes
:         *
swap_memory( 
╫
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2/EnterEnterMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0
Н
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2
StackPopV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2/Enter^OptimizeLoss/gradients/Sub*#
_output_shapes
:         *
	elem_type0

Э
GOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/SelectSelectROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2vOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like*(
_output_shapes
:         А*
T0
Я
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select_1SelectROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/zeros_likevOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
я
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_depsNoOpH^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/SelectJ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select_1
С
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependencyIdentityGOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/SelectR^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_deps*Z
_classP
NLloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select*(
_output_shapes
:         А*
T0
Ч
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency_1IdentityIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select_1R^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_deps*
T0*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select_1*(
_output_shapes
:         А
Щ
ЕOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter#bidirectional_rnn/bw/bw/TensorArray*
is_constant(*
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*
parallel_iterations 
·
OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3ЕOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/tuple/control_dependency_1*"
sourceOptimizeLoss/gradients*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*
_output_shapes

:: 
╟
{OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/tuple/control_dependency_1А^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul
Д
~OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc/max_sizeConst*
valueB :
         *9
_class/
-+loc:@bidirectional_rnn/bw/bw/while/Identity*
dtype0*
_output_shapes
: 
·
uOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2~OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc/max_size*9
_class/
-+loc:@bidirectional_rnn/bw/bw/while/Identity*

stack_name *
_output_shapes
:*
	elem_type0
Е
uOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnteruOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0
№
{OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2uOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter&bidirectional_rnn/bw/bw/while/Identity^OptimizeLoss/gradients/Add_1*
_output_shapes
: *
swap_memory( *
T0
и
АOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnteruOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
╙
zOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2АOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
: *
	elem_type0
┤
vOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTrigger{^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Y^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2U^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2S^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2g^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2i^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1U^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPopV2W^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPopV2g^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2U^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPopV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2o^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2o^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/StackPopV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2o^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/StackPopV2]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/StackPopV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2c^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/StackPopV2a^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPopV2c^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPopV2_1m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2o^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/StackPopV2g^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPopV2c^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/StackPopV2
е
oOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3zOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2{OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:
╟
nOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOp]^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/tuple/control_dependency_1p^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
Ь
vOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityoOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3o^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*В
_classx
vtloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*(
_output_shapes
:         А
╘
xOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1Identity\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_1_grad/tuple/control_dependency_1o^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_1_grad/b_switch*
_output_shapes
: 
╣
hOptimizeLoss/gradients/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
▌
fOptimizeLoss/gradients/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/SumSumFOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Enter_2_grad/ExithOptimizeLoss/gradients/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
ф
\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc/max_sizeConst*
valueB :
         *;
_class1
/-loc:@bidirectional_rnn/bw/bw/while/Identity_2*
dtype0*
_output_shapes
: 
╕
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_accStackV2\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc/max_size*;
_class1
/-loc:@bidirectional_rnn/bw/bw/while/Identity_2*

stack_name *
_output_shapes
:*
	elem_type0
┴
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/EnterEnterSOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
╠
YOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPushV2StackPushV2SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Enter(bidirectional_rnn/bw/bw/while/Identity_2^OptimizeLoss/gradients/Add_1*
T0*(
_output_shapes
:         А*
swap_memory( 
у
^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2/EnterEnterSOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
а
XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
ч
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like	ZerosLikeXOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:         А
ф
XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc/max_sizeConst*
valueB :
         *?
_class5
31loc:@bidirectional_rnn/bw/bw/while/GreaterEqual_1*
dtype0*
_output_shapes
: 
┤
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_accStackV2XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc/max_size*?
_class5
31loc:@bidirectional_rnn/bw/bw/while/GreaterEqual_1*

stack_name *
_output_shapes
:*
	elem_type0

╣
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
├
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Enter,bidirectional_rnn/bw/bw/while/GreaterEqual_1^OptimizeLoss/gradients/Add_1*#
_output_shapes
:         *
swap_memory( *
T0

█
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
У
TOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*#
_output_shapes
:         *
	elem_type0

Й
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/SelectSelectTOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like*(
_output_shapes
:         А*
T0
Л
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1SelectTOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
ї
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_depsNoOpJ^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/SelectL^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1
Щ
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependencyIdentityIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/SelectT^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_deps*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select*(
_output_shapes
:         А*
T0
Я
]OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependency_1IdentityKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1T^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1*(
_output_shapes
:         А
й
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/ShapeShapebidirectional_rnn/fw/fw/zeros*
T0*
out_type0*
_output_shapes
:
Ч
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
й
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zerosFillLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/ShapeROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zeros/Const*
T0*(
_output_shapes
:         А
╪
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_accEnterLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zeros*
is_constant( *
parallel_iterations *(
_output_shapes
:         А*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0
╣
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_1MergeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_accTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/NextIteration*
T0*
N**
_output_shapes
:         А: 
Р
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/SwitchSwitchNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_1 OptimizeLoss/gradients/b_count_2*<
_output_shapes*
(:         А:         А*
T0
░
JOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/AddAddOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/Switch:1YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
ф
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/NextIterationNextIterationJOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/Add*(
_output_shapes
:         А*
T0
╪
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_2ExitMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/Switch*(
_output_shapes
:         А*
T0
┤
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/ShapeShape)bidirectional_rnn/fw/fw/while/dropout/div*
T0*
out_type0*
_output_shapes
:
╕
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape_1Shape+bidirectional_rnn/fw/fw/while/dropout/Floor*
out_type0*
_output_shapes
:*
T0
Х
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
         *^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape*
dtype0*
_output_shapes
: 
ў
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc/max_size*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
▌
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
√
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/EnterKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape^OptimizeLoss/gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
 
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
м
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Щ
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
dtype0*
_output_shapes
: *
valueB :
         *`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape_1
¤
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1/max_size*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
с
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1EntercOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
Б
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape_1^OptimizeLoss/gradients/Add*
_output_shapes
:*
swap_memory( *
T0
Г
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntercOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
░
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Г
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:         :         *
T0
у
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_acc/max_sizeConst*
valueB :
         *>
_class4
20loc:@bidirectional_rnn/fw/fw/while/dropout/Floor*
dtype0*
_output_shapes
: 
│
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_accStackV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_acc/max_size*>
_class4
20loc:@bidirectional_rnn/fw/fw/while/dropout/Floor*

stack_name *
_output_shapes
:*
	elem_type0
╣
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
┼
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/Enter+bidirectional_rnn/fw/fw/while/dropout/Floor^OptimizeLoss/gradients/Add*
T0*(
_output_shapes
:         А*
swap_memory( 
█
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
Ц
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
╢
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mulMul[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency_1TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPopV2*
T0*(
_output_shapes
:         А
╕
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/SumSumIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
╘
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/ReshapeReshapeIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/SumfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
у
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_acc/max_sizeConst*
valueB :
         *<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/div*
dtype0*
_output_shapes
: 
╡
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_accStackV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_acc/max_size*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/div*

stack_name *
_output_shapes
:*
	elem_type0
╜
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/EnterEnterQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
╟
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPushV2StackPushV2QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/Enter)bidirectional_rnn/fw/fw/while/dropout/div^OptimizeLoss/gradients/Add*
T0*(
_output_shapes
:         А*
swap_memory( 
▀
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPopV2/EnterEnterQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_acc*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
Ъ
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPopV2
StackPopV2\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
║
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1MulVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPopV2[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
╛
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Sum_1SumKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
┌
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Reshape_1ReshapeKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Sum_1hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*0
_output_shapes
:                  *
T0
А
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/group_depsNoOpN^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/ReshapeP^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Reshape_1
з
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/control_dependencyIdentityMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/ReshapeW^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/group_deps*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Reshape*(
_output_shapes
:         А*
T0
н
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/control_dependency_1IdentityOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Reshape_1W^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Reshape_1
■
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_1_grad_1/NextIterationNextIterationxOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
о
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like/EnterEnterbidirectional_rnn/bw/bw/zeros*
T0*
is_constant(*
parallel_iterations *(
_output_shapes
:         А*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
¤
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like	ZerosLikeQOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like/Enter^OptimizeLoss/gradients/Sub_1*
T0*(
_output_shapes
:         А
р
VOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_acc/max_sizeConst*
valueB :
         *=
_class3
1/loc:@bidirectional_rnn/bw/bw/while/GreaterEqual*
dtype0*
_output_shapes
: 
о
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_accStackV2VOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_acc/max_size*=
_class3
1/loc:@bidirectional_rnn/bw/bw/while/GreaterEqual*

stack_name *
_output_shapes
:*
	elem_type0

╡
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/EnterEnterMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0
╜
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPushV2StackPushV2MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/Enter*bidirectional_rnn/bw/bw/while/GreaterEqual^OptimizeLoss/gradients/Add_1*
T0
*#
_output_shapes
:         *
swap_memory( 
╫
XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2/EnterEnterMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
П
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2
StackPopV2XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*#
_output_shapes
:         *
	elem_type0

Э
GOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/SelectSelectROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2vOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like*
T0*(
_output_shapes
:         А
Я
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select_1SelectROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/zeros_likevOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
я
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_depsNoOpH^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/SelectJ^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select_1
С
YOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependencyIdentityGOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/SelectR^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select*(
_output_shapes
:         А
Ч
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency_1IdentityIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select_1R^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_deps*
T0*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select_1*(
_output_shapes
:         А
Р
?OptimizeLoss/gradients/bidirectional_rnn/fw/fw/zeros_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
У
=OptimizeLoss/gradients/bidirectional_rnn/fw/fw/zeros_grad/SumSumNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_2?OptimizeLoss/gradients/bidirectional_rnn/fw/fw/zeros_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
╕
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/ShapeShape-bidirectional_rnn/fw/fw/while/fw/gru_cell/add*
T0*
out_type0*
_output_shapes
:
н
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape_1Const^OptimizeLoss/gradients/Sub*
dtype0*
_output_shapes
: *
valueB 
Х
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
         *^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape*
dtype0*
_output_shapes
: 
ў
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_accStackV2jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_acc/max_size*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
▌
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
√
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2StackPushV2aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/EnterKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape^OptimizeLoss/gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
 
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
м
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2
StackPopV2lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
_output_shapes
:*
	elem_type0
ш
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Д
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv/EnterEntersub*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
└
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDivRealDiv^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/control_dependencySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:         А
╝
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/SumSumMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
╘
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/ReshapeReshapeIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/SumfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
х
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_acc/max_sizeConst*
dtype0*
_output_shapes
: *
valueB :
         *@
_class6
42loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/add
╡
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_accStackV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_acc/max_size*@
_class6
42loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/add*

stack_name *
_output_shapes
:*
	elem_type0
╣
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_acc*
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
╟
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/Enter-bidirectional_rnn/fw/fw/while/fw/gru_cell/add^OptimizeLoss/gradients/Add*
T0*(
_output_shapes
:         А*
swap_memory( 
█
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_acc*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
Ц
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
┘
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/NegNegTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPopV2*
T0*(
_output_shapes
:         А
н
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv_1RealDivIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/NegSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:         А
│
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv_2RealDivOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv_1SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv/Enter*(
_output_shapes
:         А*
T0
┤
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/mulMul^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/control_dependencyOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:         А
╝
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Sum_1SumIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/mul]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
е
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Reshape_1ReshapeKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Sum_1MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
А
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/group_depsNoOpN^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/ReshapeP^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Reshape_1
з
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/control_dependencyIdentityMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/ReshapeW^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/group_deps*
T0*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Reshape*(
_output_shapes
:         А
Ы
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/control_dependency_1IdentityOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Reshape_1W^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/group_deps*
T0*b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Reshape_1*
_output_shapes
: 
й
LOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/ShapeShapebidirectional_rnn/bw/bw/zeros*
T0*
out_type0*
_output_shapes
:
Ч
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
й
LOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zerosFillLOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/ShapeROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zeros/Const*
T0*(
_output_shapes
:         А
╪
LOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_accEnterLOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zeros*
T0*
is_constant( *
parallel_iterations *(
_output_shapes
:         А*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
╣
NOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_1MergeLOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_accTOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/NextIteration*
T0*
N**
_output_shapes
:         А: 
Р
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/SwitchSwitchNOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_1 OptimizeLoss/gradients/b_count_6*
T0*<
_output_shapes*
(:         А:         А
░
JOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/AddAddOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/Switch:1YOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
ф
TOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/NextIterationNextIterationJOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/Add*(
_output_shapes
:         А*
T0
╪
NOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_2ExitMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/Switch*(
_output_shapes
:         А*
T0
┤
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/ShapeShape)bidirectional_rnn/bw/bw/while/dropout/div*
out_type0*
_output_shapes
:*
T0
╕
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape_1Shape+bidirectional_rnn/bw/bw/while/dropout/Floor*
T0*
out_type0*
_output_shapes
:
Х
jOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
         *^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape*
dtype0*
_output_shapes
: 
ў
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2jOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc/max_size*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
▌
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
¤
gOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/EnterKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape^OptimizeLoss/gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
 
lOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0
о
fOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2lOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
:*
	elem_type0
Щ
lOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
dtype0*
_output_shapes
: *
valueB :
         *`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape_1
¤
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2lOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1/max_size*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
с
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1EntercOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
Г
iOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape_1^OptimizeLoss/gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
Г
nOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntercOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
▓
hOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2nOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
:*
	elem_type0
Г
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsfOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
у
XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_acc/max_sizeConst*
valueB :
         *>
_class4
20loc:@bidirectional_rnn/bw/bw/while/dropout/Floor*
dtype0*
_output_shapes
: 
│
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_accStackV2XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_acc/max_size*

stack_name *
_output_shapes
:*
	elem_type0*>
_class4
20loc:@bidirectional_rnn/bw/bw/while/dropout/Floor
╣
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_acc*
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
╟
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/Enter+bidirectional_rnn/bw/bw/while/dropout/Floor^OptimizeLoss/gradients/Add_1*
T0*(
_output_shapes
:         А*
swap_memory( 
█
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_acc*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
Ш
TOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
╢
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mulMul[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency_1TOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPopV2*
T0*(
_output_shapes
:         А
╕
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/SumSumIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
╘
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/ReshapeReshapeIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/SumfOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
у
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_acc/max_sizeConst*
valueB :
         *<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/div*
dtype0*
_output_shapes
: 
╡
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_accStackV2ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_acc/max_size*

stack_name *
_output_shapes
:*
	elem_type0*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/div
╜
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/EnterEnterQOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
╔
WOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPushV2StackPushV2QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/Enter)bidirectional_rnn/bw/bw/while/dropout/div^OptimizeLoss/gradients/Add_1*
T0*(
_output_shapes
:         А*
swap_memory( 
▀
\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPopV2/EnterEnterQOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_acc*
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Ь
VOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPopV2
StackPopV2\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
║
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1MulVOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPopV2[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency_1*(
_output_shapes
:         А*
T0
╛
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Sum_1SumKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1]OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
┌
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Reshape_1ReshapeKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Sum_1hOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*0
_output_shapes
:                  *
T0*
Tshape0
А
VOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/group_depsNoOpN^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/ReshapeP^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Reshape_1
з
^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/control_dependencyIdentityMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/ReshapeW^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Reshape*(
_output_shapes
:         А
н
`OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/control_dependency_1IdentityOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Reshape_1W^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/group_deps*b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Reshape_1*(
_output_shapes
:         А*
T0
■
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_1_grad_1/NextIterationNextIterationxOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
_output_shapes
: *
T0
Р
?OptimizeLoss/gradients/bidirectional_rnn/bw/bw/zeros_grad/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
У
=OptimizeLoss/gradients/bidirectional_rnn/bw/bw/zeros_grad/SumSumNOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_2?OptimizeLoss/gradients/bidirectional_rnn/bw/bw/zeros_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
║
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/ShapeShape/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1*
T0*
out_type0*
_output_shapes
:
п
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape_1Const^OptimizeLoss/gradients/Sub_1*
valueB *
dtype0*
_output_shapes
: 
Х
jOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
         *^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape*
dtype0*
_output_shapes
: 
ў
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_accStackV2jOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_acc/max_size*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
▌
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
¤
gOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2StackPushV2aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/EnterKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape^OptimizeLoss/gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
 
lOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
о
fOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2
StackPopV2lOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
:*
	elem_type0
ш
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsfOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Д
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv/EnterEntersub*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
└
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDivRealDiv^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/control_dependencySOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:         А
╝
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/SumSumMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
╘
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/ReshapeReshapeIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/SumfOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:                  *
T0*
Tshape0
ч
XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_acc/max_sizeConst*
valueB :
         *B
_class8
64loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1*
dtype0*
_output_shapes
: 
╖
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_accStackV2XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_acc/max_size*B
_class8
64loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1*

stack_name *
_output_shapes
:*
	elem_type0
╣
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
╦
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/Enter/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1^OptimizeLoss/gradients/Add_1*
T0*(
_output_shapes
:         А*
swap_memory( 
█
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
Ш
TOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
┘
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/NegNegTOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPopV2*
T0*(
_output_shapes
:         А
н
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv_1RealDivIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/NegSOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:         А
│
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv_2RealDivOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv_1SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:         А
┤
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/mulMul^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/control_dependencyOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:         А
╝
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Sum_1SumIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/mul]OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
е
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Reshape_1ReshapeKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Sum_1MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
А
VOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/group_depsNoOpN^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/ReshapeP^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Reshape_1
з
^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/control_dependencyIdentityMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/ReshapeW^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Reshape
Ы
`OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/control_dependency_1IdentityOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Reshape_1W^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/group_deps*
T0*b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Reshape_1*
_output_shapes
: 
■
OptimizeLoss/gradients/AddNAddN]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependency_1^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/control_dependency*
N*(
_output_shapes
:         А*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1
╛
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/ShapeShape/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1*
T0*
out_type0*
_output_shapes
:
└
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Shape_1Shape/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2*
_output_shapes
:*
T0*
out_type0
Э
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
         *b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Shape*
dtype0*
_output_shapes
: 
Г
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_accStackV2nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc/max_size*b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
х
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/EnterEntereOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
З
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/EnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Shape^OptimizeLoss/gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
З
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEntereOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
┤
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
_output_shapes
:*
	elem_type0
б
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
         *d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Shape_1*
dtype0*
_output_shapes
: 
Й
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1StackV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1/max_size*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
щ
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/Enter_1EntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
Н
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/Enter_1QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Shape_1^OptimizeLoss/gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Л
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
╕
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*
_output_shapes
:*
	elem_type0
П
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsjOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
Т
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/SumSumOptimizeLoss/gradients/AddN_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
р
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/ReshapeReshapeMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/SumjOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:                  *
T0*
Tshape0
Ц
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Sum_1SumOptimizeLoss/gradients/AddNaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ц
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Reshape_1ReshapeOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Sum_1lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*0
_output_shapes
:                  *
T0
М
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/tuple/group_depsNoOpR^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/ReshapeT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Reshape_1
╖
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/tuple/control_dependencyIdentityQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Reshape[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Reshape*(
_output_shapes
:         А
╜
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/tuple/control_dependency_1IdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Reshape_1[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Reshape_1*(
_output_shapes
:         А
┬
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/ShapeShape1bidirectional_rnn/fw/fw/while/fw/gru_cell/split:1*
_output_shapes
:*
T0*
out_type0
╗
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Shape_1Shape(bidirectional_rnn/fw/fw/while/Identity_2*
out_type0*
_output_shapes
:*
T0
б
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
         *d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Shape*
dtype0*
_output_shapes
: 
Й
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc/max_size*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
щ
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
Н
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/EnterQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Shape^OptimizeLoss/gradients/Add*
_output_shapes
:*
swap_memory( *
T0
Л
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0
╕
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
_output_shapes
:*
	elem_type0
е
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
_output_shapes
: *
valueB :
         *f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Shape_1*
dtype0
П
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1/max_size*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
э
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1EnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
У
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Shape_1^OptimizeLoss/gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
П
tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
╝
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*
_output_shapes
:*
	elem_type0
Х
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgslOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
╟
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mulMulbOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/tuple/control_dependencyXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:         А
╩
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/SumSumOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mulaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ц
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/ReshapeReshapeOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/SumlOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
я
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/f_acc/max_sizeConst*
valueB :
         *B
_class8
64loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/split*
dtype0*
_output_shapes
: 
╟
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/f_accStackV2`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/f_acc/max_size*
	elem_type0*B
_class8
64loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/split*

stack_name *
_output_shapes
:
╔
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/EnterEnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0
█
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/StackPushV2StackPushV2WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/Enter1bidirectional_rnn/fw/fw/while/fw/gru_cell/split:1^OptimizeLoss/gradients/Add*(
_output_shapes
:         А*
swap_memory( *
T0
ы
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/StackPopV2/EnterEnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
ж
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/StackPopV2
StackPopV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
═
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1Mul\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/StackPopV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
╨
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Sum_1SumQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ь
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Reshape_1ReshapeQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Sum_1nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*0
_output_shapes
:                  *
T0*
Tshape0
Т
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/tuple/group_depsNoOpT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/ReshapeV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Reshape_1
┐
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/tuple/control_dependencyIdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Reshape]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Reshape*(
_output_shapes
:         А
┼
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/tuple/control_dependency_1IdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Reshape_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Reshape_1*(
_output_shapes
:         А
╛
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/ShapeShape-bidirectional_rnn/fw/fw/while/fw/gru_cell/sub*
_output_shapes
:*
T0*
out_type0
┴
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Shape_1Shape.bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh*
T0*
out_type0*
_output_shapes
:
б
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
dtype0*
_output_shapes
: *
valueB :
         *d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Shape
Й
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc/max_size*
_output_shapes
:*
	elem_type0*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Shape*

stack_name 
щ
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Н
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/EnterQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Shape^OptimizeLoss/gradients/Add*
_output_shapes
:*
swap_memory( *
T0
Л
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
╕
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
е
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
         *f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Shape_1*
dtype0*
_output_shapes
: 
П
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1/max_size*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
э
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1EnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
У
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Shape_1^OptimizeLoss/gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
П
tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
╝
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*
_output_shapes
:*
	elem_type0
Х
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgslOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:         :         *
T0
ь
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/f_acc/max_sizeConst*
valueB :
         *A
_class7
53loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh*
dtype0*
_output_shapes
: 
┬
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/f_accStackV2^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/f_acc/max_size*
	elem_type0*A
_class7
53loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh*

stack_name *
_output_shapes
:
┼
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/EnterEnterUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
╘
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/StackPushV2StackPushV2UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/Enter.bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh^OptimizeLoss/gradients/Add*
T0*(
_output_shapes
:         А*
swap_memory( 
ч
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/StackPopV2/EnterEnterUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
в
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/StackPopV2
StackPopV2`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
╦
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mulMuldOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/tuple/control_dependency_1ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/StackPopV2*
T0*(
_output_shapes
:         А
╩
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/SumSumOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mulaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ц
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/ReshapeReshapeOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/SumlOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
э
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/f_acc/max_sizeConst*
valueB :
         *@
_class6
42loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/sub*
dtype0*
_output_shapes
: 
┼
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/f_accStackV2`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/f_acc/max_size*@
_class6
42loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/sub*

stack_name *
_output_shapes
:*
	elem_type0
╔
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/EnterEnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
╫
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/StackPushV2StackPushV2WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/Enter-bidirectional_rnn/fw/fw/while/fw/gru_cell/sub^OptimizeLoss/gradients/Add*
T0*(
_output_shapes
:         А*
swap_memory( 
ы
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/StackPopV2/EnterEnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
ж
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/StackPopV2
StackPopV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
╧
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1Mul\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/StackPopV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
╨
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Sum_1SumQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ь
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Reshape_1ReshapeQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Sum_1nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*0
_output_shapes
:                  *
T0*
Tshape0
Т
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/tuple/group_depsNoOpT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/ReshapeV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Reshape_1
┐
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/tuple/control_dependencyIdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Reshape]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Reshape*(
_output_shapes
:         А
┼
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/tuple/control_dependency_1IdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Reshape_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Reshape_1*(
_output_shapes
:         А
А
OptimizeLoss/gradients/AddN_1AddN]OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependency_1^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/control_dependency*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1*
N*(
_output_shapes
:         А
└
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/ShapeShape/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4*
T0*
out_type0*
_output_shapes
:
┬
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Shape_1Shape/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5*
T0*
out_type0*
_output_shapes
:
б
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
         *d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Shape*
dtype0*
_output_shapes
: 
Й
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc/max_size*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
щ
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
П
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/EnterQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Shape^OptimizeLoss/gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
Л
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
║
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
:*
	elem_type0
е
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
         *f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Shape_1*
dtype0*
_output_shapes
: 
П
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1/max_size*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
э
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/Enter_1EnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
Х
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/Enter_1SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Shape_1^OptimizeLoss/gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
П
tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
╛
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
:*
	elem_type0
Х
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgslOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
Ш
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/SumSumOptimizeLoss/gradients/AddN_1aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ц
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/ReshapeReshapeOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/SumlOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
Ь
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Sum_1SumOptimizeLoss/gradients/AddN_1cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ь
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Reshape_1ReshapeQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Sum_1nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
Т
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/tuple/group_depsNoOpT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/ReshapeV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Reshape_1
┐
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/tuple/control_dependencyIdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Reshape]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/tuple/group_deps*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Reshape*(
_output_shapes
:         А*
T0
┼
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/tuple/control_dependency_1IdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Reshape_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Reshape_1*(
_output_shapes
:         А
п
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/ShapeConst^OptimizeLoss/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
┬
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Shape_1Shape1bidirectional_rnn/fw/fw/while/fw/gru_cell/split:1*
T0*
out_type0*
_output_shapes
:
Я
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
dtype0*
_output_shapes
: *
valueB :
         *d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Shape_1
Е
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/f_accStackV2nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Shape_1*

stack_name *
_output_shapes
:
х
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/EnterEntereOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
Й
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2StackPushV2eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/EnterQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Shape_1^OptimizeLoss/gradients/Add*
_output_shapes
:*
swap_memory( *
T0
З
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2/EnterEntereOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
┤
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
_output_shapes
:*
	elem_type0
Є
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgsBroadcastGradientArgsOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/ShapejOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2*
T0*2
_output_shapes 
:         :         
█
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/SumSumdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/tuple/control_dependency_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
л
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/ReshapeReshapeMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/SumOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Shape*
_output_shapes
: *
T0*
Tshape0
▀
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Sum_1SumdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/tuple/control_dependencyaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
╚
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/NegNegOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Sum_1*
T0*
_output_shapes
:
т
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Reshape_1ReshapeMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/NegjOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
М
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/tuple/group_depsNoOpR^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/ReshapeT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Reshape_1
е
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/tuple/control_dependencyIdentityQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Reshape[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/tuple/group_deps*
_output_shapes
: *
T0*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Reshape
╜
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/tuple/control_dependency_1IdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Reshape_1[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Reshape_1
╓
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_grad/TanhGradTanhGradZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/StackPopV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
─
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/ShapeShape3bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1:1*
T0*
out_type0*
_output_shapes
:
╗
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Shape_1Shape(bidirectional_rnn/bw/bw/while/Identity_2*
T0*
out_type0*
_output_shapes
:
б
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
dtype0*
_output_shapes
: *
valueB :
         *d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Shape
Й
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_accStackV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc/max_size*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
щ
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
П
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/EnterQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Shape^OptimizeLoss/gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
Л
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
║
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
е
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
         *f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Shape_1*
dtype0*
_output_shapes
: 
П
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1StackV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1/max_size*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
э
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter_1EnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Х
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter_1SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Shape_1^OptimizeLoss/gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
П
tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
╛
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
:*
	elem_type0
Х
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgslOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
╔
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mulMuldOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/tuple/control_dependencyXOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:         А
╩
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/SumSumOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mulaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ц
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/ReshapeReshapeOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/SumlOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:                  *
T0*
Tshape0
ё
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/f_acc/max_sizeConst*
dtype0*
_output_shapes
: *
valueB :
         *D
_class:
86loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1
╔
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/f_accStackV2`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/f_acc/max_size*D
_class:
86loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1*

stack_name *
_output_shapes
:*
	elem_type0
╔
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/EnterEnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
▀
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/StackPushV2StackPushV2WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/Enter3bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1:1^OptimizeLoss/gradients/Add_1*
T0*(
_output_shapes
:         А*
swap_memory( 
ы
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/StackPopV2/EnterEnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
и
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/StackPopV2
StackPopV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
╧
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1Mul\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/StackPopV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
╨
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Sum_1SumQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ь
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Reshape_1ReshapeQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Sum_1nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*0
_output_shapes
:                  *
T0*
Tshape0
Т
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/tuple/group_depsNoOpT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/ReshapeV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Reshape_1
┐
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/tuple/control_dependencyIdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Reshape]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Reshape*(
_output_shapes
:         А
┼
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/tuple/control_dependency_1IdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Reshape_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Reshape_1*(
_output_shapes
:         А
└
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/ShapeShape/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1*
T0*
out_type0*
_output_shapes
:
├
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Shape_1Shape0bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1*
T0*
out_type0*
_output_shapes
:
б
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
         *d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Shape*
dtype0*
_output_shapes
: 
Й
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_accStackV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc/max_size*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
щ
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
П
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/EnterQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Shape^OptimizeLoss/gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
Л
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
║
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
:*
	elem_type0
е
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
         *f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Shape_1*
dtype0*
_output_shapes
: 
П
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1StackV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1/max_size*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
э
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter_1EnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
Х
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter_1SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Shape_1^OptimizeLoss/gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
П
tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
╛
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
:*
	elem_type0
Х
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgslOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
ю
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/f_acc/max_sizeConst*
valueB :
         *C
_class9
75loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1*
dtype0*
_output_shapes
: 
─
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/f_accStackV2^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/f_acc/max_size*C
_class9
75loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1*

stack_name *
_output_shapes
:*
	elem_type0
┼
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/EnterEnterUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/f_acc*
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
╪
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/StackPushV2StackPushV2UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/Enter0bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1^OptimizeLoss/gradients/Add_1*
T0*(
_output_shapes
:         А*
swap_memory( 
ч
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/StackPopV2/EnterEnterUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
д
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/StackPopV2
StackPopV2`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
═
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mulMulfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/tuple/control_dependency_1ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/StackPopV2*
T0*(
_output_shapes
:         А
╩
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/SumSumOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mulaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ц
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/ReshapeReshapeOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/SumlOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
я
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/f_acc/max_sizeConst*
valueB :
         *B
_class8
64loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1*
dtype0*
_output_shapes
: 
╟
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/f_accStackV2`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/f_acc/max_size*B
_class8
64loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1*

stack_name *
_output_shapes
:*
	elem_type0
╔
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/EnterEnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
█
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/StackPushV2StackPushV2WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/Enter/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1^OptimizeLoss/gradients/Add_1*
T0*(
_output_shapes
:         А*
swap_memory( 
ы
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/StackPopV2/EnterEnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
и
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/StackPopV2
StackPopV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
╤
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1Mul\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/StackPopV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
╨
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Sum_1SumQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ь
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Reshape_1ReshapeQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Sum_1nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*0
_output_shapes
:                  *
T0
Т
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/tuple/group_depsNoOpT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/ReshapeV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Reshape_1
┐
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/tuple/control_dependencyIdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Reshape]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Reshape*(
_output_shapes
:         А
┼
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/tuple/control_dependency_1IdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Reshape_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Reshape_1*(
_output_shapes
:         А
№
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/BiasAddGradBiasAddGradSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_grad/TanhGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
Ь
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/tuple/group_depsNoOpT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_grad/TanhGrad\^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/BiasAddGrad
╟
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/tuple/control_dependencyIdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_grad/TanhGrada^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_grad/TanhGrad
╠
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/tuple/control_dependency_1Identity[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/BiasAddGrada^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/tuple/group_deps*
_output_shapes	
:А*
T0*n
_classd
b`loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/BiasAddGrad
│
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/ShapeConst^OptimizeLoss/gradients/Sub_1*
_output_shapes
: *
valueB *
dtype0
╞
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Shape_1Shape3bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1:1*
T0*
out_type0*
_output_shapes
:
г
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
         *f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Shape_1*
dtype0*
_output_shapes
: 
Л
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/f_accStackV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/f_acc/max_size*

stack_name *
_output_shapes
:*
	elem_type0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Shape_1
щ
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
С
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/EnterSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Shape_1^OptimizeLoss/gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
Л
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
║
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
:*
	elem_type0
°
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/ShapelOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2*
T0*2
_output_shapes 
:         :         
▀
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/SumSumdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/tuple/control_dependencyaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
▒
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/ReshapeReshapeOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/SumQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
у
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Sum_1SumdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/tuple/control_dependencycOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
╠
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/NegNegQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Sum_1*
T0*
_output_shapes
:
ш
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Reshape_1ReshapeOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/NeglOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
Т
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/tuple/group_depsNoOpT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/ReshapeV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Reshape_1
н
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/tuple/control_dependencyIdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Reshape]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/tuple/group_deps*
_output_shapes
: *
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Reshape
┼
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/tuple/control_dependency_1IdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Reshape_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Reshape_1*(
_output_shapes
:         А
╪
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1_grad/TanhGradTanhGradZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/StackPopV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
╞
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul/EnterEnter3bidirectional_rnn/fw/gru_cell/candidate/kernel/read*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0
 
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMulMatMulhOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/tuple/control_dependency[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul/Enter*(
_output_shapes
:         А*
transpose_a( *
transpose_b(*
T0
°
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/f_acc/max_sizeConst*
dtype0*
_output_shapes
: *
valueB :
         *E
_class;
97loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1
╓
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/f_accStackV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/f_acc/max_size*
_output_shapes
:*
	elem_type0*E
_class;
97loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1*

stack_name 
╒
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/EnterEnter]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
ш
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/Enter2bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1^OptimizeLoss/gradients/Add*
T0*(
_output_shapes
:         А*
swap_memory( 
ў
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnter]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
▓
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
А
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1MatMulbOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/tuple/control_dependency*
T0* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( 
Щ
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/tuple/group_depsNoOpV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMulX^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1
╔
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/tuple/control_dependencyIdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul*(
_output_shapes
:         А
╟
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/tuple/control_dependency_1IdentityWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/tuple/group_deps*
T0*j
_class`
^\loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1* 
_output_shapes
:
АА
к
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
ы
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/b_acc_1Enter[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/b_acc*
_output_shapes	
:А*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( *
parallel_iterations 
█
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/b_acc_2Merge]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/b_acc_1cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/NextIteration*
N*
_output_shapes
	:А: *
T0
Ф
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/SwitchSwitch]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_2*"
_output_shapes
:А:А*
T0
╥
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/AddAdd^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/Switch:1jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1_grad/tuple/control_dependency_1*
_output_shapes	
:А*
T0
ї
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/NextIterationNextIterationYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/Add*
T0*
_output_shapes	
:А
щ
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/b_acc_3Exit\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/Switch*
T0*
_output_shapes	
:А
■
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/BiasAddGradBiasAddGradUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1_grad/TanhGrad*
data_formatNHWC*
_output_shapes	
:А*
T0
Ю
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/tuple/group_depsNoOpV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1_grad/TanhGrad\^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/BiasAddGrad
╦
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/tuple/control_dependencyIdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1_grad/TanhGrada^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/tuple/group_deps*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1_grad/TanhGrad*(
_output_shapes
:         А*
T0
╠
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/tuple/control_dependency_1Identity[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/BiasAddGrada^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/tuple/group_deps*
T0*n
_classd
b`loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/BiasAddGrad*
_output_shapes	
:А
▓
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/RankConst^OptimizeLoss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
╖
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/mod/ConstConst^OptimizeLoss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
о
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/modFloorModXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/mod/ConstSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/Rank*
_output_shapes
: *
T0
├
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeShape/bidirectional_rnn/fw/fw/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
є
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc/max_sizeConst*
dtype0*
_output_shapes
: *
valueB :
         *B
_class8
64loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3
╧
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_accStackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc/max_size*B
_class8
64loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3*

stack_name *
_output_shapes
:*
	elem_type0
╤
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/EnterEnter[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
с
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPushV2StackPushV2[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/Enter/bidirectional_rnn/fw/fw/while/TensorArrayReadV3^OptimizeLoss/gradients/Add*(
_output_shapes
:         А*
swap_memory( *
T0
є
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPopV2/EnterEnter[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
о
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPopV2
StackPopV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
є
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc_1/max_sizeConst*
_output_shapes
: *
valueB :
         *@
_class6
42loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/mul*
dtype0
╤
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc_1StackV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc_1/max_size*@
_class6
42loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/mul*

stack_name *
_output_shapes
:*
	elem_type0
╒
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/Enter_1Enter]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc_1*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
у
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPushV2_1StackPushV2]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/Enter_1-bidirectional_rnn/fw/fw/while/fw/gru_cell/mul^OptimizeLoss/gradients/Add*(
_output_shapes
:         А*
swap_memory( *
T0
ў
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPopV2_1/EnterEnter]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0
▓
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPopV2_1
StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
щ
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeNShapeN`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPopV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPopV2_1* 
_output_shapes
::*
T0*
out_type0*
N
Ъ
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ConcatOffsetConcatOffsetROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/modUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeNWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN:1*
N* 
_output_shapes
::
┬
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/SliceSlicegOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/tuple/control_dependency[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ConcatOffsetUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN*
Index0*
T0*0
_output_shapes
:                  
╚
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/Slice_1SlicegOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/tuple/control_dependency]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ConcatOffset:1WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN:1*
Index0*
T0*0
_output_shapes
:                  
Ч
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/tuple/group_depsNoOpU^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/SliceW^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/Slice_1
╟
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/tuple/control_dependencyIdentityTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/Slice`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/Slice*(
_output_shapes
:         А
═
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/tuple/control_dependency_1IdentityVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/Slice_1`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/tuple/group_deps*
T0*i
_class_
][loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/Slice_1*(
_output_shapes
:         А
│
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/b_accConst*
dtype0* 
_output_shapes
:
АА*
valueB
АА*    
ю
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/b_acc_1EnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/b_acc*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0
▌
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/b_acc_2Merge\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/b_acc_1bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
Ь
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/SwitchSwitch\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_2*,
_output_shapes
:
АА:
АА*
T0
╘
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/AddAdd]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/Switch:1iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
АА
°
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/NextIterationNextIterationXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/Add*
T0* 
_output_shapes
:
АА
ь
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/b_acc_3Exit[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/Switch* 
_output_shapes
:
АА*
T0
╞
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul/EnterEnter3bidirectional_rnn/fw/gru_cell/candidate/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
 
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMulMatMulhOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/tuple/control_dependency[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul/Enter*(
_output_shapes
:         А*
transpose_a( *
transpose_b(*
T0
°
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/f_acc/max_sizeConst*
valueB :
         *E
_class;
97loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3*
dtype0*
_output_shapes
: 
╓
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/f_accStackV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/f_acc/max_size*E
_class;
97loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3*

stack_name *
_output_shapes
:*
	elem_type0
╒
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/EnterEnter]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
ъ
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/StackPushV2StackPushV2]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/Enter2bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3^OptimizeLoss/gradients/Add_1*
T0*(
_output_shapes
:         А*
swap_memory( 
ў
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/StackPopV2/EnterEnter]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
┤
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/StackPopV2
StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
А
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1MatMulbOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/tuple/control_dependency*
T0* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( 
Щ
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/tuple/group_depsNoOpV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMulX^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1
╔
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/tuple/control_dependencyIdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul*(
_output_shapes
:         А
╟
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/tuple/control_dependency_1IdentityWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/tuple/group_deps* 
_output_shapes
:
АА*
T0*j
_class`
^\loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1
к
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/b_accConst*
_output_shapes	
:А*
valueBА*    *
dtype0
ы
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/b_acc_1Enter[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/b_acc*
_output_shapes	
:А*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( *
parallel_iterations 
█
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/b_acc_2Merge]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/b_acc_1cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
Ф
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/SwitchSwitch]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_6*"
_output_shapes
:А:А*
T0
╥
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/AddAdd^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/Switch:1jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3_grad/tuple/control_dependency_1*
_output_shapes	
:А*
T0
ї
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/NextIterationNextIterationYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/Add*
T0*
_output_shapes	
:А
щ
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/b_acc_3Exit\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/Switch*
T0*
_output_shapes	
:А
╛
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/ShapeShape/bidirectional_rnn/fw/fw/while/fw/gru_cell/split*
_output_shapes
:*
T0*
out_type0
╣
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Shape_1Shape(bidirectional_rnn/fw/fw/while/Identity_2*
_output_shapes
:*
T0*
out_type0
Э
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
valueB :
         *b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Shape*
dtype0*
_output_shapes
: 
Г
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_accStackV2nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Shape*

stack_name *
_output_shapes
:
х
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/EnterEntereOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0
З
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/EnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Shape^OptimizeLoss/gradients/Add*
_output_shapes
:*
swap_memory( *
T0
З
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEntereOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
┤
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
б
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
         *d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Shape_1*
dtype0*
_output_shapes
: 
Й
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1/max_size*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
щ
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1EntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
Н
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Shape_1^OptimizeLoss/gradients/Add*
_output_shapes
:*
swap_memory( *
T0
Л
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
╕
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*
_output_shapes
:*
	elem_type0
П
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgsjOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
╠
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mulMuliOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/tuple/control_dependency_1XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:         А
─
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/SumSumMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
р
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/ReshapeReshapeMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/SumjOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
э
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/f_acc/max_sizeConst*
valueB :
         *B
_class8
64loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/split*
dtype0*
_output_shapes
: 
├
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/f_accStackV2^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/f_acc/max_size*B
_class8
64loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/split*

stack_name *
_output_shapes
:*
	elem_type0
┼
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/EnterEnterUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
╒
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/StackPushV2StackPushV2UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/Enter/bidirectional_rnn/fw/fw/while/fw/gru_cell/split^OptimizeLoss/gradients/Add*
T0*(
_output_shapes
:         А*
swap_memory( 
ч
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/StackPopV2/EnterEnterUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0
в
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/StackPopV2
StackPopV2`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
╨
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1MulZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/StackPopV2iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
╩
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Sum_1SumOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ц
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Reshape_1ReshapeOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Sum_1lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
М
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/tuple/group_depsNoOpR^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/ReshapeT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Reshape_1
╖
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/tuple/control_dependencyIdentityQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Reshape[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Reshape*(
_output_shapes
:         А
╜
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/tuple/control_dependency_1IdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Reshape_1[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Reshape_1*(
_output_shapes
:         А
┤
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/RankConst^OptimizeLoss/gradients/Sub_1*
value	B :*
dtype0*
_output_shapes
: 
╣
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/mod/ConstConst^OptimizeLoss/gradients/Sub_1*
value	B :*
dtype0*
_output_shapes
: 
о
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/modFloorModXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/mod/ConstSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/Rank*
_output_shapes
: *
T0
├
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeShape/bidirectional_rnn/bw/bw/while/TensorArrayReadV3*
_output_shapes
:*
T0*
out_type0
є
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc/max_sizeConst*
valueB :
         *B
_class8
64loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3*
dtype0*
_output_shapes
: 
╧
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_accStackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc/max_size*B
_class8
64loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3*

stack_name *
_output_shapes
:*
	elem_type0
╤
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/EnterEnter[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
у
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPushV2StackPushV2[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/Enter/bidirectional_rnn/bw/bw/while/TensorArrayReadV3^OptimizeLoss/gradients/Add_1*
T0*(
_output_shapes
:         А*
swap_memory( 
є
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPopV2/EnterEnter[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0
░
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPopV2
StackPopV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
ї
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc_1/max_sizeConst*
valueB :
         *B
_class8
64loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3*
dtype0*
_output_shapes
: 
╙
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc_1StackV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc_1/max_size*

stack_name *
_output_shapes
:*
	elem_type0*B
_class8
64loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3
╒
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/Enter_1Enter]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc_1*
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
ч
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPushV2_1StackPushV2]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/Enter_1/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3^OptimizeLoss/gradients/Add_1*
T0*(
_output_shapes
:         А*
swap_memory( 
ў
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPopV2_1/EnterEnter]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0
┤
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPopV2_1
StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
щ
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeNShapeN`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPopV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPopV2_1* 
_output_shapes
::*
T0*
out_type0*
N
Ъ
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ConcatOffsetConcatOffsetROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/modUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeNWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN:1*
N* 
_output_shapes
::
┬
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/SliceSlicegOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/tuple/control_dependency[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ConcatOffsetUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN*
Index0*
T0*0
_output_shapes
:                  
╚
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/Slice_1SlicegOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/tuple/control_dependency]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ConcatOffset:1WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN:1*
Index0*
T0*0
_output_shapes
:                  
Ч
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/tuple/group_depsNoOpU^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/SliceW^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/Slice_1
╟
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/tuple/control_dependencyIdentityTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/Slice`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*g
_class]
[Yloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/Slice
═
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/tuple/control_dependency_1IdentityVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/Slice_1`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*i
_class_
][loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/Slice_1
│
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/b_accConst*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
ю
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/b_acc_1EnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
▌
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/b_acc_2Merge\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/b_acc_1bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
Ь
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/SwitchSwitch\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_6*
T0*,
_output_shapes
:
АА:
АА
╘
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/AddAdd]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/Switch:1iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/tuple/control_dependency_1* 
_output_shapes
:
АА*
T0
°
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/NextIterationNextIterationXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/Add*
T0* 
_output_shapes
:
АА
ь
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/b_acc_3Exit[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/Switch* 
_output_shapes
:
АА*
T0
Д
OptimizeLoss/gradients/AddN_2AddN]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/b_acc_3]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter_grad/b_acc_3*
N*
_output_shapes	
:А*
T0*p
_classf
dbloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/b_acc_3
Х
OptimizeLoss/gradients/AddN_3AddNdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/tuple/control_dependencydOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/tuple/control_dependency_1*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Reshape*
N*(
_output_shapes
:         А*
T0
╖
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/split_grad/concat/ConstConst^OptimizeLoss/gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
Г
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/split_grad/concatConcatV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/tuple/control_dependencyOptimizeLoss/gradients/AddN_3XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/split_grad/concat/Const*
T0*
N*(
_output_shapes
:         А*

Tidx0
┬
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/ShapeShape1bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1*
T0*
out_type0*
_output_shapes
:
╗
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Shape_1Shape(bidirectional_rnn/bw/bw/while/Identity_2*
out_type0*
_output_shapes
:*
T0
б
pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
dtype0*
_output_shapes
: *
valueB :
         *d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Shape
Й
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_accStackV2pOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc/max_size*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
щ
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
П
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/EnterQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Shape^OptimizeLoss/gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
Л
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/EnterEntergOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
║
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
:*
	elem_type0
е
rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
valueB :
         *f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Shape_1*
dtype0*
_output_shapes
: 
П
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1StackV2rOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1/max_size*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
э
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter_1EnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
Х
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter_1SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Shape_1^OptimizeLoss/gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
П
tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteriOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0
╛
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2tOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*
_output_shapes
:*
	elem_type0
Х
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgslOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:         :         *
T0
╬
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mulMuliOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/tuple/control_dependency_1XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2*(
_output_shapes
:         А*
T0
╩
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/SumSumOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mulaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ц
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/ReshapeReshapeOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/SumlOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*0
_output_shapes
:                  *
T0
ё
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/f_acc/max_sizeConst*
valueB :
         *D
_class:
86loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1*
dtype0*
_output_shapes
: 
╔
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/f_accStackV2`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/f_acc/max_size*D
_class:
86loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1*

stack_name *
_output_shapes
:*
	elem_type0
╔
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/EnterEnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0
▌
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/StackPushV2StackPushV2WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/Enter1bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1^OptimizeLoss/gradients/Add_1*(
_output_shapes
:         А*
swap_memory( *
T0
ы
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/StackPopV2/EnterEnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
и
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/StackPopV2
StackPopV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
╘
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1Mul\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/StackPopV2iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
╨
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Sum_1SumQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ь
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Reshape_1ReshapeQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Sum_1nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
Т
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/tuple/group_depsNoOpT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/ReshapeV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Reshape_1
┐
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/tuple/control_dependencyIdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Reshape]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Reshape*(
_output_shapes
:         А
┼
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/tuple/control_dependency_1IdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Reshape_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Reshape_1
Ж
OptimizeLoss/gradients/AddN_4AddN\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/b_acc_3\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter_grad/b_acc_3*
N* 
_output_shapes
:
АА*
T0*o
_classe
caloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/b_acc_3
∙
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc/max_sizeConst*
valueB :
         *D
_class:
86loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid*
dtype0*
_output_shapes
: 
┘
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/f_accStackV2hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc/max_size*

stack_name *
_output_shapes
:*
	elem_type0*D
_class:
86loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid
┘
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/EnterEnter_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
ы
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2StackPushV2_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/Enter1bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid^OptimizeLoss/gradients/Add*
T0*(
_output_shapes
:         А*
swap_memory( 
√
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2/EnterEnter_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc*
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
╢
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2
StackPopV2jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
╒
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGradSigmoidGraddOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/split_grad/concat*(
_output_shapes
:         А*
T0
Ч
OptimizeLoss/gradients/AddN_5AddNdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/tuple/control_dependencyfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/tuple/control_dependency_1*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Reshape*
N*(
_output_shapes
:         А
╗
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1_grad/concat/ConstConst^OptimizeLoss/gradients/Sub_1*
dtype0*
_output_shapes
: *
value	B :
Й
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1_grad/concatConcatV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/tuple/control_dependencyOptimizeLoss/gradients/AddN_5ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1_grad/concat/Const*
N*(
_output_shapes
:         А*

Tidx0*
T0
А
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/BiasAddGradBiasAddGradYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
Ю
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/tuple/group_depsNoOpZ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGradZ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/BiasAddGrad
╧
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/tuple/control_dependencyIdentityYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad_^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*l
_classb
`^loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad
─
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/tuple/control_dependency_1IdentityYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/BiasAddGrad_^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/tuple/group_deps*
T0*l
_classb
`^loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
¤
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_acc/max_sizeConst*
valueB :
         *F
_class<
:8loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1*
dtype0*
_output_shapes
: 
▀
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_accStackV2jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_acc/max_size*
	elem_type0*F
_class<
:8loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1*

stack_name *
_output_shapes
:
▌
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
є
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPushV2StackPushV2aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/Enter3bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1^OptimizeLoss/gradients/Add_1*(
_output_shapes
:         А*
swap_memory( *
T0
 
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPopV2/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
╝
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPopV2
StackPopV2lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
█
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPopV2TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1_grad/concat*
T0*(
_output_shapes
:         А
└
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul/EnterEnter/bidirectional_rnn/fw/gru_cell/gates/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
∙
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMulMatMulfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/tuple/control_dependencyYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul/Enter*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b(
Ї
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/f_acc/max_sizeConst*
valueB :
         *C
_class9
75loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/concat*
dtype0*
_output_shapes
: 
╨
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/f_accStackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/f_acc/max_size*C
_class9
75loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/concat*

stack_name *
_output_shapes
:*
	elem_type0
╤
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/EnterEnter[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
т
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/Enter0bidirectional_rnn/fw/fw/while/fw/gru_cell/concat^OptimizeLoss/gradients/Add*
T0*(
_output_shapes
:         А*
swap_memory( 
є
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnter[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/f_acc*
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
о
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*(
_output_shapes
:         А*
	elem_type0
·
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1MatMul`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/StackPopV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( 
У
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/tuple/group_depsNoOpT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMulV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1
┴
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/tuple/control_dependencyIdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul
┐
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/tuple/control_dependency_1IdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/tuple/group_deps* 
_output_shapes
:
АА*
T0*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1
и
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
ч
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/b_acc_1EnterYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes	
:А*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
╒
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/b_acc_2Merge[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/b_acc_1aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
Р
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/SwitchSwitch[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_2*
T0*"
_output_shapes
:А:А
╠
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/AddAdd\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/Switch:1hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes	
:А*
T0
ё
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/NextIterationNextIterationWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/Add*
_output_shapes	
:А*
T0
х
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/b_acc_3ExitZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:А
Д
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/BiasAddGradBiasAddGrad[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
д
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/tuple/group_depsNoOp\^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad\^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/BiasAddGrad
╫
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/tuple/control_dependencyIdentity[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrada^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/tuple/group_deps*n
_classd
b`loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad*(
_output_shapes
:         А*
T0
╠
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/tuple/control_dependency_1Identity[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/BiasAddGrada^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/tuple/group_deps*
_output_shapes	
:А*
T0*n
_classd
b`loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/BiasAddGrad
░
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/RankConst^OptimizeLoss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
╡
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/mod/ConstConst^OptimizeLoss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
и
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/modFloorModVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/mod/ConstQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/Rank*
_output_shapes
: *
T0
┴
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/ShapeShape/bidirectional_rnn/fw/fw/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
▌
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/ShapeNShapeN`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPopV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2*
T0*
out_type0*
N* 
_output_shapes
::
Т
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/ConcatOffsetConcatOffsetPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/modSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/ShapeNUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
║
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/SliceSliceeOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/tuple/control_dependencyYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/ConcatOffsetSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/ShapeN*
Index0*
T0*0
_output_shapes
:                  
└
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/Slice_1SliceeOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/tuple/control_dependency[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/ConcatOffset:1UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/ShapeN:1*0
_output_shapes
:                  *
Index0*
T0
С
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/tuple/group_depsNoOpS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/SliceU^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/Slice_1
┐
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/tuple/control_dependencyIdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/Slice^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/tuple/group_deps*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/Slice*(
_output_shapes
:         А*
T0
┼
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/tuple/control_dependency_1IdentityTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/Slice_1^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/tuple/group_deps*(
_output_shapes
:         А*
T0*g
_class]
[Yloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/Slice_1
▒
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/b_accConst*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
ъ
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/b_acc_1EnterXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
╫
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/b_acc_2MergeZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/b_acc_1`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
Ш
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/SwitchSwitchZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_2*
T0*,
_output_shapes
:
АА:
АА
╬
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/AddAdd[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/Switch:1gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
АА
Ї
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/NextIterationNextIterationVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/Add* 
_output_shapes
:
АА*
T0
ш
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/b_acc_3ExitYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
АА
┬
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul/EnterEnter/bidirectional_rnn/fw/gru_cell/gates/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
 
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMulMatMulhOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/tuple/control_dependency[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul/Enter*(
_output_shapes
:         А*
transpose_a( *
transpose_b(*
T0
°
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/f_acc/max_sizeConst*
valueB :
         *E
_class;
97loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2*
dtype0*
_output_shapes
: 
╓
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/f_accStackV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/f_acc/max_size*E
_class;
97loc:@bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2*

stack_name *
_output_shapes
:*
	elem_type0
╒
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/EnterEnter]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0
ъ
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/StackPushV2StackPushV2]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/Enter2bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2^OptimizeLoss/gradients/Add_1*(
_output_shapes
:         А*
swap_memory( *
T0
ў
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/StackPopV2/EnterEnter]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
┤
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/StackPopV2
StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*(
_output_shapes
:         А*
	elem_type0
А
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1MatMulbOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/tuple/control_dependency* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( *
T0
Щ
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/tuple/group_depsNoOpV^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMulX^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1
╔
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/tuple/control_dependencyIdentityUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/tuple/group_deps*h
_class^
\Zloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul*(
_output_shapes
:         А*
T0
╟
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/tuple/control_dependency_1IdentityWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/tuple/group_deps* 
_output_shapes
:
АА*
T0*j
_class`
^\loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1
к
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
ы
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/b_acc_1Enter[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/b_acc*
_output_shapes	
:А*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( *
parallel_iterations 
█
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/b_acc_2Merge]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/b_acc_1cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
Ф
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/SwitchSwitch]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_6*
T0*"
_output_shapes
:А:А
╥
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/AddAdd^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/Switch:1jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
ї
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/NextIterationNextIterationYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/Add*
T0*
_output_shapes	
:А
щ
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/b_acc_3Exit\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/Switch*
T0*
_output_shapes	
:А
Ъ
OptimizeLoss/gradients/AddN_6AddNgOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/tuple/control_dependencyeOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/tuple/control_dependency*
T0*g
_class]
[Yloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/Slice*
N*(
_output_shapes
:         А
Ф
sOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter%bidirectional_rnn/fw/fw/TensorArray_1*
is_constant(*
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0*H
_class>
<:loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter*
parallel_iterations 
┐
uOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterRbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
T0*H
_class>
<:loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(
Ч
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3sOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnteruOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^OptimizeLoss/gradients/Sub*"
sourceOptimizeLoss/gradients*H
_class>
<:loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter*
_output_shapes

:: 
╟
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityuOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1n^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*H
_class>
<:loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter
Ы
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3zOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2OptimizeLoss/gradients/AddN_6iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
╙
OptimizeLoss/gradients/AddN_7AddN[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependencyfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/tuple/control_dependency_1dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/tuple/control_dependency_1gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/tuple/control_dependency_1*(
_output_shapes
:         А*
T0*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select*
N
┤
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/RankConst^OptimizeLoss/gradients/Sub_1*
_output_shapes
: *
value	B :*
dtype0
╣
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/mod/ConstConst^OptimizeLoss/gradients/Sub_1*
_output_shapes
: *
value	B :*
dtype0
о
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/modFloorModXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/mod/ConstSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/Rank*
T0*
_output_shapes
: 
├
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/ShapeShape/bidirectional_rnn/bw/bw/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
▀
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/ShapeNShapeN`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPopV2XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2*
T0*
out_type0*
N* 
_output_shapes
::
Ъ
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/ConcatOffsetConcatOffsetROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/modUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/ShapeNWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/ShapeN:1*
N* 
_output_shapes
::
┬
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/SliceSlicegOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/tuple/control_dependency[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/ConcatOffsetUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/ShapeN*
Index0*
T0*0
_output_shapes
:                  
╚
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/Slice_1SlicegOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/tuple/control_dependency]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/ConcatOffset:1WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/ShapeN:1*
Index0*
T0*0
_output_shapes
:                  
Ч
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/tuple/group_depsNoOpU^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/SliceW^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/Slice_1
╟
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/tuple/control_dependencyIdentityTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/Slice`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/tuple/group_deps*g
_class]
[Yloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/Slice*(
_output_shapes
:         А*
T0
═
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/tuple/control_dependency_1IdentityVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/Slice_1`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/tuple/group_deps*
T0*i
_class_
][loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/Slice_1*(
_output_shapes
:         А
│
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/b_accConst*
dtype0* 
_output_shapes
:
АА*
valueB
АА*    
ю
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/b_acc_1EnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
▌
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/b_acc_2Merge\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/b_acc_1bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/NextIteration*
N*"
_output_shapes
:
АА: *
T0
Ь
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/SwitchSwitch\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_6*
T0*,
_output_shapes
:
АА:
АА
╘
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/AddAdd]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/Switch:1iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
АА
°
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/NextIterationNextIterationXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/Add* 
_output_shapes
:
АА*
T0
ь
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/b_acc_3Exit[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/Switch*
T0* 
_output_shapes
:
АА
А
OptimizeLoss/gradients/AddN_8AddN[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/b_acc_3]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter_grad/b_acc_3*
T0*n
_classd
b`loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/b_acc_3*
N*
_output_shapes	
:А
Ю
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
т
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context
╨
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
Ж
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2 OptimizeLoss/gradients/b_count_2*
T0*
_output_shapes
: : 
╬
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/AddAdd\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Switch:1oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ь
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
р
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Switch*
_output_shapes
: *
T0
╡
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad_1/NextIterationNextIterationOptimizeLoss/gradients/AddN_7*
T0*(
_output_shapes
:         А
Ь
OptimizeLoss/gradients/AddN_9AddNgOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/tuple/control_dependencygOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/tuple/control_dependency*g
_class]
[Yloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/Slice*
N*(
_output_shapes
:         А*
T0
Ф
sOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter%bidirectional_rnn/bw/bw/TensorArray_1*
is_constant(*
_output_shapes
:*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0*H
_class>
<:loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
parallel_iterations 
┐
uOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterRbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*H
_class>
<:loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context
Щ
mOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3sOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnteruOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^OptimizeLoss/gradients/Sub_1*"
sourceOptimizeLoss/gradients*H
_class>
<:loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
_output_shapes

:: 
╟
iOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityuOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1n^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*H
_class>
<:loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
_output_shapes
: 
Ы
oOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3mOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3zOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2OptimizeLoss/gradients/AddN_9iOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
_output_shapes
: *
T0
╪
OptimizeLoss/gradients/AddN_10AddN[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependencyfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/tuple/control_dependency_1fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/tuple/control_dependency_1iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/tuple/control_dependency_1*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select*
N*(
_output_shapes
:         А*
T0
Г
OptimizeLoss/gradients/AddN_11AddNZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/b_acc_3\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter_grad/b_acc_3*
T0*m
_classc
a_loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/b_acc_3*
N* 
_output_shapes
:
АА
ж
РOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3%bidirectional_rnn/fw/fw/TensorArray_1[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*"
sourceOptimizeLoss/gradients*8
_class.
,*loc:@bidirectional_rnn/fw/fw/TensorArray_1*
_output_shapes

:: 
х
МOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3С^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*8
_class.
,*loc:@bidirectional_rnn/fw/fw/TensorArray_1*
_output_shapes
: *
T0
м
ВOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3РOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV30bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeМOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:*
element_shape:
ы
OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOp\^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Г^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
ў
ЗOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityВOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3А^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*Ш
_classН
КЗloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*5
_output_shapes#
!:                  А
З
ЙOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3А^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*n
_classd
b`loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
Ю
YOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
т
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterYOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc*
is_constant( *
parallel_iterations *
_output_shapes
: *R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
T0
╨
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
Ж
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2 OptimizeLoss/gradients/b_count_6*
_output_shapes
: : *
T0
╬
WOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/AddAdd\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Switch:1oOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ь
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationWOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
р
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
╢
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad_1/NextIterationNextIterationOptimizeLoss/gradients/AddN_10*
T0*(
_output_shapes
:         А
ж
РOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3%bidirectional_rnn/bw/bw/TensorArray_1[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*"
sourceOptimizeLoss/gradients*8
_class.
,*loc:@bidirectional_rnn/bw/bw/TensorArray_1*
_output_shapes

:: 
х
МOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3С^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/bw/TensorArray_1*
_output_shapes
: 
м
ВOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3РOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV30bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeМOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:*
element_shape:
ы
OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOp\^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Г^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
ў
ЗOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityВOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3А^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*Ш
_classН
КЗloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*5
_output_shapes#
!:                  А*
T0
З
ЙOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3А^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*n
_classd
b`loc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
г
LOptimizeLoss/gradients/bidirectional_rnn/fw/transpose_grad/InvertPermutationInvertPermutationbidirectional_rnn/fw/concat*
T0*
_output_shapes
:
Ў
DOptimizeLoss/gradients/bidirectional_rnn/fw/transpose_grad/transpose	TransposeЗOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyLOptimizeLoss/gradients/bidirectional_rnn/fw/transpose_grad/InvertPermutation*
T0*5
_output_shapes#
!:                  А*
Tperm0
г
LOptimizeLoss/gradients/bidirectional_rnn/bw/transpose_grad/InvertPermutationInvertPermutationbidirectional_rnn/bw/concat*
T0*
_output_shapes
:
Ў
DOptimizeLoss/gradients/bidirectional_rnn/bw/transpose_grad/transpose	TransposeЗOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyLOptimizeLoss/gradients/bidirectional_rnn/bw/transpose_grad/InvertPermutation*
Tperm0*
T0*5
_output_shapes#
!:                  А
ж
POptimizeLoss/gradients/bidirectional_rnn/bw/ReverseSequence_grad/ReverseSequenceReverseSequenceDOptimizeLoss/gradients/bidirectional_rnn/bw/transpose_grad/transposeIteratorGetNext*
	batch_dim *
T0*
seq_dim*5
_output_shapes#
!:                  А*

Tlen0	
р
OptimizeLoss/gradients/AddN_12AddNDOptimizeLoss/gradients/bidirectional_rnn/fw/transpose_grad/transposePOptimizeLoss/gradients/bidirectional_rnn/bw/ReverseSequence_grad/ReverseSequence*
T0*W
_classM
KIloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/transpose_grad/transpose*
N*5
_output_shapes#
!:                  А
и
2OptimizeLoss/gradients/embedding_lookup_grad/ShapeConst*
_output_shapes
:*%
valueB	"▓       А       *
_class
loc:@Variable*
dtype0	
┴
4OptimizeLoss/gradients/embedding_lookup_grad/ToInt32Cast2OptimizeLoss/gradients/embedding_lookup_grad/Shape*

SrcT0	*
_class
loc:@Variable*
_output_shapes
:*

DstT0
}
1OptimizeLoss/gradients/embedding_lookup_grad/SizeSizeIteratorGetNext:1*
_output_shapes
: *
T0	*
out_type0
}
;OptimizeLoss/gradients/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ц
7OptimizeLoss/gradients/embedding_lookup_grad/ExpandDims
ExpandDims1OptimizeLoss/gradients/embedding_lookup_grad/Size;OptimizeLoss/gradients/embedding_lookup_grad/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
К
@OptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
М
BOptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
М
BOptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
:OptimizeLoss/gradients/embedding_lookup_grad/strided_sliceStridedSlice4OptimizeLoss/gradients/embedding_lookup_grad/ToInt32@OptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stackBOptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stack_1BOptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
z
8OptimizeLoss/gradients/embedding_lookup_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
и
3OptimizeLoss/gradients/embedding_lookup_grad/concatConcatV27OptimizeLoss/gradients/embedding_lookup_grad/ExpandDims:OptimizeLoss/gradients/embedding_lookup_grad/strided_slice8OptimizeLoss/gradients/embedding_lookup_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
╒
4OptimizeLoss/gradients/embedding_lookup_grad/ReshapeReshapeOptimizeLoss/gradients/AddN_123OptimizeLoss/gradients/embedding_lookup_grad/concat*(
_output_shapes
:         А*
T0*
Tshape0
╔
6OptimizeLoss/gradients/embedding_lookup_grad/Reshape_1ReshapeIteratorGetNext:17OptimizeLoss/gradients/embedding_lookup_grad/ExpandDims*
T0	*
Tshape0*#
_output_shapes
:         
╔
OptimizeLoss/global_norm/L2LossL2Loss4OptimizeLoss/gradients/embedding_lookup_grad/Reshape*
_output_shapes
: *
T0*G
_class=
;9loc:@OptimizeLoss/gradients/embedding_lookup_grad/Reshape
█
!OptimizeLoss/global_norm/L2Loss_1L2LossOptimizeLoss/gradients/AddN_11*
_output_shapes
: *
T0*m
_classc
a_loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter_grad/b_acc_3
█
!OptimizeLoss/global_norm/L2Loss_2L2LossOptimizeLoss/gradients/AddN_8*
T0*n
_classd
b`loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes
: 
▄
!OptimizeLoss/global_norm/L2Loss_3L2LossOptimizeLoss/gradients/AddN_4*
T0*o
_classe
caloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter_grad/b_acc_3*
_output_shapes
: 
▌
!OptimizeLoss/global_norm/L2Loss_4L2LossOptimizeLoss/gradients/AddN_2*
T0*p
_classf
dbloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter_grad/b_acc_3*
_output_shapes
: 
х
!OptimizeLoss/global_norm/L2Loss_5L2LossAOptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/transpose*
_output_shapes
: *
T0*T
_classJ
HFloc:@OptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/transpose
▄
!OptimizeLoss/global_norm/L2Loss_6L2LossDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
╙
OptimizeLoss/global_norm/stackPackOptimizeLoss/global_norm/L2Loss!OptimizeLoss/global_norm/L2Loss_1!OptimizeLoss/global_norm/L2Loss_2!OptimizeLoss/global_norm/L2Loss_3!OptimizeLoss/global_norm/L2Loss_4!OptimizeLoss/global_norm/L2Loss_5!OptimizeLoss/global_norm/L2Loss_6*
T0*

axis *
N*
_output_shapes
:
h
OptimizeLoss/global_norm/ConstConst*
valueB: *
dtype0*
_output_shapes
:
б
OptimizeLoss/global_norm/SumSumOptimizeLoss/global_norm/stackOptimizeLoss/global_norm/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
e
 OptimizeLoss/global_norm/Const_1Const*
valueB
 *   @*
dtype0*
_output_shapes
: 
Д
OptimizeLoss/global_norm/mulMulOptimizeLoss/global_norm/Sum OptimizeLoss/global_norm/Const_1*
T0*
_output_shapes
: 
k
$OptimizeLoss/global_norm/global_normSqrtOptimizeLoss/global_norm/mul*
_output_shapes
: *
T0
Т
+OptimizeLoss/global_norm/gradient_norm/tagsConst*
_output_shapes
: *7
value.B, B&OptimizeLoss/global_norm/gradient_norm*
dtype0
л
&OptimizeLoss/global_norm/gradient_normScalarSummary+OptimizeLoss/global_norm/gradient_norm/tags$OptimizeLoss/global_norm/global_norm*
T0*
_output_shapes
: 
h
OptimizeLoss/loss/tagsConst*
_output_shapes
: *"
valueB BOptimizeLoss/loss*
dtype0
a
OptimizeLoss/lossScalarSummaryOptimizeLoss/loss/tagsMean*
T0*
_output_shapes
: 
И
&OptimizeLoss/beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 
Щ
OptimizeLoss/beta1_power
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
shape: *
dtype0*
_output_shapes
: 
╥
OptimizeLoss/beta1_power/AssignAssignOptimizeLoss/beta1_power&OptimizeLoss/beta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
Б
OptimizeLoss/beta1_power/readIdentityOptimizeLoss/beta1_power*
_class
loc:@Variable*
_output_shapes
: *
T0
И
&OptimizeLoss/beta2_power/initial_valueConst*
valueB
 *w╛?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 
Щ
OptimizeLoss/beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@Variable
╥
OptimizeLoss/beta2_power/AssignAssignOptimizeLoss/beta2_power&OptimizeLoss/beta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
Б
OptimizeLoss/beta2_power/readIdentityOptimizeLoss/beta2_power*
_output_shapes
: *
T0*
_class
loc:@Variable
в
,OptimizeLoss/Variable/Adam/Initializer/zerosConst*
_class
loc:@Variable*
valueB
▓А*    *
dtype0* 
_output_shapes
:
▓А
п
OptimizeLoss/Variable/Adam
VariableV2*
dtype0* 
_output_shapes
:
▓А*
shared_name *
_class
loc:@Variable*
	container *
shape:
▓А
ц
!OptimizeLoss/Variable/Adam/AssignAssignOptimizeLoss/Variable/Adam,OptimizeLoss/Variable/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
▓А
П
OptimizeLoss/Variable/Adam/readIdentityOptimizeLoss/Variable/Adam*
_class
loc:@Variable* 
_output_shapes
:
▓А*
T0
д
.OptimizeLoss/Variable/Adam_1/Initializer/zerosConst*
_class
loc:@Variable*
valueB
▓А*    *
dtype0* 
_output_shapes
:
▓А
▒
OptimizeLoss/Variable/Adam_1
VariableV2*
_class
loc:@Variable*
	container *
shape:
▓А*
dtype0* 
_output_shapes
:
▓А*
shared_name 
ь
#OptimizeLoss/Variable/Adam_1/AssignAssignOptimizeLoss/Variable/Adam_1.OptimizeLoss/Variable/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
▓А*
use_locking(
У
!OptimizeLoss/Variable/Adam_1/readIdentityOptimizeLoss/Variable/Adam_1*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
ц
NOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/Initializer/zerosConst* 
_output_shapes
:
АА*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
valueB
АА*    *
dtype0
є
<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
АА*
shared_name *=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
	container *
shape:
АА
ю
COptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/AssignAssign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/AdamNOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/Initializer/zeros*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0
ї
AOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/readIdentity<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
ш
POptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/Initializer/zerosConst* 
_output_shapes
:
АА*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
valueB
АА*    *
dtype0
ї
>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1
VariableV2*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name 
Ї
EOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/AssignAssign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1POptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/Initializer/zeros* 
_output_shapes
:
АА*
use_locking(*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
validate_shape(
∙
COptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/readIdentity>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
╪
LOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/Initializer/zerosConst*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
х
:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam
VariableV2*
_output_shapes	
:А*
shared_name *;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
	container *
shape:А*
dtype0
с
AOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/AssignAssign:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/AdamLOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:А
ъ
?OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/readIdentity:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
┌
NOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/Initializer/zerosConst*
_output_shapes	
:А*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
valueBА*    *
dtype0
ч
<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1
VariableV2*
_output_shapes	
:А*
shared_name *;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
	container *
shape:А*
dtype0
ч
COptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/AssignAssign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1NOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/Initializer/zeros*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
ю
AOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/readIdentity<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
ю
ROptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/Initializer/zerosConst*
dtype0* 
_output_shapes
:
АА*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
valueB
АА*    
√
@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam
VariableV2*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name 
■
GOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/AssignAssign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamROptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/Initializer/zeros*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
Б
EOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/readIdentity@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА*
T0
Ё
TOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/Initializer/zerosConst*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
¤
BOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1
VariableV2*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel
Д
IOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/AssignAssignBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1TOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
АА
Е
GOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/readIdentityBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1* 
_output_shapes
:
АА*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel
р
POptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/Initializer/zerosConst*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
э
>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam
VariableV2*
_output_shapes	
:А*
shared_name *?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
	container *
shape:А*
dtype0
ё
EOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/AssignAssign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/AdamPOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:А
Ў
COptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/readIdentity>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam*
_output_shapes	
:А*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias
т
ROptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Initializer/zerosConst*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
я
@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1
VariableV2*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
ў
GOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/AssignAssign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1ROptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:А
·
EOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/readIdentity@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1*
_output_shapes	
:А*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias
и
0OptimizeLoss/dense/kernel/Adam/Initializer/zerosConst*
_class
loc:@dense/kernel*
valueB	А*    *
dtype0*
_output_shapes
:	А
╡
OptimizeLoss/dense/kernel/Adam
VariableV2*
shape:	А*
dtype0*
_output_shapes
:	А*
shared_name *
_class
loc:@dense/kernel*
	container 
ї
%OptimizeLoss/dense/kernel/Adam/AssignAssignOptimizeLoss/dense/kernel/Adam0OptimizeLoss/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
Ъ
#OptimizeLoss/dense/kernel/Adam/readIdentityOptimizeLoss/dense/kernel/Adam*
_output_shapes
:	А*
T0*
_class
loc:@dense/kernel
к
2OptimizeLoss/dense/kernel/Adam_1/Initializer/zerosConst*
_class
loc:@dense/kernel*
valueB	А*    *
dtype0*
_output_shapes
:	А
╖
 OptimizeLoss/dense/kernel/Adam_1
VariableV2*
_class
loc:@dense/kernel*
	container *
shape:	А*
dtype0*
_output_shapes
:	А*
shared_name 
√
'OptimizeLoss/dense/kernel/Adam_1/AssignAssign OptimizeLoss/dense/kernel/Adam_12OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
Ю
%OptimizeLoss/dense/kernel/Adam_1/readIdentity OptimizeLoss/dense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
Ъ
.OptimizeLoss/dense/bias/Adam/Initializer/zerosConst*
_output_shapes
:*
_class
loc:@dense/bias*
valueB*    *
dtype0
з
OptimizeLoss/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense/bias*
	container *
shape:
ш
#OptimizeLoss/dense/bias/Adam/AssignAssignOptimizeLoss/dense/bias/Adam.OptimizeLoss/dense/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias
П
!OptimizeLoss/dense/bias/Adam/readIdentityOptimizeLoss/dense/bias/Adam*
T0*
_class
loc:@dense/bias*
_output_shapes
:
Ь
0OptimizeLoss/dense/bias/Adam_1/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes
:
й
OptimizeLoss/dense/bias/Adam_1
VariableV2*
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
ю
%OptimizeLoss/dense/bias/Adam_1/AssignAssignOptimizeLoss/dense/bias/Adam_10OptimizeLoss/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
У
#OptimizeLoss/dense/bias/Adam_1/readIdentityOptimizeLoss/dense/bias/Adam_1*
T0*
_class
loc:@dense/bias*
_output_shapes
:
]
OptimizeLoss/train/beta1Const*
_output_shapes
: *
valueB
 *fff?*
dtype0
]
OptimizeLoss/train/beta2Const*
valueB
 *w╛?*
dtype0*
_output_shapes
: 
_
OptimizeLoss/train/epsilonConst*
_output_shapes
: *
valueB
 *w╠+2*
dtype0
╘
)OptimizeLoss/train/update_Variable/UniqueUnique6OptimizeLoss/gradients/embedding_lookup_grad/Reshape_1*
out_idx0*
T0	*
_class
loc:@Variable*2
_output_shapes 
:         :         
о
(OptimizeLoss/train/update_Variable/ShapeShape)OptimizeLoss/train/update_Variable/Unique*
_output_shapes
:*
T0	*
out_type0*
_class
loc:@Variable
Э
6OptimizeLoss/train/update_Variable/strided_slice/stackConst*
valueB: *
_class
loc:@Variable*
dtype0*
_output_shapes
:
Я
8OptimizeLoss/train/update_Variable/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
_class
loc:@Variable*
dtype0
Я
8OptimizeLoss/train/update_Variable/strided_slice/stack_2Const*
valueB:*
_class
loc:@Variable*
dtype0*
_output_shapes
:
┼
0OptimizeLoss/train/update_Variable/strided_sliceStridedSlice(OptimizeLoss/train/update_Variable/Shape6OptimizeLoss/train/update_Variable/strided_slice/stack8OptimizeLoss/train/update_Variable/strided_slice/stack_18OptimizeLoss/train/update_Variable/strided_slice/stack_2*
T0*
Index0*
_class
loc:@Variable*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
└
5OptimizeLoss/train/update_Variable/UnsortedSegmentSumUnsortedSegmentSum4OptimizeLoss/gradients/embedding_lookup_grad/Reshape+OptimizeLoss/train/update_Variable/Unique:10OptimizeLoss/train/update_Variable/strided_slice*
Tindices0*
T0*
_class
loc:@Variable*(
_output_shapes
:         А
К
(OptimizeLoss/train/update_Variable/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?*
_class
loc:@Variable
┤
&OptimizeLoss/train/update_Variable/subSub(OptimizeLoss/train/update_Variable/sub/xOptimizeLoss/beta2_power/read*
T0*
_class
loc:@Variable*
_output_shapes
: 
Х
'OptimizeLoss/train/update_Variable/SqrtSqrt&OptimizeLoss/train/update_Variable/sub*
T0*
_class
loc:@Variable*
_output_shapes
: 
г
&OptimizeLoss/train/update_Variable/mulMulPlaceholder_2'OptimizeLoss/train/update_Variable/Sqrt*
T0*
_class
loc:@Variable*
_output_shapes
: 
М
*OptimizeLoss/train/update_Variable/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?*
_class
loc:@Variable
╕
(OptimizeLoss/train/update_Variable/sub_1Sub*OptimizeLoss/train/update_Variable/sub_1/xOptimizeLoss/beta1_power/read*
T0*
_class
loc:@Variable*
_output_shapes
: 
┼
*OptimizeLoss/train/update_Variable/truedivRealDiv&OptimizeLoss/train/update_Variable/mul(OptimizeLoss/train/update_Variable/sub_1*
_output_shapes
: *
T0*
_class
loc:@Variable
М
*OptimizeLoss/train/update_Variable/sub_2/xConst*
valueB
 *  А?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 
│
(OptimizeLoss/train/update_Variable/sub_2Sub*OptimizeLoss/train/update_Variable/sub_2/xOptimizeLoss/train/beta1*
_output_shapes
: *
T0*
_class
loc:@Variable
р
(OptimizeLoss/train/update_Variable/mul_1Mul5OptimizeLoss/train/update_Variable/UnsortedSegmentSum(OptimizeLoss/train/update_Variable/sub_2*
T0*
_class
loc:@Variable*(
_output_shapes
:         А
▓
(OptimizeLoss/train/update_Variable/mul_2MulOptimizeLoss/Variable/Adam/readOptimizeLoss/train/beta1*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
ъ
)OptimizeLoss/train/update_Variable/AssignAssignOptimizeLoss/Variable/Adam(OptimizeLoss/train/update_Variable/mul_2*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
▓А
├
-OptimizeLoss/train/update_Variable/ScatterAdd
ScatterAddOptimizeLoss/Variable/Adam)OptimizeLoss/train/update_Variable/Unique(OptimizeLoss/train/update_Variable/mul_1*^OptimizeLoss/train/update_Variable/Assign*
Tindices0	*
use_locking( *
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
э
(OptimizeLoss/train/update_Variable/mul_3Mul5OptimizeLoss/train/update_Variable/UnsortedSegmentSum5OptimizeLoss/train/update_Variable/UnsortedSegmentSum*
T0*
_class
loc:@Variable*(
_output_shapes
:         А
М
*OptimizeLoss/train/update_Variable/sub_3/xConst*
valueB
 *  А?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 
│
(OptimizeLoss/train/update_Variable/sub_3Sub*OptimizeLoss/train/update_Variable/sub_3/xOptimizeLoss/train/beta2*
T0*
_class
loc:@Variable*
_output_shapes
: 
╙
(OptimizeLoss/train/update_Variable/mul_4Mul(OptimizeLoss/train/update_Variable/mul_3(OptimizeLoss/train/update_Variable/sub_3*(
_output_shapes
:         А*
T0*
_class
loc:@Variable
┤
(OptimizeLoss/train/update_Variable/mul_5Mul!OptimizeLoss/Variable/Adam_1/readOptimizeLoss/train/beta2* 
_output_shapes
:
▓А*
T0*
_class
loc:@Variable
ю
+OptimizeLoss/train/update_Variable/Assign_1AssignOptimizeLoss/Variable/Adam_1(OptimizeLoss/train/update_Variable/mul_5*
validate_shape(* 
_output_shapes
:
▓А*
use_locking( *
T0*
_class
loc:@Variable
╔
/OptimizeLoss/train/update_Variable/ScatterAdd_1
ScatterAddOptimizeLoss/Variable/Adam_1)OptimizeLoss/train/update_Variable/Unique(OptimizeLoss/train/update_Variable/mul_4,^OptimizeLoss/train/update_Variable/Assign_1* 
_output_shapes
:
▓А*
Tindices0	*
use_locking( *
T0*
_class
loc:@Variable
к
)OptimizeLoss/train/update_Variable/Sqrt_1Sqrt/OptimizeLoss/train/update_Variable/ScatterAdd_1*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
╥
(OptimizeLoss/train/update_Variable/mul_6Mul*OptimizeLoss/train/update_Variable/truediv-OptimizeLoss/train/update_Variable/ScatterAdd*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
╝
&OptimizeLoss/train/update_Variable/addAdd)OptimizeLoss/train/update_Variable/Sqrt_1OptimizeLoss/train/epsilon* 
_output_shapes
:
▓А*
T0*
_class
loc:@Variable
╤
,OptimizeLoss/train/update_Variable/truediv_1RealDiv(OptimizeLoss/train/update_Variable/mul_6&OptimizeLoss/train/update_Variable/add*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
╠
,OptimizeLoss/train/update_Variable/AssignSub	AssignSubVariable,OptimizeLoss/train/update_Variable/truediv_1*
use_locking( *
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
у
-OptimizeLoss/train/update_Variable/group_depsNoOp-^OptimizeLoss/train/update_Variable/AssignSub.^OptimizeLoss/train/update_Variable/ScatterAdd0^OptimizeLoss/train/update_Variable/ScatterAdd_1*
_class
loc:@Variable
╙
NOptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/kernel/ApplyAdam	ApplyAdam*bidirectional_rnn/fw/gru_cell/gates/kernel<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonOptimizeLoss/gradients/AddN_11*
use_locking( *
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
use_nesterov( * 
_output_shapes
:
АА
├
LOptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/bias/ApplyAdam	ApplyAdam(bidirectional_rnn/fw/gru_cell/gates/bias:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonOptimizeLoss/gradients/AddN_8*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
use_nesterov( *
_output_shapes	
:А*
use_locking( *
T0
ц
ROptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/kernel/ApplyAdam	ApplyAdam.bidirectional_rnn/fw/gru_cell/candidate/kernel@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonOptimizeLoss/gradients/AddN_4*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
use_nesterov( * 
_output_shapes
:
АА*
use_locking( 
╫
POptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/bias/ApplyAdam	ApplyAdam,bidirectional_rnn/fw/gru_cell/candidate/bias>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonOptimizeLoss/gradients/AddN_2*
use_locking( *
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
use_nesterov( *
_output_shapes	
:А
▀
0OptimizeLoss/train/update_dense/kernel/ApplyAdam	ApplyAdamdense/kernelOptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonAOptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/transpose*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( *
_output_shapes
:	А
╙
.OptimizeLoss/train/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasOptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
Ё
OptimizeLoss/train/mulMulOptimizeLoss/beta1_power/readOptimizeLoss/train/beta1.^OptimizeLoss/train/update_Variable/group_depsO^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/kernel/ApplyAdamM^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/bias/ApplyAdamS^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/kernel/ApplyAdamQ^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 
╝
OptimizeLoss/train/AssignAssignOptimizeLoss/beta1_powerOptimizeLoss/train/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable
Є
OptimizeLoss/train/mul_1MulOptimizeLoss/beta2_power/readOptimizeLoss/train/beta2.^OptimizeLoss/train/update_Variable/group_depsO^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/kernel/ApplyAdamM^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/bias/ApplyAdamS^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/kernel/ApplyAdamQ^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 
└
OptimizeLoss/train/Assign_1AssignOptimizeLoss/beta2_powerOptimizeLoss/train/mul_1*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking( *
T0
╖
OptimizeLoss/train/updateNoOp.^OptimizeLoss/train/update_Variable/group_depsO^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/kernel/ApplyAdamM^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/bias/ApplyAdamS^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/kernel/ApplyAdamQ^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam^OptimizeLoss/train/Assign^OptimizeLoss/train/Assign_1
Х
OptimizeLoss/train/valueConst^OptimizeLoss/train/update*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Variable_1
Ш
OptimizeLoss/train	AssignAdd
Variable_1OptimizeLoss/train/value*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable_1
А
OptimizeLoss/control_dependencyIdentityMean^OptimizeLoss/train*
T0*
_class
	loc:@Mean*
_output_shapes
: 
Ю	
initNoOp^Variable/Assign2^bidirectional_rnn/fw/gru_cell/gates/kernel/Assign0^bidirectional_rnn/fw/gru_cell/gates/bias/Assign6^bidirectional_rnn/fw/gru_cell/candidate/kernel/Assign4^bidirectional_rnn/fw/gru_cell/candidate/bias/Assign^dense/kernel/Assign^dense/bias/Assign^Variable_1/Assign ^OptimizeLoss/beta1_power/Assign ^OptimizeLoss/beta2_power/Assign"^OptimizeLoss/Variable/Adam/Assign$^OptimizeLoss/Variable/Adam_1/AssignD^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/AssignF^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/AssignB^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/AssignD^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/AssignH^OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/AssignJ^OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/AssignF^OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/AssignH^OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Assign&^OptimizeLoss/dense/kernel/Adam/Assign(^OptimizeLoss/dense/kernel/Adam_1/Assign$^OptimizeLoss/dense/bias/Adam/Assign&^OptimizeLoss/dense/bias/Adam_1/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
┤
save/SaveV2/tensor_namesConst*ч
value▌B┌BOptimizeLoss/Variable/AdamBOptimizeLoss/Variable/Adam_1BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/AdamB@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1B@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1B:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/AdamB<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1B<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/AdamB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BVariableB
Variable_1B,bidirectional_rnn/fw/gru_cell/candidate/biasB.bidirectional_rnn/fw/gru_cell/candidate/kernelB(bidirectional_rnn/fw/gru_cell/gates/biasB*bidirectional_rnn/fw/gru_cell/gates/kernelB
dense/biasBdense/kernel*
dtype0*
_output_shapes
:
У
save/SaveV2/shape_and_slicesConst*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
╙
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesOptimizeLoss/Variable/AdamOptimizeLoss/Variable/Adam_1OptimizeLoss/beta1_powerOptimizeLoss/beta2_power>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1OptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1Variable
Variable_1,bidirectional_rnn/fw/gru_cell/candidate/bias.bidirectional_rnn/fw/gru_cell/candidate/kernel(bidirectional_rnn/fw/gru_cell/gates/bias*bidirectional_rnn/fw/gru_cell/gates/kernel
dense/biasdense/kernel*&
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
~
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*/
value&B$BOptimizeLoss/Variable/Adam
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save/AssignAssignOptimizeLoss/Variable/Adamsave/RestoreV2*
validate_shape(* 
_output_shapes
:
▓А*
use_locking(*
T0*
_class
loc:@Variable
В
save/RestoreV2_1/tensor_namesConst*1
value(B&BOptimizeLoss/Variable/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
╕
save/Assign_1AssignOptimizeLoss/Variable/Adam_1save/RestoreV2_1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
▓А
~
save/RestoreV2_2/tensor_namesConst*-
value$B"BOptimizeLoss/beta1_power*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
к
save/Assign_2AssignOptimizeLoss/beta1_powersave/RestoreV2_2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
~
save/RestoreV2_3/tensor_namesConst*-
value$B"BOptimizeLoss/beta2_power*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save/Assign_3AssignOptimizeLoss/beta2_powersave/RestoreV2_3*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
д
save/RestoreV2_4/tensor_namesConst*S
valueJBHB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
∙
save/Assign_4Assign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adamsave/RestoreV2_4*
use_locking(*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:А
ж
save/RestoreV2_5/tensor_namesConst*
_output_shapes
:*U
valueLBJB@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1*
dtype0
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
√
save/Assign_5Assign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1save/RestoreV2_5*
use_locking(*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:А
ж
save/RestoreV2_6/tensor_namesConst*U
valueLBJB@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
В
save/Assign_6Assign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adamsave/RestoreV2_6*
use_locking(*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
АА
и
save/RestoreV2_7/tensor_namesConst*W
valueNBLBBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
Д
save/Assign_7AssignBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1save/RestoreV2_7*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0
а
save/RestoreV2_8/tensor_namesConst*O
valueFBDB:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
ё
save/Assign_8Assign:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adamsave/RestoreV2_8*
_output_shapes	
:А*
use_locking(*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
validate_shape(
в
save/RestoreV2_9/tensor_namesConst*Q
valueHBFB<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
є
save/Assign_9Assign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1save/RestoreV2_9*
_output_shapes	
:А*
use_locking(*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
validate_shape(
г
save/RestoreV2_10/tensor_namesConst*Q
valueHBFB<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
№
save/Assign_10Assign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adamsave/RestoreV2_10*
use_locking(*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
АА
е
save/RestoreV2_11/tensor_namesConst*
_output_shapes
:*S
valueJBHB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1*
dtype0
k
"save/RestoreV2_11/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Щ
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
■
save/Assign_11Assign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1save/RestoreV2_11*
use_locking(*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
АА
Г
save/RestoreV2_12/tensor_namesConst*1
value(B&BOptimizeLoss/dense/bias/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
╢
save/Assign_12AssignOptimizeLoss/dense/bias/Adamsave/RestoreV2_12*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
Е
save/RestoreV2_13/tensor_namesConst*3
value*B(BOptimizeLoss/dense/bias/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
╕
save/Assign_13AssignOptimizeLoss/dense/bias/Adam_1save/RestoreV2_13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias
Е
save/RestoreV2_14/tensor_namesConst*
dtype0*
_output_shapes
:*3
value*B(BOptimizeLoss/dense/kernel/Adam
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
┐
save/Assign_14AssignOptimizeLoss/dense/kernel/Adamsave/RestoreV2_14*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
З
save/RestoreV2_15/tensor_namesConst*5
value,B*B OptimizeLoss/dense/kernel/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
┴
save/Assign_15Assign OptimizeLoss/dense/kernel/Adam_1save/RestoreV2_15*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
o
save/RestoreV2_16/tensor_namesConst*
valueBBVariable*
dtype0*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Щ
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save/Assign_16AssignVariablesave/RestoreV2_16*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
▓А*
use_locking(
q
save/RestoreV2_17/tensor_namesConst*
_output_shapes
:*
valueBB
Variable_1*
dtype0
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
а
save/Assign_17Assign
Variable_1save/RestoreV2_17*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
У
save/RestoreV2_18/tensor_namesConst*A
value8B6B,bidirectional_rnn/fw/gru_cell/candidate/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
щ
save/Assign_18Assign,bidirectional_rnn/fw/gru_cell/candidate/biassave/RestoreV2_18*
use_locking(*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:А
Х
save/RestoreV2_19/tensor_namesConst*C
value:B8B.bidirectional_rnn/fw/gru_cell/candidate/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
Є
save/Assign_19Assign.bidirectional_rnn/fw/gru_cell/candidate/kernelsave/RestoreV2_19*
use_locking(*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
АА
П
save/RestoreV2_20/tensor_namesConst*=
value4B2B(bidirectional_rnn/fw/gru_cell/gates/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
с
save/Assign_20Assign(bidirectional_rnn/fw/gru_cell/gates/biassave/RestoreV2_20*
use_locking(*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:А
С
save/RestoreV2_21/tensor_namesConst*?
value6B4B*bidirectional_rnn/fw/gru_cell/gates/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
ъ
save/Assign_21Assign*bidirectional_rnn/fw/gru_cell/gates/kernelsave/RestoreV2_21*
use_locking(*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
АА
q
save/RestoreV2_22/tensor_namesConst*
valueBB
dense/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
_output_shapes
:*
dtypes
2
д
save/Assign_22Assign
dense/biassave/RestoreV2_22*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
s
save/RestoreV2_23/tensor_namesConst*
dtype0*
_output_shapes
:*!
valueBBdense/kernel
k
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
_output_shapes
:*
dtypes
2
н
save/Assign_23Assigndense/kernelsave/RestoreV2_23*
validate_shape(*
_output_shapes
:	А*
use_locking(*
T0*
_class
loc:@dense/kernel
д
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_81114b8c901e4b43b57c5c21800e7b3b/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
╢
save_1/SaveV2/tensor_namesConst*ч
value▌B┌BOptimizeLoss/Variable/AdamBOptimizeLoss/Variable/Adam_1BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/AdamB@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1B@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1B:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/AdamB<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1B<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/AdamB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BVariableB
Variable_1B,bidirectional_rnn/fw/gru_cell/candidate/biasB.bidirectional_rnn/fw/gru_cell/candidate/kernelB(bidirectional_rnn/fw/gru_cell/gates/biasB*bidirectional_rnn/fw/gru_cell/gates/kernelB
dense/biasBdense/kernel*
dtype0*
_output_shapes
:
Х
save_1/SaveV2/shape_and_slicesConst*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
х
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesOptimizeLoss/Variable/AdamOptimizeLoss/Variable/Adam_1OptimizeLoss/beta1_powerOptimizeLoss/beta2_power>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1OptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1Variable
Variable_1,bidirectional_rnn/fw/gru_cell/candidate/bias.bidirectional_rnn/fw/gru_cell/candidate/kernel(bidirectional_rnn/fw/gru_cell/gates/bias*bidirectional_rnn/fw/gru_cell/gates/kernel
dense/biasdense/kernel*&
dtypes
2
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
г
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
_output_shapes
: *
T0
А
save_1/RestoreV2/tensor_namesConst*/
value&B$BOptimizeLoss/Variable/Adam*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ш
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
╢
save_1/AssignAssignOptimizeLoss/Variable/Adamsave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
▓А
Д
save_1/RestoreV2_1/tensor_namesConst*1
value(B&BOptimizeLoss/Variable/Adam_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
╝
save_1/Assign_1AssignOptimizeLoss/Variable/Adam_1save_1/RestoreV2_1*
validate_shape(* 
_output_shapes
:
▓А*
use_locking(*
T0*
_class
loc:@Variable
А
save_1/RestoreV2_2/tensor_namesConst*-
value$B"BOptimizeLoss/beta1_power*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save_1/Assign_2AssignOptimizeLoss/beta1_powersave_1/RestoreV2_2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
А
save_1/RestoreV2_3/tensor_namesConst*-
value$B"BOptimizeLoss/beta2_power*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
о
save_1/Assign_3AssignOptimizeLoss/beta2_powersave_1/RestoreV2_3*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
ж
save_1/RestoreV2_4/tensor_namesConst*S
valueJBHB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
¤
save_1/Assign_4Assign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adamsave_1/RestoreV2_4*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias
и
save_1/RestoreV2_5/tensor_namesConst*U
valueLBJB@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
 
save_1/Assign_5Assign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1save_1/RestoreV2_5*
use_locking(*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:А
и
save_1/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*U
valueLBJB@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam
l
#save_1/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
Ж
save_1/Assign_6Assign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adamsave_1/RestoreV2_6*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel
к
save_1/RestoreV2_7/tensor_namesConst*W
valueNBLBBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
И
save_1/Assign_7AssignBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1save_1/RestoreV2_7*
use_locking(*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
АА
в
save_1/RestoreV2_8/tensor_namesConst*O
valueFBDB:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Ю
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
ї
save_1/Assign_8Assign:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adamsave_1/RestoreV2_8*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
д
save_1/RestoreV2_9/tensor_namesConst*Q
valueHBFB<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Ю
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
ў
save_1/Assign_9Assign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1save_1/RestoreV2_9*
use_locking(*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:А
е
 save_1/RestoreV2_10/tensor_namesConst*
dtype0*
_output_shapes
:*Q
valueHBFB<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam
m
$save_1/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
А
save_1/Assign_10Assign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adamsave_1/RestoreV2_10*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel
з
 save_1/RestoreV2_11/tensor_namesConst*S
valueJBHB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
В
save_1/Assign_11Assign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1save_1/RestoreV2_11*
use_locking(*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
АА
Е
 save_1/RestoreV2_12/tensor_namesConst*
_output_shapes
:*1
value(B&BOptimizeLoss/dense/bias/Adam*
dtype0
m
$save_1/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_1/Assign_12AssignOptimizeLoss/dense/bias/Adamsave_1/RestoreV2_12*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
З
 save_1/RestoreV2_13/tensor_namesConst*3
value*B(BOptimizeLoss/dense/bias/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
╝
save_1/Assign_13AssignOptimizeLoss/dense/bias/Adam_1save_1/RestoreV2_13*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
З
 save_1/RestoreV2_14/tensor_namesConst*3
value*B(BOptimizeLoss/dense/kernel/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
├
save_1/Assign_14AssignOptimizeLoss/dense/kernel/Adamsave_1/RestoreV2_14*
_output_shapes
:	А*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
Й
 save_1/RestoreV2_15/tensor_namesConst*5
value,B*B OptimizeLoss/dense/kernel/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
б
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
┼
save_1/Assign_15Assign OptimizeLoss/dense/kernel/Adam_1save_1/RestoreV2_15*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(*
T0
q
 save_1/RestoreV2_16/tensor_namesConst*
valueBBVariable*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
_output_shapes
:*
dtypes
2
к
save_1/Assign_16AssignVariablesave_1/RestoreV2_16*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
▓А
s
 save_1/RestoreV2_17/tensor_namesConst*
valueBB
Variable_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_17/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save_1/Assign_17Assign
Variable_1save_1/RestoreV2_17*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
Х
 save_1/RestoreV2_18/tensor_namesConst*A
value8B6B,bidirectional_rnn/fw/gru_cell/candidate/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_18/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
э
save_1/Assign_18Assign,bidirectional_rnn/fw/gru_cell/candidate/biassave_1/RestoreV2_18*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ч
 save_1/RestoreV2_19/tensor_namesConst*C
value:B8B.bidirectional_rnn/fw/gru_cell/candidate/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_19/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
Ў
save_1/Assign_19Assign.bidirectional_rnn/fw/gru_cell/candidate/kernelsave_1/RestoreV2_19* 
_output_shapes
:
АА*
use_locking(*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
validate_shape(
С
 save_1/RestoreV2_20/tensor_namesConst*=
value4B2B(bidirectional_rnn/fw/gru_cell/gates/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_20/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
б
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
х
save_1/Assign_20Assign(bidirectional_rnn/fw/gru_cell/gates/biassave_1/RestoreV2_20*
use_locking(*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:А
У
 save_1/RestoreV2_21/tensor_namesConst*?
value6B4B*bidirectional_rnn/fw/gru_cell/gates/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
ю
save_1/Assign_21Assign*bidirectional_rnn/fw/gru_cell/gates/kernelsave_1/RestoreV2_21*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
s
 save_1/RestoreV2_22/tensor_namesConst*
valueBB
dense/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
_output_shapes
:*
dtypes
2
и
save_1/Assign_22Assign
dense/biassave_1/RestoreV2_22*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias
u
 save_1/RestoreV2_23/tensor_namesConst*
dtype0*
_output_shapes
:*!
valueBBdense/kernel
m
$save_1/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
_output_shapes
:*
dtypes
2
▒
save_1/Assign_23Assigndense/kernelsave_1/RestoreV2_23*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
╪
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23
1
save_1/restore_allNoOp^save_1/restore_shard┴$
┘
О
tf_map_func_44a91aae
arg09
5ParseSingleSequenceExample/ParseSingleSequenceExample	<
8ParseSingleSequenceExample/ParseSingleSequenceExample_o2	<
8ParseSingleSequenceExample/ParseSingleSequenceExample_o1	25A wrapper for Defun that facilitates shape inference.I
 ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	З
^ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0y
JParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blength*
dtype0~
OParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Blabels*
dtype0~
OParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB Btokens*
dtype0i
@ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0т
5ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExamplearg0gParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_empty:output:0SParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0:output:0XParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0:output:0XParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1:output:0)ParseSingleSequenceExample/Const:output:0IParseSingleSequenceExample/ParseSingleSequenceExample/debug_name:output:0*
Tcontext_dense
2	*"
feature_list_dense_types
2		*
Ncontext_dense*
Nfeature_list_sparse *
Ncontext_sparse *
context_dense_shapes
: *
context_sparse_types
 *
Nfeature_list_dense*
feature_list_sparse_types
 *#
feature_list_dense_shapes
: : "Н
8ParseSingleSequenceExample/ParseSingleSequenceExample_o1QParseSingleSequenceExample/ParseSingleSequenceExample:feature_list_dense_values:0"Н
8ParseSingleSequenceExample/ParseSingleSequenceExample_o2QParseSingleSequenceExample/ParseSingleSequenceExample:feature_list_dense_values:1"Е
5ParseSingleSequenceExample/ParseSingleSequenceExampleLParseSingleSequenceExample/ParseSingleSequenceExample:context_dense_values:0
т
0
_make_dataset_9be6fe52
PaddedBatchDataset]
TFRecordDataset/filenamesConst*,
value#B!B/tmp/training.tf_record*
dtype0M
 TFRecordDataset/compression_typeConst*
valueB
 BZLIB*
dtype0G
TFRecordDataset/buffer_sizeConst*
valueB		 RАА*
dtype0	Ч
TFRecordDatasetTFRecordDataset"TFRecordDataset/filenames:output:0)TFRecordDataset/compression_type:output:0$TFRecordDataset/buffer_size:output:0▒

MapDataset
MapDatasetTFRecordDataset:handle:0*
output_types
2			*

Targuments
 *3
output_shapes"
 : :         :         *
fR
tf_map_func_44a91aaeH
ShuffleDataset/buffer_size_1Const*
dtype0	*
valueB		 RЁУ	=
ShuffleDataset/seedConst*
value	B	 R *
dtype0	>
ShuffleDataset/seed2Const*
value	B	 R *
dtype0	З
ShuffleDatasetShuffleDatasetMapDataset:handle:0%ShuffleDataset/buffer_size_1:output:0ShuffleDataset/seed:output:0ShuffleDataset/seed2:output:0*3
output_shapes"
 : :         :         *
reshuffle_each_iteration(*
output_types
2			F
RepeatDataset/countConst*
valueB	 R
         *
dtype0	г
RepeatDatasetRepeatDatasetShuffleDataset:handle:0RepeatDataset/count:output:0*
output_types
2			*3
output_shapes"
 : :         :         H
PaddedBatchDataset/batch_sizeConst*
value
B	 RА*
dtype0	A
PaddedBatchDataset/ConstConst*
dtype0	*
valueB	 Q
PaddedBatchDataset/Const_1Const*
dtype0	*
valueB	R
         Q
PaddedBatchDataset/Const_2Const*
valueB	R
         *
dtype0	J
 PaddedBatchDataset/padding_valueConst*
value	B	 R *
dtype0	L
"PaddedBatchDataset/padding_value_1Const*
dtype0	*
value	B	 R L
"PaddedBatchDataset/padding_value_2Const*
value	B	 R *
dtype0	┘
PaddedBatchDatasetPaddedBatchDatasetRepeatDataset:handle:0&PaddedBatchDataset/batch_size:output:0!PaddedBatchDataset/Const:output:0#PaddedBatchDataset/Const_1:output:0#PaddedBatchDataset/Const_2:output:0)PaddedBatchDataset/padding_value:output:0+PaddedBatchDataset/padding_value_1:output:0+PaddedBatchDataset/padding_value_2:output:0*Z
output_shapesI
G:         :                  :                  *
Toutput_types
2			*
N"1
PaddedBatchDatasetPaddedBatchDataset:handle:0"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"N
	summariesA
?
(OptimizeLoss/global_norm/gradient_norm:0
OptimizeLoss/loss:0"Ш	
trainable_variablesА	¤
@

Variable:0Variable/AssignVariable/read:02random_uniform:0
▌
,bidirectional_rnn/fw/gru_cell/gates/kernel:01bidirectional_rnn/fw/gru_cell/gates/kernel/Assign1bidirectional_rnn/fw/gru_cell/gates/kernel/read:02Gbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform:0
╠
*bidirectional_rnn/fw/gru_cell/gates/bias:0/bidirectional_rnn/fw/gru_cell/gates/bias/Assign/bidirectional_rnn/fw/gru_cell/gates/bias/read:02<bidirectional_rnn/fw/gru_cell/gates/bias/Initializer/Const:0
э
0bidirectional_rnn/fw/gru_cell/candidate/kernel:05bidirectional_rnn/fw/gru_cell/candidate/kernel/Assign5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:02Kbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform:0
▄
.bidirectional_rnn/fw/gru_cell/candidate/bias:03bidirectional_rnn/fw/gru_cell/candidate/bias/Assign3bidirectional_rnn/fw/gru_cell/candidate/bias/read:02@bidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/Const:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0""
train_op

OptimizeLoss/train"ы═
while_context╪═╘═
Юж
+bidirectional_rnn/fw/fw/while/while_context *(bidirectional_rnn/fw/fw/while/LoopCond:02%bidirectional_rnn/fw/fw/while/Merge:0:(bidirectional_rnn/fw/fw/while/Identity:0B$bidirectional_rnn/fw/fw/while/Exit:0B&bidirectional_rnn/fw/fw/while/Exit_1:0B&bidirectional_rnn/fw/fw/while/Exit_2:0B"OptimizeLoss/gradients/f_count_2:0J╖в
OptimizeLoss/gradients/Add/y:0
OptimizeLoss/gradients/Add:0
OptimizeLoss/gradients/Merge:0
OptimizeLoss/gradients/Merge:1
&OptimizeLoss/gradients/NextIteration:0
OptimizeLoss/gradients/Switch:0
OptimizeLoss/gradients/Switch:1
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Enter:0
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPushV2:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc:0
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/Enter:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPushV2:0
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_acc:0
wOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
}OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
wOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/Enter:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_acc:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_acc:0
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter:0
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc:0
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape:0
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape_1:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_acc:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/Enter:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPushV2:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_acc:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/Enter:0
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/f_acc:0
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/Enter:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/StackPushV2:0
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/f_acc:0
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/Enter:0
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2:0
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc:0
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/Enter:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/Enter_1:0
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2:0
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1:0
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Shape:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/Shape_1:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/Shape:0
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/Enter:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/Enter_1:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPushV2:0
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/StackPushV2_1:0
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc_1:0
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_grad/Shape:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Shape:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/Shape_1:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/Enter:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/StackPushV2:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/f_acc:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2:0
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Shape:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/Shape_1:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/Enter:0
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/StackPushV2:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/f_acc:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/Enter:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/StackPushV2:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/f_acc:0
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/Enter:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1:0
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2:0
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Shape:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/Shape_1:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/Enter:0
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/StackPushV2:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/f_acc:0
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/Enter:0
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2:0
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/f_acc:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/Shape_1:0
 OptimizeLoss/gradients/f_count:0
"OptimizeLoss/gradients/f_count_1:0
"OptimizeLoss/gradients/f_count_2:0
%bidirectional_rnn/fw/fw/CheckSeqLen:0
%bidirectional_rnn/fw/fw/TensorArray:0
Tbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
'bidirectional_rnn/fw/fw/TensorArray_1:0
)bidirectional_rnn/fw/fw/strided_slice_1:0
%bidirectional_rnn/fw/fw/while/Enter:0
'bidirectional_rnn/fw/fw/while/Enter_1:0
'bidirectional_rnn/fw/fw/while/Enter_2:0
$bidirectional_rnn/fw/fw/while/Exit:0
&bidirectional_rnn/fw/fw/while/Exit_1:0
&bidirectional_rnn/fw/fw/while/Exit_2:0
2bidirectional_rnn/fw/fw/while/GreaterEqual/Enter:0
,bidirectional_rnn/fw/fw/while/GreaterEqual:0
.bidirectional_rnn/fw/fw/while/GreaterEqual_1:0
(bidirectional_rnn/fw/fw/while/Identity:0
*bidirectional_rnn/fw/fw/while/Identity_1:0
*bidirectional_rnn/fw/fw/while/Identity_2:0
*bidirectional_rnn/fw/fw/while/Less/Enter:0
$bidirectional_rnn/fw/fw/while/Less:0
(bidirectional_rnn/fw/fw/while/LoopCond:0
%bidirectional_rnn/fw/fw/while/Merge:0
%bidirectional_rnn/fw/fw/while/Merge:1
'bidirectional_rnn/fw/fw/while/Merge_1:0
'bidirectional_rnn/fw/fw/while/Merge_1:1
'bidirectional_rnn/fw/fw/while/Merge_2:0
'bidirectional_rnn/fw/fw/while/Merge_2:1
-bidirectional_rnn/fw/fw/while/NextIteration:0
/bidirectional_rnn/fw/fw/while/NextIteration_1:0
/bidirectional_rnn/fw/fw/while/NextIteration_2:0
,bidirectional_rnn/fw/fw/while/Select/Enter:0
&bidirectional_rnn/fw/fw/while/Select:0
(bidirectional_rnn/fw/fw/while/Select_1:0
&bidirectional_rnn/fw/fw/while/Switch:0
&bidirectional_rnn/fw/fw/while/Switch:1
(bidirectional_rnn/fw/fw/while/Switch_1:0
(bidirectional_rnn/fw/fw/while/Switch_1:1
(bidirectional_rnn/fw/fw/while/Switch_2:0
(bidirectional_rnn/fw/fw/while/Switch_2:1
7bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0
9bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0
1bidirectional_rnn/fw/fw/while/TensorArrayReadV3:0
Ibidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Cbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3:0
%bidirectional_rnn/fw/fw/while/add/y:0
#bidirectional_rnn/fw/fw/while/add:0
-bidirectional_rnn/fw/fw/while/dropout/Floor:0
-bidirectional_rnn/fw/fw/while/dropout/Shape:0
1bidirectional_rnn/fw/fw/while/dropout/add/Enter:0
+bidirectional_rnn/fw/fw/while/dropout/add:0
+bidirectional_rnn/fw/fw/while/dropout/div:0
+bidirectional_rnn/fw/fw/while/dropout/mul:0
Dbidirectional_rnn/fw/fw/while/dropout/random_uniform/RandomUniform:0
:bidirectional_rnn/fw/fw/while/dropout/random_uniform/max:0
:bidirectional_rnn/fw/fw/while/dropout/random_uniform/min:0
:bidirectional_rnn/fw/fw/while/dropout/random_uniform/mul:0
:bidirectional_rnn/fw/fw/while/dropout/random_uniform/sub:0
6bidirectional_rnn/fw/fw/while/dropout/random_uniform:0
9bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter:0
3bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd:0
;bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter:0
5bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1:0
1bidirectional_rnn/fw/fw/while/fw/gru_cell/Const:0
8bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter:0
2bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul:0
:bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter:0
4bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1:0
3bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid:0
0bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh:0
/bidirectional_rnn/fw/fw/while/fw/gru_cell/add:0
7bidirectional_rnn/fw/fw/while/fw/gru_cell/concat/axis:0
2bidirectional_rnn/fw/fw/while/fw/gru_cell/concat:0
9bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1/axis:0
4bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1:0
/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul:0
1bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1:0
1bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2:0
;bidirectional_rnn/fw/fw/while/fw/gru_cell/split/split_dim:0
1bidirectional_rnn/fw/fw/while/fw/gru_cell/split:0
1bidirectional_rnn/fw/fw/while/fw/gru_cell/split:1
1bidirectional_rnn/fw/fw/while/fw/gru_cell/sub/x:0
/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub:0
bidirectional_rnn/fw/fw/zeros:0
3bidirectional_rnn/fw/gru_cell/candidate/bias/read:0
5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:0
/bidirectional_rnn/fw/gru_cell/gates/bias/read:0
1bidirectional_rnn/fw/gru_cell/gates/kernel/read:0
sub:0r
3bidirectional_rnn/fw/gru_cell/candidate/bias/read:0;bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_1/Enter:0╥
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc:0gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/Enter:0Є
wOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0wOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0╓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1:0╛
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/f_acc:0]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_grad/MatMul_1/Enter:0r
%bidirectional_rnn/fw/fw/TensorArray:0Ibidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0╛
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc:0]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/Enter:0╢
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/f_acc:0YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul_1/Enter:0╢
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/f_acc:0YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/mul_1/Enter:0:
sub:01bidirectional_rnn/fw/fw/while/dropout/add/Enter:0╞
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc:0aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_grad/SigmoidGrad/Enter:0▓
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/f_acc:0WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_grad/mul_1/Enter:0С
Tbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:09bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0O
bidirectional_rnn/fw/fw/zeros:0,bidirectional_rnn/fw/fw/while/Select/Enter:0┌
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0▓
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/f_acc:0WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/mul/Enter:0ж
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Enter:0b
'bidirectional_rnn/fw/fw/TensorArray_1:07bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0╥
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc:0gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/Enter:0╥
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/f_acc:0gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_grad/BroadcastGradientArgs/Enter:0ж
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/Enter:0[
%bidirectional_rnn/fw/fw/CheckSeqLen:02bidirectional_rnn/fw/fw/while/GreaterEqual/Enter:0m
1bidirectional_rnn/fw/gru_cell/gates/kernel/read:08bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul/Enter:0┌
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0┬
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/f_acc:0_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1_grad/MatMul_1/Enter:0ж
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/Enter:0l
/bidirectional_rnn/fw/gru_cell/gates/bias/read:09bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd/Enter:0╩
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_acc:0cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/Enter:0W
)bidirectional_rnn/fw/fw/strided_slice_1:0*bidirectional_rnn/fw/fw/while/Less/Enter:0о
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc:0UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Enter:0╓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1:0iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_grad/BroadcastGradientArgs/Enter_1:0╩
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc:0cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter:0╬
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0┬
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/f_acc_1:0_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_1_grad/ShapeN/Enter_1:0s
5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:0:bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_1/Enter:0к
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_acc:0SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/Enter:0╓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter:0в
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_acc:0OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/Enter:0╓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter:0R%bidirectional_rnn/fw/fw/while/Enter:0R'bidirectional_rnn/fw/fw/while/Enter_1:0R'bidirectional_rnn/fw/fw/while/Enter_2:0R"OptimizeLoss/gradients/f_count_1:0
оз
+bidirectional_rnn/bw/bw/while/while_context *(bidirectional_rnn/bw/bw/while/LoopCond:02%bidirectional_rnn/bw/bw/while/Merge:0:(bidirectional_rnn/bw/bw/while/Identity:0B$bidirectional_rnn/bw/bw/while/Exit:0B&bidirectional_rnn/bw/bw/while/Exit_1:0B&bidirectional_rnn/bw/bw/while/Exit_2:0B"OptimizeLoss/gradients/f_count_5:0J╟г
 OptimizeLoss/gradients/Add_1/y:0
OptimizeLoss/gradients/Add_1:0
 OptimizeLoss/gradients/Merge_2:0
 OptimizeLoss/gradients/Merge_2:1
(OptimizeLoss/gradients/NextIteration_2:0
!OptimizeLoss/gradients/Switch_2:0
!OptimizeLoss/gradients/Switch_2:1
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc:0
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Enter:0
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPushV2:0
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc:0
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/Enter:0
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPushV2:0
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_acc:0
wOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
}OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
wOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/Enter:0
iOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2:0
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_acc:0
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_acc:0
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape:0
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter:0
eOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0
iOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2:0
kOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc:0
eOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape:0
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape_1:0
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_acc:0
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/Enter:0
YOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPushV2:0
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_acc:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/Enter:0
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/StackPushV2:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/f_acc:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/Enter:0
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/StackPushV2:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/f_acc:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/Enter:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPushV2:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_acc:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/Enter:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/Enter_1:0
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2:0
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Shape:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/Shape_1:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2_grad/Shape:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/Shape:0
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/Enter:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/Enter_1:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPushV2:0
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/StackPushV2_1:0
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc_1:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter_1:0
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2:0
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Shape:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/Shape_1:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/Enter:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/StackPushV2:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/f_acc:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter_1:0
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2:0
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Shape:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/Shape_1:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/Enter:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/StackPushV2:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/f_acc:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter_1:0
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2:0
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Shape:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/Shape_1:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/Enter:0
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/StackPushV2:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/f_acc:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/Enter:0
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/StackPushV2:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/f_acc:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/Enter:0
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPushV2:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/f_acc:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/Shape_1:0
"OptimizeLoss/gradients/f_count_3:0
"OptimizeLoss/gradients/f_count_4:0
"OptimizeLoss/gradients/f_count_5:0
%bidirectional_rnn/bw/bw/CheckSeqLen:0
%bidirectional_rnn/bw/bw/TensorArray:0
Tbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
'bidirectional_rnn/bw/bw/TensorArray_1:0
)bidirectional_rnn/bw/bw/strided_slice_1:0
%bidirectional_rnn/bw/bw/while/Enter:0
'bidirectional_rnn/bw/bw/while/Enter_1:0
'bidirectional_rnn/bw/bw/while/Enter_2:0
$bidirectional_rnn/bw/bw/while/Exit:0
&bidirectional_rnn/bw/bw/while/Exit_1:0
&bidirectional_rnn/bw/bw/while/Exit_2:0
2bidirectional_rnn/bw/bw/while/GreaterEqual/Enter:0
,bidirectional_rnn/bw/bw/while/GreaterEqual:0
.bidirectional_rnn/bw/bw/while/GreaterEqual_1:0
(bidirectional_rnn/bw/bw/while/Identity:0
*bidirectional_rnn/bw/bw/while/Identity_1:0
*bidirectional_rnn/bw/bw/while/Identity_2:0
*bidirectional_rnn/bw/bw/while/Less/Enter:0
$bidirectional_rnn/bw/bw/while/Less:0
(bidirectional_rnn/bw/bw/while/LoopCond:0
%bidirectional_rnn/bw/bw/while/Merge:0
%bidirectional_rnn/bw/bw/while/Merge:1
'bidirectional_rnn/bw/bw/while/Merge_1:0
'bidirectional_rnn/bw/bw/while/Merge_1:1
'bidirectional_rnn/bw/bw/while/Merge_2:0
'bidirectional_rnn/bw/bw/while/Merge_2:1
-bidirectional_rnn/bw/bw/while/NextIteration:0
/bidirectional_rnn/bw/bw/while/NextIteration_1:0
/bidirectional_rnn/bw/bw/while/NextIteration_2:0
,bidirectional_rnn/bw/bw/while/Select/Enter:0
&bidirectional_rnn/bw/bw/while/Select:0
(bidirectional_rnn/bw/bw/while/Select_1:0
&bidirectional_rnn/bw/bw/while/Switch:0
&bidirectional_rnn/bw/bw/while/Switch:1
(bidirectional_rnn/bw/bw/while/Switch_1:0
(bidirectional_rnn/bw/bw/while/Switch_1:1
(bidirectional_rnn/bw/bw/while/Switch_2:0
(bidirectional_rnn/bw/bw/while/Switch_2:1
7bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0
9bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0
1bidirectional_rnn/bw/bw/while/TensorArrayReadV3:0
Ibidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Cbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3:0
%bidirectional_rnn/bw/bw/while/add/y:0
#bidirectional_rnn/bw/bw/while/add:0
-bidirectional_rnn/bw/bw/while/dropout/Floor:0
-bidirectional_rnn/bw/bw/while/dropout/Shape:0
1bidirectional_rnn/bw/bw/while/dropout/add/Enter:0
+bidirectional_rnn/bw/bw/while/dropout/add:0
+bidirectional_rnn/bw/bw/while/dropout/div:0
+bidirectional_rnn/bw/bw/while/dropout/mul:0
Dbidirectional_rnn/bw/bw/while/dropout/random_uniform/RandomUniform:0
:bidirectional_rnn/bw/bw/while/dropout/random_uniform/max:0
:bidirectional_rnn/bw/bw/while/dropout/random_uniform/min:0
:bidirectional_rnn/bw/bw/while/dropout/random_uniform/mul:0
:bidirectional_rnn/bw/bw/while/dropout/random_uniform/sub:0
6bidirectional_rnn/bw/bw/while/dropout/random_uniform:0
bidirectional_rnn/bw/bw/zeros:0
;bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter:0
5bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2:0
;bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter:0
5bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3:0
3bidirectional_rnn/fw/fw/while/fw/gru_cell/Const_1:0
:bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter:0
4bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2:0
:bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter:0
4bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3:0
5bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1:0
2bidirectional_rnn/fw/fw/while/fw/gru_cell/Tanh_1:0
1bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1:0
9bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2/axis:0
4bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_2:0
9bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3/axis:0
4bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3:0
1bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3:0
1bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4:0
1bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5:0
=bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1/split_dim:0
3bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1:0
3bidirectional_rnn/fw/fw/while/fw/gru_cell/split_1:1
3bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1/x:0
1bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1:0
3bidirectional_rnn/fw/gru_cell/candidate/bias/read:0
5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:0
/bidirectional_rnn/fw/gru_cell/gates/bias/read:0
1bidirectional_rnn/fw/gru_cell/gates/kernel/read:0
sub:0╢
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/f_acc:0YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/mul_1/Enter:0[
%bidirectional_rnn/bw/bw/CheckSeqLen:02bidirectional_rnn/bw/bw/while/GreaterEqual/Enter:0Є
wOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0wOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0┌
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1:0kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter_1:0W
)bidirectional_rnn/bw/bw/strided_slice_1:0*bidirectional_rnn/bw/bw/while/Less/Enter:0┌
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1:0kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/Enter_1:0:
sub:01bidirectional_rnn/bw/bw/while/dropout/add/Enter:0С
Tbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:09bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0╓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc:0iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/add_1_grad/BroadcastGradientArgs/Enter:0o
1bidirectional_rnn/fw/gru_cell/gates/kernel/read:0:bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2/Enter:0ж
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Enter:0n
/bidirectional_rnn/fw/gru_cell/gates/bias/read:0;bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_2/Enter:0ж
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/Enter:0▓
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/f_acc:0WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul/Enter:0╛
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc:0]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/Enter:0╩
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_acc:0cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/Enter:0ж
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/Enter:0┬
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/f_acc:0_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_2_grad/MatMul_1/Enter:0r
%bidirectional_rnn/bw/bw/TensorArray:0Ibidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0о
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc:0UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Enter:0╓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc:0iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter:0╩
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc:0cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter:0┬
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/f_acc:0_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3_grad/MatMul_1/Enter:0╓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc:0iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter:0╬
eOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0eOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0┌
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1:0kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter_1:0s
5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:0:bidirectional_rnn/fw/fw/while/fw/gru_cell/MatMul_3/Enter:0╓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc:0iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter:0╓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/f_acc:0iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/sub_1_grad/BroadcastGradientArgs/Enter:0╩
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_acc:0cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/Sigmoid_1_grad/SigmoidGrad/Enter:0O
bidirectional_rnn/bw/bw/zeros:0,bidirectional_rnn/bw/bw/while/Select/Enter:0r
3bidirectional_rnn/fw/gru_cell/candidate/bias/read:0;bidirectional_rnn/fw/fw/while/fw/gru_cell/BiasAdd_3/Enter:0┌
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1:0kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter_1:0к
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_acc:0SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/Enter:0╢
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/f_acc:0YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_5_grad/mul_1/Enter:0b
'bidirectional_rnn/bw/bw/TensorArray_1:07bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0╢
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/f_acc:0YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/mul_4_grad/mul_1/Enter:0в
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_acc:0OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/Enter:0┬
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/f_acc_1:0_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/fw/gru_cell/concat_3_grad/ShapeN/Enter_1:0R%bidirectional_rnn/bw/bw/while/Enter:0R'bidirectional_rnn/bw/bw/while/Enter_1:0R'bidirectional_rnn/bw/bw/while/Enter_2:0R"OptimizeLoss/gradients/f_count_4:0"А&
	variablesЄ%я%
@

Variable:0Variable/AssignVariable/read:02random_uniform:0
▌
,bidirectional_rnn/fw/gru_cell/gates/kernel:01bidirectional_rnn/fw/gru_cell/gates/kernel/Assign1bidirectional_rnn/fw/gru_cell/gates/kernel/read:02Gbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform:0
╠
*bidirectional_rnn/fw/gru_cell/gates/bias:0/bidirectional_rnn/fw/gru_cell/gates/bias/Assign/bidirectional_rnn/fw/gru_cell/gates/bias/read:02<bidirectional_rnn/fw/gru_cell/gates/bias/Initializer/Const:0
э
0bidirectional_rnn/fw/gru_cell/candidate/kernel:05bidirectional_rnn/fw/gru_cell/candidate/kernel/Assign5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:02Kbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform:0
▄
.bidirectional_rnn/fw/gru_cell/candidate/bias:03bidirectional_rnn/fw/gru_cell/candidate/bias/Assign3bidirectional_rnn/fw/gru_cell/candidate/bias/read:02@bidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/Const:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
P
Variable_1:0Variable_1/AssignVariable_1/read:02Variable_1/initial_value:0
И
OptimizeLoss/beta1_power:0OptimizeLoss/beta1_power/AssignOptimizeLoss/beta1_power/read:02(OptimizeLoss/beta1_power/initial_value:0
И
OptimizeLoss/beta2_power:0OptimizeLoss/beta2_power/AssignOptimizeLoss/beta2_power/read:02(OptimizeLoss/beta2_power/initial_value:0
Ф
OptimizeLoss/Variable/Adam:0!OptimizeLoss/Variable/Adam/Assign!OptimizeLoss/Variable/Adam/read:02.OptimizeLoss/Variable/Adam/Initializer/zeros:0
Ь
OptimizeLoss/Variable/Adam_1:0#OptimizeLoss/Variable/Adam_1/Assign#OptimizeLoss/Variable/Adam_1/read:020OptimizeLoss/Variable/Adam_1/Initializer/zeros:0
Ь
>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam:0COptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/AssignCOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/read:02POptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/Initializer/zeros:0
д
@OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1:0EOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/AssignEOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/read:02ROptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/Initializer/zeros:0
Ф
<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam:0AOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/AssignAOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/read:02NOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/Initializer/zeros:0
Ь
>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1:0COptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/AssignCOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/read:02POptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/Initializer/zeros:0
м
BOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam:0GOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/AssignGOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/read:02TOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/Initializer/zeros:0
┤
DOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1:0IOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/AssignIOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/read:02VOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/Initializer/zeros:0
д
@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam:0EOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/AssignEOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/read:02ROptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/Initializer/zeros:0
м
BOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1:0GOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/AssignGOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/read:02TOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Initializer/zeros:0
д
 OptimizeLoss/dense/kernel/Adam:0%OptimizeLoss/dense/kernel/Adam/Assign%OptimizeLoss/dense/kernel/Adam/read:022OptimizeLoss/dense/kernel/Adam/Initializer/zeros:0
м
"OptimizeLoss/dense/kernel/Adam_1:0'OptimizeLoss/dense/kernel/Adam_1/Assign'OptimizeLoss/dense/kernel/Adam_1/read:024OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros:0
Ь
OptimizeLoss/dense/bias/Adam:0#OptimizeLoss/dense/bias/Adam/Assign#OptimizeLoss/dense/bias/Adam/read:020OptimizeLoss/dense/bias/Adam/Initializer/zeros:0
д
 OptimizeLoss/dense/bias/Adam_1:0%OptimizeLoss/dense/bias/Adam_1/Assign%OptimizeLoss/dense/bias/Adam_1/read:022OptimizeLoss/dense/bias/Adam_1/Initializer/zeros:0*°
serving_defaultф
/
lengths$
IteratorGetNext:0	         
;
inputs1
IteratorGetNext:1	                  
!
training
Placeholder_1:0
 5
outputs*
boolean_mask_1/Gather:0	         tensorflow/serving/predict