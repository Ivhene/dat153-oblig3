.class public Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowInterpreter;
.super Ljava/lang/Object;
.source "DataflowInterpreter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/Opcodes;
.implements Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value1"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p3, "value2"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 109
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 131
    const/4 v0, 0x1

    .local v0, "size":I
    goto :goto_0

    .line 128
    .end local v0    # "size":I
    :sswitch_0
    const/4 v0, 0x2

    .line 129
    .restart local v0    # "size":I
    nop

    .line 133
    :goto_0
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    invoke-direct {v1, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;-><init>(ILorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2f -> :sswitch_0
        0x31 -> :sswitch_0
        0x61 -> :sswitch_0
        0x63 -> :sswitch_0
        0x65 -> :sswitch_0
        0x67 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6b -> :sswitch_0
        0x6d -> :sswitch_0
        0x6f -> :sswitch_0
        0x71 -> :sswitch_0
        0x73 -> :sswitch_0
        0x79 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
        0x7f -> :sswitch_0
        0x81 -> :sswitch_0
        0x83 -> :sswitch_0
    .end sparse-switch
.end method

.method public copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 77
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    invoke-interface {p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;-><init>(ILorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)V

    return-object v0
.end method

.method public merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 6
    .param p1, "v"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p2, "w"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 156
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    .line 157
    .local v0, "dv":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    .line 158
    .local v1, "dw":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    instance-of v2, v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    instance-of v2, v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;

    iget-object v3, v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->union(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;)Ljava/util/Set;

    move-result-object v2

    .line 160
    .local v2, "s":Ljava/util/Set;
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    if-ne v2, v3, :cond_0

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    iget v4, v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    if-ne v3, v4, :cond_0

    .line 161
    return-object p1

    .line 163
    :cond_0
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    iget v4, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    iget v5, v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v3, v4, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;-><init>(ILjava/util/Set;)V

    return-object v3

    .line 166
    .end local v2    # "s":Ljava/util/Set;
    :cond_1
    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    iget v3, v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    iget-object v3, v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 172
    :cond_2
    return-object p1

    .line 167
    :cond_3
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 168
    .restart local v2    # "s":Ljava/util/Set;
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 169
    iget-object v3, v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 170
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    iget v4, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    iget v5, v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v3, v4, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;-><init>(ILjava/util/Set;)V

    return-object v3
.end method

.method public naryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Ljava/util/List;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "values"    # Ljava/util/List;

    .line 147
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0xc5

    if-ne v0, v1, :cond_0

    .line 148
    const/4 v0, 0x1

    .local v0, "size":I
    goto :goto_0

    .line 150
    .end local v0    # "size":I
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v0

    .line 152
    .restart local v0    # "size":I
    :goto_0
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    invoke-direct {v1, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;-><init>(ILorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)V

    return-object v1
.end method

.method public newOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;

    .line 56
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 71
    const/4 v0, 0x1

    .local v0, "size":I
    goto :goto_2

    .line 68
    .end local v0    # "size":I
    :sswitch_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v0

    .line 69
    .restart local v0    # "size":I
    goto :goto_2

    .line 64
    .end local v0    # "size":I
    :sswitch_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/LdcInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    .line 65
    .local v0, "cst":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    .line 66
    .local v1, "size":I
    :goto_1
    move v0, v1

    goto :goto_2

    .line 61
    .end local v0    # "cst":Ljava/lang/Object;
    .end local v1    # "size":I
    :sswitch_2
    const/4 v0, 0x2

    .line 62
    .local v0, "size":I
    nop

    .line 73
    :goto_2
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    invoke-direct {v1, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;-><init>(ILorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x12 -> :sswitch_1
        0xb2 -> :sswitch_0
    .end sparse-switch
.end method

.method public newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 51
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v1

    :goto_0
    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;-><init>(I)V

    return-object v0
.end method

.method public ternaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value1"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p3, "value2"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p4, "value3"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 142
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;-><init>(ILorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)V

    return-object v0
.end method

.method public unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 83
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 98
    const/4 v0, 0x1

    .local v0, "size":I
    goto :goto_0

    .line 95
    .end local v0    # "size":I
    :sswitch_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v0

    .line 96
    .restart local v0    # "size":I
    goto :goto_0

    .line 92
    .end local v0    # "size":I
    :sswitch_1
    const/4 v0, 0x2

    .line 93
    .restart local v0    # "size":I
    nop

    .line 100
    :goto_0
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    invoke-direct {v1, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;-><init>(ILorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x75 -> :sswitch_1
        0x77 -> :sswitch_1
        0x85 -> :sswitch_1
        0x87 -> :sswitch_1
        0x8a -> :sswitch_1
        0x8c -> :sswitch_1
        0x8d -> :sswitch_1
        0x8f -> :sswitch_1
        0xb4 -> :sswitch_0
    .end sparse-switch
.end method
