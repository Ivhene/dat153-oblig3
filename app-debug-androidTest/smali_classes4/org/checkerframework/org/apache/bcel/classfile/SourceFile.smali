.class public final Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "SourceFile.java"


# instance fields
.field private sourcefile_index:I


# direct methods
.method public constructor <init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "sourcefile_index"    # I
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 78
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->sourcefile_index:I

    .line 79
    return-void
.end method

.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;-><init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;

    .line 45
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->getSourceFileIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;-><init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 46
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 91
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitSourceFile(Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;)V

    .line 92
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 148
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 104
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->sourcefile_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 105
    return-void
.end method

.method public final getSourceFileIndex()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->sourcefile_index:I

    return v0
.end method

.method public final getSourceFileName()Ljava/lang/String;
    .locals 3

    .line 128
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->sourcefile_index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 130
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final setSourceFileIndex(I)V
    .locals 0
    .param p1, "sourcefile_index"    # I

    .line 120
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->sourcefile_index:I

    .line 121
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SourceFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->getSourceFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
