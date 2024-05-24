.class public Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "SIPUSH.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;


# instance fields
.field private b:S


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(S)V
    .locals 2
    .param p1, "b"    # S

    .line 46
    const/16 v0, 0x11

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 47
    iput-short p1, p0, Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;->b:S

    .line 48
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 104
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;)V

    .line 105
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 106
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 107
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitConstantPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;)V

    .line 108
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitSIPUSH(Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;)V

    .line 109
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->dump(Ljava/io/DataOutputStream;)V

    .line 57
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;->b:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 58
    return-void
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 90
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    .line 82
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;->b:S

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 75
    const/4 v0, 0x3

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    .line 76
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;->b:S

    .line 77
    return-void
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "verbose"    # Z

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;->b:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
