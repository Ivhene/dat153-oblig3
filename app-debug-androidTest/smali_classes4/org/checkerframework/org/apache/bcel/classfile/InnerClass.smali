.class public final Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
.super Ljava/lang/Object;
.source "InnerClass.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;


# instance fields
.field private inner_access_flags:I

.field private inner_class_index:I

.field private inner_name_index:I

.field private outer_class_index:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "inner_class_index"    # I
    .param p2, "outer_class_index"    # I
    .param p3, "inner_name_index"    # I
    .param p4, "inner_access_flags"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_class_index:I

    .line 71
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->outer_class_index:I

    .line 72
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_name_index:I

    .line 73
    iput p4, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_access_flags:I

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 4
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

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    .line 58
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    .line 57
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;-><init>(IIII)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getInnerClassIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getOuterClassIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getInnerNameIndex()I

    move-result v2

    .line 47
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getInnerAccessFlags()I

    move-result v3

    .line 46
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;-><init>(IIII)V

    .line 48
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 86
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitInnerClass(Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;)V

    .line 87
    return-void
.end method

.method public copy()Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    .locals 1

    .line 212
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 216
    const/4 v0, 0x0

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

    .line 97
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_class_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 98
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->outer_class_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 99
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 100
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_access_flags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 101
    return-void
.end method

.method public final getInnerAccessFlags()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_access_flags:I

    return v0
.end method

.method public final getInnerClassIndex()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_class_index:I

    return v0
.end method

.method public final getInnerNameIndex()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_name_index:I

    return v0
.end method

.method public final getOuterClassIndex()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->outer_class_index:I

    return v0
.end method

.method public final setInnerAccessFlags(I)V
    .locals 0
    .param p1, "inner_access_flags"    # I

    .line 140
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_access_flags:I

    .line 141
    return-void
.end method

.method public final setInnerClassIndex(I)V
    .locals 0
    .param p1, "inner_class_index"    # I

    .line 148
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_class_index:I

    .line 149
    return-void
.end method

.method public final setInnerNameIndex(I)V
    .locals 0
    .param p1, "inner_name_index"    # I

    .line 156
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_name_index:I

    .line 157
    return-void
.end method

.method public final setOuterClassIndex(I)V
    .locals 0
    .param p1, "outer_class_index"    # I

    .line 164
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->outer_class_index:I

    .line 165
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InnerClass("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_class_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->outer_class_index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_name_index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_access_flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 6
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 184
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_class_index:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "inner_class_name":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->outer_class_index:I

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p1, v2, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "outer_class_name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 192
    .end local v1    # "outer_class_name":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .line 194
    .restart local v1    # "outer_class_name":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_name_index:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {p1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 196
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    .local v2, "inner_name":Ljava/lang/String;
    goto :goto_1

    .line 198
    .end local v2    # "inner_name":Ljava/lang/String;
    :cond_1
    const-string v2, "(anonymous)"

    .line 200
    .restart local v2    # "inner_name":Ljava/lang/String;
    :goto_1
    iget v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->inner_access_flags:I

    invoke-static {v4, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->accessToString(IZ)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "access":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v3, v4

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
