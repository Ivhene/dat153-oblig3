.class Lorg/checkerframework/com/google/common/base/CharMatcher$NegatedFastMatcher;
.super Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NegatedFastMatcher"
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/CharMatcher;)V
    .locals 0
    .param p1, "original"    # Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 971
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;-><init>(Lorg/checkerframework/com/google/common/base/CharMatcher;)V

    .line 972
    return-void
.end method


# virtual methods
.method public final precomputed()Lorg/checkerframework/com/google/common/base/CharMatcher;
    .locals 0

    .line 976
    return-object p0
.end method