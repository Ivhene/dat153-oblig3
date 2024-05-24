.class final Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/classfile/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyByteArrayInputStream"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 133
    return-void
.end method


# virtual methods
.method final getData()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->buf:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method final unread()V
    .locals 1

    .line 142
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->pos:I

    if-lez v0, :cond_0

    .line 143
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->pos:I

    .line 145
    :cond_0
    return-void
.end method
