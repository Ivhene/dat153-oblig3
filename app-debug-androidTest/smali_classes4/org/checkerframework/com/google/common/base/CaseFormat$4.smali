.class final enum Lorg/checkerframework/com/google/common/base/CaseFormat$4;
.super Lorg/checkerframework/com/google/common/base/CaseFormat;
.source "CaseFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/CaseFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/base/CharMatcher;Ljava/lang/String;)V
    .locals 6
    .param p3, "wordBoundary"    # Lorg/checkerframework/com/google/common/base/CharMatcher;
    .param p4, "wordSeparator"    # Ljava/lang/String;

    .line 84
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/base/CharMatcher;Ljava/lang/String;Lorg/checkerframework/com/google/common/base/CaseFormat$1;)V

    return-void
.end method


# virtual methods
.method normalizeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/CaseFormat;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method