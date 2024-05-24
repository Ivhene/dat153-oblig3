.class public abstract Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "ParameterAnnotations.java"


# instance fields
.field private parameter_annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;


# direct methods
.method constructor <init>(BIILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 6
    .param p1, "parameter_annotation_type"    # B
    .param p2, "name_index"    # I
    .param p3, "length"    # I
    .param p4, "input"    # Ljava/io/DataInput;
    .param p5, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v4, 0x0

    move-object v0, v4

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;-><init>(BII[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 46
    invoke-interface {p4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 47
    .local v0, "num_parameters":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->parameter_annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->parameter_annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    invoke-direct {v3, p4, p5}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v3, v2, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(BII[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "parameter_annotation_type"    # B
    .param p2, "name_index"    # I
    .param p3, "length"    # I
    .param p4, "parameter_annotation_table"    # [Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
    .param p5, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 63
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 64
    iput-object p4, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->parameter_annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    .line 65
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 77
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitParameterAnnotation(Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;)V

    .line 78
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 121
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    return-object v0
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 108
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->parameter_annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 110
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->parameter_annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 111
    .local v3, "element":Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;->dump(Ljava/io/DataOutputStream;)V

    .line 110
    .end local v3    # "element":Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method public getParameterAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->parameter_annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    return-object v0
.end method

.method public final getParameterAnnotationTable()[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->parameter_annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    return-object v0
.end method

.method public final setParameterAnnotationTable([Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;)V
    .locals 0
    .param p1, "parameter_annotation_table"    # [Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    .line 85
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;->parameter_annotation_table:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    .line 86
    return-void
.end method
