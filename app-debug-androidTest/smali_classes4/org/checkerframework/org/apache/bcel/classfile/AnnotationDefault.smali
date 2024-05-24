.class public Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "AnnotationDefault.java"


# instance fields
.field private default_value:Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;


# direct methods
.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 2
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;-><init>(IILorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 44
    invoke-static {p3, p4}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->readElementValue(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;->default_value:Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    .line 45
    return-void
.end method

.method public constructor <init>(IILorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "defaultValue"    # Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 54
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 55
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;->default_value:Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    .line 56
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 67
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitAnnotationDefault(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;)V

    .line 68
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 86
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 92
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;->default_value:Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->dump(Ljava/io/DataOutputStream;)V

    .line 93
    return-void
.end method

.method public final getDefaultValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;->default_value:Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    return-object v0
.end method

.method public final setDefaultValue(Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;)V
    .locals 0
    .param p1, "defaultValue"    # Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    .line 74
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;->default_value:Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    .line 75
    return-void
.end method
