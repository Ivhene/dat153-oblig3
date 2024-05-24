.class public abstract Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
.super Lorg/checkerframework/com/github/javaparser/ast/Node;
.source "Comment.java"


# instance fields
.field private commentedNode:Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private content:Ljava/lang/String;


# direct methods
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

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 55
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

    .line 62
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 63
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->setContent(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 64
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->customInitialization()V

    .line 65
    return-void
.end method


# virtual methods
.method public asBlockComment()Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;
    .locals 3

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an BlockComment"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asJavadocComment()Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .locals 3

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an JavadocComment"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asLineComment()Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an LineComment"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->clone()Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->clone()Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 2

    .line 176
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method public findRootNode()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2

    .line 158
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getCommentedNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 159
    .local v0, "n":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    goto :goto_0

    .line 162
    :cond_0
    return-object v0
.end method

.method public getCommentedNode()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->commentedNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CommentMetaModel;
    .locals 1

    .line 182
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->commentMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/CommentMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CommentMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifBlockComment(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;",
            ">;)V"
        }
    .end annotation

    .line 215
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;>;"
    return-void
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

    .line 219
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;>;"
    return-void
.end method

.method public ifLineComment(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;>;"
    return-void
.end method

.method public isBlockComment()Z
    .locals 1

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public isJavadocComment()Z
    .locals 1

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public isLineComment()Z
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isOrphan()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->commentedNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->commentedNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 147
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->removeOrphanComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z

    move-result v0

    return v0

    .line 151
    :cond_1
    const/4 v0, 0x0

    return v0
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

    .line 168
    if-nez p1, :cond_0

    .line 169
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 188
    if-nez p1, :cond_0

    .line 189
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p1, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "comment"
        }
    .end annotation

    .line 136
    if-nez p1, :cond_0

    .line 139
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A comment cannot be commented."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCommentedNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 2
    .param p1, "commentedNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentedNode"
        }
    .end annotation

    .line 114
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->COMMENTED_NODE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->commentedNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    if-nez p1, :cond_0

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->commentedNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 117
    return-object p0

    .line 119
    :cond_0
    if-eq p1, p0, :cond_2

    .line 122
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    if-nez v0, :cond_1

    .line 125
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->commentedNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 126
    return-object p0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setContent(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "content"
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->content:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 86
    return-object p0

    .line 88
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CONTENT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->content:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->content:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public toBlockComment()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;",
            ">;"
        }
    .end annotation

    .line 227
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
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

    .line 232
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toLineComment()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
