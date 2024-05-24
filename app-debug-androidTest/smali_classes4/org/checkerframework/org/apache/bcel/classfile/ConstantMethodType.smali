.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;
.super Lorg/checkerframework/org/apache/bcel/classfile/Constant;
.source "ConstantMethodType.java"


# instance fields
.field private descriptor_index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "descriptor_index"    # I

    .line 58
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;-><init>(B)V

    .line 59
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;->descriptor_index:I

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 1
    .param p1, "file"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;)V
    .locals 1
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;

    .line 42
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;->getDescriptorIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;-><init>(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 72
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantMethodType(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;)V

    .line 73
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

    .line 84
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 85
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;->descriptor_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 86
    return-void
.end method

.method public getDescriptorIndex()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;->descriptor_index:I

    return v0
.end method

.method public setDescriptorIndex(I)V
    .locals 0
    .param p1, "descriptor_index"    # I

    .line 95
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;->descriptor_index:I

    .line 96
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(descriptor_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;->descriptor_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
