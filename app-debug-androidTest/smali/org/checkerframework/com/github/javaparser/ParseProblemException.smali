.class public Lorg/checkerframework/com/github/javaparser/ParseProblemException;
.super Ljava/lang/RuntimeException;
.source "ParseProblemException.java"


# instance fields
.field private final problems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/Problem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Problem;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/Problem;-><init>(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/Throwable;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/ParseProblemException;-><init>(Ljava/util/List;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "problems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/Problem;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "problems":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/Problem;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/ParseProblemException;->createMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ParseProblemException;->problems:Ljava/util/List;

    .line 42
    return-void
.end method

.method private static createMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "problems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/Problem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 49
    .local p0, "problems":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/Problem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "message":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/Problem;

    .line 51
    .local v2, "problem":Lorg/checkerframework/com/github/javaparser/Problem;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/Problem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .end local v2    # "problem":Lorg/checkerframework/com/github/javaparser/Problem;
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getProblems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/Problem;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParseProblemException;->problems:Ljava/util/List;

    return-object v0
.end method
