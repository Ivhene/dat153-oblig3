.class final Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;
.super Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher;
.source "AbstractStringMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharMatcher"
.end annotation


# instance fields
.field private final ch:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "ch"    # C

    .line 46
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher;-><init>()V

    .line 47
    iput-char p1, p0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;->ch:C

    .line 48
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I
    .param p3, "bufferStart"    # I
    .param p4, "bufferEnd"    # I

    .line 65
    iget-char v0, p0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;->ch:C

    aget-char v1, p1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
