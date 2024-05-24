.class public Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
.super Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
.source "JavadocComment.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    const/4 v0, 0x0

    const-string v1, "empty"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "content"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->customInitialization()V

    .line 60
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 65
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 71
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public asJavadocComment()Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .locals 0

    .line 115
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->clone()Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->clone()Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->clone()Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .locals 2

    .line 89
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CommentMetaModel;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/JavadocCommentMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/JavadocCommentMetaModel;
    .locals 1

    .line 95
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->javadocCommentMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/JavadocCommentMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/JavadocCommentMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifJavadocComment(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public isJavadocComment()Z
    .locals 1

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public parse()Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseJavadoc(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 81
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "replacementNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    .line 101
    if-nez p1, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public toJavadocComment()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
