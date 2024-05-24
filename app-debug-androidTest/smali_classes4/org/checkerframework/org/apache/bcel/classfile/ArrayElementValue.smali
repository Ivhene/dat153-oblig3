.class public Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;
.super Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
.source "ArrayElementValue.java"


# instance fields
.field private final evalues:[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;


# direct methods
.method public constructor <init>(I[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "datums"    # [Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .param p3, "cpool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 49
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;-><init>(ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 50
    const/16 v0, 0x5b

    if-ne p1, v0, :cond_0

    .line 54
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;->evalues:[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    .line 55
    return-void

    .line 51
    :cond_0
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


# virtual methods
.method public dump(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 61
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;->evalues:[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 62
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;->evalues:[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 63
    .local v3, "evalue":Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->dump(Ljava/io/DataOutputStream;)V

    .line 62
    .end local v3    # "evalue":Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public getElementValuesArray()[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;->evalues:[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    return-object v0
.end method

.method public getElementValuesArraySize()I
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;->evalues:[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    array-length v0, v0

    return v0
.end method

.method public stringifyValue()Ljava/lang/String;
    .locals 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;->evalues:[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 74
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->stringifyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;->evalues:[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 76
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;->evalues:[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 38
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;->evalues:[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 40
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
