.class final Lorg/checkerframework/com/google/common/base/JdkPattern;
.super Lorg/checkerframework/com/google/common/base/CommonPattern;
.source "JdkPattern.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/base/JdkPattern$JdkMatcher;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 27
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/CommonPattern;-><init>()V

    .line 28
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    .line 29
    return-void
.end method


# virtual methods
.method public flags()I
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->flags()I

    move-result v0

    return v0
.end method

.method public matcher(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/base/CommonMatcher;
    .locals 2
    .param p1, "t"    # Ljava/lang/CharSequence;

    .line 33
    new-instance v0, Lorg/checkerframework/com/google/common/base/JdkPattern$JdkMatcher;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/base/JdkPattern$JdkMatcher;-><init>(Ljava/util/regex/Matcher;)V

    return-object v0
.end method

.method public pattern()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
