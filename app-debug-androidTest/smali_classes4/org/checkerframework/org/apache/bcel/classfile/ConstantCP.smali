.class public abstract Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
.super Lorg/checkerframework/org/apache/bcel/classfile/Constant;
.source "ConstantCP.java"


# instance fields
.field protected class_index:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected name_and_type_index:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(BII)V
    .locals 0
    .param p1, "tag"    # B
    .param p2, "class_index"    # I
    .param p3, "name_and_type_index"    # I

    .line 81
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;-><init>(B)V

    .line 82
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->class_index:I

    .line 83
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->name_and_type_index:I

    .line 84
    return-void
.end method

.method constructor <init>(BLjava/io/DataInput;)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "file"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;-><init>(BII)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;)V
    .locals 3
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    .line 60
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getTag()B

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getClassIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;-><init>(BII)V

    .line 61
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 96
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->class_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 97
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->name_and_type_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 98
    return-void
.end method

.method public getClass(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 137
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->class_index:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClassIndex()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->class_index:I

    return v0
.end method

.method public final getNameAndTypeIndex()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->name_and_type_index:I

    return v0
.end method

.method public final setClassIndex(I)V
    .locals 0
    .param p1, "class_index"    # I

    .line 113
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->class_index:I

    .line 114
    return-void
.end method

.method public final setNameAndTypeIndex(I)V
    .locals 0
    .param p1, "name_and_type_index"    # I

    .line 129
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->name_and_type_index:I

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(class_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->class_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_and_type_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->name_and_type_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
