.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;
.super Lorg/checkerframework/org/apache/bcel/classfile/Constant;
.source "ConstantPackage.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/classfile/ConstantObject;


# instance fields
.field private name_index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "name_index"    # I

    .line 66
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;-><init>(B)V

    .line 67
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;->name_index:I

    .line 68
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

    .line 57
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;-><init>(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;)V
    .locals 1
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;->getNameIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;-><init>(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 80
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantPackage(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;)V

    .line 81
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

    .line 92
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 93
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;->name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 94
    return-void
.end method

.method public getBytes(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 126
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;->getConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/Object;
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 118
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;->name_index:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 119
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getNameIndex()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 102
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;->name_index:I

    return v0
.end method

.method public final setNameIndex(I)V
    .locals 0
    .param p1, "name_index"    # I

    .line 110
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;->name_index:I

    .line 111
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(name_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;->name_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
