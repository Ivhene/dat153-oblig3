.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;
.super Lorg/checkerframework/org/apache/bcel/classfile/Constant;
.source "ConstantDouble.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/classfile/ConstantObject;


# instance fields
.field private bytes:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "bytes"    # D

    .line 43
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;-><init>(B)V

    .line 44
    iput-wide p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->bytes:D

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 2
    .param p1, "file"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;-><init>(D)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;)V
    .locals 2
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    .line 52
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->getBytes()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;-><init>(D)V

    .line 53
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 76
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantDouble(Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;)V

    .line 77
    return-void
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 89
    iget-wide v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->bytes:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 90
    return-void
.end method

.method public final getBytes()D
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 98
    iget-wide v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->bytes:D

    return-wide v0
.end method

.method public getConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/Object;
    .locals 3
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 123
    new-instance v0, Ljava/lang/Double;

    iget-wide v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->bytes:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public final setBytes(D)V
    .locals 0
    .param p1, "bytes"    # D

    .line 106
    iput-wide p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->bytes:D

    .line 107
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(bytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->bytes:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
