.class final Lorg/checkerframework/org/apache/commons/text/StrMatcher$NoMatcher;
.super Lorg/checkerframework/org/apache/commons/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoMatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;-><init>()V

    .line 405
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I
    .param p3, "bufferStart"    # I
    .param p4, "bufferEnd"    # I

    .line 418
    const/4 v0, 0x0

    return v0
.end method
