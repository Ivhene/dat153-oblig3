.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;
.super Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
.source "ConstantInvokeDynamic.java"


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "bootstrap_method_attr_index"    # I
    .param p2, "name_and_type_index"    # I

    .line 56
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;-><init>(BII)V

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 2
    .param p1, "file"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;-><init>(II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;)V
    .locals 2
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;

    .line 40
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;->getBootstrapMethodAttrIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;->getNameAndTypeIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;-><init>(II)V

    .line 41
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 69
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantInvokeDynamic(Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;)V

    .line 70
    return-void
.end method

.method public final getBootstrapMethodAttrIndex()I
    .locals 1

    .line 80
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getClassIndex()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 88
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class_index"

    const-string v2, "bootstrap_method_attr_index"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
