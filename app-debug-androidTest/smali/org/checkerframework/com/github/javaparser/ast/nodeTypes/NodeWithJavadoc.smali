.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.super Ljava/lang/Object;
.source "NodeWithJavadoc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$getJavadocComment$0(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z
    .locals 1
    .param p0, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    .line 47
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    return v0
.end method

.method public static synthetic lambda$getJavadocComment$1(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .locals 1
    .param p0, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    .line 48
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    return-object v0
.end method


# virtual methods
.method public abstract getComment()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation
.end method

.method public getJavadoc()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;",
            ">;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->getJavadocComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getJavadocComment()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;",
            ">;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc$$ExternalSyntheticLambda1;-><init>()V

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc$$ExternalSyntheticLambda2;-><init>()V

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method public hasJavaDocComment()Z
    .locals 1

    .line 88
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeJavaDocComment()Z
    .locals 1

    .line 84
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->hasJavaDocComment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->remove()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation
.end method

.method public setJavadocComment(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->setJavadocComment(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public setJavadocComment(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "indentation"    # Ljava/lang/String;
    .param p2, "javadoc"    # Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "indentation",
            "javadoc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;",
            ")TN;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<TN;>;"
    invoke-virtual {p2, p1}, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->toComment(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->setJavadocComment(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public setJavadocComment(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;",
            ")TN;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<TN;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 72
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public setJavadocComment(Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "javadoc"    # Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javadoc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;",
            ")TN;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<TN;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->toComment()Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->setJavadocComment(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method
