.class final Lorg/checkerframework/com/google/common/base/JdkPattern$JdkMatcher;
.super Lorg/checkerframework/com/google/common/base/CommonMatcher;
.source "JdkPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/JdkPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JdkMatcher"
.end annotation


# instance fields
.field final matcher:Ljava/util/regex/Matcher;


# direct methods
.method constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 1
    .param p1, "matcher"    # Ljava/util/regex/Matcher;

    .line 54
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/CommonMatcher;-><init>()V

    .line 55
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Matcher;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    .line 56
    return-void
.end method


# virtual methods
.method public end()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    return v0
.end method

.method public find()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public find(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 70
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    return v0
.end method

.method public matches()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "replacement"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    return v0
.end method
