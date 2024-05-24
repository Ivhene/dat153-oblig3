.class Lorg/checkerframework/org/plumelib/util/EntryReader$DummyReader;
.super Ljava/io/Reader;
.source "EntryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/EntryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyReader"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/EntryReader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/EntryReader$1;

    .line 287
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/EntryReader$DummyReader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 292
    return-void
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readAheadLimit"    # I

    .line 296
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DummyReader"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DummyReader"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 2

    .line 306
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DummyReader"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 2
    .param p1, "target"    # Ljava/nio/CharBuffer;

    .line 322
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DummyReader"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([C)I
    .locals 2
    .param p1, "cbuf"    # [C

    .line 311
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DummyReader"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([CII)I
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 317
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DummyReader"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ready()Z
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DummyReader"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DummyReader"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J

    .line 337
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DummyReader"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
