.class public Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;
.super Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
.source "AnnotationElementValueGen.java"


# instance fields
.field private final a:Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;


# direct methods
.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "annotation"    # Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    .param p3, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 43
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 44
    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    .line 48
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;->a:Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 49
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only element values of type annotation can be built with this ctor - type specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V
    .locals 2
    .param p1, "value"    # Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "copyPoolEntries"    # Z

    .line 54
    const/16 v0, 0x40

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 55
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;->getAnnotationEntry()Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;->a:Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 36
    const/16 v0, 0x40

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 37
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;->a:Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 38
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 62
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;->a:Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->dump(Ljava/io/DataOutputStream;)V

    .line 63
    return-void
.end method

.method public getAnnotation()Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;->a:Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    return-object v0
.end method

.method public getElementValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .locals 4

    .line 77
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;->a:Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 78
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->getAnnotation()Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v2

    .line 79
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;-><init>(ILorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 77
    return-object v0
.end method

.method public stringifyValue()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
