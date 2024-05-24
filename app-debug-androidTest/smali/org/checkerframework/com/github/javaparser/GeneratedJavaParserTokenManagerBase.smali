.class abstract Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManagerBase;
.super Ljava/lang/Object;
.source "GeneratedJavaParserTokenManagerBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCommentFromToken(Lorg/checkerframework/com/github/javaparser/Token;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 5
    .param p0, "token"    # Lorg/checkerframework/com/github/javaparser/Token;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Token;->image:Ljava/lang/String;

    .line 28
    .local v0, "commentText":Ljava/lang/String;
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    .line 29
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManagerBase;->tokenRange(Lorg/checkerframework/com/github/javaparser/Token;)Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-object v1

    .line 30
    :cond_0
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 31
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;

    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManagerBase;->tokenRange(Lorg/checkerframework/com/github/javaparser/Token;)Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-object v1

    .line 32
    :cond_1
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 33
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;

    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManagerBase;->tokenRange(Lorg/checkerframework/com/github/javaparser/Token;)Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-result-object v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-object v1

    .line 35
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unexpectedly got passed a non-comment token."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static tokenRange(Lorg/checkerframework/com/github/javaparser/Token;)Lorg/checkerframework/com/github/javaparser/TokenRange;
    .locals 2
    .param p0, "token"    # Lorg/checkerframework/com/github/javaparser/Token;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Token;->javaToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 19
    .local v0, "javaToken":Lorg/checkerframework/com/github/javaparser/JavaToken;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v1, v0, v0}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    return-object v1
.end method
