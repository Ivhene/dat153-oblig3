.class abstract Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher;
.super Ljava/lang/Object;
.source "AbstractStringMatcher.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$TrimMatcher;,
        Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$StringMatcher;,
        Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$NoMatcher;,
        Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;,
        Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method


# virtual methods
.method public isMatch([CI)I
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I

    .line 253
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher;->isMatch([CIII)I

    move-result v0

    return v0
.end method
