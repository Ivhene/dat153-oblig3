.class public Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
.super Ljava/lang/Object;
.source "ParameterAnnotationEntry.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;


# instance fields
.field private final annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;


# direct methods
.method constructor <init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 4
    .param p1, "input"    # Ljava/io/DataInput;
    .param p2, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 46
    .local v0, "annotation_table_length":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    const/4 v3, 0x0

    invoke-static {p1, p2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->read(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v3

    aput-object v3, v2, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static createParameterAnnotationEntries([Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
    .locals 6
    .param p0, "attrs"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v0, "accumulatedAnnotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 84
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v4, v3, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;

    if-eqz v4, :cond_0

    .line 85
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;

    .line 86
    .local v4, "runtimeAnnotations":Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->getParameterAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 83
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v4    # "runtimeAnnotations":Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    return-object v1
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 63
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitParameterAnnotationEntry(Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;)V

    .line 64
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 75
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 76
    .local v3, "entry":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->dump(Ljava/io/DataOutputStream;)V

    .line 75
    .end local v3    # "entry":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    return-object v0
.end method
