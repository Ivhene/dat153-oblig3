.class public Lorg/checkerframework/org/apache/bcel/generic/LDC;
.super Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;
.source "LDC.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "index"    # I

    .line 44
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>(SI)V

    .line 45
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/LDC;->setSize()V

    .line 46
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 150
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 151
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;)V

    .line 152
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 153
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 154
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitCPInstruction(Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;)V

    .line 155
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLDC(Lorg/checkerframework/org/apache/bcel/generic/LDC;)V

    .line 156
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getOpcode()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 68
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 69
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 73
    :goto_0
    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 136
    sget-object v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->EXCS_STRING_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->createExceptions(Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 3
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 119
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or invalid constant type at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRING:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v0

    .line 127
    :pswitch_2
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->CLASS:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v0

    .line 123
    :pswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 125
    :pswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getValue(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/Object;
    .locals 4
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 97
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 98
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 112
    :pswitch_0
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

    .line 100
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->getStringIndex()I

    move-result v1

    .line 101
    .local v1, "i":I
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 102
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 108
    .end local v1    # "i":I
    :pswitch_2
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v1

    .line 109
    .local v1, "nameIndex":I
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 110
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-object v3, v0

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 104
    .end local v1    # "nameIndex":I
    :pswitch_3
    new-instance v1, Ljava/lang/Float;

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->getBytes()F

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    return-object v1

    .line 106
    :pswitch_4
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V
    .locals 1
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "wide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x2

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setLength(I)V

    .line 92
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setIndex(I)V

    .line 93
    return-void
.end method

.method public final setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 81
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setIndex(I)V

    .line 82
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/LDC;->setSize()V

    .line 83
    return-void
.end method

.method protected final setSize()V
    .locals 2

    .line 51
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 52
    const/16 v0, 0x12

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setOpcode(S)V

    .line 53
    const/4 v0, 0x2

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setLength(I)V

    goto :goto_0

    .line 55
    :cond_0
    const/16 v0, 0x13

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setOpcode(S)V

    .line 56
    const/4 v0, 0x3

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setLength(I)V

    .line 58
    :goto_0
    return-void
.end method
