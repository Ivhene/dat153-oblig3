.class final Lorg/checkerframework/com/google/common/io/ByteSink$AsCharSink;
.super Lorg/checkerframework/com/google/common/io/CharSink;
.source "ByteSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/io/ByteSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsCharSink"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field final synthetic this$0:Lorg/checkerframework/com/google/common/io/ByteSink;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/io/ByteSink;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 143
    iput-object p1, p0, Lorg/checkerframework/com/google/common/io/ByteSink$AsCharSink;->this$0:Lorg/checkerframework/com/google/common/io/ByteSink;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/io/CharSink;-><init>()V

    .line 144
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/checkerframework/com/google/common/io/ByteSink$AsCharSink;->charset:Ljava/nio/charset/Charset;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/io/ByteSink;Ljava/nio/charset/Charset;Lorg/checkerframework/com/google/common/io/ByteSink$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/io/ByteSink;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/io/ByteSink$1;

    .line 139
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/io/ByteSink$AsCharSink;-><init>(Lorg/checkerframework/com/google/common/io/ByteSink;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/Writer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/ByteSink$AsCharSink;->this$0:Lorg/checkerframework/com/google/common/io/ByteSink;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/io/ByteSink$AsCharSink;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/ByteSink$AsCharSink;->this$0:Lorg/checkerframework/com/google/common/io/ByteSink;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".asCharSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/ByteSink$AsCharSink;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
