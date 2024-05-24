.class public Lorg/checkerframework/com/github/javaparser/utils/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/Pair;, "Lorg/checkerframework/com/github/javaparser/utils/Pair<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/Pair;, "Lorg/checkerframework/com/github/javaparser/utils/Pair<TA;TB;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 46
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    .line 50
    .local v2, "pair":Lorg/checkerframework/com/github/javaparser/utils/Pair;, "Lorg/checkerframework/com/github/javaparser/utils/Pair<**>;"
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 51
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 53
    :cond_3
    return v0

    .line 46
    .end local v2    # "pair":Lorg/checkerframework/com/github/javaparser/utils/Pair;, "Lorg/checkerframework/com/github/javaparser/utils/Pair<**>;"
    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 58
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/Pair;, "Lorg/checkerframework/com/github/javaparser/utils/Pair<TA;TB;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 59
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/Pair;, "Lorg/checkerframework/com/github/javaparser/utils/Pair<TA;TB;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<%s, %s>"

    invoke-static {v1, v0}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
