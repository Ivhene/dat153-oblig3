.class final Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ProtectedInputStream;
.super Ljava/io/InputStream;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtectedInputStream"
.end annotation


# instance fields
.field private final is:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .line 453
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 454
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ProtectedInputStream;->is:Ljava/io/InputStream;

    .line 455
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lorg/checkerframework/org/objectweb/asmx/xml/Processor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lorg/checkerframework/org/objectweb/asmx/xml/Processor$1;

    .line 449
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ProtectedInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ProtectedInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    return-void
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ProtectedInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ProtectedInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method
