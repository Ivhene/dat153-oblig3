.class public Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;
.super Ljava/lang/Object;
.source "ElementValuePairGen.java"


# instance fields
.field private final cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

.field private nameIdx:I

.field private final value:Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;


# direct methods
.method protected constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ElementValueGen;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
    .param p3, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->nameIdx:I

    .line 77
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->value:Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    .line 78
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
    .param p3, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p3, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->nameIdx:I

    .line 85
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->value:Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    .line 86
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V
    .locals 1
    .param p1, "nvp"    # Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "copyPoolEntries"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 52
    if-eqz p3, :cond_0

    .line 54
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->getNameString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->nameIdx:I

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->getNameIndex()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->nameIdx:I

    .line 60
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->getValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->copy(Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->value:Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    .line 61
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->nameIdx:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 92
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->value:Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->dump(Ljava/io/DataOutputStream;)V

    .line 93
    return-void
.end method

.method public getElementNameValuePair()Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
    .locals 4

    .line 68
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->value:Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    move-result-object v0

    .line 69
    .local v0, "immutableValue":Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->nameIdx:I

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 70
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;-><init>(ILorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 69
    return-object v1
.end method

.method public getNameIndex()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 98
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->nameIdx:I

    return v0
.end method

.method public final getNameString()Ljava/lang/String;
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->nameIdx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->value:Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElementValuePair:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->getNameString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->value:Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    .line 116
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->stringifyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    return-object v0
.end method
