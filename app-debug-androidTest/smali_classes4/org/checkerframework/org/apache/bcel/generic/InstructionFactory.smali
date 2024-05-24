.class public Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;
.super Ljava/lang/Object;
.source "InstructionFactory.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/InstructionConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;
    }
.end annotation


# static fields
.field private static final append_mos:[Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

.field private static final short_names:[Ljava/lang/String;


# instance fields
.field protected cg:Lorg/checkerframework/org/apache/bcel/generic/ClassGen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 41
    const-string v0, "C"

    const-string v1, "F"

    const-string v2, "D"

    const-string v3, "B"

    const-string v4, "S"

    const-string v5, "I"

    const-string v6, "L"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->short_names:[Ljava/lang/String;

    .line 200
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    const/4 v3, 0x1

    new-array v4, v3, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v5, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRING:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "java.lang.StringBuffer"

    const-string v7, "append"

    invoke-direct {v1, v5, v7, v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    new-array v4, v3, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    aput-object v8, v4, v6

    invoke-direct {v1, v5, v7, v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    new-array v4, v3, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    aput-object v8, v4, v6

    invoke-direct {v1, v5, v7, v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    new-array v4, v3, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    aput-object v8, v4, v6

    invoke-direct {v1, v5, v7, v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    new-array v4, v3, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    aput-object v8, v4, v6

    invoke-direct {v1, v5, v7, v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    new-array v4, v3, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    aput-object v8, v4, v6

    invoke-direct {v1, v5, v7, v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    new-array v4, v3, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    aput-object v8, v4, v6

    invoke-direct {v1, v5, v7, v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    new-array v4, v3, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    aput-object v8, v4, v6

    invoke-direct {v1, v5, v7, v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    new-array v4, v3, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    aput-object v8, v4, v6

    invoke-direct {v1, v5, v7, v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    new-array v3, v3, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    aput-object v4, v3, v6

    invoke-direct {v1, v5, v7, v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->append_mos:[Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ClassGen;)V
    .locals 1
    .param p1, "cg"    # Lorg/checkerframework/org/apache/bcel/generic/ClassGen;

    .line 67
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ClassGen;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ClassGen;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 0
    .param p1, "cg"    # Lorg/checkerframework/org/apache/bcel/generic/ClassGen;
    .param p2, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cg:Lorg/checkerframework/org/apache/bcel/generic/ClassGen;

    .line 60
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ClassGen;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 75
    return-void
.end method

.method public static createArrayLoad(Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;
    .locals 3
    .param p0, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 534
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 554
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :pswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->AALOAD:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 549
    :pswitch_2
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LALOAD:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 543
    :pswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->IALOAD:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 541
    :pswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->SALOAD:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 547
    :pswitch_5
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DALOAD:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 545
    :pswitch_6
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FALOAD:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 539
    :pswitch_7
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->CALOAD:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 537
    :pswitch_8
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->BALOAD:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static createArrayStore(Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;
    .locals 3
    .param p0, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 563
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 583
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :pswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->AASTORE:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 578
    :pswitch_2
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LASTORE:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 572
    :pswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->IASTORE:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 570
    :pswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->SASTORE:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 576
    :pswitch_5
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DASTORE:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 574
    :pswitch_6
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FASTORE:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 568
    :pswitch_7
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->CASTORE:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    .line 566
    :pswitch_8
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->BASTORE:Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static createBinaryDoubleOp(C)Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;
    .locals 3
    .param p0, "op"    # C

    .line 404
    sparse-switch p0, :sswitch_data_0

    .line 416
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :sswitch_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DDIV:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 406
    :sswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DSUB:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 408
    :sswitch_2
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DADD:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 410
    :sswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DMUL:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 414
    :sswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DREM:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_4
        0x2a -> :sswitch_3
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private static createBinaryFloatOp(C)Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;
    .locals 3
    .param p0, "op"    # C

    .line 386
    sparse-switch p0, :sswitch_data_0

    .line 398
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :sswitch_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FDIV:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 388
    :sswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FSUB:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 390
    :sswitch_2
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FADD:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 392
    :sswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FMUL:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 396
    :sswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FREM:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_4
        0x2a -> :sswitch_3
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private static createBinaryIntOp(CLjava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;
    .locals 3
    .param p0, "first"    # C
    .param p1, "op"    # Ljava/lang/String;

    .line 330
    sparse-switch p0, :sswitch_data_0

    .line 352
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :sswitch_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->IOR:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 346
    :sswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->IXOR:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 350
    :sswitch_2
    const-string v0, ">>>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->IUSHR:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->ISHR:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    :goto_0
    return-object v0

    .line 348
    :sswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->ISHL:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 340
    :sswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->IDIV:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 332
    :sswitch_5
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->ISUB:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 334
    :sswitch_6
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->IADD:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 338
    :sswitch_7
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->IMUL:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 342
    :sswitch_8
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->IAND:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 336
    :sswitch_9
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->IREM:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_9
        0x26 -> :sswitch_8
        0x2a -> :sswitch_7
        0x2b -> :sswitch_6
        0x2d -> :sswitch_5
        0x2f -> :sswitch_4
        0x3c -> :sswitch_3
        0x3e -> :sswitch_2
        0x5e -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private static createBinaryLongOp(CLjava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;
    .locals 3
    .param p0, "first"    # C
    .param p1, "op"    # Ljava/lang/String;

    .line 358
    sparse-switch p0, :sswitch_data_0

    .line 380
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :sswitch_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LOR:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 374
    :sswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LXOR:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 378
    :sswitch_2
    const-string v0, ">>>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LUSHR:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LSHR:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    :goto_0
    return-object v0

    .line 376
    :sswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LSHL:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 368
    :sswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LDIV:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 360
    :sswitch_5
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LSUB:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 362
    :sswitch_6
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LADD:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 366
    :sswitch_7
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LMUL:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 370
    :sswitch_8
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LAND:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    .line 364
    :sswitch_9
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LREM:Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_9
        0x26 -> :sswitch_8
        0x2a -> :sswitch_7
        0x2b -> :sswitch_6
        0x2d -> :sswitch_5
        0x2f -> :sswitch_4
        0x3c -> :sswitch_3
        0x3e -> :sswitch_2
        0x5e -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method public static createBinaryOperation(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;
    .locals 4
    .param p0, "op"    # Ljava/lang/String;
    .param p1, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 428
    .local v0, "first":C
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 441
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :pswitch_0
    invoke-static {v0, p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->createBinaryLongOp(CLjava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    move-result-object v1

    return-object v1

    .line 439
    :pswitch_1
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->createBinaryDoubleOp(C)Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    move-result-object v1

    return-object v1

    .line 437
    :pswitch_2
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->createBinaryFloatOp(C)Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    move-result-object v1

    return-object v1

    .line 433
    :pswitch_3
    invoke-static {v0, p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->createBinaryIntOp(CLjava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static createBranchInstruction(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    .locals 3
    .param p0, "opcode"    # S
    .param p1, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 720
    sparse-switch p0, :sswitch_data_0

    .line 762
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :sswitch_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/JSR_W;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/JSR_W;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 758
    :sswitch_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/GOTO_W;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/GOTO_W;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 756
    :sswitch_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IFNONNULL;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IFNONNULL;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 754
    :sswitch_3
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IFNULL;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IFNULL;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 752
    :sswitch_4
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/JSR;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/JSR;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 750
    :sswitch_5
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/GOTO;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/GOTO;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 748
    :sswitch_6
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPNE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPNE;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 746
    :sswitch_7
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPEQ;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPEQ;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 744
    :sswitch_8
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLE;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 742
    :sswitch_9
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGT;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGT;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 740
    :sswitch_a
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGE;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 738
    :sswitch_b
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLT;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLT;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 736
    :sswitch_c
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPNE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPNE;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 734
    :sswitch_d
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPEQ;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPEQ;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 732
    :sswitch_e
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IFLE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IFLE;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 730
    :sswitch_f
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IFGT;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IFGT;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 728
    :sswitch_10
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IFGE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IFGE;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 726
    :sswitch_11
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IFLT;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IFLT;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 724
    :sswitch_12
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IFNE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IFNE;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    .line 722
    :sswitch_13
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IFEQ;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IFEQ;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x99 -> :sswitch_13
        0x9a -> :sswitch_12
        0x9b -> :sswitch_11
        0x9c -> :sswitch_10
        0x9d -> :sswitch_f
        0x9e -> :sswitch_e
        0x9f -> :sswitch_d
        0xa0 -> :sswitch_c
        0xa1 -> :sswitch_b
        0xa2 -> :sswitch_a
        0xa3 -> :sswitch_9
        0xa4 -> :sswitch_8
        0xa5 -> :sswitch_7
        0xa6 -> :sswitch_6
        0xa7 -> :sswitch_5
        0xa8 -> :sswitch_4
        0xc6 -> :sswitch_3
        0xc7 -> :sswitch_2
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static createDup(I)Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;
    .locals 1
    .param p0, "size"    # I

    .line 458
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DUP2:Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DUP:Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;

    :goto_0
    return-object v0
.end method

.method public static createDup_1(I)Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;
    .locals 1
    .param p0, "size"    # I

    .line 474
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DUP2_X1:Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DUP_X1:Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;

    :goto_0
    return-object v0
.end method

.method public static createDup_2(I)Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;
    .locals 1
    .param p0, "size"    # I

    .line 466
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DUP2_X2:Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DUP_X2:Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;

    :goto_0
    return-object v0
.end method

.method private createInvoke(Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;S)Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;
    .locals 6
    .param p1, "m"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;
    .param p2, "kind"    # S

    .line 196
    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;->class_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;->result_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    iget-object v4, p1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;S)Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static createLoad(Lorg/checkerframework/org/apache/bcel/generic/Type;I)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;
    .locals 3
    .param p0, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p1, "index"    # I

    .line 508
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 525
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :pswitch_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;-><init>(I)V

    return-object v0

    .line 520
    :pswitch_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;-><init>(I)V

    return-object v0

    .line 518
    :pswitch_3
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;-><init>(I)V

    return-object v0

    .line 516
    :pswitch_4
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;-><init>(I)V

    return-object v0

    .line 514
    :pswitch_5
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;-><init>(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static createNull(Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 3
    .param p0, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 692
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 711
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :pswitch_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->ACONST_NULL:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    return-object v0

    .line 709
    :pswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->NOP:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    return-object v0

    .line 707
    :pswitch_2
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LCONST_0:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    return-object v0

    .line 705
    :pswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DCONST_0:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    return-object v0

    .line 703
    :pswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FCONST_0:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    return-object v0

    .line 701
    :pswitch_5
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->ICONST_0:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createPop(I)Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;
    .locals 1
    .param p0, "size"    # I

    .line 450
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->POP2:Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->POP:Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;

    :goto_0
    return-object v0
.end method

.method public static createReturn(Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;
    .locals 3
    .param p0, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 305
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 324
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :pswitch_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->ARETURN:Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    return-object v0

    .line 322
    :pswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->RETURN:Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    return-object v0

    .line 320
    :pswitch_2
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->LRETURN:Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    return-object v0

    .line 318
    :pswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->DRETURN:Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    return-object v0

    .line 316
    :pswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->FRETURN:Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    return-object v0

    .line 314
    :pswitch_5
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->IRETURN:Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createStore(Lorg/checkerframework/org/apache/bcel/generic/Type;I)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;
    .locals 3
    .param p0, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p1, "index"    # I

    .line 482
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 499
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :pswitch_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;-><init>(I)V

    return-object v0

    .line 494
    :pswitch_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;-><init>(I)V

    return-object v0

    .line 492
    :pswitch_3
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;-><init>(I)V

    return-object v0

    .line 490
    :pswitch_4
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;-><init>(I)V

    return-object v0

    .line 488
    :pswitch_5
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;-><init>(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static createThis()Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 2

    .line 298
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;-><init>(I)V

    return-object v0
.end method

.method private static isString(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 239
    instance-of v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 240
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    return v0
.end method


# virtual methods
.method public createAppend(Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 245
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    .line 246
    .local v0, "t":B
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->isString(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v1

    const/16 v2, 0xb6

    if-eqz v1, :cond_0

    .line 247
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->append_mos:[Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->createInvoke(Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;S)Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;

    move-result-object v1

    return-object v1

    .line 249
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 263
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oops: No append for this type? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :pswitch_1
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->append_mos:[Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->createInvoke(Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;S)Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;

    move-result-object v1

    return-object v1

    .line 258
    :pswitch_2
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->append_mos:[Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->createInvoke(Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;S)Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public createCast(Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 8
    .param p1, "src_type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p2, "dest_type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 592
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eqz v0, :cond_2

    .line 593
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    .line 594
    .local v0, "dest":B
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v1

    .line 595
    .local v1, "src":B
    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 597
    :cond_0
    const/16 v1, 0xa

    .line 600
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org.checkerframework.org.apache.bcel.generic."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->short_names:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x5

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v0, -0x5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 604
    .local v3, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 607
    nop

    .line 608
    return-object v3

    .line 605
    :catch_0
    move-exception v4

    .line 606
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find instruction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 609
    .end local v0    # "dest":B
    .end local v1    # "src":B
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v0, :cond_4

    .line 610
    instance-of v0, p2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v0, :cond_3

    .line 611
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addArrayClass(Lorg/checkerframework/org/apache/bcel/generic/ArrayType;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;-><init>(I)V

    return-object v0

    .line 613
    :cond_3
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;-><init>(I)V

    return-object v0

    .line 615
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCheckCast(Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;
    .locals 3
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 641
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v0, :cond_0

    .line 642
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addArrayClass(Lorg/checkerframework/org/apache/bcel/generic/ArrayType;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;-><init>(I)V

    return-object v0

    .line 644
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;-><init>(I)V

    return-object v0
.end method

.method public createConstant(Ljava/lang/Object;)Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 164
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Ljava/lang/Number;)V

    .local v0, "push":Lorg/checkerframework/org/apache/bcel/generic/PUSH;
    goto :goto_0

    .line 166
    .end local v0    # "push":Lorg/checkerframework/org/apache/bcel/generic/PUSH;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Ljava/lang/String;)V

    .restart local v0    # "push":Lorg/checkerframework/org/apache/bcel/generic/PUSH;
    goto :goto_0

    .line 168
    .end local v0    # "push":Lorg/checkerframework/org/apache/bcel/generic/PUSH;
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 169
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Ljava/lang/Boolean;)V

    .restart local v0    # "push":Lorg/checkerframework/org/apache/bcel/generic/PUSH;
    goto :goto_0

    .line 170
    .end local v0    # "push":Lorg/checkerframework/org/apache/bcel/generic/PUSH;
    :cond_2
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_3

    .line 171
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/PUSH;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p1

    check-cast v2, Ljava/lang/Character;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Ljava/lang/Character;)V

    .line 175
    .restart local v0    # "push":Lorg/checkerframework/org/apache/bcel/generic/PUSH;
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    return-object v1

    .line 173
    .end local v0    # "push":Lorg/checkerframework/org/apache/bcel/generic/PUSH;
    :cond_3
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;S)Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;
    .locals 5
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p4, "kind"    # S

    .line 278
    invoke-virtual {p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "signature":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v1, p1, p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 280
    .local v1, "index":I
    packed-switch p4, :pswitch_data_0

    .line 290
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oops: Unknown getfield kind:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :pswitch_0
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;

    invoke-direct {v2, v1}, Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;-><init>(I)V

    return-object v2

    .line 282
    :pswitch_1
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;

    invoke-direct {v2, v1}, Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;-><init>(I)V

    return-object v2

    .line 288
    :pswitch_2
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;

    invoke-direct {v2, v1}, Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;-><init>(I)V

    return-object v2

    .line 286
    :pswitch_3
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;

    invoke-direct {v2, v1}, Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;-><init>(I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createGetField(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;
    .locals 3
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 621
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;-><init>(I)V

    return-object v0
.end method

.method public createGetStatic(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;
    .locals 3
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 626
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;-><init>(I)V

    return-object v0
.end method

.method public createInstanceOf(Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;
    .locals 3
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 649
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v0, :cond_0

    .line 650
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addArrayClass(Lorg/checkerframework/org/apache/bcel/generic/ArrayType;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;-><init>(I)V

    return-object v0

    .line 652
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;-><init>(I)V

    return-object v0
.end method

.method public createInvoke(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;S)Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;
    .locals 6
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ret_type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p4, "arg_types"    # [Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p5, "kind"    # S

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "nargs":I
    invoke-static {p3, p4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getMethodSignature(Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "signature":Ljava/lang/String;
    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p4, v3

    .line 94
    .local v4, "arg_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 93
    .end local v4    # "arg_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const/16 v2, 0xb9

    if-ne p5, v2, :cond_1

    .line 97
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2, p1, p2, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, "index":I
    goto :goto_1

    .line 99
    .end local v2    # "index":I
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2, p1, p2, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 101
    .restart local v2    # "index":I
    :goto_1
    packed-switch p5, :pswitch_data_0

    .line 113
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oops: Unknown invoke kind: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :pswitch_0
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;

    invoke-direct {v3, v2}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;-><init>(I)V

    return-object v3

    .line 109
    :pswitch_1
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v3, v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;-><init>(II)V

    return-object v3

    .line 107
    :pswitch_2
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;

    invoke-direct {v3, v2}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;-><init>(I)V

    return-object v3

    .line 103
    :pswitch_3
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;

    invoke-direct {v3, v2}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;-><init>(I)V

    return-object v3

    .line 105
    :pswitch_4
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;

    invoke-direct {v3, v2}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;-><init>(I)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createNew(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/NEW;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 662
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->createNew(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)Lorg/checkerframework/org/apache/bcel/generic/NEW;

    move-result-object v0

    return-object v0
.end method

.method public createNew(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)Lorg/checkerframework/org/apache/bcel/generic/NEW;
    .locals 2
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 657
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/NEW;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/NEW;-><init>(I)V

    return-object v0
.end method

.method public createNewArray(Lorg/checkerframework/org/apache/bcel/generic/Type;S)Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 3
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p2, "dim"    # S

    .line 670
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 671
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v0, :cond_0

    .line 672
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;-><init>(I)V

    return-object v0

    .line 673
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v0, :cond_1

    .line 674
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addArrayClass(Lorg/checkerframework/org/apache/bcel/generic/ArrayType;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;-><init>(I)V

    return-object v0

    .line 676
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;-><init>(B)V

    return-object v0

    .line 680
    :cond_2
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v0, :cond_3

    .line 681
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .local v0, "at":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    goto :goto_0

    .line 683
    .end local v0    # "at":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    :cond_3
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Type;I)V

    .line 685
    .restart local v0    # "at":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    :goto_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addArrayClass(Lorg/checkerframework/org/apache/bcel/generic/ArrayType;)I

    move-result v2

    invoke-direct {v1, v2, p2}, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;-><init>(IS)V

    return-object v1
.end method

.method public createPrintln(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .line 149
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>()V

    .line 150
    .local v0, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    const-string v2, "out"

    const-string v3, "Ljava/io/PrintStream;"

    const-string v4, "java.lang.System"

    invoke-virtual {v1, v4, v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, "out":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    const-string v3, "println"

    const-string v4, "(Ljava/lang/String;)V"

    const-string v5, "java.io.PrintStream"

    invoke-virtual {v2, v5, v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 152
    .local v2, "println":I
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;

    invoke-direct {v3, v1}, Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;-><init>(I)V

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 153
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/PUSH;

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v3, v4, p1}, Lorg/checkerframework/org/apache/bcel/generic/PUSH;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/CompoundInstruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 154
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;

    invoke-direct {v3, v2}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 155
    return-object v0
.end method

.method public createPutField(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;
    .locals 3
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 631
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;-><init>(I)V

    return-object v0
.end method

.method public createPutStatic(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;)Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;
    .locals 3
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 636
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;-><init>(I)V

    return-object v0
.end method

.method public getClassGen()Lorg/checkerframework/org/apache/bcel/generic/ClassGen;
    .locals 1

    .line 773
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cg:Lorg/checkerframework/org/apache/bcel/generic/ClassGen;

    return-object v0
.end method

.method public getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .locals 1

    .line 783
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    return-object v0
.end method

.method public setClassGen(Lorg/checkerframework/org/apache/bcel/generic/ClassGen;)V
    .locals 0
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/generic/ClassGen;

    .line 768
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cg:Lorg/checkerframework/org/apache/bcel/generic/ClassGen;

    .line 769
    return-void
.end method

.method public setConstantPool(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 0
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 778
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 779
    return-void
.end method
