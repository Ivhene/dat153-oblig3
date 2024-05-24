.class public Lorg/checkerframework/org/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;
.super Lorg/checkerframework/org/apache/commons/text/translate/CodePointTranslator;
.source "UnicodeUnpairedSurrogateRemover.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/translate/CodePointTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .locals 1
    .param p1, "codepoint"    # I
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdfff

    if-gt p1, v0, :cond_0

    .line 36
    const/4 v0, 0x1

    return v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
