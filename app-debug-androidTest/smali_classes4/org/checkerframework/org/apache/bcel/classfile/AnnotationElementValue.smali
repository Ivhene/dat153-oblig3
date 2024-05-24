.class public Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;
.super Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
.source "AnnotationElementValue.java"


# instance fields
.field private final annotationEntry:Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;


# direct methods
.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "annotationEntry"    # Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .param p3, "cpool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 34
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;-><init>(ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 35
    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    .line 39
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;->annotationEntry:Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    .line 40
    return-void

    .line 36
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


# virtual methods
.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 46
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;->annotationEntry:Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->dump(Ljava/io/DataOutputStream;)V

    .line 47
    return-void
.end method

.method public getAnnotationEntry()Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;->annotationEntry:Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    return-object v0
.end method

.method public stringifyValue()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;->annotationEntry:Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;->stringifyValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
