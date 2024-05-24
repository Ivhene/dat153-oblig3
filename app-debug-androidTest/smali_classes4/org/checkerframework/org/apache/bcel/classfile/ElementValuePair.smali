.class public Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
.super Ljava/lang/Object;
.source "ElementValuePair.java"


# instance fields
.field private final constantPool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private final elementNameIndex:I

.field private final elementValue:Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;


# direct methods
.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "elementNameIndex"    # I
    .param p2, "elementValue"    # Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .param p3, "constantPool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->elementValue:Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    .line 45
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->elementNameIndex:I

    .line 46
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->constantPool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 47
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

    .line 76
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->elementNameIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 77
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->elementValue:Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->dump(Ljava/io/DataOutputStream;)V

    .line 78
    return-void
.end method

.method public getNameIndex()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 64
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->elementNameIndex:I

    return v0
.end method

.method public getNameString()Ljava/lang/String;
    .locals 3

    .line 51
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->constantPool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->elementNameIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 53
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->elementValue:Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->getNameString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->getValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
