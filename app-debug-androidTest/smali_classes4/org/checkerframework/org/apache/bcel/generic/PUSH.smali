.class public final Lorg/checkerframework/org/apache/bcel/generic/PUSH;
.super Ljava/lang/Object;
.source "PUSH.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/VariableLengthInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/InstructionConstants;


# instance fields
.field private instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;D)V
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "value"    # D

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DCONST_0:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 100
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DCONST_1:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;

    invoke-virtual {p1, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addDouble(D)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 105
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;F)V
    .locals 4
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "value"    # F

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FCONST_0:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 68
    :cond_0
    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 69
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FCONST_1:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 70
    :cond_1
    float-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 71
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FCONST_2:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 73
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/LDC;

    invoke-virtual {p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFloat(F)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/LDC;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 75
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;I)V
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "value"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    .line 41
    add-int/lit8 v0, p2, 0x3

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->getInstruction(I)Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->isValidByte(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/BIPUSH;

    int-to-byte v1, p2

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/BIPUSH;-><init>(B)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p2}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->isValidShort(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;

    int-to-short v1, p2

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;-><init>(S)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 47
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/LDC;

    invoke-virtual {p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/LDC;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 49
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;J)V
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "value"    # J

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LCONST_0:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 85
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 86
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LCONST_1:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;

    invoke-virtual {p1, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addLong(J)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 90
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 170
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Ljava/lang/Character;)V
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "value"    # Ljava/lang/Character;

    .line 161
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Ljava/lang/Number;)V
    .locals 3
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "value"    # Ljava/lang/Number;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_4

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_4

    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;D)V

    iget-object v0, v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_1

    .line 143
    :cond_1
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;F)V

    iget-object v0, v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_1

    .line 145
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 146
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;J)V

    iget-object v0, v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_1

    .line 148
    :cond_3
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "What\'s this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_4
    :goto_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;I)V

    iget-object v0, v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 150
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Ljava/lang/String;)V
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "value"    # Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    if-nez p2, :cond_0

    .line 114
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->ACONST_NULL:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/LDC;

    invoke-virtual {p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addString(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/LDC;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 118
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)V
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "value"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    if-nez p2, :cond_0

    .line 128
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->ACONST_NULL:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/LDC;

    invoke-virtual {p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/LDC;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 132
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "value"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    add-int/lit8 v0, p2, 0x3

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->getInstruction(I)Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 58
    return-void
.end method


# virtual methods
.method public final getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    return-object v0
.end method

.method public final getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .locals 2

    .line 176
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (PUSH)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
