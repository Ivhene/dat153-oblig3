.class public final Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
.super Ljava/lang/Object;
.source "StackMapType.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private index:I

.field private type:B


# direct methods
.method public constructor <init>(BILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 3
    .param p1, "type"    # B
    .param p2, "index"    # I
    .param p3, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->index:I

    .line 61
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    .line 64
    iput-byte p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->type:B

    .line 65
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->index:I

    .line 66
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 67
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal type for StackMapType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 2
    .param p1, "file"    # Ljava/io/DataInput;
    .param p2, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(BILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->index:I

    .line 52
    :cond_0
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 53
    return-void
.end method

.method private printIndex()Ljava/lang/String;
    .locals 4

    .line 118
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->type:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 119
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->index:I

    if-gez v0, :cond_0

    .line 120
    const-string v0, ", class=<unknown>"

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", class="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iget v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->index:I

    invoke-virtual {v2, v3, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_2
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .locals 1

    .line 146
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 147
    :catch_0
    move-exception v0

    .line 150
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

    .line 103
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->type:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 104
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public final getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->index:I

    return v0
.end method

.method public getType()B
    .locals 1

    .line 79
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->type:B

    return v0
.end method

.method public final hasIndex()Z
    .locals 2

    .line 113
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->type:B

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 166
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 167
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "t"    # I

    .line 84
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->index:I

    .line 85
    return-void
.end method

.method public setType(B)V
    .locals 3
    .param p1, "t"    # B

    .line 71
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    .line 74
    iput-byte p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->type:B

    .line 75
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal type for StackMapType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->type:B

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getItemName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->printIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
