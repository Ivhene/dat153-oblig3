.class public Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;
.super Ljava/lang/Object;
.source "MethodParameter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private access_flags:I

.field private name_index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 1
    .param p1, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->name_index:I

    .line 56
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->access_flags:I

    .line 57
    return-void
.end method


# virtual methods
.method public copy()Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;
    .locals 1

    .line 115
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 119
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

    .line 105
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 106
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->access_flags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 107
    return-void
.end method

.method public getAccessFlags()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->access_flags:I

    return v0
.end method

.method public getNameIndex()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 61
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->name_index:I

    return v0
.end method

.method public getParameterName(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 2
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 72
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->name_index:I

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFinal()Z
    .locals 1

    .line 87
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->access_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMandated()Z
    .locals 1

    .line 95
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->access_flags:I

    and-int/lit16 v0, v0, -0x8000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .line 91
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->access_flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAccessFlags(I)V
    .locals 0
    .param p1, "access_flags"    # I

    .line 83
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->access_flags:I

    .line 84
    return-void
.end method

.method public setNameIndex(I)V
    .locals 0
    .param p1, "name_index"    # I

    .line 65
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->name_index:I

    .line 66
    return-void
.end method
