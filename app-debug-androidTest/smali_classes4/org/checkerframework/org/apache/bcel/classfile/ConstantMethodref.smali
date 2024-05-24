.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;
.super Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
.source "ConstantMethodref.java"


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "class_index"    # I
    .param p2, "name_and_type_index"    # I

    .line 56
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;-><init>(BII)V

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 1
    .param p1, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;-><init>(BLjava/io/DataInput;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;)V
    .locals 3
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;

    .line 36
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getClassIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getNameAndTypeIndex()I

    move-result v1

    const/16 v2, 0xa

    invoke-direct {p0, v2, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;-><init>(BII)V

    .line 37
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 69
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantMethodref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;)V

    .line 70
    return-void
.end method
