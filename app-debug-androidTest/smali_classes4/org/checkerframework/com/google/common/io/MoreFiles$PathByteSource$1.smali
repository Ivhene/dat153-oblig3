.class Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource$1;
.super Lorg/checkerframework/com/google/common/io/ByteSource$AsCharSource;
.source "MoreFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource;->asCharSource(Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 171
    iput-object p1, p0, Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource$1;->this$0:Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource;

    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/io/ByteSource$AsCharSource;-><init>(Lorg/checkerframework/com/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public lines()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource$1;->this$0:Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource;->access$100(Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/MoreFiles$PathByteSource$1;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
