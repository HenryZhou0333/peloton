
L
data_Placeholder*)
shape :������������������*
dtype0
N
target_Placeholder*
dtype0*)
shape :������������������
>
learn_rate_/inputConst*
valueB
 *o�:*
dtype0
T
learn_rate_PlaceholderWithDefaultlearn_rate_/input*
dtype0*
shape:
A
dropout_ratio_/inputConst*
valueB
 *   ?*
dtype0
Z
dropout_ratio_PlaceholderWithDefaultdropout_ratio_/input*
dtype0*
shape:
=
clip_norm_/inputConst*
valueB
 *   ?*
dtype0
R

clip_norm_PlaceholderWithDefaultclip_norm_/input*
dtype0*
shape:
H
random_normal/shapeConst*
dtype0*
valueB"      
?
random_normal/meanConst*
dtype0*
valueB
 *    
A
random_normal/stddevConst*
valueB
 *  �?*
dtype0
~
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*

seed *
T0*
dtype0*
seed2 
[
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0
D
random_normalAddrandom_normal/mulrandom_normal/mean*
T0
Z
enc_wt
VariableV2*
dtype0*
	container *
shape
:*
shared_name 
{
enc_wt/AssignAssignenc_wtrandom_normal*
use_locking(*
T0*
_class
loc:@enc_wt*
validate_shape(
C
enc_wt/readIdentityenc_wt*
T0*
_class
loc:@enc_wt
J
random_normal_1/shapeConst*
valueB"      *
dtype0
A
random_normal_1/meanConst*
valueB
 *    *
dtype0
C
random_normal_1/stddevConst*
dtype0*
valueB
 *  �?
�
$random_normal_1/RandomStandardNormalRandomStandardNormalrandom_normal_1/shape*
dtype0*
seed2 *

seed *
T0
a
random_normal_1/mulMul$random_normal_1/RandomStandardNormalrandom_normal_1/stddev*
T0
J
random_normal_1Addrandom_normal_1/mulrandom_normal_1/mean*
T0
Z
dec_wt
VariableV2*
dtype0*
	container *
shape
:*
shared_name 
}
dec_wt/AssignAssigndec_wtrandom_normal_1*
T0*
_class
loc:@dec_wt*
validate_shape(*
use_locking(
C
dec_wt/readIdentitydec_wt*
T0*
_class
loc:@dec_wt
C
random_normal_2/shapeConst*
valueB:*
dtype0
A
random_normal_2/meanConst*
dtype0*
valueB
 *    
C
random_normal_2/stddevConst*
valueB
 *  �?*
dtype0
�
$random_normal_2/RandomStandardNormalRandomStandardNormalrandom_normal_2/shape*

seed *
T0*
dtype0*
seed2 
a
random_normal_2/mulMul$random_normal_2/RandomStandardNormalrandom_normal_2/stddev*
T0
J
random_normal_2Addrandom_normal_2/mulrandom_normal_2/mean*
T0
X
enc_bias
VariableV2*
shared_name *
dtype0*
	container *
shape:
�
enc_bias/AssignAssignenc_biasrandom_normal_2*
T0*
_class
loc:@enc_bias*
validate_shape(*
use_locking(
I
enc_bias/readIdentityenc_bias*
T0*
_class
loc:@enc_bias
C
random_normal_3/shapeConst*
valueB:*
dtype0
A
random_normal_3/meanConst*
valueB
 *    *
dtype0
C
random_normal_3/stddevConst*
dtype0*
valueB
 *  �?
�
$random_normal_3/RandomStandardNormalRandomStandardNormalrandom_normal_3/shape*
dtype0*
seed2 *

seed *
T0
a
random_normal_3/mulMul$random_normal_3/RandomStandardNormalrandom_normal_3/stddev*
T0
J
random_normal_3Addrandom_normal_3/mulrandom_normal_3/mean*
T0
X
dec_bias
VariableV2*
shape:*
shared_name *
dtype0*
	container 
�
dec_bias/AssignAssigndec_biasrandom_normal_3*
T0*
_class
loc:@dec_bias*
validate_shape(*
use_locking(
I
dec_bias/readIdentitydec_bias*
T0*
_class
loc:@dec_bias
.
ShapeShapedata_*
T0*
out_type0
A
strided_slice/stackConst*
valueB: *
dtype0
C
strided_slice/stack_1Const*
valueB:*
dtype0
C
strided_slice/stack_2Const*
valueB:*
dtype0
�
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
0
Shape_1Shapedata_*
T0*
out_type0
C
strided_slice_1/stackConst*
valueB:*
dtype0
E
strided_slice_1/stack_1Const*
dtype0*
valueB:
E
strided_slice_1/stack_2Const*
valueB:*
dtype0
�
strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0
3
mulMulstrided_slicestrided_slice_1*
T0
9
Reshape/shape/1Const*
value	B :*
dtype0
I
Reshape/shapePackmulReshape/shape/1*
T0*

axis *
N
?
ReshapeReshapedata_Reshape/shape*
T0*
Tshape0
U
MatMulMatMulReshapeenc_wt/read*
transpose_a( *
transpose_b( *
T0
*
addAddMatMulenc_bias/read*
T0
;
Reshape_1/shape/2Const*
value	B :*
dtype0
h
Reshape_1/shapePackstrided_slicestrided_slice_1Reshape_1/shape/2*
T0*

axis *
N
A
	Reshape_1ReshapeaddReshape_1/shape*
T0*
Tshape0
E
DropoutWrapperInit/ConstConst*
valueB
 *  �?*
dtype0
G
DropoutWrapperInit/Const_1Const*
valueB
 *  �?*
dtype0
G
DropoutWrapperInit_1/ConstConst*
dtype0*
valueB
 *  �?
I
DropoutWrapperInit_1/Const_1Const*
valueB
 *  �?*
dtype0
.
RankConst*
value	B :*
dtype0
5
range/startConst*
value	B :*
dtype0
5
range/deltaConst*
dtype0*
value	B :
:
rangeRangerange/startRankrange/delta*

Tidx0
D
concat/values_0Const*
valueB"       *
dtype0
5
concat/axisConst*
value	B : *
dtype0
U
concatConcatV2concat/values_0rangeconcat/axis*

Tidx0*
T0*
N
?
	transpose	Transpose	Reshape_1concat*
Tperm0*
T0
6
	rnn/ShapeShape	transpose*
T0*
out_type0
E
rnn/strided_slice/stackConst*
valueB:*
dtype0
G
rnn/strided_slice/stack_1Const*
valueB:*
dtype0
G
rnn/strided_slice/stack_2Const*
valueB:*
dtype0
�
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
|
Rrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0
�
Nrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims
ExpandDimsrnn/strided_sliceRrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dim*
T0*

Tdim0
w
Irnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ConstConst*
valueB:*
dtype0
y
Ornn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0
�
Jrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concatConcatV2Nrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDimsIrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ConstOrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat/axis*

Tidx0*
T0*
N
|
Ornn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros/ConstConst*
dtype0*
valueB
 *    
�
Irnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zerosFillJrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concatOrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros/Const*
T0
~
Trnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0
�
Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_sliceTrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dim*
T0*

Tdim0
y
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_1Const*
valueB:*
dtype0
~
Trnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dimConst*
dtype0*
value	B : 
�
Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2
ExpandDimsrnn/strided_sliceTrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dim*

Tdim0*
T0
y
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Const*
valueB:*
dtype0
{
Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axisConst*
dtype0*
value	B : 
�
Lrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1ConcatV2Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axis*
T0*
N*

Tidx0
~
Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/ConstConst*
dtype0*
valueB
 *    
�
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1FillLrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/Const*
T0
~
Trnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dimConst*
dtype0*
value	B : 
�
Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3
ExpandDimsrnn/strided_sliceTrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dim*
T0*

Tdim0
y
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_3Const*
valueB:*
dtype0
~
Trnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims/dimConst*
dtype0*
value	B : 
�
Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims
ExpandDimsrnn/strided_sliceTrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0
y
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ConstConst*
valueB:*
dtype0
{
Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0
�
Lrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concatConcatV2Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDimsKrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ConstQrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat/axis*
N*

Tidx0*
T0
~
Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros/ConstConst*
dtype0*
valueB
 *    
�
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zerosFillLrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concatQrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros/Const*
T0
�
Vrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0
�
Rrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_sliceVrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0
{
Mrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_1Const*
valueB:*
dtype0
�
Vrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0
�
Rrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2
ExpandDimsrnn/strided_sliceVrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2/dim*

Tdim0*
T0
{
Mrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_2Const*
valueB:*
dtype0
}
Srnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0
�
Nrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1ConcatV2Rrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2Mrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_2Srnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1/axis*
T0*
N*

Tidx0
�
Srnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1/ConstConst*
dtype0*
valueB
 *    
�
Mrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1FillNrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1Srnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1/Const*
T0
�
Vrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
dtype0
�
Rrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3
ExpandDimsrnn/strided_sliceVrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3/dim*

Tdim0*
T0
{
Mrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_3Const*
dtype0*
valueB:
8
rnn/Shape_1Shape	transpose*
T0*
out_type0
G
rnn/strided_slice_1/stackConst*
valueB: *
dtype0
I
rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0
I
rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0
�
rnn/strided_slice_1StridedSlicernn/Shape_1rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
8
rnn/Shape_2Shape	transpose*
T0*
out_type0
G
rnn/strided_slice_2/stackConst*
valueB:*
dtype0
I
rnn/strided_slice_2/stack_1Const*
dtype0*
valueB:
I
rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0
�
rnn/strided_slice_2StridedSlicernn/Shape_2rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0*
shrink_axis_mask
<
rnn/ExpandDims/dimConst*
value	B : *
dtype0
Z
rnn/ExpandDims
ExpandDimsrnn/strided_slice_2rnn/ExpandDims/dim*

Tdim0*
T0
7
	rnn/ConstConst*
valueB:*
dtype0
9
rnn/concat/axisConst*
value	B : *
dtype0
`

rnn/concatConcatV2rnn/ExpandDims	rnn/Constrnn/concat/axis*
T0*
N*

Tidx0
<
rnn/zeros/ConstConst*
valueB
 *    *
dtype0
7
	rnn/zerosFill
rnn/concatrnn/zeros/Const*
T0
2
rnn/timeConst*
value	B : *
dtype0
�
rnn/TensorArrayTensorArrayV3rnn/strided_slice_1*
element_shape:*
dynamic_size( *
clear_after_read(*/
tensor_array_namernn/dynamic_rnn/output_0*
dtype0
�
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*
element_shape:*
dynamic_size( *
clear_after_read(*.
tensor_array_namernn/dynamic_rnn/input_0*
dtype0
I
rnn/TensorArrayUnstack/ShapeShape	transpose*
T0*
out_type0
X
*rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0
Z
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0
Z
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0
�
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
T0*
Index0
L
"rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0
L
"rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0
�
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*

Tidx0
�
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/range	transposernn/TensorArray_1:1*
T0*
_class
loc:@transpose
�
rnn/while/EnterEnterrnn/time*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
�
rnn/while/Enter_1Enterrnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
�
rnn/while/Enter_2EnterIrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
�
rnn/while/Enter_3EnterKrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
�
rnn/while/Enter_4EnterKrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
�
rnn/while/Enter_5EnterMrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
T
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
T0*
N
Z
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
T0*
N
Z
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2*
T0*
N
Z
rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
T0*
N
Z
rnn/while/Merge_4Mergernn/while/Enter_4rnn/while/NextIteration_4*
T0*
N
Z
rnn/while/Merge_5Mergernn/while/Enter_5rnn/while/NextIteration_5*
T0*
N
�
rnn/while/Less/EnterEnterrnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
F
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
T0
.
rnn/while/LoopCondLoopCondrnn/while/Less
l
rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
T0*"
_class
loc:@rnn/while/Merge
r
rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_1
r
rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_2
r
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_3
r
rnn/while/Switch_4Switchrnn/while/Merge_4rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_4
r
rnn/while/Switch_5Switchrnn/while/Merge_5rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_5
;
rnn/while/IdentityIdentityrnn/while/Switch:1*
T0
?
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
T0
?
rnn/while/Identity_2Identityrnn/while/Switch_2:1*
T0
?
rnn/while/Identity_3Identityrnn/while/Switch_3:1*
T0
?
rnn/while/Identity_4Identityrnn/while/Switch_4:1*
T0
?
rnn/while/Identity_5Identityrnn/while/Switch_5:1*
T0
�
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity#rnn/while/TensorArrayReadV3/Enter_1*
dtype0
�
Krnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"(   P   *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *.�d�*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *.�d>*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0
�
Srnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0*
seed2 *

seed 
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
�
Ernn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
�
*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
VariableV2*
shared_name *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0*
	container *
shape
:(P
�
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AssignAssign*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelErnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
p
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
�
:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/ConstConst*
valueBP*    *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0
�
(rnn/multi_rnn_cell/cell_0/lstm_cell/bias
VariableV2*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0*
	container *
shape:P*
shared_name 
�
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AssignAssign(rnn/multi_rnn_cell/cell_0/lstm_cell/bias:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/Const*
validate_shape(*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias
l
-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/readIdentity(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0

@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat/axisConst^rnn/while/Identity*
dtype0*
value	B :
�
;rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concatConcatV2rnn/while/TensorArrayReadV3rnn/while/Identity_3@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat/axis*
T0*
N*

Tidx0
�
Arnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
;rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMulMatMul;rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concatArnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter*
transpose_b( *
T0*
transpose_a( 
�
Brnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/EnterEnter-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
<rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAddBiasAdd;rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMulBrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC
y
:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/ConstConst^rnn/while/Identity*
value	B :*
dtype0
�
Drnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split/split_dimConst^rnn/while/Identity*
value	B :*
dtype0
�
:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/splitSplitDrnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split/split_dim<rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd*
T0*
	num_split
|
:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add/yConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
8rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/addAdd<rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split:2:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add/y*
T0
�
<rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/SigmoidSigmoid8rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add*
T0
�
8rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mulMul<rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoidrnn/while/Identity_2*
T0
�
>rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_1Sigmoid:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split*
T0
�
9rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/TanhTanh<rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split:1*
T0
�
:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1Mul>rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_19rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh*
T0
�
:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1Add8rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1*
T0
�
>rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_2Sigmoid<rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split:3*
T0
�
;rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh_1Tanh:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1*
T0
�
:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2Mul>rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_2;rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh_1*
T0
�
1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/ShapeShape:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2*
T0*
out_type0
�
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/minConst^rnn/while/Identity*
dtype0*
valueB
 *    
�
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/maxConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
Hrnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniformRandomUniform1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Shape*

seed *
T0*
dtype0*
seed2 
�
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/subSub>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/max>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min*
T0
�
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mulMulHrnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniform>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/sub*
T0
�
:rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniformAdd>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mul>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min*
T0
�
5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/EnterEnterdropout_ratio_*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/addAdd5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter:rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform*
T0
t
1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/FloorFloor/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add*
T0
�
/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/divRealDiv:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_25rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter*
T0
�
/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mulMul/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*
T0
�
Krnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"(   P   *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *.�d�*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *.�d>*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtype0
�
Srnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtype0*
seed2 *

seed 
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
Ernn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
VariableV2*
dtype0*
	container *
shape
:(P*
shared_name *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AssignAssign*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelErnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
validate_shape(*
use_locking(
p
/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
T0
�
:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/ConstConst*
valueBP*    *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
dtype0
�
(rnn/multi_rnn_cell/cell_1/lstm_cell/bias
VariableV2*
shape:P*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
dtype0*
	container 
�
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AssignAssign(rnn/multi_rnn_cell/cell_1/lstm_cell/bias:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/Const*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
validate_shape(*
use_locking(
l
-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/readIdentity(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
T0

@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat/axisConst^rnn/while/Identity*
dtype0*
value	B :
�
;rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concatConcatV2/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mulrnn/while/Identity_5@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat/axis*
T0*
N*

Tidx0
�
Arnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
;rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMulMatMul;rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concatArnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter*
T0*
transpose_a( *
transpose_b( 
�
Brnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/EnterEnter-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
<rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAddBiasAdd;rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMulBrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter*
data_formatNHWC*
T0
y
:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/ConstConst^rnn/while/Identity*
dtype0*
value	B :
�
Drnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split/split_dimConst^rnn/while/Identity*
value	B :*
dtype0
�
:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/splitSplitDrnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split/split_dim<rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd*
	num_split*
T0
|
:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add/yConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
8rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/addAdd<rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split:2:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add/y*
T0
�
<rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/SigmoidSigmoid8rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add*
T0
�
8rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mulMul<rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoidrnn/while/Identity_4*
T0
�
>rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_1Sigmoid:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split*
T0
�
9rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/TanhTanh<rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split:1*
T0
�
:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1Mul>rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_19rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh*
T0
�
:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1Add8rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1*
T0
�
>rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_2Sigmoid<rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split:3*
T0
�
;rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh_1Tanh:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1*
T0
�
:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2Mul>rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_2;rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh_1*
T0
�
1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/ShapeShape:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2*
T0*
out_type0
�
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/minConst^rnn/while/Identity*
valueB
 *    *
dtype0
�
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/maxConst^rnn/while/Identity*
dtype0*
valueB
 *  �?
�
Hrnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniformRandomUniform1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Shape*

seed *
T0*
dtype0*
seed2 
�
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/subSub>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/max>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min*
T0
�
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mulMulHrnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniform>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/sub*
T0
�
:rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniformAdd>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mul>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min*
T0
�
/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/addAdd5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter:rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform*
T0
t
1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/FloorFloor/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/add*
T0
�
/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/divRealDiv:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_25rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter*
T0
�
/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mulMul/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*
T0
�
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identity/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mulrnn/while/Identity_1*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul
N
rnn/while/add/yConst^rnn/while/Identity*
value	B :*
dtype0
B
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
T0
@
rnn/while/NextIterationNextIterationrnn/while/add*
T0
b
rnn/while/NextIteration_1NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0
o
rnn/while/NextIteration_2NextIteration:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1*
T0
o
rnn/while/NextIteration_3NextIteration:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2*
T0
o
rnn/while/NextIteration_4NextIteration:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1*
T0
o
rnn/while/NextIteration_5NextIteration:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2*
T0
1
rnn/while/ExitExitrnn/while/Switch*
T0
5
rnn/while/Exit_1Exitrnn/while/Switch_1*
T0
5
rnn/while/Exit_2Exitrnn/while/Switch_2*
T0
5
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0
5
rnn/while/Exit_4Exitrnn/while/Switch_4*
T0
5
rnn/while/Exit_5Exitrnn/while/Switch_5*
T0
�
&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_1*"
_class
loc:@rnn/TensorArray
n
 rnn/TensorArrayStack/range/startConst*
dtype0*"
_class
loc:@rnn/TensorArray*
value	B : 
n
 rnn/TensorArrayStack/range/deltaConst*"
_class
loc:@rnn/TensorArray*
value	B :*
dtype0
�
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*

Tidx0*"
_class
loc:@rnn/TensorArray
�
(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_1*"
_class
loc:@rnn/TensorArray*
dtype0*$
element_shape:���������
9
rnn/Const_1Const*
dtype0*
valueB:
2
rnn/RankConst*
dtype0*
value	B :
9
rnn/range/startConst*
value	B :*
dtype0
9
rnn/range/deltaConst*
value	B :*
dtype0
J
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*

Tidx0
J
rnn/concat_1/values_0Const*
valueB"       *
dtype0
;
rnn/concat_1/axisConst*
dtype0*
value	B : 
k
rnn/concat_1ConcatV2rnn/concat_1/values_0	rnn/rangernn/concat_1/axis*
T0*
N*

Tidx0
h
rnn/transpose	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_1*
T0*
Tperm0
5
mul_1Mulstrided_slicestrided_slice_1*
T0
;
Reshape_2/shape/1Const*
value	B :*
dtype0
O
Reshape_2/shapePackmul_1Reshape_2/shape/1*
T0*

axis *
N
K
	Reshape_2Reshapernn/transposeReshape_2/shape*
T0*
Tshape0
Y
MatMul_1MatMul	Reshape_2dec_wt/read*
T0*
transpose_a( *
transpose_b( 
.
add_1AddMatMul_1dec_bias/read*
T0
@
pred_/shape/2Const*
valueB :
���������*
dtype0
`
pred_/shapePackstrided_slicestrided_slice_1pred_/shape/2*
T0*

axis *
N
;
pred_Reshapeadd_1pred_/shape*
T0*
Tshape0
?
SquaredDifferenceSquaredDifferencetarget_pred_*
T0
>
ConstConst*!
valueB"          *
dtype0
O
lossOp_MeanSquaredDifferenceConst*
T0*
	keep_dims( *

Tidx0
8
gradients/ShapeConst*
valueB *
dtype0
<
gradients/ConstConst*
dtype0*
valueB
 *  �?
A
gradients/FillFillgradients/Shapegradients/Const*
T0
;
gradients/f_countConst*
value	B : *
dtype0
�
gradients/f_count_1Entergradients/f_count*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
X
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
N*
T0
H
gradients/SwitchSwitchgradients/Mergernn/while/LoopCond*
T0
N
gradients/Add/yConst^rnn/while/Identity*
value	B :*
dtype0
B
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0
�(
gradients/NextIterationNextIterationgradients/Add[^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2a^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1O^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPushV2Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPushV2a^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1O^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPushV2l^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2n^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1Z^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/StackPushV2\^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/StackPushV2l^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2n^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1j^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2l^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1X^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/StackPushV2Z^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/StackPushV2l^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2n^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1Z^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/StackPushV2\^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/StackPushV2j^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2`^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPushV2^^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPushV2`^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPushV2_1a^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1O^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPushV2Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPushV2a^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1O^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPushV2l^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2n^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1Z^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/StackPushV2\^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/StackPushV2l^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2n^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1j^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2l^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1X^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/StackPushV2Z^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/StackPushV2l^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2n^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1Z^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/StackPushV2\^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/StackPushV2j^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2`^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPushV2^^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2`^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2_1*
T0
6
gradients/f_count_2Exitgradients/Switch*
T0
;
gradients/b_countConst*
value	B :*
dtype0
�
gradients/b_count_1Entergradients/f_count_2*
T0*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
\
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
T0*
N
�
gradients/GreaterEqual/EnterEntergradients/b_count*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
`
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0
7
gradients/b_count_2LoopCondgradients/GreaterEqual
M
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0
Q
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0
�
gradients/NextIteration_1NextIterationgradients/SubV^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0
8
gradients/b_count_3Exitgradients/Switch_1*
T0
]
$gradients/lossOp__grad/Reshape/shapeConst*!
valueB"         *
dtype0
v
gradients/lossOp__grad/ReshapeReshapegradients/Fill$gradients/lossOp__grad/Reshape/shape*
T0*
Tshape0
Q
gradients/lossOp__grad/ShapeShapeSquaredDifference*
T0*
out_type0
|
gradients/lossOp__grad/TileTilegradients/lossOp__grad/Reshapegradients/lossOp__grad/Shape*

Tmultiples0*
T0
S
gradients/lossOp__grad/Shape_1ShapeSquaredDifference*
T0*
out_type0
G
gradients/lossOp__grad/Shape_2Const*
dtype0*
valueB 
}
gradients/lossOp__grad/ConstConst*1
_class'
%#loc:@gradients/lossOp__grad/Shape_1*
valueB: *
dtype0
�
gradients/lossOp__grad/ProdProdgradients/lossOp__grad/Shape_1gradients/lossOp__grad/Const*
	keep_dims( *

Tidx0*
T0*1
_class'
%#loc:@gradients/lossOp__grad/Shape_1

gradients/lossOp__grad/Const_1Const*
dtype0*1
_class'
%#loc:@gradients/lossOp__grad/Shape_1*
valueB: 
�
gradients/lossOp__grad/Prod_1Prodgradients/lossOp__grad/Shape_2gradients/lossOp__grad/Const_1*
	keep_dims( *

Tidx0*
T0*1
_class'
%#loc:@gradients/lossOp__grad/Shape_1
}
 gradients/lossOp__grad/Maximum/yConst*1
_class'
%#loc:@gradients/lossOp__grad/Shape_1*
value	B :*
dtype0
�
gradients/lossOp__grad/MaximumMaximumgradients/lossOp__grad/Prod_1 gradients/lossOp__grad/Maximum/y*
T0*1
_class'
%#loc:@gradients/lossOp__grad/Shape_1
�
gradients/lossOp__grad/floordivFloorDivgradients/lossOp__grad/Prodgradients/lossOp__grad/Maximum*
T0*1
_class'
%#loc:@gradients/lossOp__grad/Shape_1
\
gradients/lossOp__grad/CastCastgradients/lossOp__grad/floordiv*

SrcT0*

DstT0
l
gradients/lossOp__grad/truedivRealDivgradients/lossOp__grad/Tilegradients/lossOp__grad/Cast*
T0
Q
&gradients/SquaredDifference_grad/ShapeShapetarget_*
T0*
out_type0
Q
(gradients/SquaredDifference_grad/Shape_1Shapepred_*
T0*
out_type0
�
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0
u
'gradients/SquaredDifference_grad/scalarConst^gradients/lossOp__grad/truediv*
dtype0*
valueB
 *   @
}
$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalargradients/lossOp__grad/truediv*
T0
e
$gradients/SquaredDifference_grad/subSubtarget_pred_^gradients/lossOp__grad/truediv*
T0
�
&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
�
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
�
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0
C
gradients/pred__grad/ShapeShapeadd_1*
T0*
out_type0
�
gradients/pred__grad/ReshapeReshape$gradients/SquaredDifference_grad/Neggradients/pred__grad/Shape*
T0*
Tshape0
F
gradients/add_1_grad/ShapeShapeMatMul_1*
T0*
out_type0
J
gradients/add_1_grad/Shape_1Const*
valueB:*
dtype0
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0
�
gradients/add_1_grad/SumSumgradients/pred__grad/Reshape*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0
�
gradients/add_1_grad/Sum_1Sumgradients/pred__grad/Reshape,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0
�
gradients/MatMul_1_grad/MatMulMatMulgradients/add_1_grad/Reshapedec_wt/read*
transpose_b(*
T0*
transpose_a( 
�
 gradients/MatMul_1_grad/MatMul_1MatMul	Reshape_2gradients/add_1_grad/Reshape*
T0*
transpose_a(*
transpose_b( 
O
gradients/Reshape_2_grad/ShapeShapernn/transpose*
T0*
out_type0
�
 gradients/Reshape_2_grad/ReshapeReshapegradients/MatMul_1_grad/MatMulgradients/Reshape_2_grad/Shape*
T0*
Tshape0
Z
.gradients/rnn/transpose_grad/InvertPermutationInvertPermutationrnn/concat_1*
T0
�
&gradients/rnn/transpose_grad/transpose	Transpose gradients/Reshape_2_grad/Reshape.gradients/rnn/transpose_grad/InvertPermutation*
Tperm0*
T0
�
Ygradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3rnn/TensorArrayrnn/while/Exit_1*"
_class
loc:@rnn/TensorArray*
source	gradients
�
Ugradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentityrnn/while/Exit_1Z^gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*"
_class
loc:@rnn/TensorArray
�
_gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Ygradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3rnn/TensorArrayStack/range&gradients/rnn/transpose_grad/transposeUgradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0
<
gradients/zeros_like	ZerosLikernn/while/Exit_2*
T0
>
gradients/zeros_like_1	ZerosLikernn/while/Exit_3*
T0
>
gradients/zeros_like_2	ZerosLikernn/while/Exit_4*
T0
>
gradients/zeros_like_3	ZerosLikernn/while/Exit_5*
T0
�
&gradients/rnn/while/Exit_1_grad/b_exitEnter_gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant( 
�
&gradients/rnn/while/Exit_2_grad/b_exitEntergradients/zeros_like*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant( 
�
&gradients/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like_1*
T0*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
&gradients/rnn/while/Exit_4_grad/b_exitEntergradients/zeros_like_2*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant( 
�
&gradients/rnn/while/Exit_5_grad/b_exitEntergradients/zeros_like_3*
T0*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
*gradients/rnn/while/Switch_1_grad/b_switchMerge&gradients/rnn/while/Exit_1_grad/b_exit1gradients/rnn/while/Switch_1_grad_1/NextIteration*
N*
T0
�
*gradients/rnn/while/Switch_2_grad/b_switchMerge&gradients/rnn/while/Exit_2_grad/b_exit1gradients/rnn/while/Switch_2_grad_1/NextIteration*
N*
T0
�
*gradients/rnn/while/Switch_3_grad/b_switchMerge&gradients/rnn/while/Exit_3_grad/b_exit1gradients/rnn/while/Switch_3_grad_1/NextIteration*
N*
T0
�
*gradients/rnn/while/Switch_4_grad/b_switchMerge&gradients/rnn/while/Exit_4_grad/b_exit1gradients/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N
�
*gradients/rnn/while/Switch_5_grad/b_switchMerge&gradients/rnn/while/Exit_5_grad/b_exit1gradients/rnn/while/Switch_5_grad_1/NextIteration*
T0*
N
�
'gradients/rnn/while/Merge_1_grad/SwitchSwitch*gradients/rnn/while/Switch_1_grad/b_switchgradients/b_count_2*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_1_grad/b_switch
�
'gradients/rnn/while/Merge_2_grad/SwitchSwitch*gradients/rnn/while/Switch_2_grad/b_switchgradients/b_count_2*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch
�
'gradients/rnn/while/Merge_3_grad/SwitchSwitch*gradients/rnn/while/Switch_3_grad/b_switchgradients/b_count_2*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch
�
'gradients/rnn/while/Merge_4_grad/SwitchSwitch*gradients/rnn/while/Switch_4_grad/b_switchgradients/b_count_2*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_4_grad/b_switch
�
'gradients/rnn/while/Merge_5_grad/SwitchSwitch*gradients/rnn/while/Switch_5_grad/b_switchgradients/b_count_2*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_5_grad/b_switch
_
%gradients/rnn/while/Enter_1_grad/ExitExit'gradients/rnn/while/Merge_1_grad/Switch*
T0
_
%gradients/rnn/while/Enter_2_grad/ExitExit'gradients/rnn/while/Merge_2_grad/Switch*
T0
_
%gradients/rnn/while/Enter_3_grad/ExitExit'gradients/rnn/while/Merge_3_grad/Switch*
T0
_
%gradients/rnn/while/Enter_4_grad/ExitExit'gradients/rnn/while/Merge_4_grad/Switch*
T0
_
%gradients/rnn/while/Enter_5_grad/ExitExit'gradients/rnn/while/Merge_5_grad/Switch*
T0
�
dgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterrnn/TensorArray*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3dgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter)gradients/rnn/while/Merge_1_grad/Switch:1*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
source	gradients
�
Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity)gradients/rnn/while/Merge_1_grad/Switch:1_^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul
�
]gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc/max_sizeConst*%
_class
loc:@rnn/while/Identity*
valueB :
���������*
dtype0
�
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2]gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc/max_size*%
_class
loc:@rnn/while/Identity*

stack_name *
	elem_type0
�
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterTgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enterrnn/while/Identity^gradients/Add*
T0*
swap_memory( 
�
_gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterTgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2_gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub*
	elem_type0
�'
Ugradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerZ^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2`^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1N^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2P^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2`^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1N^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPopV2k^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2m^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2[^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2k^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2m^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1i^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2k^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1W^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/StackPopV2Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2k^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2m^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2[^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2i^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2_^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2]^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2_^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2_1`^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1N^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2P^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2`^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1N^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2k^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2m^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2[^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2k^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2m^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1i^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2k^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1W^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/StackPopV2Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2k^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2m^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2[^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2i^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2_^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2]^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2_^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2_1
�
Ngradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0
�
^gradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_grad/ConstConst*
valueB"       *
dtype0
�
\gradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_grad/SumSum%gradients/rnn/while/Enter_2_grad/Exit^gradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_grad/Const*
T0*
	keep_dims( *

Tidx0
�
`gradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1_grad/ConstConst*
valueB"       *
dtype0
�
^gradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1_grad/SumSum%gradients/rnn/while/Enter_3_grad/Exit`gradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1_grad/Const*
T0*
	keep_dims( *

Tidx0
�
`gradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_grad/ConstConst*
valueB"       *
dtype0
�
^gradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_grad/SumSum%gradients/rnn/while/Enter_4_grad/Exit`gradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_grad/Const*
	keep_dims( *

Tidx0*
T0
�
bgradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1_grad/ConstConst*
valueB"       *
dtype0
�
`gradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1_grad/SumSum%gradients/rnn/while/Enter_5_grad/Exitbgradients/rnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1_grad/Const*
	keep_dims( *

Tidx0*
T0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ShapeShape/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div*
T0*
out_type0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1Shape1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*
T0*
out_type0
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc/max_sizeConst*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape*
valueB :
���������*
dtype0
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape*

stack_name 
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
dtype0*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1*
valueB :
���������
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1/max_size*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1*

stack_name *
	elem_type0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter_1Enter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter_1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_acc/max_sizeConst*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*
valueB :
���������*
dtype0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_accStackV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_acc/max_size*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*

stack_name *
	elem_type0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPushV2StackPushV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/Enter1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor^gradients/Add*
T0*
swap_memory( 
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2
StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mulMulNgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2*
T0
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/SumSumBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mulTgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ReshapeReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sum_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_acc/max_sizeConst*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div*
valueB :
���������*
dtype0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_accStackV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_acc/max_size*
	elem_type0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div*

stack_name 
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPushV2StackPushV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/Enter/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div^gradients/Add*
swap_memory( *
T0
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2
StackPopV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1MulOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2Ngradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
T0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sum_1SumDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Reshape_1ReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sum_1agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/ShapeShape:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2*
out_type0*
T0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1Shape5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter^rnn/while/Identity*
T0*
out_type0
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc/max_sizeConst*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape*
valueB :
���������*
dtype0
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_accStackV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape*

stack_name 
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc*'

frame_namernn/while/while_context*
T0*
is_constant(*
parallel_iterations 
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1*
valueB :
���������*
dtype0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1/max_size*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1*

stack_name *
	elem_type0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Enter_1Enter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Enter_1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/EnterEnterdropout_ratio_*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDivRealDivFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ReshapeLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/SumSumFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDivTgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/ReshapeReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Sum_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/f_acc/max_sizeConst*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2*
valueB :
���������*
dtype0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/f_accStackV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/f_acc/max_size*

stack_name *
	elem_type0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/f_acc*'

frame_namernn/while/while_context*
T0*
is_constant(*
parallel_iterations 
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPushV2StackPushV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/Enter:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2^gradients/Add*
T0*
swap_memory( 
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPopV2/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/f_acc*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPopV2
StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/NegNegMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Neg/StackPopV2*
T0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_1RealDivBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/NegLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_2RealDivHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_1Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/mulMulFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ReshapeHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_2*
T0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Sum_1SumBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/mulVgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Reshape_1ReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Sum_1agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
v
1gradients/rnn/while/Switch_1_grad_1/NextIterationNextIteration)gradients/rnn/while/Merge_1_grad/Switch:1*
T0
�
gradients/AddNAddN)gradients/rnn/while/Merge_5_grad/Switch:1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Reshape*
N*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_5_grad/b_switch
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/ShapeShape>rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_2*
T0*
out_type0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Shape_1Shape;rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh_1*
T0*
out_type0
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc/max_sizeConst*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Shape*
valueB :
���������*
dtype0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Shape*

stack_name 
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Shape_1*
valueB :
���������*
dtype0
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1/max_size*
	elem_type0*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Shape_1*

stack_name 
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enterggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
�
rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsjgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/f_acc/max_sizeConst*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh_1*
valueB :
���������*
dtype0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/f_acc/max_size*
	elem_type0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh_1*

stack_name 
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/f_acc*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
T0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/StackPushV2StackPushV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/Enter;rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh_1^gradients/Add*
T0*
swap_memory( 
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2
StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mulMulgradients/AddNXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2*
T0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/SumSumMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/ReshapeReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Sumjgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/f_acc/max_sizeConst*Q
_classG
ECloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_2*
valueB :
���������*
dtype0
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/f_accStackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/f_acc/max_size*
	elem_type0*Q
_classG
ECloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_2*

stack_name 
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/f_acc*'

frame_namernn/while/while_context*
T0*
is_constant(*
parallel_iterations 
�
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/StackPushV2StackPushV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/Enter>rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_2^gradients/Add*
T0*
swap_memory( 
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2
StackPopV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1MulZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2gradients/AddN*
T0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Sum_1SumOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1agradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Reshape_1ReshapeOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Sum_1lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul_1/StackPopV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Reshape*
T0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh_1_grad/TanhGradTanhGradXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/mul/StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_2_grad/Reshape_1*
T0
�
gradients/AddN_1AddN)gradients/rnn/while/Merge_4_grad/Switch:1Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh_1_grad/TanhGrad*
N*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_4_grad/b_switch
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/ShapeShape8rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul*
T0*
out_type0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Shape_1Shape:rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1*
T0*
out_type0
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
dtype0*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Shape*
valueB :
���������
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc/max_size*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Shape*

stack_name *
	elem_type0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(
�
jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Shape_1*
valueB :
���������*
dtype0
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1/max_size*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Shape_1*

stack_name *
	elem_type0
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Enterggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
�
rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsjgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/SumSumgradients/AddN_1_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/ReshapeReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Sumjgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_1agradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Reshape_1ReshapeOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Sum_1lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/ShapeShape<rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid*
T0*
out_type0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Shape_1Shapernn/while/Identity_4*
T0*
out_type0
�
lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc/max_sizeConst*`
_classV
TRloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Shape*
valueB :
���������*
dtype0
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc/max_size*

stack_name *
	elem_type0*`
_classV
TRloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Shape
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/EnterEntercgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/EnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Shape^gradients/Add*
swap_memory( *
T0
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Shape_1*
valueB :
���������*
dtype0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1/max_size*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Shape_1*

stack_name *
	elem_type0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Enteregradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/f_acc/max_sizeConst*'
_class
loc:@rnn/while/Identity_4*
valueB :
���������*
dtype0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/f_accStackV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/f_acc/max_size*

stack_name *
	elem_type0*'
_class
loc:@rnn/while/Identity_4
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/StackPushV2StackPushV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/Enterrnn/while/Identity_4^gradients/Add*
swap_memory( *
T0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/StackPopV2/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/StackPopV2
StackPopV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mulMulQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/ReshapeVgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul/StackPopV2*
T0
�
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/SumSumKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/ReshapeReshapeKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Sumhgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/f_acc/max_sizeConst*O
_classE
CAloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid*
valueB :
���������*
dtype0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/f_acc/max_size*
	elem_type0*O
_classE
CAloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid*

stack_name 
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/StackPushV2StackPushV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/Enter<rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid^gradients/Add*
T0*
swap_memory( 
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2
StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1MulXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Reshape*
T0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Sum_1SumMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Reshape_1ReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Sum_1jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/ShapeShape>rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_1*
T0*
out_type0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Shape_1Shape9rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh*
T0*
out_type0
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
dtype0*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Shape*
valueB :
���������
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Shape*

stack_name 
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Shape_1*
valueB :
���������*
dtype0
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1/max_size*
	elem_type0*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Shape_1*

stack_name 
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enterggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
�
rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterggradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsjgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/f_acc/max_sizeConst*L
_classB
@>loc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh*
valueB :
���������*
dtype0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/f_acc/max_size*

stack_name *
	elem_type0*L
_classB
@>loc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/StackPushV2StackPushV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/Enter9rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh^gradients/Add*
T0*
swap_memory( 
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2
StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mulMulSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Reshape_1Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2*
T0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/SumSumMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/ReshapeReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Sumjgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/f_acc/max_sizeConst*Q
_classG
ECloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_1*
valueB :
���������*
dtype0
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/f_accStackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/f_acc/max_size*

stack_name *
	elem_type0*Q
_classG
ECloc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_1
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/StackPushV2StackPushV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/Enter>rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_1^gradients/Add*
swap_memory( *
T0
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2
StackPopV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1MulZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_1_grad/Reshape_1*
T0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Sum_1SumOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1agradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Reshape_1ReshapeOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Sum_1lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/mul_1/StackPopV2Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Reshape*
T0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul_1/StackPopV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Reshape*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh_grad/TanhGradTanhGradXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/mul/StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_1_grad/Reshape_1*
T0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/ShapeShape<rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split:2*
T0*
out_type0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/Shape_1Const^gradients/Sub*
valueB *
dtype0
�
lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/f_acc/max_sizeConst*`
_classV
TRloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/Shape*
valueB :
���������*
dtype0
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/f_acc/max_size*`
_classV
TRloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/Shape*

stack_name *
	elem_type0
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/EnterEntercgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/EnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(
�
hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/Shape_1*
T0
�
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/SumSumWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_grad/SigmoidGrad]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/ReshapeReshapeKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/Sumhgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/Sum_1SumWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_grad/SigmoidGrad_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/Reshape_1ReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/Sum_1Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/Shape_1*
T0*
Tshape0
�
1gradients/rnn/while/Switch_4_grad_1/NextIterationNextIterationQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/mul_grad/Reshape_1*
T0
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split_grad/concat/ConstConst^gradients/Sub*
value	B :*
dtype0
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split_grad/concatConcatV2Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_1_grad/SigmoidGradQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Tanh_grad/TanhGradOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/add_grad/ReshapeYgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/Sigmoid_2_grad/SigmoidGradVgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split_grad/concat/Const*
T0*
N*

Tidx0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split_grad/concat*
T0*
data_formatNHWC
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMulMatMulPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split_grad/concatWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul/Enter*
transpose_b(*
T0*
transpose_a( 
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/f_acc/max_sizeConst*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat*
valueB :
���������*
dtype0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/f_acc/max_size*
	elem_type0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat*

stack_name 
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/EnterEnterYgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/Enter;rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat^gradients/Add*
swap_memory( *
T0
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterYgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1MatMul^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/split_grad/concat*
transpose_b( *
T0*
transpose_a(
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBP*    *
dtype0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_1EnterWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_2MergeYgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_1_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/SwitchSwitchYgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/AddAddZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/Switch:1Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd_grad/BiasAddGrad*
T0
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationUgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/Add*
T0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3ExitXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/Switch*
T0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/mod/ConstConst^gradients/Sub*
dtype0*
value	B :
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/modFloorModTgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/mod/ConstOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/Rank*
T0
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeShape/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
T0*
out_type0
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/f_acc/max_sizeConst*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
valueB :
���������*
dtype0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/f_accStackV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/f_acc/max_size*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*

stack_name *
	elem_type0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/EnterEnterWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/Enter/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul^gradients/Add*
T0*
swap_memory( 
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/f_acc_1/max_sizeConst*'
_class
loc:@rnn/while/Identity_5*
valueB :
���������*
dtype0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/f_acc_1StackV2bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/f_acc_1/max_size*
	elem_type0*'
_class
loc:@rnn/while/Identity_5*

stack_name 
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/Enter_1EnterYgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/Enter_1rnn/while/Identity_5^gradients/Add*
T0*
swap_memory( 
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2_1/EnterEnterYgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeNShapeN\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2_1*
N*
T0*
out_type0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ConcatOffsetConcatOffsetNgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/modQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeNSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN:1*
N
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/SliceSliceQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMulWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ConcatOffsetQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN*
T0*
Index0
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/Slice_1SliceQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMulYgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ConcatOffset:1Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/ShapeN:1*
T0*
Index0
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_accConst*
dtype0*
valueB(P*    
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_1EnterVgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant( 
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_2MergeXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_1^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/NextIteration*
N*
T0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/SwitchSwitchXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*
T0
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/AddAddYgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/Switch:1Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul_grad/MatMul_1*
T0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/NextIterationNextIterationTgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/Add*
T0
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3ExitWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/Switch*
T0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ShapeShape/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div*
T0*
out_type0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1Shape1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*
T0*
out_type0
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
dtype0*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape*
valueB :
���������
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc/max_size*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape*

stack_name *
	elem_type0
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1*
valueB :
���������*
dtype0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1/max_size*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1*

stack_name *
	elem_type0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1Enter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_acc/max_sizeConst*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*
valueB :
���������*
dtype0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_accStackV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_acc/max_size*

stack_name *
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPushV2StackPushV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/Enter1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor^gradients/Add*
T0*
swap_memory( 
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2
StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mulMulPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/SliceMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2*
T0
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/SumSumBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mulTgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_acc/max_sizeConst*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div*
valueB :
���������*
dtype0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_accStackV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_acc/max_size*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div*

stack_name *
	elem_type0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPushV2StackPushV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/Enter/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div^gradients/Add*
T0*
swap_memory( 
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2
StackPopV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1MulOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/Slice*
T0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_1SumDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape_1ReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_1agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ShapeShape:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2*
T0*
out_type0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1Shape5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter^rnn/while/Identity*
T0*
out_type0
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc/max_sizeConst*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape*
valueB :
���������*
dtype0
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_accStackV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc/max_size*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape*

stack_name *
	elem_type0
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1*
valueB :
���������*
dtype0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1/max_size*

stack_name *
	elem_type0*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter_1Enter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
T0
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter_1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDivRealDivFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/SumSumFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDivTgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ReshapeReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sum_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_acc/max_sizeConst*
dtype0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2*
valueB :
���������
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_accStackV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_acc/max_size*
	elem_type0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2*

stack_name 
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPushV2StackPushV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/Enter:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2^gradients/Add*
T0*
swap_memory( 
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2
StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/NegNegMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2*
T0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_1RealDivBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/NegLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_2RealDivHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_1Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/mulMulFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_2*
T0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sum_1SumBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/mulVgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape_1ReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sum_1agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
�
1gradients/rnn/while/Switch_5_grad_1/NextIterationNextIterationRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_2AddN)gradients/rnn/while/Merge_3_grad/Switch:1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch*
N
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/ShapeShape>rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_2*
T0*
out_type0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Shape_1Shape;rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh_1*
T0*
out_type0
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc/max_sizeConst*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Shape*
valueB :
���������*
dtype0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc/max_size*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Shape*

stack_name *
	elem_type0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*
dtype0*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Shape_1*
valueB :
���������
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1/max_size*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Shape_1*

stack_name *
	elem_type0
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enterggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
�
rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(
�
lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsjgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/f_acc/max_sizeConst*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh_1*
valueB :
���������*
dtype0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/f_acc/max_size*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh_1*

stack_name *
	elem_type0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/StackPushV2StackPushV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/Enter;rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh_1^gradients/Add*
T0*
swap_memory( 
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2
StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mulMulgradients/AddN_2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2*
T0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/SumSumMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/ReshapeReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Sumjgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/f_acc/max_sizeConst*Q
_classG
ECloc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_2*
valueB :
���������*
dtype0
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/f_accStackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/f_acc/max_size*Q
_classG
ECloc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_2*

stack_name *
	elem_type0
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/StackPushV2StackPushV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/Enter>rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_2^gradients/Add*
T0*
swap_memory( 
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2
StackPopV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1MulZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2gradients/AddN_2*
T0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Sum_1SumOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1agradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Reshape_1ReshapeOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Sum_1lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul_1/StackPopV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Reshape*
T0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh_1_grad/TanhGradTanhGradXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/mul/StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_2_grad/Reshape_1*
T0
�
gradients/AddN_3AddN)gradients/rnn/while/Merge_2_grad/Switch:1Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh_1_grad/TanhGrad*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch*
N
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/ShapeShape8rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul*
T0*
out_type0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Shape_1Shape:rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1*
T0*
out_type0
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc/max_sizeConst*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Shape*
valueB :
���������*
dtype0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc/max_size*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Shape*

stack_name *
	elem_type0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Shape_1*
valueB :
���������*
dtype0
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1/max_size*
	elem_type0*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Shape_1*

stack_name 
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Enterggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Shape_1^gradients/Add*
T0*
swap_memory( 
�
rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsjgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/SumSumgradients/AddN_3_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/ReshapeReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Sumjgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_3agradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Reshape_1ReshapeOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Sum_1lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/ShapeShape<rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid*
T0*
out_type0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Shape_1Shapernn/while/Identity_2*
T0*
out_type0
�
lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
dtype0*`
_classV
TRloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Shape*
valueB :
���������
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc/max_size*

stack_name *
	elem_type0*`
_classV
TRloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Shape
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/EnterEntercgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/EnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Shape_1*
valueB :
���������*
dtype0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1/max_size*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Shape_1*

stack_name *
	elem_type0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Enteregradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Shape_1^gradients/Add*
swap_memory( *
T0
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*
is_constant(
�
jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/f_acc/max_sizeConst*'
_class
loc:@rnn/while/Identity_2*
valueB :
���������*
dtype0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/f_accStackV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/f_acc/max_size*

stack_name *
	elem_type0*'
_class
loc:@rnn/while/Identity_2
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/StackPushV2StackPushV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/Enterrnn/while/Identity_2^gradients/Add*
T0*
swap_memory( 
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/StackPopV2/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/StackPopV2
StackPopV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mulMulQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/ReshapeVgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul/StackPopV2*
T0
�
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/SumSumKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/ReshapeReshapeKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Sumhgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/f_acc/max_sizeConst*O
_classE
CAloc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid*
valueB :
���������*
dtype0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/f_acc/max_size*

stack_name *
	elem_type0*O
_classE
CAloc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/StackPushV2StackPushV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/Enter<rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid^gradients/Add*
T0*
swap_memory( 
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2
StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1MulXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Reshape*
T0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Sum_1SumMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Reshape_1ReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Sum_1jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/ShapeShape>rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_1*
T0*
out_type0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Shape_1Shape9rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh*
T0*
out_type0
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc/max_sizeConst*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Shape*
valueB :
���������*
dtype0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc/max_size*

stack_name *
	elem_type0*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Shape
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnteregradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1/max_sizeConst*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Shape_1*
valueB :
���������*
dtype0
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1/max_size*

stack_name *
	elem_type0*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Shape_1
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enterggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Shape_1^gradients/Add*
swap_memory( *
T0
�
rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterggradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsjgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/f_acc/max_sizeConst*L
_classB
@>loc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh*
valueB :
���������*
dtype0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/f_acc/max_size*

stack_name *
	elem_type0*L
_classB
@>loc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/StackPushV2StackPushV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/Enter9rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh^gradients/Add*
T0*
swap_memory( 
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2
StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mulMulSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Reshape_1Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2*
T0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/SumSumMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/ReshapeReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Sumjgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/f_acc/max_sizeConst*Q
_classG
ECloc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_1*
valueB :
���������*
dtype0
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/f_accStackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/f_acc/max_size*

stack_name *
	elem_type0*Q
_classG
ECloc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_1
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/StackPushV2StackPushV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/Enter>rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_1^gradients/Add*
T0*
swap_memory( 
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2
StackPopV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1MulZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_1_grad/Reshape_1*
T0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Sum_1SumOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1agradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Reshape_1ReshapeOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Sum_1lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/mul_1/StackPopV2Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Reshape*
T0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul_1/StackPopV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Reshape*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh_grad/TanhGradTanhGradXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/mul/StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_1_grad/Reshape_1*
T0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/ShapeShape<rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split:2*
T0*
out_type0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/Shape_1Const^gradients/Sub*
dtype0*
valueB 
�
lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc/max_sizeConst*
dtype0*`
_classV
TRloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/Shape*
valueB :
���������
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc/max_size*
	elem_type0*`
_classV
TRloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/Shape*

stack_name 
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/EnterEntercgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/EnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/Shape^gradients/Add*
T0*
swap_memory( 
�
ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/Shape_1*
T0
�
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/SumSumWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_grad/SigmoidGrad]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/ReshapeReshapeKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/Sumhgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/Sum_1SumWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_grad/SigmoidGrad_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/Reshape_1ReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/Sum_1Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/Shape_1*
T0*
Tshape0
�
1gradients/rnn/while/Switch_2_grad_1/NextIterationNextIterationQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/mul_grad/Reshape_1*
T0
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split_grad/concat/ConstConst^gradients/Sub*
dtype0*
value	B :
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split_grad/concatConcatV2Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_1_grad/SigmoidGradQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Tanh_grad/TanhGradOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/add_grad/ReshapeYgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/Sigmoid_2_grad/SigmoidGradVgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split_grad/concat/Const*
T0*
N*

Tidx0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split_grad/concat*
T0*
data_formatNHWC
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMulMatMulPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split_grad/concatWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul/Enter*
transpose_b(*
T0*
transpose_a( 
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc/max_sizeConst*
dtype0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat*
valueB :
���������
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc/max_size*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat*

stack_name *
	elem_type0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/EnterEnterYgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/Enter;rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat^gradients/Add*
T0*
swap_memory( 
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterYgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1MatMul^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/split_grad/concat*
T0*
transpose_a(*
transpose_b( 
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBP*    *
dtype0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_1EnterWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_2MergeYgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_1_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/SwitchSwitchYgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/AddAddZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/Switch:1Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd_grad/BiasAddGrad*
T0
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationUgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/Add*
T0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3ExitXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/Switch*
T0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/mod/ConstConst^gradients/Sub*
value	B :*
dtype0
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/modFloorModTgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/mod/ConstOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/Rank*
T0
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeShapernn/while/TensorArrayReadV3*
T0*
out_type0
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/f_acc/max_sizeConst*.
_class$
" loc:@rnn/while/TensorArrayReadV3*
valueB :
���������*
dtype0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/f_accStackV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/f_acc/max_size*
	elem_type0*.
_class$
" loc:@rnn/while/TensorArrayReadV3*

stack_name 
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/EnterEnterWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/Enterrnn/while/TensorArrayReadV3^gradients/Add*
swap_memory( *
T0
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub*
	elem_type0
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/f_acc_1/max_sizeConst*'
_class
loc:@rnn/while/Identity_3*
valueB :
���������*
dtype0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/f_acc_1StackV2bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/f_acc_1/max_size*

stack_name *
	elem_type0*'
_class
loc:@rnn/while/Identity_3
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/Enter_1EnterYgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/f_acc_1*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/Enter_1rnn/while/Identity_3^gradients/Add*
swap_memory( *
T0
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2_1/EnterEnterYgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*
	elem_type0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeNShapeN\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2_1*
T0*
out_type0*
N
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ConcatOffsetConcatOffsetNgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/modQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeNSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN:1*
N
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/SliceSliceQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMulWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ConcatOffsetQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN*
T0*
Index0
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/Slice_1SliceQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMulYgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ConcatOffset:1Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/ShapeN:1*
T0*
Index0
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_accConst*
valueB(P*    *
dtype0
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_1EnterVgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_2MergeXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_1^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/SwitchSwitchXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*
T0
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/AddAddYgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/Switch:1Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul_grad/MatMul_1*
T0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/NextIterationNextIterationTgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/Add*
T0
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3ExitWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/Switch*
T0
�
Rgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterrnn/TensorArray_1*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter*
is_constant(
�
Tgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Lgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3Rgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterTgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter*
source	gradients
�
Hgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityTgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1M^gradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*4
_class*
(&loc:@rnn/while/TensorArrayReadV3/Enter
�
Ngradients/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Lgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/SliceHgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0
e
8gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0
�
:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter8gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1@gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N
�
9gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_2*
T0
�
6gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAdd;gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Ngradients/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0
�
@gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration6gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0
�
:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit9gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0
�
1gradients/rnn/while/Switch_3_grad_1/NextIterationNextIterationRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/concat_grad/Slice_1*
T0
�
ogradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3rnn/TensorArray_1:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*$
_class
loc:@rnn/TensorArray_1*
source	gradients
�
kgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3p^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*$
_class
loc:@rnn/TensorArray_1
�
agradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3ogradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3rnn/TensorArrayUnstack/rangekgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
element_shape:
P
*gradients/transpose_grad/InvertPermutationInvertPermutationconcat*
T0
�
"gradients/transpose_grad/transpose	Transposeagradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*gradients/transpose_grad/InvertPermutation*
T0*
Tperm0
E
gradients/Reshape_1_grad/ShapeShapeadd*
T0*
out_type0
�
 gradients/Reshape_1_grad/ReshapeReshape"gradients/transpose_grad/transposegradients/Reshape_1_grad/Shape*
T0*
Tshape0
B
gradients/add_grad/ShapeShapeMatMul*
T0*
out_type0
H
gradients/add_grad/Shape_1Const*
valueB:*
dtype0
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0
�
gradients/add_grad/SumSum gradients/Reshape_1_grad/Reshape(gradients/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
n
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0
�
gradients/add_grad/Sum_1Sum gradients/Reshape_1_grad/Reshape*gradients/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
t
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0
~
gradients/MatMul_grad/MatMulMatMulgradients/add_grad/Reshapeenc_wt/read*
transpose_a( *
transpose_b(*
T0
|
gradients/MatMul_grad/MatMul_1MatMulReshapegradients/add_grad/Reshape*
transpose_a(*
transpose_b( *
T0
x
global_norm/L2LossL2Lossgradients/MatMul_grad/MatMul_1*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
~
global_norm/L2Loss_1L2Loss gradients/MatMul_1_grad/MatMul_1*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
v
global_norm/L2Loss_2L2Lossgradients/add_grad/Reshape_1*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
z
global_norm/L2Loss_3L2Lossgradients/add_1_grad/Reshape_1*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
�
global_norm/L2Loss_4L2LossXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*k
_classa
_]loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3
�
global_norm/L2Loss_5L2LossYgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0*l
_classb
`^loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3
�
global_norm/L2Loss_6L2LossXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*k
_classa
_]loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3
�
global_norm/L2Loss_7L2LossYgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0*l
_classb
`^loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3
�
global_norm/stackPackglobal_norm/L2Lossglobal_norm/L2Loss_1global_norm/L2Loss_2global_norm/L2Loss_3global_norm/L2Loss_4global_norm/L2Loss_5global_norm/L2Loss_6global_norm/L2Loss_7*
T0*

axis *
N
?
global_norm/ConstConst*
valueB: *
dtype0
b
global_norm/SumSumglobal_norm/stackglobal_norm/Const*
	keep_dims( *

Tidx0*
T0
@
global_norm/Const_1Const*
valueB
 *   @*
dtype0
E
global_norm/mulMulglobal_norm/Sumglobal_norm/Const_1*
T0
9
global_norm/global_normSqrtglobal_norm/mul*
T0
J
clip_by_global_norm/truediv/xConst*
valueB
 *  �?*
dtype0
g
clip_by_global_norm/truedivRealDivclip_by_global_norm/truediv/xglobal_norm/global_norm*
T0
F
clip_by_global_norm/ConstConst*
valueB
 *  �?*
dtype0
X
clip_by_global_norm/truediv_1RealDivclip_by_global_norm/Const
clip_norm_*
T0
k
clip_by_global_norm/MinimumMinimumclip_by_global_norm/truedivclip_by_global_norm/truediv_1*
T0
P
clip_by_global_norm/mulMul
clip_norm_clip_by_global_norm/Minimum*
T0
�
clip_by_global_norm/mul_1Mulgradients/MatMul_grad/MatMul_1clip_by_global_norm/mul*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
�
*clip_by_global_norm/clip_by_global_norm/_0Identityclip_by_global_norm/mul_1*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
�
clip_by_global_norm/mul_2Mul gradients/MatMul_1_grad/MatMul_1clip_by_global_norm/mul*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
�
*clip_by_global_norm/clip_by_global_norm/_1Identityclip_by_global_norm/mul_2*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
�
clip_by_global_norm/mul_3Mulgradients/add_grad/Reshape_1clip_by_global_norm/mul*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
�
*clip_by_global_norm/clip_by_global_norm/_2Identityclip_by_global_norm/mul_3*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
�
clip_by_global_norm/mul_4Mulgradients/add_1_grad/Reshape_1clip_by_global_norm/mul*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
�
*clip_by_global_norm/clip_by_global_norm/_3Identityclip_by_global_norm/mul_4*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
�
clip_by_global_norm/mul_5MulXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3clip_by_global_norm/mul*
T0*k
_classa
_]loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3
�
*clip_by_global_norm/clip_by_global_norm/_4Identityclip_by_global_norm/mul_5*
T0*k
_classa
_]loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3
�
clip_by_global_norm/mul_6MulYgradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3clip_by_global_norm/mul*
T0*l
_classb
`^loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3
�
*clip_by_global_norm/clip_by_global_norm/_5Identityclip_by_global_norm/mul_6*
T0*l
_classb
`^loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3
�
clip_by_global_norm/mul_7MulXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3clip_by_global_norm/mul*
T0*k
_classa
_]loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3
�
*clip_by_global_norm/clip_by_global_norm/_6Identityclip_by_global_norm/mul_7*
T0*k
_classa
_]loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3
�
clip_by_global_norm/mul_8MulYgradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3clip_by_global_norm/mul*
T0*l
_classb
`^loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3
�
*clip_by_global_norm/clip_by_global_norm/_7Identityclip_by_global_norm/mul_8*
T0*l
_classb
`^loc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3
c
beta1_power/initial_valueConst*
_class
loc:@dec_bias*
valueB
 *fff?*
dtype0
t
beta1_power
VariableV2*
shared_name *
_class
loc:@dec_bias*
dtype0*
	container *
shape: 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
_class
loc:@dec_bias*
validate_shape(*
use_locking(
O
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dec_bias
c
beta2_power/initial_valueConst*
dtype0*
_class
loc:@dec_bias*
valueB
 *w�?
t
beta2_power
VariableV2*
_class
loc:@dec_bias*
dtype0*
	container *
shape: *
shared_name 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@dec_bias*
validate_shape(
O
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dec_bias
m
enc_wt/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@enc_wt*
dtype0
z
enc_wt/Adam
VariableV2*
shared_name *
_class
loc:@enc_wt*
dtype0*
	container *
shape
:
�
enc_wt/Adam/AssignAssignenc_wt/Adamenc_wt/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@enc_wt
M
enc_wt/Adam/readIdentityenc_wt/Adam*
T0*
_class
loc:@enc_wt
o
enc_wt/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *
_class
loc:@enc_wt
|
enc_wt/Adam_1
VariableV2*
dtype0*
	container *
shape
:*
shared_name *
_class
loc:@enc_wt
�
enc_wt/Adam_1/AssignAssignenc_wt/Adam_1enc_wt/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@enc_wt*
validate_shape(
Q
enc_wt/Adam_1/readIdentityenc_wt/Adam_1*
T0*
_class
loc:@enc_wt
m
dec_wt/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@dec_wt*
dtype0
z
dec_wt/Adam
VariableV2*
shared_name *
_class
loc:@dec_wt*
dtype0*
	container *
shape
:
�
dec_wt/Adam/AssignAssigndec_wt/Adamdec_wt/Adam/Initializer/zeros*
_class
loc:@dec_wt*
validate_shape(*
use_locking(*
T0
M
dec_wt/Adam/readIdentitydec_wt/Adam*
T0*
_class
loc:@dec_wt
o
dec_wt/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *
_class
loc:@dec_wt
|
dec_wt/Adam_1
VariableV2*
shape
:*
shared_name *
_class
loc:@dec_wt*
dtype0*
	container 
�
dec_wt/Adam_1/AssignAssigndec_wt/Adam_1dec_wt/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dec_wt*
validate_shape(
Q
dec_wt/Adam_1/readIdentitydec_wt/Adam_1*
T0*
_class
loc:@dec_wt
m
enc_bias/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@enc_bias*
dtype0
z
enc_bias/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@enc_bias
�
enc_bias/Adam/AssignAssignenc_bias/Adamenc_bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@enc_bias
S
enc_bias/Adam/readIdentityenc_bias/Adam*
T0*
_class
loc:@enc_bias
o
!enc_bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@enc_bias*
dtype0
|
enc_bias/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@enc_bias
�
enc_bias/Adam_1/AssignAssignenc_bias/Adam_1!enc_bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@enc_bias*
validate_shape(
W
enc_bias/Adam_1/readIdentityenc_bias/Adam_1*
T0*
_class
loc:@enc_bias
m
dec_bias/Adam/Initializer/zerosConst*
dtype0*
valueB*    *
_class
loc:@dec_bias
z
dec_bias/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@dec_bias*
dtype0*
	container 
�
dec_bias/Adam/AssignAssigndec_bias/Adamdec_bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dec_bias*
validate_shape(
S
dec_bias/Adam/readIdentitydec_bias/Adam*
T0*
_class
loc:@dec_bias
o
!dec_bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *
_class
loc:@dec_bias
|
dec_bias/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dec_bias
�
dec_bias/Adam_1/AssignAssigndec_bias/Adam_1!dec_bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@dec_bias*
validate_shape(*
use_locking(
W
dec_bias/Adam_1/readIdentitydec_bias/Adam_1*
T0*
_class
loc:@dec_bias
�
Arnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zerosConst*
valueB(P*    *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0
�
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam
VariableV2*
shape
:(P*
shared_name *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0*
	container 
�
6rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/AssignAssign/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamArnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(
�
4rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/readIdentity/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
�
Crnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zerosConst*
valueB(P*    *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0
�
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape
:(P*
shared_name *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
�
8rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/AssignAssign1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Crnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(*
use_locking(
�
6rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/readIdentity1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
�
?rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Initializer/zerosConst*
valueBP*    *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0
�
-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam
VariableV2*
	container *
shape:P*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0
�
4rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/AssignAssign-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam?rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias
�
2rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/readIdentity-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0
�
Arnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Initializer/zerosConst*
valueBP*    *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0
�
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1
VariableV2*
dtype0*
	container *
shape:P*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias
�
6rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/AssignAssign/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1Arnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(
�
4rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/readIdentity/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias
�
Arnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Initializer/zerosConst*
dtype0*
valueB(P*    *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam
VariableV2*
dtype0*
	container *
shape
:(P*
shared_name *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
6rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/AssignAssign/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AdamArnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Initializer/zeros*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
validate_shape(*
use_locking(
�
4rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/readIdentity/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
Crnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Initializer/zerosConst*
valueB(P*    *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtype0
�
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1
VariableV2*
	container *
shape
:(P*
shared_name *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtype0
�
8rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/AssignAssign1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1Crnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Initializer/zeros*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
validate_shape(*
use_locking(
�
6rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/readIdentity1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
?rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Initializer/zerosConst*
valueBP*    *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
dtype0
�
-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam
VariableV2*
shape:P*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
dtype0*
	container 
�
4rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/AssignAssign-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam?rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
�
2rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/readIdentity-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
�
Arnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Initializer/zerosConst*
dtype0*
valueBP*    *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
�
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1
VariableV2*
dtype0*
	container *
shape:P*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
�
6rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/AssignAssign/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1Arnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
validate_shape(
�
4rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/readIdentity/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
>
optimizeOp_/beta1Const*
valueB
 *fff?*
dtype0
>
optimizeOp_/beta2Const*
valueB
 *w�?*
dtype0
@
optimizeOp_/epsilonConst*
dtype0*
valueB
 *w�+2
�
#optimizeOp_/update_enc_wt/ApplyAdam	ApplyAdamenc_wtenc_wt/Adamenc_wt/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_0*
use_locking( *
T0*
_class
loc:@enc_wt*
use_nesterov( 
�
#optimizeOp_/update_dec_wt/ApplyAdam	ApplyAdamdec_wtdec_wt/Adamdec_wt/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@dec_wt
�
%optimizeOp_/update_enc_bias/ApplyAdam	ApplyAdamenc_biasenc_bias/Adamenc_bias/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_2*
use_locking( *
T0*
_class
loc:@enc_bias*
use_nesterov( 
�
%optimizeOp_/update_dec_bias/ApplyAdam	ApplyAdamdec_biasdec_bias/Adamdec_bias/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_3*
use_locking( *
T0*
_class
loc:@dec_bias*
use_nesterov( 
�
GoptimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdam	ApplyAdam*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_4*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
use_nesterov( *
use_locking( 
�
EoptimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdam	ApplyAdam(rnn/multi_rnn_cell/cell_0/lstm_cell/bias-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_5*
use_locking( *
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_nesterov( 
�
GoptimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ApplyAdam	ApplyAdam*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_6*
use_locking( *
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
use_nesterov( 
�
EoptimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ApplyAdam	ApplyAdam(rnn/multi_rnn_cell/cell_1/lstm_cell/bias-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readlearn_rate_optimizeOp_/beta1optimizeOp_/beta2optimizeOp_/epsilon*clip_by_global_norm/clip_by_global_norm/_7*
use_nesterov( *
use_locking( *
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
�
optimizeOp_/mulMulbeta1_power/readoptimizeOp_/beta1$^optimizeOp_/update_enc_wt/ApplyAdam$^optimizeOp_/update_dec_wt/ApplyAdam&^optimizeOp_/update_enc_bias/ApplyAdam&^optimizeOp_/update_dec_bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ApplyAdam*
T0*
_class
loc:@dec_bias
�
optimizeOp_/AssignAssignbeta1_poweroptimizeOp_/mul*
use_locking( *
T0*
_class
loc:@dec_bias*
validate_shape(
�
optimizeOp_/mul_1Mulbeta2_power/readoptimizeOp_/beta2$^optimizeOp_/update_enc_wt/ApplyAdam$^optimizeOp_/update_dec_wt/ApplyAdam&^optimizeOp_/update_enc_bias/ApplyAdam&^optimizeOp_/update_dec_bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ApplyAdam*
T0*
_class
loc:@dec_bias
�
optimizeOp_/Assign_1Assignbeta2_poweroptimizeOp_/mul_1*
T0*
_class
loc:@dec_bias*
validate_shape(*
use_locking( 
�
optimizeOp_NoOp$^optimizeOp_/update_enc_wt/ApplyAdam$^optimizeOp_/update_dec_wt/ApplyAdam&^optimizeOp_/update_enc_bias/ApplyAdam&^optimizeOp_/update_dec_bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdamH^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ApplyAdamF^optimizeOp_/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ApplyAdam^optimizeOp_/Assign^optimizeOp_/Assign_1
�
initNoOp^enc_wt/Assign^dec_wt/Assign^enc_bias/Assign^dec_bias/Assign2^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign0^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign2^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Assign0^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Assign^beta1_power/Assign^beta2_power/Assign^enc_wt/Adam/Assign^enc_wt/Adam_1/Assign^dec_wt/Adam/Assign^dec_wt/Adam_1/Assign^enc_bias/Adam/Assign^enc_bias/Adam_1/Assign^dec_bias/Adam/Assign^dec_bias/Adam_1/Assign7^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Assign9^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Assign5^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Assign7^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Assign7^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Assign9^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Assign5^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Assign7^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Assign"