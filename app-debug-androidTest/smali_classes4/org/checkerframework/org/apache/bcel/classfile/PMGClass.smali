.class public final Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "PMGClass.java"


# instance fields
.field private pmg_class_index:I

.field private pmg_index:I


# direct methods
.method public constructor <init>(IIIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "pmg_index"    # I
    .param p4, "pmg_class_index"    # I
    .param p5, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 72
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2, p5}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 73
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->pmg_index:I

    .line 74
    iput p4, p0, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->pmg_class_index:I

    .line 75
    return-void
.end method

.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 6
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

    move-result v3

    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;-><init>(IIIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;)V
    .locals 6
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;

    .line 44
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->getNameIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->getLength()I

    move-result v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->getPMGIndex()I

    move-result v3

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->getPMGClassIndex()I

    move-result v4

    .line 45
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v5

    .line 44
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;-><init>(IIIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 46
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 2
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 87
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Visiting non-standard PMGClass object"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 171
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->clone()Ljava/lang/Object;

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

    .line 99
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 100
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->pmg_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 101
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->pmg_class_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 102
    return-void
.end method

.method public final getPMGClassIndex()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->pmg_class_index:I

    return v0
.end method

.method public final getPMGClassName()Ljava/lang/String;
    .locals 3

    .line 151
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->pmg_class_index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 153
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getPMGIndex()I
    .locals 1

    .line 125
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->pmg_index:I

    return v0
.end method

.method public final getPMGName()Ljava/lang/String;
    .locals 3

    .line 141
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->pmg_index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 143
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final setPMGClassIndex(I)V
    .locals 0
    .param p1, "pmg_class_index"    # I

    .line 117
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->pmg_class_index:I

    .line 118
    return-void
.end method

.method public final setPMGIndex(I)V
    .locals 0
    .param p1, "pmg_index"    # I

    .line 133
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->pmg_index:I

    .line 134
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PMGClass("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->getPMGName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;->getPMGClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
