.class public Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;
.super Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
.source "ArrayElementValueGen.java"


# instance fields
.field private final evalues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "datums"    # [Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .param p3, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 46
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 47
    const/16 v0, 0x5b

    if-ne p1, v0, :cond_1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    .line 52
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 53
    .local v2, "datum":Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v2, p3, v4}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->copy(Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v2    # "datum":Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only element values of type array can be built with this ctor - type specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V
    .locals 6
    .param p1, "value"    # Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "copyPoolEntries"    # Z

    .line 80
    const/16 v0, 0x5b

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    .line 82
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;->getElementValuesArray()[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    move-result-object v0

    .line 83
    .local v0, "in":[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 84
    .local v3, "element":Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    invoke-static {v3, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->copy(Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v3    # "element":Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 39
    const/16 v0, 0x5b

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public addElement(Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;)V
    .locals 1
    .param p1, "gen"    # Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    .line 125
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 92
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    .line 94
    .local v1, "element":Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->dump(Ljava/io/DataOutputStream;)V

    .line 95
    .end local v1    # "element":Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public getElementValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .locals 6

    .line 63
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    .line 64
    .local v0, "immutableData":[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    const/4 v1, 0x0

    .line 65
    .local v1, "i":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    .line 66
    .local v3, "element":Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    move-result-object v5

    aput-object v5, v0, v1

    .line 67
    .end local v3    # "element":Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
    move v1, v4

    goto :goto_0

    .line 68
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v3

    .line 70
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;-><init>(I[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 68
    return-object v2
.end method

.method public getElementValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    return-object v0
.end method

.method public getElementValuesSize()I
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public stringifyValue()Ljava/lang/String;
    .locals 5

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ""

    .line 104
    .local v1, "comma":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;->evalues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    .line 105
    .local v3, "element":Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ","

    .line 107
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->stringifyValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .end local v3    # "element":Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
    goto :goto_0

    .line 109
    :cond_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
