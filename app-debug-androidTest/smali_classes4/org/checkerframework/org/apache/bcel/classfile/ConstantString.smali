.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;
.super Lorg/checkerframework/org/apache/bcel/classfile/Constant;
.source "ConstantString.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/classfile/ConstantObject;


# instance fields
.field private string_index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "string_index"    # I

    .line 61
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;-><init>(B)V

    .line 62
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->string_index:I

    .line 63
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

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;)V
    .locals 1
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    .line 42
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->getStringIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;-><init>(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 75
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;)V

    .line 76
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

    .line 87
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 88
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->string_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 89
    return-void
.end method

.method public getBytes(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 129
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->getConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/Object;
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 121
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->string_index:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 122
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getStringIndex()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->string_index:I

    return v0
.end method

.method public final setStringIndex(I)V
    .locals 0
    .param p1, "string_index"    # I

    .line 104
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->string_index:I

    .line 105
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(string_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->string_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
