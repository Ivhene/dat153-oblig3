.class public Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;
.super Ljava/lang/Object;
.source "BasicInterpreter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/Opcodes;
.implements Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 3
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value1"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p3, "value2"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 238
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 306
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :sswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 294
    :sswitch_1
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 283
    :sswitch_2
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->getType()Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    .line 284
    .local v0, "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 285
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getElementType()Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    return-object v1

    .line 287
    :cond_0
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v1

    .line 281
    .end local v0    # "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    :sswitch_3
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 261
    :sswitch_4
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 274
    :sswitch_5
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 254
    :sswitch_6
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_6
        0x2f -> :sswitch_5
        0x30 -> :sswitch_4
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x60 -> :sswitch_6
        0x61 -> :sswitch_5
        0x62 -> :sswitch_4
        0x63 -> :sswitch_3
        0x64 -> :sswitch_6
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x67 -> :sswitch_3
        0x68 -> :sswitch_6
        0x69 -> :sswitch_5
        0x6a -> :sswitch_4
        0x6b -> :sswitch_3
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x6e -> :sswitch_4
        0x6f -> :sswitch_3
        0x70 -> :sswitch_6
        0x71 -> :sswitch_5
        0x72 -> :sswitch_4
        0x73 -> :sswitch_3
        0x78 -> :sswitch_6
        0x79 -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_5
        0x7c -> :sswitch_6
        0x7d -> :sswitch_5
        0x7e -> :sswitch_6
        0x7f -> :sswitch_5
        0x80 -> :sswitch_6
        0x81 -> :sswitch_5
        0x82 -> :sswitch_6
        0x83 -> :sswitch_5
        0x94 -> :sswitch_1
        0x95 -> :sswitch_1
        0x96 -> :sswitch_1
        0x97 -> :sswitch_1
        0x98 -> :sswitch_1
        0x9f -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_0
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa6 -> :sswitch_0
        0xb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 0
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 134
    return-object p2
.end method

.method public merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 1
    .param p1, "v"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p2, "w"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 330
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 333
    :cond_0
    return-object p1
.end method

.method public naryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Ljava/util/List;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0xc5

    if-ne v0, v1, :cond_0

    .line 323
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/MultiANewArrayInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0
.end method

.method public newOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;

    .line 80
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 122
    :sswitch_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 120
    :sswitch_2
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->RETURNADDRESS_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 105
    :sswitch_3
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/LdcInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    .line 106
    .local v0, "cst":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 107
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v1

    .line 108
    :cond_0
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 109
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v1

    .line 110
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 111
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v1

    .line 112
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 113
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v1

    .line 114
    :cond_3
    instance-of v1, v0, Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v1, :cond_4

    .line 115
    const-string v1, "Ljava/lang/Class;"

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    return-object v1

    .line 117
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/Class;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    return-object v1

    .line 103
    .end local v0    # "cst":Ljava/lang/Object;
    :sswitch_4
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 100
    :sswitch_5
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 97
    :sswitch_6
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 93
    :sswitch_7
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 90
    :sswitch_8
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 82
    :sswitch_9
    const-string v0, "Lnull;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_8
        0x4 -> :sswitch_8
        0x5 -> :sswitch_8
        0x6 -> :sswitch_8
        0x7 -> :sswitch_8
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xc -> :sswitch_6
        0xd -> :sswitch_6
        0xe -> :sswitch_5
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x12 -> :sswitch_3
        0xa8 -> :sswitch_2
        0xb2 -> :sswitch_1
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 53
    if-nez p1, :cond_0

    .line 54
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :pswitch_0
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 70
    :pswitch_1
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 68
    :pswitch_2
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 66
    :pswitch_3
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 64
    :pswitch_4
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 58
    :pswitch_5
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public ternaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 1
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value1"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p3, "value2"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p4, "value3"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 5
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const-string v1, ";"

    const/16 v2, 0x5b

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 229
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_1
    return-object v4

    .line 222
    :pswitch_2
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 215
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;->desc:Ljava/lang/String;

    .line 216
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_0

    .line 217
    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    return-object v1

    .line 219
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    return-object v1

    .line 213
    .end local v0    # "desc":Ljava/lang/String;
    :pswitch_4
    return-object v4

    .line 211
    :pswitch_5
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 204
    :pswitch_6
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;->desc:Ljava/lang/String;

    .line 205
    .restart local v0    # "desc":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    return-object v1

    .line 208
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    return-object v1

    .line 183
    .end local v0    # "desc":Ljava/lang/String;
    :pswitch_7
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/IntInsnNode;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/IntInsnNode;->operand:I

    packed-switch v0, :pswitch_data_1

    .line 201
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v1, "Invalid array type"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :pswitch_8
    const-string v0, "[J"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_9
    const-string v0, "[I"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_a
    const-string v0, "[S"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 189
    :pswitch_b
    const-string v0, "[B"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 197
    :pswitch_c
    const-string v0, "[D"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 195
    :pswitch_d
    const-string v0, "[F"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 187
    :pswitch_e
    const-string v0, "[C"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 185
    :pswitch_f
    const-string v0, "[Z"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 181
    :pswitch_10
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 179
    :pswitch_11
    return-object v4

    .line 164
    :pswitch_12
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 154
    :pswitch_13
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 159
    :pswitch_14
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    .line 149
    :pswitch_15
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_15
        :pswitch_13
        :pswitch_12
        :pswitch_15
        :pswitch_14
        :pswitch_12
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
