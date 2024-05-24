.class public Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;
.super Ljava/lang/Object;
.source "CommentsCollection.java"


# instance fields
.field private final comments:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentsToCopy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "commentsToCopy":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 44
    return-void
.end method

.method static synthetic lambda$getBlockComments$3(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z
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

    .line 55
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;

    return v0
.end method

.method static synthetic lambda$getBlockComments$4(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;
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

    .line 56
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;

    return-object v0
.end method

.method static synthetic lambda$getBlockComments$5()Ljava/util/TreeSet;
    .locals 2

    .line 57
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$getJavadocComments$6(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z
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

    .line 62
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    return v0
.end method

.method static synthetic lambda$getJavadocComments$7(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
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

    .line 63
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    return-object v0
.end method

.method static synthetic lambda$getJavadocComments$8()Ljava/util/TreeSet;
    .locals 2

    .line 64
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$getLineComments$0(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z
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
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;

    return v0
.end method

.method static synthetic lambda$getLineComments$1(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
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

    .line 49
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;

    return-object v0
.end method

.method static synthetic lambda$getLineComments$2()Ljava/util/TreeSet;
    .locals 2

    .line 50
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$minus$9(Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z
    .locals 1
    .param p0, "other"    # Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;
    .param p1, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "other",
            "comment"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->contains(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public addComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V
    .locals 1
    .param p1, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public contains(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z
    .locals 7
    .param p1, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    return v1

    .line 75
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Range;

    .line 76
    .local v0, "commentRange":Lorg/checkerframework/com/github/javaparser/Range;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->getComments()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 77
    .local v3, "c":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getRange()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    return v1

    .line 80
    :cond_1
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getRange()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/Range;

    .line 83
    .local v4, "cRange":Lorg/checkerframework/com/github/javaparser/Range;
    iget-object v5, v4, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v6, v0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v5, v6}, Lorg/checkerframework/com/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v5, v5, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    iget-object v6, v0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v6, v6, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    if-ne v5, v6, :cond_2

    iget-object v5, v4, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v5, v5, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    iget-object v6, v0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v6, v6, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    sub-int/2addr v5, v6

    .line 85
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 86
    const/4 v1, 0x1

    return v1

    .line 88
    .end local v3    # "c":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .end local v4    # "cRange":Lorg/checkerframework/com/github/javaparser/Range;
    :cond_2
    goto :goto_0

    .line 89
    :cond_3
    return v1
.end method

.method public copy()Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;
    .locals 2

    .line 110
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getBlockComments()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda7;-><init>()V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda8;-><init>()V

    .line 56
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda9;-><init>()V

    .line 57
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 54
    return-object v0
.end method

.method public getComments()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getJavadocComments()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda0;-><init>()V

    .line 62
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda1;-><init>()V

    .line 63
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda2;-><init>()V

    .line 64
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 61
    return-object v0
.end method

.method public getLineComments()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda4;-><init>()V

    .line 48
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda5;-><init>()V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda6;-><init>()V

    .line 50
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 47
    return-object v0
.end method

.method public minus(Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;)Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;
    .locals 4
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;-><init>()V

    .line 102
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;
    iget-object v1, v0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    .line 103
    invoke-virtual {v2}, Ljava/util/TreeSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;)V

    .line 104
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 105
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 102
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 106
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method
