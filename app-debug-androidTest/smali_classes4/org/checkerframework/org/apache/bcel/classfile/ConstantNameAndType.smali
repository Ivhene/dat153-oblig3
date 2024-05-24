.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
.super Lorg/checkerframework/org/apache/bcel/classfile/Constant;
.source "ConstantNameAndType.java"


# instance fields
.field private name_index:I

.field private signature_index:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "signature_index"    # I

    .line 66
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;-><init>(B)V

    .line 67
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->name_index:I

    .line 68
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->signature_index:I

    .line 69
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

    .line 57
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;-><init>(II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;)V
    .locals 2
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;-><init>(II)V

    .line 47
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 81
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantNameAndType(Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;)V

    .line 82
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

    .line 93
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 94
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 95
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->signature_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 96
    return-void
.end method

.method public final getName(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 111
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNameIndex()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 104
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->name_index:I

    return v0
.end method

.method public final getSignature(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 126
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSignatureIndex()I
    .locals 1

    .line 119
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->signature_index:I

    return v0
.end method

.method public final setNameIndex(I)V
    .locals 0
    .param p1, "name_index"    # I

    .line 134
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->name_index:I

    .line 135
    return-void
.end method

.method public final setSignatureIndex(I)V
    .locals 0
    .param p1, "signature_index"    # I

    .line 142
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->signature_index:I

    .line 143
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(name_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->name_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->signature_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
