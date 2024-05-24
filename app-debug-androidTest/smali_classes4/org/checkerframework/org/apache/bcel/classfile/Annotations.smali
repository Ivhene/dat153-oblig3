.class public abstract Lorg/checkerframework/org/apache/bcel/classfile/Annotations;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "Annotations.java"


# instance fields
.field private annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

.field private final isRuntimeVisible:Z


# direct methods
.method constructor <init>(BIILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)V
    .locals 7
    .param p1, "annotation_type"    # B
    .param p2, "name_index"    # I
    .param p3, "length"    # I
    .param p4, "input"    # Ljava/io/DataInput;
    .param p5, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p6, "isRuntimeVisible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v4, 0x0

    move-object v0, v4

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;-><init>(BII[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)V

    .line 45
    invoke-interface {p4}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 46
    .local v0, "annotation_table_length":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 48
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    invoke-static {p4, p5, p6}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->read(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v3

    aput-object v3, v2, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(BII[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)V
    .locals 0
    .param p1, "annotation_type"    # B
    .param p2, "name_index"    # I
    .param p3, "length"    # I
    .param p4, "annotation_table"    # [Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .param p5, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p6, "isRuntimeVisible"    # Z

    .line 61
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 62
    iput-object p4, p0, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    .line 63
    iput-boolean p6, p0, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->isRuntimeVisible:Z

    .line 64
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 74
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitAnnotation(Lorg/checkerframework/org/apache/bcel/classfile/Annotations;)V

    .line 75
    return-void
.end method

.method public getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    return-object v0
.end method

.method public final getNumAnnotations()I
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public isRuntimeVisible()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->isRuntimeVisible:Z

    return v0
.end method

.method public final setAnnotationTable([Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;)V
    .locals 0
    .param p1, "annotation_table"    # [Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    .line 81
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    .line 82
    return-void
.end method

.method protected writeAnnotations(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    if-nez v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 110
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 111
    .local v3, "element":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->dump(Ljava/io/DataOutputStream;)V

    .line 110
    .end local v3    # "element":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    return-void
.end method
