.class public abstract Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;
.super Ljava/lang/Object;
.source "StackMapUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

.field private empty_stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

.field protected first_local_index:I

.field protected initial_locals_count:I

.field protected initial_type_list:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

.field protected needStackMap:Z

.field protected number_active_locals:I

.field protected pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

.field protected running_offset:I

.field protected smta:Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

.field protected stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

.field private uninitialized_NEW_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 77
    new-instance v1, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;-><init>(Z)V

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    .line 80
    iput-boolean v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->needStackMap:Z

    .line 83
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 86
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->smta:Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    .line 115
    new-array v0, v2, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->empty_stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->uninitialized_NEW_map:Ljava/util/Map;

    return-void
.end method

.method protected static typeToClassGetName(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;
    .locals 3
    .param p0, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 766
    instance-of v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v0, :cond_0

    .line 767
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 768
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 774
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final update_NEW_object_stack_map_entries(II)V
    .locals 12
    .param p1, "old_offset"    # I
    .param p2, "new_offset"    # I

    .line 579
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    .line 580
    .local v4, "smte":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getFrameType()I

    move-result v5

    .line 582
    .local v5, "frame_type":I
    const/16 v6, 0x40

    if-lt v5, v6, :cond_0

    const/16 v6, 0xf7

    if-le v5, v6, :cond_2

    :cond_0
    const/16 v6, 0xfc

    if-lt v5, v6, :cond_1

    const/16 v6, 0xfe

    if-le v5, v6, :cond_2

    :cond_1
    const/16 v6, 0xff

    if-ne v5, v6, :cond_6

    .line 587
    :cond_2
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getNumberOfLocals()I

    move-result v6

    const/16 v7, 0x8

    if-lez v6, :cond_4

    .line 588
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getTypesOfLocals()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v6

    array-length v8, v6

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v6, v9

    .line 589
    .local v10, "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getType()B

    move-result v11

    if-ne v11, v7, :cond_3

    .line 590
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getIndex()I

    move-result v11

    if-ne p1, v11, :cond_3

    .line 591
    invoke-virtual {v10, p2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->setIndex(I)V

    .line 588
    .end local v10    # "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 596
    :cond_4
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getNumberOfStackItems()I

    move-result v6

    if-lez v6, :cond_6

    .line 597
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getTypesOfStackItems()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v6

    array-length v8, v6

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_6

    aget-object v10, v6, v9

    .line 598
    .restart local v10    # "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getType()B

    move-result v11

    if-ne v11, v7, :cond_5

    .line 599
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getIndex()I

    move-result v11

    if-ne p1, v11, :cond_5

    .line 600
    invoke-virtual {v10, p2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->setIndex(I)V

    .line 597
    .end local v10    # "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 579
    .end local v4    # "smte":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    .end local v5    # "frame_type":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 607
    :cond_7
    return-void
.end method


# virtual methods
.method protected final add_new_argument(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .locals 1
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "arg_name"    # Ljava/lang/String;
    .param p3, "arg_type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 913
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->add_new_parameter(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v0

    return-object v0
.end method

.method protected final add_new_parameter(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .locals 16
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "arg_name"    # Ljava/lang/String;
    .param p3, "arg_type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 941
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v9, 0x0

    .line 943
    .local v9, "arg_new":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariables()[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v10

    .line 944
    .local v10, "locals":[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getArgumentTypes()[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v11

    .line 945
    .local v11, "arg_types":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    const/4 v1, 0x0

    .line 946
    .local v1, "new_index":I
    const/4 v2, 0x0

    .line 948
    .local v2, "new_offset":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v3

    const/4 v12, 0x1

    if-eqz v3, :cond_0

    move v3, v12

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v13, v3

    .line 950
    .local v13, "has_code":Z
    if-eqz v13, :cond_3

    .line 951
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v3

    if-nez v3, :cond_1

    .line 953
    add-int/lit8 v1, v1, 0x1

    .line 954
    add-int/lit8 v2, v2, 0x1

    .line 957
    :cond_1
    array-length v3, v11

    if-lez v3, :cond_2

    .line 959
    array-length v3, v11

    add-int/2addr v1, v3

    .line 961
    add-int/lit8 v3, v1, -0x1

    aget-object v3, v10, v3

    .line 962
    .local v3, "last_arg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    move v14, v1

    move v15, v4

    .end local v2    # "new_offset":I
    .local v4, "new_offset":I
    goto :goto_1

    .line 957
    .end local v3    # "last_arg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .end local v4    # "new_offset":I
    .restart local v2    # "new_offset":I
    :cond_2
    move v14, v1

    move v15, v2

    .line 966
    .end local v1    # "new_index":I
    .end local v2    # "new_offset":I
    .local v14, "new_index":I
    .local v15, "new_offset":I
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v15

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v9

    .line 969
    iget v1, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->first_local_index:I

    add-int/2addr v1, v12

    iput v1, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->first_local_index:I

    move v1, v14

    move v2, v15

    .line 971
    .end local v14    # "new_index":I
    .end local v15    # "new_offset":I
    .restart local v1    # "new_index":I
    .restart local v2    # "new_offset":I
    :cond_3
    iget v3, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->initial_locals_count:I

    add-int/2addr v3, v12

    iput v3, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->initial_locals_count:I

    .line 974
    invoke-static {v11, v8}, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->postpendToArray([Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/Type;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    .line 975
    .end local v11    # "arg_types":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .local v3, "arg_types":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getArgumentNames()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v0, v4, v5}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->add_string([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 976
    .local v4, "arg_names":[Ljava/lang/String;
    invoke-virtual {v7, v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setArgumentTypes([Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 977
    invoke-virtual {v7, v4}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setArgumentNames([Ljava/lang/String;)V

    .line 979
    if-eqz v13, :cond_5

    .line 981
    move v6, v1

    .local v6, "i":I
    :goto_2
    array-length v11, v10

    if-ge v6, v11, :cond_4

    .line 982
    aget-object v11, v10, v6

    .line 983
    .local v11, "lv":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v14

    add-int/2addr v12, v14

    invoke-virtual {v11, v12}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setIndex(I)V

    .line 981
    .end local v11    # "lv":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 985
    .end local v6    # "i":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxLocals()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v11

    add-int/2addr v6, v11

    invoke-virtual {v7, v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxLocals(I)V

    .line 987
    iget-object v6, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 989
    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    .line 987
    const-string v12, "Added arg    %s%n"

    invoke-virtual {v6, v12, v11}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 995
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v6

    invoke-virtual {v0, v7, v2, v6}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->adjust_code_for_locals_change(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;II)V

    .line 999
    invoke-virtual {v0, v2, v8, v10}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->update_full_frame_stack_map_entries(ILorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;)V

    .line 1001
    iget-object v6, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    iget-object v11, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v7, v11}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariableTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "New LocalVariableTable:%n%s%n"

    invoke-virtual {v6, v12, v11}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1003
    :cond_5
    return-object v9
.end method

.method protected add_string([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "new_string"    # Ljava/lang/String;

    .line 132
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 133
    .local v0, "new_arr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 134
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "ii":I
    :cond_0
    array-length v1, p1

    aput-object p2, v0, v1

    .line 137
    return-object v0
.end method

.method protected final adjust_code_for_locals_change(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;II)V
    .locals 7
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "index_first_moved_local"    # I
    .param p3, "size"    # I

    .line 642
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    .line 643
    .local v0, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    .local v1, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v1, :cond_5

    .line 644
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v2

    .line 645
    .local v2, "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getLength()I

    move-result v3

    .line 648
    .local v3, "orig_length":I
    instance-of v4, v2, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-nez v4, :cond_1

    instance-of v4, v2, Lorg/checkerframework/org/apache/bcel/generic/IINC;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 653
    :cond_0
    instance-of v4, v2, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;

    if-eqz v4, :cond_2

    .line 656
    move-object v4, v2

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getIndex()I

    move-result v4

    .line 657
    .local v4, "operand":I
    if-lt v4, p2, :cond_3

    .line 658
    move-object v5, v2

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;

    add-int v6, v4, p3

    invoke-virtual {v5, v6}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->setIndex(I)V

    goto :goto_2

    .line 649
    .end local v4    # "operand":I
    :cond_1
    :goto_1
    move-object v4, v2

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;

    .line 650
    .local v4, "index_inst":Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;
    invoke-interface {v4}, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;->getIndex()I

    move-result v5

    if-lt v5, p2, :cond_2

    .line 651
    invoke-interface {v4}, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;->getIndex()I

    move-result v5

    add-int/2addr v5, p3

    invoke-interface {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;->setIndex(I)V

    .line 653
    .end local v4    # "index_inst":Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;
    :cond_2
    nop

    .line 663
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getLength()I

    move-result v4

    sub-int/2addr v4, v3

    .line 664
    .local v4, "delta":I
    if-lez v4, :cond_4

    .line 665
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 666
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v5

    invoke-virtual {p0, v5, v4}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->update_stack_map_offset(II)V

    .line 667
    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->modify_stack_maps_for_switches(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V

    .line 643
    .end local v2    # "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v3    # "orig_length":I
    .end local v4    # "delta":I
    :cond_4
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    goto :goto_0

    .line 670
    .end local v1    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_5
    return-void
.end method

.method protected final bcel_calc_stack_types(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;
    .locals 8
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 1278
    const-string v0, "Method is NOT instrumented%n"

    new-instance v1, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;

    invoke-direct {v1}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;-><init>()V

    .line 1281
    .local v1, "stackver":Lorg/checkerframework/org/plumelib/bcelutil/StackVer;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->do_stack_ver(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    .local v4, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    nop

    .line 1288
    sget-object v5, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-eq v4, v5, :cond_0

    .line 1289
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1290
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7, v4}, [Ljava/lang/Object;

    move-result-object v6

    .line 1289
    const-string v7, "Warning: StackVer failed for %s.%s: %s%n"

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1291
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1292
    return-object v2

    .line 1294
    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-ne v4, v0, :cond_1

    .line 1295
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer;->get_stack_types()Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;

    move-result-object v0

    return-object v0

    .line 1294
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " vr failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1282
    .end local v4    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :catchall_0
    move-exception v4

    .line 1283
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Warning: StackVer exception for %s.%s%n"

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1284
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Exception: %s%n"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1285
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1286
    return-object v2
.end method

.method protected final build_unitialized_NEW_map(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V
    .locals 16
    .param p1, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 538
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->uninitialized_NEW_map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 539
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 541
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    aget-object v6, v2, v5

    .line 542
    .local v6, "smte":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getFrameType()I

    move-result v7

    .line 544
    .local v7, "frame_type":I
    const/16 v8, 0x40

    if-lt v7, v8, :cond_0

    const/16 v8, 0xf7

    if-le v7, v8, :cond_2

    :cond_0
    const/16 v8, 0xfc

    if-lt v7, v8, :cond_1

    const/16 v8, 0xfe

    if-le v7, v8, :cond_2

    :cond_1
    const/16 v8, 0xff

    if-ne v7, v8, :cond_6

    .line 549
    :cond_2
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getNumberOfLocals()I

    move-result v8

    const/16 v9, 0x8

    if-lez v8, :cond_4

    .line 550
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getTypesOfLocals()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v8

    array-length v10, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v12, v8, v11

    .line 551
    .local v12, "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getType()B

    move-result v13

    if-ne v13, v9, :cond_3

    .line 552
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getIndex()I

    move-result v13

    .line 553
    .local v13, "i":I
    iget-object v14, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->uninitialized_NEW_map:Ljava/util/Map;

    invoke-virtual {v1, v13}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v15

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .end local v12    # "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .end local v13    # "i":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 557
    :cond_4
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getNumberOfStackItems()I

    move-result v4

    if-lez v4, :cond_6

    .line 558
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getTypesOfStackItems()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v4

    array-length v8, v4

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_6

    aget-object v11, v4, v10

    .line 559
    .local v11, "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getType()B

    move-result v12

    if-ne v12, v9, :cond_5

    .line 560
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getIndex()I

    move-result v12

    .line 561
    .local v12, "i":I
    iget-object v13, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->uninitialized_NEW_map:Ljava/util/Map;

    invoke-virtual {v1, v12}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .end local v11    # "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .end local v12    # "i":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 541
    .end local v6    # "smte":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    .end local v7    # "frame_type":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 567
    :cond_7
    return-void
.end method

.method protected final create_method_scope_local(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .locals 14
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "local_name"    # Ljava/lang/String;
    .param p3, "local_type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 1040
    move-object v0, p0

    move-object v7, p1

    const/4 v1, 0x0

    .line 1041
    .local v1, "max_offset":I
    const/4 v2, -0x1

    .line 1043
    .local v2, "new_offset":I
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariables()[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v8

    .line 1044
    .local v8, "locals":[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    const/4 v3, -0x1

    .line 1045
    .local v3, "compiler_temp_i":I
    const/4 v4, -0x1

    .line 1048
    .local v4, "new_index":I
    const/4 v5, 0x0

    move v9, v1

    move v10, v3

    move v11, v5

    .end local v1    # "max_offset":I
    .end local v3    # "compiler_temp_i":I
    .local v9, "max_offset":I
    .local v10, "compiler_temp_i":I
    .local v11, "i":I
    :goto_0
    array-length v1, v8

    const/4 v3, -0x1

    if-ge v11, v1, :cond_4

    .line 1049
    aget-object v1, v8, v11

    .line 1050
    .local v1, "lv":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    iget v5, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->first_local_index:I

    if-lt v11, v5, :cond_1

    .line 1051
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1052
    if-ne v2, v3, :cond_1

    .line 1053
    if-eq v10, v3, :cond_0

    .line 1054
    aget-object v5, v8, v10

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v2

    .line 1055
    move v4, v10

    goto :goto_1

    .line 1057
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v2

    .line 1058
    move v4, v11

    .line 1065
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v5

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v6

    add-int v9, v5, v6

    .line 1067
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DaIkOnTeMp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1071
    if-ne v10, v3, :cond_3

    .line 1072
    move v3, v11

    move v10, v3

    .end local v10    # "compiler_temp_i":I
    .restart local v3    # "compiler_temp_i":I
    goto :goto_2

    .line 1078
    .end local v3    # "compiler_temp_i":I
    .restart local v10    # "compiler_temp_i":I
    :cond_2
    const/4 v3, -0x1

    move v10, v3

    .line 1048
    .end local v1    # "lv":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1085
    :cond_4
    if-ne v2, v3, :cond_5

    if-eq v10, v3, :cond_5

    .line 1086
    aget-object v1, v8, v10

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v2

    .line 1087
    move v4, v10

    move v12, v2

    move v13, v4

    goto :goto_3

    .line 1093
    :cond_5
    move v12, v2

    move v13, v4

    .end local v2    # "new_offset":I
    .end local v4    # "new_index":I
    .local v12, "new_offset":I
    .local v13, "new_index":I
    :goto_3
    if-ne v12, v3, :cond_7

    .line 1094
    move v12, v9

    .line 1095
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxLocals()I

    move-result v1

    if-ge v12, v1, :cond_6

    .line 1096
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxLocals()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxLocals(I)V

    .line 1098
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v1

    .local v1, "lv_new":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    goto :goto_5

    .line 1101
    .end local v1    # "lv_new":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v1

    .line 1103
    .restart local v1    # "lv_new":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    move v2, v13

    move v11, v2

    :goto_4
    array-length v2, v8

    if-ge v11, v2, :cond_8

    .line 1104
    aget-object v2, v8, v11

    .line 1105
    .local v2, "lv":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setIndex(I)V

    .line 1103
    .end local v2    # "lv":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1107
    :cond_8
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxLocals()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxLocals(I)V

    .line 1110
    :goto_5
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1111
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1110
    const-string v4, "Added local  %s%n"

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    invoke-virtual {p0, p1, v12, v2}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->adjust_code_for_locals_change(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;II)V

    .line 1121
    move-object/from16 v2, p3

    invoke-virtual {p0, v12, v2, v8}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->update_full_frame_stack_map_entries(ILorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;)V

    .line 1123
    iget-object v3, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    iget-object v4, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariableTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "New LocalVariableTable:%n%s%n"

    invoke-virtual {v3, v5, v4}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    return-object v1
.end method

.method protected final create_new_stack_map_attribute(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 5
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->needStackMap:Z

    if-nez v0, :cond_0

    .line 743
    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->empty_stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    if-ne v0, v1, :cond_1

    .line 746
    return-void

    .line 748
    :cond_1
    const-string v0, "Final"

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->print_stack_map_table(Ljava/lang/String;)V

    .line 751
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 752
    const-string v2, "StackMapTable"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 753
    .local v0, "map_table":Lorg/checkerframework/org/apache/bcel/classfile/StackMap;
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->setStackMap([Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;)V

    .line 754
    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 755
    return-void
.end method

.method protected final fetch_current_stack_map_table(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;I)V
    .locals 0
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "java_class_version"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 684
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->set_current_stack_map_table(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;I)V

    .line 685
    return-void
.end method

.method protected final find_stack_map_equal(I)Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    .locals 3
    .param p1, "offset"    # I

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 251
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getByteCodeOffset()I

    move-result v1

    iget v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 253
    if-gt v1, p1, :cond_1

    .line 257
    if-ne v1, p1, :cond_0

    .line 258
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v1, v1, v0

    return-object v1

    .line 250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid StackMap offset 1"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid StackMap offset 2"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final find_stack_map_index_after(I)I
    .locals 4
    .param p1, "offset"    # I

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 322
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 323
    iget v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getByteCodeOffset()I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 324
    if-le v3, p1, :cond_0

    .line 325
    return v1

    .line 322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method protected final find_stack_map_index_before(I)I
    .locals 5
    .param p1, "offset"    # I

    .line 276
    iget v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->initial_locals_count:I

    iput v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 279
    iget v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getByteCodeOffset()I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 280
    if-lt v3, p1, :cond_1

    .line 281
    if-nez v1, :cond_0

    .line 283
    iput v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 284
    return v0

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getByteCodeOffset()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 289
    add-int/lit8 v0, v1, -0x1

    return v0

    .line 294
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getFrameType()I

    move-result v2

    .line 295
    .local v2, "frame_type":I
    const/16 v3, 0xfc

    if-lt v2, v3, :cond_2

    const/16 v3, 0xfe

    if-gt v2, v3, :cond_2

    .line 296
    iget v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    add-int/lit16 v4, v2, -0xfb

    add-int/2addr v3, v4

    iput v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    goto :goto_1

    .line 297
    :cond_2
    const/16 v3, 0xf8

    if-lt v2, v3, :cond_3

    const/16 v3, 0xfa

    if-gt v2, v3, :cond_3

    .line 298
    iget v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    rsub-int v4, v2, 0xfb

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    goto :goto_1

    .line 299
    :cond_3
    const/16 v3, 0xff

    if-ne v2, v3, :cond_4

    .line 300
    iget-object v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getNumberOfLocals()I

    move-result v3

    iput v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    .line 278
    .end local v2    # "frame_type":I
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v1    # "i":I
    :cond_5
    array-length v1, v2

    if-nez v1, :cond_6

    .line 306
    return v0

    .line 308
    :cond_6
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final fix_local_variable_table(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 20
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 1149
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v8

    .line 1150
    .local v8, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    const/4 v1, 0x0

    if-nez v8, :cond_0

    .line 1152
    iput v1, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->first_local_index:I

    .line 1153
    return-void

    .line 1157
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariables()[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v9

    .line 1162
    .local v9, "locals":[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    array-length v3, v9

    if-ge v2, v3, :cond_1

    .line 1163
    aget-object v3, v9, v2

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-object v4, v3

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    aput-object v3, v9, v2

    .line 1162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1167
    .end local v2    # "ii":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getArgumentTypes()[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v10

    .line 1170
    .local v10, "arg_types":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    const/4 v11, 0x0

    .line 1173
    .local v11, "offset":I
    const/4 v12, 0x0

    .line 1178
    .local v12, "loc_index":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxLocals()V

    .line 1179
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxLocals()I

    move-result v13

    .line 1181
    .local v13, "max_locals":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeLocalVariables()V

    .line 1183
    invoke-virtual {v7, v1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxLocals(I)V

    .line 1188
    array-length v2, v10

    iput v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->first_local_index:I

    .line 1190
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v2

    const-string v14, ", "

    const-string v15, ": "

    if-nez v2, :cond_2

    .line 1192
    aget-object v16, v9, v1

    .line 1193
    .local v16, "l":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v1

    .line 1194
    .local v1, "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1194
    const-string v4, "Added <this> %s%n"

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1197
    const/4 v12, 0x1

    .line 1198
    const/4 v11, 0x1

    .line 1199
    iget v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->first_local_index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->first_local_index:I

    .line 1203
    .end local v1    # "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .end local v16    # "l":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    :cond_2
    const/4 v1, 0x0

    move v6, v12

    move v12, v11

    move v11, v1

    .local v6, "loc_index":I
    .local v11, "ii":I
    .local v12, "offset":I
    :goto_1
    array-length v1, v10

    if-ge v11, v1, :cond_5

    .line 1206
    array-length v1, v9

    if-ge v6, v1, :cond_4

    aget-object v1, v9, v6

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v1

    if-eq v12, v1, :cond_3

    move/from16 v18, v6

    goto :goto_2

    .line 1211
    :cond_3
    aget-object v16, v9, v6

    .line 1212
    .restart local v16    # "l":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v4

    const/4 v5, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move/from16 v18, v6

    .end local v6    # "loc_index":I
    .local v18, "loc_index":I
    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v1

    .line 1213
    .restart local v1    # "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    add-int/lit8 v6, v18, 0x1

    .end local v18    # "loc_index":I
    .restart local v6    # "loc_index":I
    goto :goto_3

    .line 1206
    .end local v1    # "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .end local v16    # "l":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    :cond_4
    move/from16 v18, v6

    .line 1209
    .end local v6    # "loc_index":I
    .restart local v18    # "loc_index":I
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$hidden$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v10, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v1

    move/from16 v6, v18

    .line 1215
    .end local v18    # "loc_index":I
    .restart local v1    # "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .restart local v6    # "loc_index":I
    :goto_3
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1217
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1215
    const-string v4, "Added param  %s%n"

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1218
    aget-object v2, v10, v11

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    add-int/2addr v12, v2

    .line 1203
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .end local v1    # "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    :cond_5
    move/from16 v18, v6

    .line 1226
    .end local v6    # "loc_index":I
    .end local v11    # "ii":I
    .restart local v18    # "loc_index":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariables()[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v11

    .line 1227
    .local v11, "initial_locals":[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    array-length v1, v11

    iput v1, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->initial_locals_count:I

    .line 1228
    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iput-object v1, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->initial_type_list:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 1229
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_4
    iget v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->initial_locals_count:I

    if-ge v1, v2, :cond_6

    .line 1230
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->initial_type_list:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    aget-object v3, v11, v1

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->generate_StackMapType_from_Type(Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1229
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1242
    .end local v1    # "ii":I
    :cond_6
    iget v1, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->first_local_index:I

    move v6, v12

    move v12, v1

    .local v6, "offset":I
    .local v12, "ii":I
    :goto_5
    array-length v1, v9

    if-ge v12, v1, :cond_8

    .line 1243
    aget-object v16, v9, v12

    .line 1244
    .restart local v16    # "l":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v1

    if-le v1, v6, :cond_7

    .line 1248
    invoke-virtual {v0, v7, v6}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->gen_temp_locals(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;I)I

    move-result v1

    .line 1249
    .end local v6    # "offset":I
    .local v1, "offset":I
    add-int/lit8 v12, v12, -0x1

    move v6, v1

    goto :goto_6

    .line 1251
    .end local v1    # "offset":I
    .restart local v6    # "offset":I
    :cond_7
    nop

    .line 1252
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v17

    move-object/from16 v1, p1

    move/from16 v19, v6

    .end local v6    # "offset":I
    .local v19, "offset":I
    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v1

    .line 1253
    .local v1, "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1255
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1253
    const-string v4, "Added local  %s%n"

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1256
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    move v6, v2

    .line 1242
    .end local v1    # "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .end local v19    # "offset":I
    .restart local v6    # "offset":I
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .end local v16    # "l":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    :cond_8
    move/from16 v19, v6

    .line 1261
    .end local v12    # "ii":I
    :goto_7
    if-ge v6, v13, :cond_9

    .line 1262
    invoke-virtual {v0, v7, v6}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->gen_temp_locals(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;I)I

    move-result v6

    goto :goto_7

    .line 1266
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxLocals()V

    .line 1267
    return-void
.end method

.method protected final gen_temp_locals(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;I)I
    .locals 24
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "offset"    # I

    .line 389
    move-object/from16 v0, p0

    move/from16 v7, p2

    const/4 v1, 0x0

    .line 390
    .local v1, "live_start":I
    const/4 v2, 0x0

    .line 391
    .local v2, "live_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v8

    .line 392
    .local v8, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 395
    const/4 v3, 0x0

    .line 396
    .local v3, "locals_offset_height":I
    const/4 v4, -0x1

    .line 398
    .local v4, "byte_code_offset":I
    const/4 v5, 0x3

    .line 400
    .local v5, "min_size":I
    iget v6, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->initial_locals_count:I

    iput v6, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    .line 401
    new-array v6, v6, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 402
    .local v6, "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    const/4 v9, 0x0

    .local v9, "ii":I
    :goto_0
    iget v10, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    if-ge v9, v10, :cond_0

    .line 403
    iget-object v10, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->initial_type_list:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    aget-object v11, v10, v9

    aput-object v11, v6, v9

    .line 404
    aget-object v10, v10, v9

    invoke-virtual {v0, v10}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->getSize(Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;)I

    move-result v10

    add-int/2addr v3, v10

    .line 402
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 408
    .end local v9    # "ii":I
    :cond_0
    iget-object v9, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v10, v9

    move v12, v1

    move-object v13, v2

    move v14, v3

    move v15, v4

    const/4 v4, 0x0

    move-object/from16 v23, v6

    move v6, v5

    move-object/from16 v5, v23

    .end local v1    # "live_start":I
    .end local v2    # "live_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v3    # "locals_offset_height":I
    .end local v4    # "byte_code_offset":I
    .local v5, "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .local v6, "min_size":I
    .local v12, "live_start":I
    .local v13, "live_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .local v14, "locals_offset_height":I
    .local v15, "byte_code_offset":I
    :goto_1
    const-string v3, "Added local  %s, %d, %d : %s, %s%n"

    const-string v1, "DaIkOnTeMp"

    if-ge v4, v10, :cond_d

    aget-object v16, v9, v4

    .line 409
    .local v16, "smte":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getFrameType()I

    move-result v2

    .line 410
    .local v2, "frame_type":I
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getByteCodeOffset()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    add-int v15, v15, v17

    .line 412
    const/16 v11, 0xfc

    if-lt v2, v11, :cond_2

    const/16 v11, 0xfe

    if-gt v2, v11, :cond_2

    .line 414
    iget v11, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    add-int/2addr v11, v2

    add-int/lit16 v11, v11, -0xfb

    .line 415
    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 416
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getTypesOfLocals()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v11

    move-object/from16 v18, v3

    array-length v3, v11

    move/from16 v19, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_1

    move/from16 v20, v3

    aget-object v3, v11, v4

    .line 417
    .local v3, "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    move/from16 v21, v6

    .end local v6    # "min_size":I
    .local v21, "min_size":I
    iget v6, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    move-object/from16 v22, v9

    add-int/lit8 v9, v6, 0x1

    iput v9, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    aput-object v3, v5, v6

    .line 418
    invoke-virtual {v0, v3}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->getSize(Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;)I

    move-result v6

    add-int/2addr v14, v6

    .line 416
    .end local v3    # "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v20

    move/from16 v6, v21

    move-object/from16 v9, v22

    goto :goto_2

    .end local v21    # "min_size":I
    .restart local v6    # "min_size":I
    :cond_1
    move/from16 v21, v6

    move-object/from16 v22, v9

    .end local v6    # "min_size":I
    .restart local v21    # "min_size":I
    move/from16 v20, v2

    move-object v9, v5

    goto/16 :goto_5

    .line 412
    .end local v21    # "min_size":I
    .restart local v6    # "min_size":I
    :cond_2
    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v21, v6

    move-object/from16 v22, v9

    .line 420
    .end local v6    # "min_size":I
    .restart local v21    # "min_size":I
    const/16 v3, 0xf8

    if-lt v2, v3, :cond_4

    const/16 v3, 0xfa

    if-gt v2, v3, :cond_4

    .line 421
    rsub-int v3, v2, 0xfb

    .line 422
    .local v3, "number_to_chop":I
    :goto_3
    if-lez v3, :cond_3

    .line 423
    iget v4, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    aget-object v4, v5, v4

    invoke-virtual {v0, v4}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->getSize(Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;)I

    move-result v4

    sub-int/2addr v14, v4

    .line 424
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 426
    :cond_3
    iget v4, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 427
    .end local v5    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .local v3, "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    move/from16 v20, v2

    move-object v9, v3

    goto :goto_5

    .end local v3    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .restart local v5    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    :cond_4
    const/16 v3, 0xff

    if-ne v2, v3, :cond_6

    .line 428
    const/4 v3, 0x0

    .line 429
    .end local v14    # "locals_offset_height":I
    .local v3, "locals_offset_height":I
    const/4 v9, 0x0

    iput v9, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    .line 430
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getNumberOfLocals()I

    move-result v4

    new-array v4, v4, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 431
    .end local v5    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .local v4, "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getTypesOfLocals()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v5

    array-length v6, v5

    move v11, v9

    :goto_4
    if-ge v11, v6, :cond_5

    aget-object v14, v5, v11

    .line 432
    .local v14, "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    iget v9, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    move/from16 v20, v2

    .end local v2    # "frame_type":I
    .local v20, "frame_type":I
    add-int/lit8 v2, v9, 0x1

    iput v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->number_active_locals:I

    aput-object v14, v4, v9

    .line 433
    invoke-virtual {v0, v14}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->getSize(Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;)I

    move-result v2

    add-int/2addr v3, v2

    .line 431
    .end local v14    # "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v20

    const/4 v9, 0x0

    goto :goto_4

    .end local v20    # "frame_type":I
    .restart local v2    # "frame_type":I
    :cond_5
    move/from16 v20, v2

    .end local v2    # "frame_type":I
    .restart local v20    # "frame_type":I
    move v14, v3

    move-object v9, v4

    goto :goto_5

    .line 427
    .end local v3    # "locals_offset_height":I
    .end local v4    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .end local v20    # "frame_type":I
    .restart local v2    # "frame_type":I
    .restart local v5    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .local v14, "locals_offset_height":I
    :cond_6
    move/from16 v20, v2

    .end local v2    # "frame_type":I
    .restart local v20    # "frame_type":I
    move-object v9, v5

    .line 443
    .end local v5    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .local v9, "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    :goto_5
    if-nez v12, :cond_b

    .line 445
    if-ge v7, v14, :cond_a

    .line 446
    move v1, v15

    .line 447
    .end local v12    # "live_start":I
    .restart local v1    # "live_start":I
    const/4 v2, 0x0

    .line 448
    .local v2, "running_offset":I
    array-length v3, v9

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_8

    aget-object v5, v9, v4

    .line 449
    .local v5, "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    if-ne v2, v7, :cond_7

    .line 450
    invoke-virtual {v0, v5}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->generate_Type_from_StackMapType(Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v13

    .line 451
    goto :goto_7

    .line 453
    :cond_7
    invoke-virtual {v0, v5}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->getSize(Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;)I

    move-result v6

    add-int/2addr v2, v6

    .line 448
    .end local v5    # "smt":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 455
    :cond_8
    :goto_7
    if-nez v13, :cond_9

    .line 458
    const/4 v1, 0x0

    .line 460
    .end local v2    # "running_offset":I
    :cond_9
    move v12, v1

    move/from16 v20, v10

    move/from16 v18, v19

    move/from16 v6, v21

    move-object/from16 v19, v9

    goto/16 :goto_9

    .line 445
    .end local v1    # "live_start":I
    .restart local v12    # "live_start":I
    :cond_a
    move/from16 v20, v10

    move/from16 v18, v19

    move/from16 v10, v21

    move-object/from16 v19, v9

    goto/16 :goto_8

    .line 463
    :cond_b
    if-lt v7, v14, :cond_c

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-virtual {v8, v12}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    .line 471
    invoke-virtual {v8, v15}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    .line 466
    move-object/from16 v1, p1

    move/from16 v11, v20

    .end local v20    # "frame_type":I
    .local v11, "frame_type":I
    move-object/from16 v4, v18

    move-object v3, v13

    move/from16 v18, v19

    move-object/from16 v19, v9

    move-object v9, v4

    .end local v9    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .local v19, "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    move/from16 v4, p2

    move/from16 v20, v10

    move/from16 v10, v21

    .end local v21    # "min_size":I
    .local v10, "min_size":I
    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v1

    .line 472
    .local v1, "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    .line 474
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 475
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 476
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 477
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v6

    .line 478
    move/from16 v21, v11

    .end local v11    # "frame_type":I
    .local v21, "frame_type":I
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v11

    filled-new-array {v3, v4, v5, v6, v11}, [Ljava/lang/Object;

    move-result-object v3

    .line 472
    invoke-virtual {v2, v9, v3}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v13}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 481
    .end local v10    # "min_size":I
    .local v2, "min_size":I
    const/4 v3, 0x0

    .line 482
    .end local v12    # "live_start":I
    .local v3, "live_start":I
    const/4 v4, 0x0

    move v6, v2

    move v12, v3

    move-object v13, v4

    .end local v13    # "live_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .local v4, "live_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    goto :goto_9

    .line 463
    .end local v1    # "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .end local v2    # "min_size":I
    .end local v3    # "live_start":I
    .end local v4    # "live_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v19    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .restart local v9    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .restart local v12    # "live_start":I
    .restart local v13    # "live_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .restart local v20    # "frame_type":I
    .local v21, "min_size":I
    :cond_c
    move/from16 v18, v19

    move-object/from16 v19, v9

    move/from16 v23, v20

    move/from16 v20, v10

    move/from16 v10, v21

    move/from16 v21, v23

    .line 408
    .end local v9    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .end local v16    # "smte":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    .end local v20    # "frame_type":I
    .end local v21    # "min_size":I
    .restart local v10    # "min_size":I
    .restart local v19    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    :goto_8
    move v6, v10

    .end local v10    # "min_size":I
    .restart local v6    # "min_size":I
    :goto_9
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v5, v19

    move/from16 v10, v20

    move-object/from16 v9, v22

    goto/16 :goto_1

    .line 488
    .end local v19    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .local v5, "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    :cond_d
    move-object v9, v3

    move v10, v6

    .end local v6    # "min_size":I
    .restart local v10    # "min_size":I
    if-eqz v12, :cond_e

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-virtual {v8, v12}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    const/4 v11, 0x0

    .line 491
    move-object/from16 v1, p1

    move-object v3, v13

    move/from16 v4, p2

    move-object/from16 v19, v5

    .end local v5    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .restart local v19    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    move-object v5, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v1

    .line 493
    .restart local v1    # "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    .line 495
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 496
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 497
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 498
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v6

    .line 499
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v11

    filled-new-array {v3, v4, v5, v6, v11}, [Ljava/lang/Object;

    move-result-object v3

    .line 493
    invoke-virtual {v2, v9, v3}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    invoke-virtual {v13}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .end local v10    # "min_size":I
    .restart local v6    # "min_size":I
    goto :goto_a

    .line 502
    .end local v1    # "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .end local v6    # "min_size":I
    .end local v19    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .restart local v5    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .restart local v10    # "min_size":I
    :cond_e
    move-object/from16 v19, v5

    .end local v5    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .restart local v19    # "types_of_active_locals":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    const/4 v2, 0x3

    if-ne v10, v2, :cond_10

    .line 508
    const/4 v2, -0x1

    if-ne v15, v2, :cond_f

    .line 510
    const/4 v2, 0x0

    move v15, v2

    .line 512
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 514
    invoke-virtual {v8, v15}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->findHandle(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    const/4 v6, 0x0

    .line 513
    move-object/from16 v1, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v1

    .line 515
    .restart local v1    # "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    .line 517
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 518
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 519
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 520
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v6

    .line 521
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v11

    filled-new-array {v3, v4, v5, v6, v11}, [Ljava/lang/Object;

    move-result-object v3

    .line 515
    invoke-virtual {v2, v9, v3}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getSize()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .end local v10    # "min_size":I
    .restart local v6    # "min_size":I
    goto :goto_a

    .line 502
    .end local v1    # "new_lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .end local v6    # "min_size":I
    .restart local v10    # "min_size":I
    :cond_10
    move v6, v10

    .line 525
    .end local v10    # "min_size":I
    .restart local v6    # "min_size":I
    :goto_a
    add-int v1, v7, v6

    return v1
.end method

.method protected final generate_StackMapType_from_Type(Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .locals 4
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 786
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 809
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :pswitch_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(BILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v0

    .line 801
    :pswitch_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 802
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->typeToClassGetName(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(BILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 801
    return-object v0

    .line 798
    :pswitch_3
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(BILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v0

    .line 796
    :pswitch_4
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(BILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v0

    .line 794
    :pswitch_5
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(BILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v0

    .line 792
    :pswitch_6
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(BILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final generate_Type_from_StackMapType(Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 3
    .param p1, "smt"    # Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 821
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 834
    :pswitch_0
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 835
    goto :goto_0

    .line 832
    :pswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v0

    .line 830
    :pswitch_2
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 828
    :pswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 826
    :pswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 824
    :pswitch_5
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 835
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid StackMapType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getType()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final getSize(Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;)I
    .locals 1
    .param p1, "smt"    # Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 845
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 850
    const/4 v0, 0x1

    return v0

    .line 848
    :pswitch_0
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final get_attribute_name(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)Ljava/lang/String;
    .locals 3
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 148
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getNameIndex()I

    move-result v0

    .line 149
    .local v0, "con_index":I
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    .line 150
    .local v1, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "att_name":Ljava/lang/String;
    return-object v2
.end method

.method protected final get_local_variable_type_table_attribute(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 5
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 200
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getCodeAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 201
    .local v3, "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {p0, v3}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->is_local_variable_type_table(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    return-object v3

    .line 200
    .end local v3    # "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final get_stack_map_table_attribute(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 5
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 184
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getCodeAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 185
    .local v3, "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {p0, v3}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->is_stack_map_table(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    return-object v3

    .line 184
    .end local v3    # "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final is_local_variable_type_table(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)Z
    .locals 2
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->get_attribute_name(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final is_stack_map_table(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)Z
    .locals 2
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->get_attribute_name(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackMapTable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final modify_stack_maps_for_switches(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V
    .locals 7
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 346
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->needStackMap:Z

    if-nez v0, :cond_0

    .line 347
    return-void

    .line 351
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 354
    :goto_0
    if-eqz p1, :cond_4

    .line 355
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    .line 356
    .local v0, "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v1

    .line 358
    .local v1, "opcode":S
    const/16 v2, 0xaa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xab

    if-ne v1, v2, :cond_2

    .line 359
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v2

    .line 360
    .local v2, "current_offset":I
    invoke-virtual {p0, v2}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->find_stack_map_index_after(I)I

    move-result v3

    .line 361
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 364
    iget-object v4, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v4, v4, v3

    .line 365
    .local v4, "stack_map":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getLength()I

    move-result v5

    add-int/2addr v5, v2

    iget v6, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    sub-int/2addr v5, v6

    .line 366
    .local v5, "delta":I
    if-eqz v5, :cond_2

    .line 367
    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->updateByteCodeOffset(I)V

    .line 375
    .end local v2    # "current_offset":I
    .end local v3    # "index":I
    .end local v4    # "stack_map":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    .end local v5    # "delta":I
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object p1

    goto :goto_0

    .line 362
    .restart local v2    # "current_offset":I
    .restart local v3    # "index":I
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid StackMap offset 3"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 377
    .end local v0    # "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v1    # "opcode":S
    .end local v2    # "current_offset":I
    .end local v3    # "index":I
    :cond_4
    return-void
.end method

.method protected final print_stack_map_table(Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 726
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%nStackMap(%s) %s items:%n"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 728
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 729
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getByteCodeOffset()I

    move-result v1

    iget v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 730
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v3, v3, v0

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "@%03d %s %n"

    invoke-virtual {v2, v3, v1}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected final remove_local_variable_type_table(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 0
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 216
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeLocalVariableTypeTable()V

    .line 217
    return-void
.end method

.method protected final set_current_stack_map_table(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;I)V
    .locals 4
    .param p1, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "java_class_version"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "stack_map_table"
        }
    .end annotation

    .line 699
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->get_stack_map_table_attribute(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->smta:Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    .line 700
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->getStackMap()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 703
    iput-boolean v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->needStackMap:Z

    .line 705
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->smta:Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    .line 707
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->getTag()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->smta:Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->getLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->smta:Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->getNameIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 705
    const-string v2, "Attribute tag: %s length: %d nameIndex: %d%n"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->smta:Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    goto :goto_0

    .line 711
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->empty_stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 712
    const/16 v0, 0x32

    if-le p2, v0, :cond_1

    .line 713
    iput-boolean v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->needStackMap:Z

    .line 716
    :cond_1
    :goto_0
    const-string v0, "Original"

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->print_stack_map_table(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method protected final update_full_frame_stack_map_entries(ILorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;)V
    .locals 7
    .param p1, "offset"    # I
    .param p2, "type_new_var"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p3, "locals"    # [Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 866
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 867
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getFrameType()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_4

    .line 869
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getNumberOfLocals()I

    move-result v1

    .line 870
    .local v1, "num_locals":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 871
    .local v2, "new_local_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    iget-object v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getTypesOfLocals()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v3

    .line 875
    .local v3, "old_local_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 876
    array-length v5, p3

    if-lt v4, v5, :cond_0

    .line 878
    goto :goto_2

    .line 880
    :cond_0
    aget-object v5, p3, v4

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v5

    if-lt v5, p1, :cond_1

    .line 882
    goto :goto_2

    .line 884
    :cond_1
    aget-object v5, v3, v4

    aput-object v5, v2, v4

    .line 875
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 886
    :cond_2
    :goto_2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->generate_StackMapType_from_Type(Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v6

    aput-object v6, v2, v4

    .line 887
    :goto_3
    if-gt v5, v1, :cond_3

    .line 888
    add-int/lit8 v4, v5, -0x1

    aget-object v4, v3, v4

    aput-object v4, v2, v5

    .line 889
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 892
    :cond_3
    iget-object v4, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->setTypesOfLocals([Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;)V

    .line 866
    .end local v1    # "num_locals":I
    .end local v2    # "new_local_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .end local v3    # "old_local_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .end local v5    # "index":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method protected final update_stack_map_offset(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "delta"    # I

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 230
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getByteCodeOffset()I

    move-result v1

    iget v2, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->running_offset:I

    .line 232
    if-le v1, p1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->updateByteCodeOffset(I)V

    .line 236
    return-void

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected final update_uninitialized_NEW_offsets(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V
    .locals 6
    .param p1, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 617
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 619
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->uninitialized_NEW_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 620
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 621
    .local v2, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 622
    .local v3, "old_offset":I
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v4

    .line 623
    .local v4, "new_offset":I
    if-eq v3, v4, :cond_0

    .line 624
    invoke-direct {p0, v3, v4}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;->update_NEW_object_stack_map_entries(II)V

    .line 625
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/Integer;>;"
    .end local v2    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v3    # "old_offset":I
    .end local v4    # "new_offset":I
    :cond_0
    goto :goto_0

    .line 628
    :cond_1
    return-void
.end method
