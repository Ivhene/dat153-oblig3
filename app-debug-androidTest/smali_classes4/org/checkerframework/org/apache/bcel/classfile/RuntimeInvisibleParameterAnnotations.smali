.class public Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleParameterAnnotations;
.super Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;
.source "RuntimeInvisibleParameterAnnotations.java"


# direct methods
.method public constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 6
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const/16 v1, 0xf

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotations;-><init>(BIILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 43
    return-void
.end method
