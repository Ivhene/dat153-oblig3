.class public final Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
.super Ljava/lang/Object;
.source "CodeException.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;
.implements Lorg/checkerframework/org/apache/bcel/Constants;


# instance fields
.field private catch_type:I

.field private end_pc:I

.field private handler_pc:I

.field private start_pc:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "start_pc"    # I
    .param p2, "end_pc"    # I
    .param p3, "handler_pc"    # I
    .param p4, "catch_type"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->start_pc:I

    .line 79
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->end_pc:I

    .line 80
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->handler_pc:I

    .line 81
    iput p4, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->catch_type:I

    .line 82
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 4
    .param p1, "file"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    .line 63
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    .line 62
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;-><init>(IIII)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/CodeException;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    .line 52
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getStartPC()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getEndPC()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getHandlerPC()I

    move-result v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getCatchType()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;-><init>(IIII)V

    .line 53
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 94
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitCodeException(Lorg/checkerframework/org/apache/bcel/classfile/CodeException;)V

    .line 95
    return-void
.end method

.method public copy()Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .locals 1

    .line 213
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->start_pc:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 106
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->end_pc:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 107
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->handler_pc:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 108
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->catch_type:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 109
    return-void
.end method

.method public final getCatchType()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->catch_type:I

    return v0
.end method

.method public final getEndPC()I
    .locals 1

    .line 125
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->end_pc:I

    return v0
.end method

.method public final getHandlerPC()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->handler_pc:I

    return v0
.end method

.method public final getStartPC()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->start_pc:I

    return v0
.end method

.method public final setCatchType(I)V
    .locals 0
    .param p1, "catch_type"    # I

    .line 149
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->catch_type:I

    .line 150
    return-void
.end method

.method public final setEndPC(I)V
    .locals 0
    .param p1, "end_pc"    # I

    .line 157
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->end_pc:I

    .line 158
    return-void
.end method

.method public final setHandlerPC(I)V
    .locals 0
    .param p1, "handler_pc"    # I

    .line 165
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->handler_pc:I

    .line 166
    return-void
.end method

.method public final setStartPC(I)V
    .locals 0
    .param p1, "start_pc"    # I

    .line 173
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->start_pc:I

    .line 174
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeException(start_pc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->start_pc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end_pc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->end_pc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handler_pc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->handler_pc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", catch_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->catch_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Ljava/lang/String;
    .locals 4
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p2, "verbose"    # Z

    .line 192
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->catch_type:I

    if-nez v0, :cond_0

    .line 193
    const-string v0, "<Any exception>(0)"

    .local v0, "str":Ljava/lang/String;
    goto :goto_1

    .line 195
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->catch_type:I

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->catch_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0    # "str":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->start_pc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->end_pc:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->handler_pc:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
