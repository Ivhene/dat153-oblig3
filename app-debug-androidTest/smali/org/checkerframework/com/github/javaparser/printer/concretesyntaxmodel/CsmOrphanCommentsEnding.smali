.class public Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmOrphanCommentsEnding;
.super Ljava/lang/Object;
.source "CsmOrphanCommentsEnding.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .locals 5
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 38
    .local v0, "everything":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;)V

    .line 40
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    return-void

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    .local v1, "commentsAtEnd":I
    const/4 v2, 0x1

    .line 46
    .local v2, "findingComments":Z
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 48
    .local v3, "last":Lorg/checkerframework/com/github/javaparser/ast/Node;
    instance-of v2, v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 49
    if-eqz v2, :cond_1

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 52
    .end local v3    # "last":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_1
    goto :goto_0

    .line 53
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 55
    .local v4, "c":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-static {v4, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmComment;->process(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 53
    .end local v4    # "c":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 57
    .end local v3    # "i":I
    :cond_3
    return-void
.end method
