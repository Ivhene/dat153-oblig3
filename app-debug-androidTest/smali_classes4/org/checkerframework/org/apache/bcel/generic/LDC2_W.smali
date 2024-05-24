.class public Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;
.super Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;
.source "LDC2_W.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "index"    # I

    .line 38
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>(SI)V

    .line 39
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 78
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 79
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;)V

    .line 80
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 81
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitCPInstruction(Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;)V

    .line 82
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLDC2_W(Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;)V

    .line 83
    return-void
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 3
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 44
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown constant type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getOpcode()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 46
    :pswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/Number;
    .locals 4
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 56
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 57
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 63
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or invalid constant type at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :pswitch_0
    new-instance v1, Ljava/lang/Double;

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->getBytes()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1

    .line 59
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->getBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
