.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;
.super Lorg/checkerframework/org/apache/bcel/classfile/Constant;
.source "ConstantMethodHandle.java"


# instance fields
.field private reference_index:I

.field private reference_kind:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "reference_kind"    # I
    .param p2, "reference_index"    # I

    .line 59
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;-><init>(B)V

    .line 60
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->reference_kind:I

    .line 61
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->reference_index:I

    .line 62
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

    .line 54
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;-><init>(II)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;)V
    .locals 2
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;

    .line 43
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->getReferenceKind()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->getReferenceIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;-><init>(II)V

    .line 44
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 74
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantMethodHandle(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;)V

    .line 75
    return-void
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 87
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->reference_kind:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 88
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->reference_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 89
    return-void
.end method

.method public getReferenceIndex()I
    .locals 1

    .line 103
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->reference_index:I

    return v0
.end method

.method public getReferenceKind()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->reference_kind:I

    return v0
.end method

.method public setReferenceIndex(I)V
    .locals 0
    .param p1, "reference_index"    # I

    .line 108
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->reference_index:I

    .line 109
    return-void
.end method

.method public setReferenceKind(I)V
    .locals 0
    .param p1, "reference_kind"    # I

    .line 98
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->reference_kind:I

    .line 99
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(reference_kind = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->reference_kind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reference_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->reference_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
