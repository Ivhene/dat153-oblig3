.class final Lorg/checkerframework/com/google/common/base/Platform$JdkPatternCompiler;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/PatternCompiler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JdkPatternCompiler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/base/Platform$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/base/Platform$1;

    .line 89
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/Platform$JdkPatternCompiler;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/CommonPattern;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 92
    new-instance v0, Lorg/checkerframework/com/google/common/base/JdkPattern;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/base/JdkPattern;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public isPcreLike()Z
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method
