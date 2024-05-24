.class public Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "MethodParameters.java"


# instance fields
.field private parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;


# direct methods
.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 4
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const/16 v0, 0x15

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    .line 40
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 41
    .local v0, "parameters_count":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 43
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    invoke-direct {v3, p3}, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;-><init>(Ljava/io/DataInput;)V

    aput-object v3, v2, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 57
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitMethodParameters(Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;)V

    .line 58
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 4
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 62
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;

    .line 63
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 66
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->copy()Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    move-result-object v2

    aput-object v2, v3, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 69
    return-object v0
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 81
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 82
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 83
    .local v3, "parameter":Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;->dump(Ljava/io/DataOutputStream;)V

    .line 82
    .end local v3    # "parameter":Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public getParameters()[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    return-object v0
.end method

.method public setParameters([Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;)V
    .locals 0
    .param p1, "parameters"    # [Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    .line 52
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;->parameters:[Lorg/checkerframework/org/apache/bcel/classfile/MethodParameter;

    .line 53
    return-void
.end method
