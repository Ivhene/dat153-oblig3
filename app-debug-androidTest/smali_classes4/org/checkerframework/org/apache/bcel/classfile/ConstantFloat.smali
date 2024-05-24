.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;
.super Lorg/checkerframework/org/apache/bcel/classfile/Constant;
.source "ConstantFloat.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/classfile/ConstantObject;


# instance fields
.field private bytes:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "bytes"    # F

    .line 44
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;-><init>(B)V

    .line 45
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->bytes:F

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 1
    .param p1, "file"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;-><init>(F)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;)V
    .locals 1
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    .line 54
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->getBytes()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;-><init>(F)V

    .line 55
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 78
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantFloat(Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;)V

    .line 79
    return-void
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 91
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->bytes:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 92
    return-void
.end method

.method public final getBytes()F
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 100
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->bytes:F

    return v0
.end method

.method public getConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/Object;
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 125
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->bytes:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public final setBytes(F)V
    .locals 0
    .param p1, "bytes"    # F

    .line 108
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->bytes:F

    .line 109
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(bytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->bytes:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
