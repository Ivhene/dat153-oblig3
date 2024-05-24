.class public final Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
.super Ljava/lang/Object;
.source "LineNumber.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;


# instance fields
.field private line_number:S

.field private start_pc:S


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "start_pc"    # I
    .param p2, "line_number"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    int-to-short v0, p1

    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->start_pc:S

    .line 67
    int-to-short v0, p2

    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->line_number:S

    .line 68
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

    .line 57
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;-><init>(II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;)V
    .locals 2
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->getStartPC()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->getLineNumber()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;-><init>(II)V

    .line 47
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 80
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitLineNumber(Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;)V

    .line 81
    return-void
.end method

.method public copy()Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    .locals 1

    .line 143
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 144
    :catch_0
    move-exception v0

    .line 147
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

    .line 91
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->start_pc:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 92
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->line_number:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 93
    return-void
.end method

.method public final getLineNumber()I
    .locals 2

    .line 100
    const v0, 0xffff

    iget-short v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->line_number:S

    and-int/2addr v0, v1

    return v0
.end method

.method public final getStartPC()I
    .locals 2

    .line 108
    const v0, 0xffff

    iget-short v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->start_pc:S

    and-int/2addr v0, v1

    return v0
.end method

.method public final setLineNumber(I)V
    .locals 1
    .param p1, "line_number"    # I

    .line 116
    int-to-short v0, p1

    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->line_number:S

    .line 117
    return-void
.end method

.method public final setStartPC(I)V
    .locals 1
    .param p1, "start_pc"    # I

    .line 124
    int-to-short v0, p1

    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->start_pc:S

    .line 125
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineNumber("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->start_pc:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->line_number:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
