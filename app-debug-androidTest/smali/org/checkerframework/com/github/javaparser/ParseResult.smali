.class public Lorg/checkerframework/com/github/javaparser/ParseResult;
.super Ljava/lang/Object;
.source "ParseResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final commentsCollection:Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

.field private final problems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/Problem;",
            ">;"
        }
    .end annotation
.end field

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;)V
    .locals 0
    .param p3, "commentsCollection"    # Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "problems",
            "commentsCollection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/Problem;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    .local p2, "problems":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/Problem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ParseResult;->commentsCollection:Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    .line 49
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ParseResult;->result:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ParseResult;->problems:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public getCommentsCollection()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;",
            ">;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParseResult;->commentsCollection:Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getProblem(I)Lorg/checkerframework/com/github/javaparser/Problem;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Problem;

    return-object v0
.end method

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

    .line 73
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParseResult;->problems:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParseResult;->result:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public ifSuccessful(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParseResult;->result:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-void
.end method

.method public isSuccessful()Z
    .locals 1

    .line 57
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParseResult;->problems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParseResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 99
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "Parsing successful"

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parsing failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    .local v0, "message":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ParseResult;->problems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/Problem;

    .line 104
    .local v2, "problem":Lorg/checkerframework/com/github/javaparser/Problem;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/Problem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .end local v2    # "problem":Lorg/checkerframework/com/github/javaparser/Problem;
    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
