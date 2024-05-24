.class public Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;
.super Lorg/checkerframework/org/apache/bcel/classfile/Annotations;
.source "RuntimeInvisibleAnnotations.java"


# direct methods
.method public constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 7
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const/16 v1, 0xd

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;-><init>(BIILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 57
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 0
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->dump(Ljava/io/DataOutputStream;)V

    .line 64
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;->writeAnnotations(Ljava/io/DataOutputStream;)V

    .line 65
    return-void
.end method
