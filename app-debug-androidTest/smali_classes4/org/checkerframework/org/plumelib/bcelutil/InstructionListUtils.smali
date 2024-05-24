.class public abstract Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;
.super Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;
.source "InstructionListUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/bcelutil/StackMapUtils;-><init>()V

    return-void
.end method

.method private print_il(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/String;)V
    .locals 8
    .param p1, "start"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "label"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_stack_map_table(Ljava/lang/String;)V

    .line 250
    move-object v0, p1

    .line 251
    .local v0, "tih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v0, :cond_1

    .line 252
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    const-string v2, "inst: %s %n"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->hasTargeters()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getTargeters()[Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 255
    .local v4, "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    iget-object v5, p0, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    const-string v6, "targeter: %s %n"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    .end local v4    # "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    .line 261
    .end local v0    # "tih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    return-void
.end method


# virtual methods
.method protected final append_inst(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V
    .locals 5
    .param p1, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .param p2, "inst"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 124
    instance-of v0, p2, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;

    if-eqz v0, :cond_0

    .line 125
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;

    .line 126
    .local v0, "ls":Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;->getMatchs()[I

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;->getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;-><init>([I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    .line 127
    .end local v0    # "ls":Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;
    goto :goto_0

    :cond_0
    instance-of v0, p2, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;

    if-eqz v0, :cond_1

    .line 128
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;

    .line 129
    .local v0, "ts":Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;->getMatchs()[I

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;->getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;-><init>([I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    .line 130
    .end local v0    # "ts":Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;
    goto :goto_0

    :cond_1
    instance-of v0, p2, Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;

    if-eqz v0, :cond_2

    .line 131
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;

    .line 132
    .local v0, "ifi":Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v1

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->createBranchInstruction(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    .line 133
    .end local v0    # "ifi":Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 136
    :goto_0
    return-void
.end method

.method protected final varargs build_il([Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .locals 4
    .param p1, "instructions"    # [Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 270
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>()V

    .line 271
    .local v0, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 272
    .local v3, "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {p0, v0, v3}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->append_inst(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    .line 271
    .end local v3    # "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return-object v0
.end method

.method protected final calculate_live_local_types(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;I)[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .locals 8
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "location"    # I

    .line 349
    const/4 v0, -0x1

    .line 350
    .local v0, "max_local_index":I
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxLocals()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 351
    .local v1, "local_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5, v3}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(BILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariables()[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 353
    .local v5, "lv":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v6

    if-lt p2, v6, :cond_1

    .line 354
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getLiveToEnd()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v6

    if-ge p2, v6, :cond_1

    .line 355
    :cond_0
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v6

    .line 356
    .local v6, "i":I
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->generate_StackMapType_from_Type(Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v7

    aput-object v7, v1, v6

    .line 357
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 352
    .end local v5    # "lv":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .end local v6    # "i":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 361
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    return-object v2
.end method

.method protected final calculate_live_stack_types(Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;)[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .locals 4
    .param p1, "stack"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    .line 372
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v0

    .line 373
    .local v0, "ss":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 374
    .local v1, "stack_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 375
    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->generate_StackMapType_from_Type(Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v3

    aput-object v3, v1, v2

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v2    # "ii":I
    :cond_0
    return-object v1
.end method

.method protected final delete_instructions(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 11
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "start_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p3, "end_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 290
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    .line 291
    .local v0, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    invoke-virtual {p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    .line 292
    .local v1, "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-eqz v1, :cond_7

    .line 296
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 297
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v2

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 300
    .local v2, "size_deletion":I
    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->redirectBranches(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 303
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->hasTargeters()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 304
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getTargeters()[Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 305
    .local v6, "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;

    if-eqz v7, :cond_0

    .line 306
    invoke-interface {v6, p2, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    goto :goto_2

    .line 307
    :cond_0
    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    if-eqz v7, :cond_1

    .line 308
    invoke-interface {v6, p2, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    goto :goto_2

    .line 309
    :cond_1
    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    if-eqz v7, :cond_5

    .line 310
    move-object v7, v6

    check-cast v7, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    .line 311
    .local v7, "exc":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getStartPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v8

    if-ne v8, p2, :cond_2

    invoke-virtual {v7, p2, v1}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    goto :goto_1

    .line 312
    :cond_2
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getEndPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v8

    if-ne v8, p2, :cond_3

    invoke-virtual {v7, p2, v1}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    goto :goto_1

    .line 313
    :cond_3
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getHandlerPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v8

    if-ne v8, p2, :cond_4

    invoke-virtual {v7, v1}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setHandlerPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    goto :goto_1

    .line 314
    :cond_4
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Malformed CodeException: %s%n"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 315
    .end local v7    # "exc":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    :goto_1
    goto :goto_2

    .line 316
    :cond_5
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "unexpected target %s%n"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 304
    .end local v6    # "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 323
    :cond_6
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->delete(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    nop

    .line 328
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 331
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->update_stack_map_offset(II)V

    .line 336
    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->modify_stack_maps_for_switches(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V

    .line 337
    return-void

    .line 324
    :catch_0
    move-exception v3

    .line 325
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Can\'t delete instruction list"

    invoke-direct {v4, v5, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 293
    .end local v2    # "size_deletion":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot delete last instruction."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final insert_at_method_start(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V
    .locals 3
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "new_il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 147
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    .line 148
    .local v0, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    if-nez v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, p2, v2}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->insert_before_handle(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;Z)V

    .line 152
    return-void
.end method

.method protected final insert_before_handle(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;Z)V
    .locals 16
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p3, "new_il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .param p4, "redirect_branches"    # Z

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-nez v2, :cond_0

    .line 171
    return-void

    .line 175
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v3

    .line 176
    .local v3, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    if-nez v3, :cond_1

    .line 177
    return-void

    .line 180
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 181
    .local v4, "at_start":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 182
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    .line 183
    .local v6, "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v7

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v8

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getLength()I

    move-result v8

    add-int/2addr v7, v8

    .line 185
    .local v7, "new_length":I
    const-string v8, "Before insert_inst"

    invoke-virtual {v0, v8}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_stack_map_table(Ljava/lang/String;)V

    .line 186
    iget-object v8, v0, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9, v2}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "  insert_inst: %d%n%s%n"

    invoke-virtual {v8, v10, v9}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-virtual {v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v8

    .line 190
    .local v8, "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 192
    if-eqz p4, :cond_3

    .line 194
    invoke-virtual {v3, v1, v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->redirectBranches(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 198
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->hasTargeters()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 199
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getTargeters()[Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    move-result-object v9

    array-length v10, v9

    :goto_1
    if-ge v5, v10, :cond_9

    aget-object v11, v9, v5

    .line 200
    .local v11, "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    instance-of v12, v11, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;

    if-eqz v12, :cond_4

    if-eqz p4, :cond_4

    .line 201
    invoke-interface {v11, v1, v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    goto :goto_3

    .line 202
    :cond_4
    instance-of v12, v11, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    if-eqz v12, :cond_5

    .line 203
    move-object v12, v11

    check-cast v12, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 209
    .local v12, "lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v13

    if-ne v13, v1, :cond_8

    if-eqz v4, :cond_8

    .line 210
    invoke-interface {v11, v1, v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    goto :goto_2

    .line 212
    .end local v12    # "lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    :cond_5
    instance-of v12, v11, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    if-eqz v12, :cond_8

    if-eqz p4, :cond_8

    .line 213
    move-object v12, v11

    check-cast v12, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    .line 214
    .local v12, "exc":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getStartPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v13

    if-ne v13, v1, :cond_6

    invoke-virtual {v12, v1, v8}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    goto :goto_3

    .line 216
    :cond_6
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getHandlerPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v13

    if-ne v13, v1, :cond_7

    invoke-virtual {v12, v8}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setHandlerPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    goto :goto_3

    .line 217
    :cond_7
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "Malformed CodeException: %s%n"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_3

    .line 212
    .end local v12    # "exc":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    :cond_8
    :goto_2
    nop

    .line 199
    .end local v11    # "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 231
    :cond_9
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 232
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v5

    xor-int/lit8 v9, p4, 0x1

    sub-int/2addr v5, v9

    invoke-virtual {v0, v5, v7}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->update_stack_map_offset(II)V

    .line 234
    const-string v5, "After update_stack_map_offset"

    invoke-direct {v0, v8, v5}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_il(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v8, v3}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->modify_stack_maps_for_switches(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V

    .line 239
    return-void
.end method

.method protected final replace_instructions(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V
    .locals 37
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .param p3, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p4, "new_il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 392
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    if-nez v5, :cond_0

    .line 393
    return-void

    .line 398
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getLength()I

    move-result v6

    .line 400
    .local v6, "old_length":I
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 401
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    .line 402
    .local v7, "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v0

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v8

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getLength()I

    move-result v8

    add-int/2addr v0, v8

    .line 404
    .local v0, "new_length":I
    iget-object v8, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v4, v9, v5}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "  replace_inst: %s %d%n%s%n"

    invoke-virtual {v8, v10, v9}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    const-string v8, "Before replace_inst"

    invoke-direct {v1, v4, v8}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_il(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getLength()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    .line 409
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v8

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setInstruction(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    .line 410
    if-ne v6, v0, :cond_1

    .line 412
    return-void

    .line 414
    :cond_1
    const-string v8, "replace_inst_with_single_inst B"

    invoke-virtual {v1, v8}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_stack_map_table(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 416
    move-object/from16 v8, p3

    .line 418
    .local v8, "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v10

    sub-int v11, v0, v6

    invoke-virtual {v1, v10, v11}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->update_stack_map_offset(II)V

    .line 423
    invoke-virtual {v1, v8, v3}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->modify_stack_maps_for_switches(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V

    move/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_e

    .line 425
    .end local v8    # "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_2
    const-string v8, "replace_inst_with_inst_list B"

    invoke-virtual {v1, v8}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_stack_map_table(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v8

    .line 429
    .restart local v8    # "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual/range {p2 .. p4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v11

    .line 430
    .local v11, "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 434
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v12

    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v12

    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v13

    sub-int/2addr v12, v13

    .line 437
    .end local v0    # "new_length":I
    .local v12, "new_length":I
    invoke-virtual {v3, v4, v11}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->redirectBranches(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 439
    const-string v0, "replace_inst #1"

    invoke-direct {v1, v8, v0}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_il(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->hasTargeters()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 443
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getTargeters()[Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    move-result-object v0

    array-length v13, v0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_9

    aget-object v15, v0, v14

    .line 444
    .local v15, "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    instance-of v10, v15, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;

    if-eqz v10, :cond_3

    .line 445
    invoke-interface {v15, v4, v11}, Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    move-object/from16 v16, v0

    goto :goto_2

    .line 446
    :cond_3
    instance-of v10, v15, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    if-eqz v10, :cond_4

    .line 447
    invoke-interface {v15, v4, v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    move-object/from16 v16, v0

    goto :goto_2

    .line 448
    :cond_4
    instance-of v10, v15, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    if-eqz v10, :cond_8

    .line 449
    move-object v10, v15

    check-cast v10, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    .line 450
    .local v10, "exc":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getStartPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v9

    if-ne v9, v4, :cond_5

    invoke-virtual {v10, v4, v11}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    move-object/from16 v16, v0

    goto :goto_1

    .line 451
    :cond_5
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getEndPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v9

    if-ne v9, v4, :cond_6

    invoke-virtual {v10, v4, v8}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    move-object/from16 v16, v0

    goto :goto_1

    .line 452
    :cond_6
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getHandlerPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v9

    if-ne v9, v4, :cond_7

    invoke-virtual {v10, v11}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setHandlerPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    move-object/from16 v16, v0

    goto :goto_1

    .line 453
    :cond_7
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v16, v0

    const-string v0, "Malformed CodeException: %s%n"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v0, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 454
    .end local v10    # "exc":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    :goto_1
    goto :goto_2

    .line 455
    :cond_8
    move-object/from16 v16, v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "unexpected target %s%n"

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 443
    .end local v15    # "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p3

    move-object/from16 v0, v16

    const/4 v10, 0x1

    goto :goto_0

    .line 460
    :cond_9
    const-string v0, "replace_inst #2"

    invoke-direct {v1, v8, v0}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_il(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/String;)V

    .line 464
    :try_start_0
    invoke-virtual/range {p2 .. p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->delete(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    nop

    .line 470
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions()V

    .line 472
    const-string v0, "replace_inst #3"

    invoke-direct {v1, v8, v0}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_il(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/String;)V

    .line 474
    iget-boolean v0, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->needStackMap:Z

    if-eqz v0, :cond_1a

    .line 478
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v0

    sub-int v4, v12, v6

    invoke-virtual {v1, v0, v4}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->update_stack_map_offset(II)V

    .line 483
    invoke-virtual {v1, v8, v3}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->modify_stack_maps_for_switches(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V

    .line 484
    const-string v0, "replace_inst_with_inst_list C"

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_stack_map_table(Ljava/lang/String;)V

    .line 490
    move-object v0, v11

    .line 491
    .local v0, "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v4, 0x0

    .line 492
    .local v4, "target_count":I
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 497
    .local v9, "target_offsets":[I
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 501
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v8

    .line 502
    :goto_3
    if-eq v0, v8, :cond_c

    .line 503
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->hasTargeters()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 504
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getTargeters()[Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    move-result-object v10

    array-length v13, v10

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_b

    aget-object v15, v10, v14

    .line 505
    .restart local v15    # "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    instance-of v3, v15, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v3, :cond_a

    .line 506
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "target_count":I
    .local v3, "target_count":I
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v16

    aput v16, v9, v4

    .line 507
    iget-object v4, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    move/from16 v16, v3

    .end local v3    # "target_count":I
    .local v16, "target_count":I
    const-string v3, "New branch target: %s %n"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v4, v16

    .line 504
    .end local v15    # "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    .end local v16    # "target_count":I
    .restart local v4    # "target_count":I
    :cond_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    goto :goto_4

    .line 511
    :cond_b
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    goto :goto_3

    .line 514
    :cond_c
    const-string v3, "replace_inst #4"

    invoke-direct {v1, v8, v3}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_il(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/String;)V

    .line 516
    if-eqz v4, :cond_19

    .line 519
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v3

    .line 520
    .local v3, "cur_loc":I
    iget-object v5, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v5, v5

    .line 521
    .local v5, "orig_size":I
    add-int v10, v5, v4

    new-array v10, v10, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 524
    .local v10, "new_stack_map_table":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxStack()V

    .line 525
    invoke-virtual/range {p0 .. p1}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->bcel_calc_stack_types(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;

    move-result-object v13

    .line 532
    .local v13, "stack_types":Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;
    const/4 v14, 0x0

    aget v15, v9, v14

    invoke-virtual {v1, v15}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->find_stack_map_index_before(I)I

    move-result v14

    const/4 v15, 0x1

    add-int/2addr v14, v15

    .line 568
    .local v14, "new_index":I
    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->calculate_live_local_types(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;I)[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v15

    .line 569
    .local v15, "local_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    move-object/from16 v16, v0

    .end local v0    # "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .local v16, "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    array-length v0, v15

    .line 574
    .local v0, "local_map_index":I
    move/from16 v17, v3

    .end local v3    # "cur_loc":I
    .local v17, "cur_loc":I
    iget v3, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->number_active_locals:I

    sub-int v3, v0, v3

    .line 576
    .local v3, "number_extra_locals":I
    if-ltz v3, :cond_18

    .line 580
    move/from16 v18, v6

    .end local v6    # "old_length":I
    .local v18, "old_length":I
    iget-object v6, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    move-object/from16 v19, v7

    const/4 v7, 0x0

    .end local v7    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .local v19, "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-static {v6, v7, v10, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    const/4 v6, 0x0

    .line 583
    .local v6, "need_full_maps":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v4, :cond_e

    .line 584
    move-object/from16 v20, v8

    .end local v8    # "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .local v20, "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    aget v8, v9, v7

    invoke-virtual {v13, v8}, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->get(I)Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v8

    .line 585
    .local v8, "stack":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    move-object/from16 v21, v11

    .end local v11    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .local v21, "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v11, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    move/from16 v22, v12

    .end local v12    # "new_length":I
    .local v22, "new_length":I
    const-string v12, "stack: %s %n"

    move-object/from16 v23, v15

    .end local v15    # "local_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .local v23, "local_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v11, v12, v15}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    if-nez v3, :cond_d

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    if-nez v6, :cond_d

    .line 589
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v15

    invoke-virtual {v1, v15}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->generate_StackMapType_from_Type(Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v15

    .line 590
    .local v15, "stack_map_type0":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    move/from16 v30, v3

    .end local v3    # "number_extra_locals":I
    .local v30, "number_extra_locals":I
    new-array v3, v12, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    aput-object v15, v3, v11

    move-object/from16 v28, v3

    .line 591
    .local v28, "stack_map_types0":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    add-int v3, v14, v7

    new-instance v11, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    const/16 v25, 0x40

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-object v12, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 597
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v29

    move-object/from16 v24, v11

    invoke-direct/range {v24 .. v29}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v11, v10, v3

    .line 598
    .end local v15    # "stack_map_type0":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .end local v28    # "stack_map_types0":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    goto :goto_6

    .line 587
    .end local v30    # "number_extra_locals":I
    .restart local v3    # "number_extra_locals":I
    :cond_d
    move/from16 v30, v3

    .line 600
    .end local v3    # "number_extra_locals":I
    .restart local v30    # "number_extra_locals":I
    const/4 v3, 0x1

    .line 601
    .end local v6    # "need_full_maps":Z
    .local v3, "need_full_maps":Z
    add-int v6, v14, v7

    new-instance v11, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    const/16 v25, 0xff

    const/16 v26, 0x0

    aget v12, v9, v7

    .line 605
    invoke-virtual {v1, v2, v12}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->calculate_live_local_types(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;I)[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v27

    .line 606
    invoke-virtual {v1, v8}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->calculate_live_stack_types(Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;)[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v28

    iget-object v12, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 607
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v29

    move-object/from16 v24, v11

    invoke-direct/range {v24 .. v29}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v11, v10, v6

    move v6, v3

    .line 610
    .end local v3    # "need_full_maps":Z
    .restart local v6    # "need_full_maps":Z
    :goto_6
    add-int v3, v14, v7

    aget-object v3, v10, v3

    aget v11, v9, v7

    iget v12, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->running_offset:I

    const/4 v15, 0x1

    add-int/2addr v12, v15

    sub-int/2addr v11, v12

    invoke-virtual {v3, v11}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->updateByteCodeOffset(I)V

    .line 612
    aget v3, v9, v7

    iput v3, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->running_offset:I

    .line 583
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v20

    move-object/from16 v11, v21

    move/from16 v12, v22

    move-object/from16 v15, v23

    move/from16 v3, v30

    goto/16 :goto_5

    .end local v20    # "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v21    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v22    # "new_length":I
    .end local v23    # "local_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .end local v30    # "number_extra_locals":I
    .local v3, "number_extra_locals":I
    .local v8, "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v11    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v12    # "new_length":I
    .local v15, "local_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    :cond_e
    move/from16 v30, v3

    move-object/from16 v20, v8

    move-object/from16 v21, v11

    move/from16 v22, v12

    move-object/from16 v23, v15

    .line 616
    .end local v3    # "number_extra_locals":I
    .end local v7    # "i":I
    .end local v8    # "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v11    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v12    # "new_length":I
    .end local v15    # "local_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .restart local v20    # "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v21    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v22    # "new_length":I
    .restart local v23    # "local_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .restart local v30    # "number_extra_locals":I
    sub-int v3, v5, v14

    .line 617
    .local v3, "remainder":I
    if-lez v3, :cond_16

    move-object/from16 v7, v16

    .line 620
    .end local v16    # "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .local v7, "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_7
    if-eqz v7, :cond_14

    .line 621
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->hasTargeters()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 622
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getTargeters()[Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    move-result-object v8

    array-length v11, v8

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v11, :cond_12

    aget-object v15, v8, v12

    .line 623
    .local v15, "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    move/from16 v24, v5

    .end local v5    # "orig_size":I
    .local v24, "orig_size":I
    instance-of v5, v15, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v5, :cond_f

    .line 624
    iget-object v5, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v5, v5, v14

    .line 625
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v8

    add-int/lit8 v11, v4, -0x1

    aget v11, v9, v11

    sub-int/2addr v8, v11

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    iget-object v11, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v11, v11, v14

    .line 628
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getByteCodeOffset()I

    move-result v11

    sub-int/2addr v8, v11

    .line 624
    invoke-virtual {v5, v8}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->updateByteCodeOffset(I)V

    .line 629
    goto :goto_a

    .line 630
    :cond_f
    instance-of v5, v15, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    if-eqz v5, :cond_10

    .line 631
    move-object v5, v15

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    .line 632
    .local v5, "exc":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    move-object/from16 v16, v8

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getHandlerPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v8

    if-ne v8, v7, :cond_11

    .line 633
    iget-object v8, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v8, v8, v14

    .line 634
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v11

    add-int/lit8 v12, v4, -0x1

    aget v12, v9, v12

    sub-int/2addr v11, v12

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iget-object v12, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v12, v12, v14

    .line 637
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getByteCodeOffset()I

    move-result v12

    sub-int/2addr v11, v12

    .line 633
    invoke-virtual {v8, v11}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->updateByteCodeOffset(I)V

    .line 638
    goto :goto_a

    .line 630
    .end local v5    # "exc":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    :cond_10
    move-object/from16 v16, v8

    .line 622
    .end local v15    # "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    :cond_11
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v16

    move/from16 v5, v24

    goto :goto_8

    .end local v24    # "orig_size":I
    .local v5, "orig_size":I
    :cond_12
    move/from16 v24, v5

    .end local v5    # "orig_size":I
    .restart local v24    # "orig_size":I
    goto :goto_9

    .line 621
    .end local v24    # "orig_size":I
    .restart local v5    # "orig_size":I
    :cond_13
    move/from16 v24, v5

    .line 643
    .end local v5    # "orig_size":I
    .restart local v24    # "orig_size":I
    :goto_9
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    move/from16 v5, v24

    goto :goto_7

    .line 620
    .end local v24    # "orig_size":I
    .restart local v5    # "orig_size":I
    :cond_14
    move/from16 v24, v5

    .line 647
    .end local v5    # "orig_size":I
    .restart local v24    # "orig_size":I
    :goto_a
    if-eqz v6, :cond_15

    .line 649
    :goto_b
    if-lez v3, :cond_17

    .line 650
    iget-object v5, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v5, v5, v14

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getByteCodeOffset()I

    move-result v5

    .line 651
    .local v5, "stack_map_offset":I
    iget v8, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->running_offset:I

    add-int/2addr v8, v5

    const/4 v11, 0x1

    add-int/2addr v8, v11

    iput v8, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->running_offset:I

    .line 652
    iget v8, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->running_offset:I

    invoke-virtual {v13, v8}, Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;->get(I)Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v8

    .line 654
    .local v8, "stack":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    add-int v12, v14, v4

    new-instance v15, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    const/16 v32, 0xff

    iget v11, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->running_offset:I

    .line 658
    invoke-virtual {v1, v2, v11}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->calculate_live_local_types(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;I)[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v34

    .line 659
    invoke-virtual {v1, v8}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->calculate_live_stack_types(Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;)[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v35

    iget-object v11, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->pool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 660
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v36

    move-object/from16 v31, v15

    move/from16 v33, v5

    invoke-direct/range {v31 .. v36}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v15, v10, v12

    .line 661
    add-int/lit8 v14, v14, 0x1

    .line 662
    nop

    .end local v5    # "stack_map_offset":I
    add-int/lit8 v3, v3, -0x1

    .line 663
    goto :goto_b

    .line 665
    .end local v8    # "stack":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    :cond_15
    iget-object v5, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    add-int v8, v14, v4

    invoke-static {v5, v14, v10, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 617
    .end local v7    # "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v24    # "orig_size":I
    .local v5, "orig_size":I
    .restart local v16    # "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_16
    move/from16 v24, v5

    .end local v5    # "orig_size":I
    .restart local v24    # "orig_size":I
    move-object/from16 v7, v16

    .line 673
    .end local v16    # "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v7    # "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_17
    :goto_c
    iput-object v10, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->stack_map_table:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    goto :goto_d

    .line 576
    .end local v18    # "old_length":I
    .end local v19    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v20    # "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v21    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v22    # "new_length":I
    .end local v23    # "local_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .end local v24    # "orig_size":I
    .end local v30    # "number_extra_locals":I
    .local v3, "number_extra_locals":I
    .restart local v5    # "orig_size":I
    .local v6, "old_length":I
    .local v7, "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .local v8, "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v11    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v12    # "new_length":I
    .local v15, "local_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .restart local v16    # "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_18
    move/from16 v30, v3

    move/from16 v24, v5

    move/from16 v18, v6

    .end local v3    # "number_extra_locals":I
    .end local v5    # "orig_size":I
    .end local v6    # "old_length":I
    .restart local v18    # "old_length":I
    .restart local v24    # "orig_size":I
    .restart local v30    # "number_extra_locals":I
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid extra locals count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->number_active_locals:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 516
    .end local v10    # "new_stack_map_table":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    .end local v13    # "stack_types":Lorg/checkerframework/org/plumelib/bcelutil/StackTypes;
    .end local v14    # "new_index":I
    .end local v15    # "local_map_types":[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .end local v16    # "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v17    # "cur_loc":I
    .end local v18    # "old_length":I
    .end local v24    # "orig_size":I
    .end local v30    # "number_extra_locals":I
    .local v0, "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v6    # "old_length":I
    :cond_19
    move-object/from16 v16, v0

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v11

    move/from16 v22, v12

    .line 678
    .end local v0    # "nih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v4    # "target_count":I
    .end local v6    # "old_length":I
    .end local v7    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v8    # "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v9    # "target_offsets":[I
    .end local v11    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v12    # "new_length":I
    .restart local v18    # "old_length":I
    .restart local v19    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v20    # "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v22    # "new_length":I
    :goto_d
    move-object/from16 v8, v20

    move/from16 v0, v22

    goto :goto_e

    .line 474
    .end local v18    # "old_length":I
    .end local v19    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v20    # "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v22    # "new_length":I
    .restart local v6    # "old_length":I
    .restart local v7    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v8    # "new_end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v11    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v12    # "new_length":I
    :cond_1a
    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v21, v11

    move/from16 v22, v12

    .end local v6    # "old_length":I
    .end local v7    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v11    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v12    # "new_length":I
    .restart local v18    # "old_length":I
    .restart local v19    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v21    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v22    # "new_length":I
    move/from16 v0, v22

    .line 678
    .end local v21    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v22    # "new_length":I
    .local v0, "new_length":I
    :goto_e
    iget-object v3, v1, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->debug_instrument:Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;

    const-string v4, "%n"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/org/plumelib/bcelutil/SimpleLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    const-string v3, "replace_inst #5"

    invoke-direct {v1, v8, v3}, Lorg/checkerframework/org/plumelib/bcelutil/InstructionListUtils;->print_il(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/String;)V

    .line 680
    return-void

    .line 465
    .end local v0    # "new_length":I
    .end local v18    # "old_length":I
    .end local v19    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v6    # "old_length":I
    .restart local v7    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v11    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v12    # "new_length":I
    :catch_0
    move-exception v0

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v21, v11

    move/from16 v22, v12

    move-object v3, v0

    .end local v6    # "old_length":I
    .end local v7    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v11    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v12    # "new_length":I
    .restart local v18    # "old_length":I
    .restart local v19    # "end":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v21    # "new_start":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v22    # "new_length":I
    move-object v0, v3

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Can\'t delete instruction: %s at %s%n"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 467
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Can\'t delete instruction"

    invoke-direct {v3, v4, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
