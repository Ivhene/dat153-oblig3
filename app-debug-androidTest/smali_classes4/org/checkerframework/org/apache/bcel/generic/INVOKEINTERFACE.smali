.class public final Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;
.super Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;
.source "INVOKEINTERFACE.java"


# instance fields
.field private nargs:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "nargs"    # I

    .line 51
    const/16 v0, 0xb9

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;-><init>(SI)V

    .line 52
    const/4 v0, 0x5

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->setLength(I)V

    .line 53
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 56
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->nargs:I

    .line 57
    return-void

    .line 54
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of arguments must be > 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 129
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 130
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 131
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 132
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 133
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLoadClass(Lorg/checkerframework/org/apache/bcel/generic/LoadClass;)V

    .line 134
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitCPInstruction(Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;)V

    .line 135
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitFieldOrMethod(Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;)V

    .line 136
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitInvokeInstruction(Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)V

    .line 137
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitINVOKEINTERFACE(Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;)V

    .line 138
    return-void
.end method

.method public consumeStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 105
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->nargs:I

    return v0
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getOpcode()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 67
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 68
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->nargs:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 70
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->nargs:I

    return v0
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 111
    sget-object v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->EXCS_INTERFACE_METHOD_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->UNSATISFIED_LINK_ERROR:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->ABSTRACT_METHOD_ERROR:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->ILLEGAL_ACCESS_ERROR:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->INCOMPATIBLE_CLASS_CHANGE_ERROR:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->createExceptions(Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
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

    .line 87
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V

    .line 88
    const/4 v0, 0x5

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->setLength(I)V

    .line 89
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->nargs:I

    .line 90
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    .line 91
    return-void
.end method

.method public toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->nargs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
