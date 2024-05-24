.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;
.super Lorg/checkerframework/org/apache/bcel/classfile/Constant;
.source "ConstantLong.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/classfile/ConstantObject;


# instance fields
.field private bytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 44
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;-><init>(B)V

    .line 45
    iput-wide p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->bytes:J

    .line 46
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

    .line 64
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;-><init>(J)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;)V
    .locals 2
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    .line 53
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->getBytes()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;-><init>(J)V

    .line 54
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 77
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantLong(Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;)V

    .line 78
    return-void
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 90
    iget-wide v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->bytes:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 91
    return-void
.end method

.method public final getBytes()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 99
    iget-wide v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->bytes:J

    return-wide v0
.end method

.method public getConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/Object;
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 124
    iget-wide v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->bytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final setBytes(J)V
    .locals 0
    .param p1, "bytes"    # J

    .line 107
    iput-wide p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->bytes:J

    .line 108
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(bytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
