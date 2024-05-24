.class public abstract Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "ArrayInstruction.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;
.implements Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>()V

    .line 35
    return-void
.end method

.method protected constructor <init>(S)V
    .locals 1
    .param p1, "opcode"    # S

    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 43
    return-void
.end method


# virtual methods
.method public getExceptions()[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->EXCS_ARRAY_EXCEPTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->createExceptions(Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 4
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 56
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v0

    .line 57
    .local v0, "_opcode":S
    sparse-switch v0, :sswitch_data_0

    .line 83
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oops: unknown case in switch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :sswitch_0
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v1

    .line 63
    :sswitch_1
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v1

    .line 66
    :sswitch_2
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v1

    .line 81
    :sswitch_3
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v1

    .line 75
    :sswitch_4
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v1

    .line 78
    :sswitch_5
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v1

    .line 72
    :sswitch_6
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v1

    .line 60
    :sswitch_7
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_7
        0x2f -> :sswitch_6
        0x30 -> :sswitch_5
        0x31 -> :sswitch_4
        0x32 -> :sswitch_3
        0x33 -> :sswitch_2
        0x34 -> :sswitch_1
        0x35 -> :sswitch_0
        0x4f -> :sswitch_7
        0x50 -> :sswitch_6
        0x51 -> :sswitch_5
        0x52 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
    .end sparse-switch
.end method
