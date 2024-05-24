.class Lorg/checkerframework/com/github/javaparser/CommentsInserter;
.super Ljava/lang/Object;
.source "CommentsInserter.java"


# instance fields
.field private final configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 50
    return-void
.end method

.method private attributeLineCommentToNodeOrChild(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;)Z
    .locals 6
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "lineComment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "lineComment"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getBegin()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Position;

    iget v0, v0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getBegin()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/Position;

    iget v2, v2, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 184
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 188
    :cond_1
    return v3

    .line 192
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 193
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;)V

    .line 195
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 198
    .local v4, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-direct {p0, v4, p2}, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->attributeLineCommentToNodeOrChild(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 199
    return v3

    .line 201
    .end local v4    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_3
    goto :goto_0

    .line 203
    :cond_4
    return v1

    .line 178
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    :cond_5
    :goto_1
    return v1
.end method

.method private attributeLineCommentsOnSameLine(Ljava/util/TreeSet;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commentsToAttribute",
            "children"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "commentsToAttribute":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;>;"
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 159
    .local v0, "attributedComments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;>;"
    invoke-virtual {p1}, Ljava/util/TreeSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda0;-><init>()V

    .line 160
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda1;-><init>()V

    .line 161
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, v0}, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/CommentsInserter;Ljava/util/List;Ljava/util/List;)V

    .line 162
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 173
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 174
    return-void
.end method

.method private insertComments(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/util/TreeSet;)V
    .locals 3
    .param p1, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cu",
            "comments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            "Ljava/util/TreeSet<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p2, "comments":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;>;"
    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getChildNodes()Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 70
    .local v1, "firstComment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 71
    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->areInOrder(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    :cond_1
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 74
    invoke-virtual {p2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    return-void
.end method

.method static synthetic lambda$attributeLineCommentsOnSameLine$3(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z
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

    .line 160
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$insertComments$0(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 98
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$insertComments$1(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z
    .locals 1
    .param p0, "c"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "c"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$null$4(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p0, "child"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "child"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method private thereAreLinesBetween(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 4
    .param p1, "a"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "b"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
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

    .line 208
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->areInOrder(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->thereAreLinesBetween(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0

    .line 214
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getEnd()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Position;

    iget v0, v0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    .line 215
    .local v0, "endOfA":I
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getBegin()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/Position;

    iget v2, v2, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    add-int/lit8 v3, v0, 0x1

    if-le v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 209
    .end local v0    # "endOfA":I
    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method insertComments(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/TreeSet;)V
    .locals 7
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "commentsToAttribute"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            "Ljava/util/TreeSet<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p2, "commentsToAttribute":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;>;"
    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->insertComments(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/util/TreeSet;)V

    .line 96
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda3;-><init>()V

    .line 98
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 99
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 102
    .local v2, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    new-instance v3, Ljava/util/TreeSet;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 103
    .local v3, "commentsInsideChild":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;>;"
    nop

    .line 104
    invoke-virtual {p2}, Ljava/util/TreeSet;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda4;-><init>()V

    .line 105
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v2}, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda5;-><init>(Lorg/checkerframework/com/github/javaparser/CommentsInserter;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 106
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 107
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 103
    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p2, v3}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 109
    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->insertComments(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/TreeSet;)V

    .line 110
    .end local v2    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    .end local v3    # "commentsInsideChild":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;>;"
    goto :goto_0

    .line 112
    :cond_2
    invoke-direct {p0, p2, v0}, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->attributeLineCommentsOnSameLine(Ljava/util/TreeSet;Ljava/util/List;)V

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "previousComment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 118
    .local v2, "attributedComments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 120
    .local v3, "childrenAndComments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-virtual {p2, v2}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 123
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 125
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->isIgnoreAnnotationsWhenAttributingComments()Z

    move-result v4

    .line 124
    invoke-static {v3, v4}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;Z)V

    .line 127
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 128
    .local v5, "thing":Lorg/checkerframework/com/github/javaparser/ast/Node;
    instance-of v6, v5, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    if-eqz v6, :cond_3

    .line 129
    move-object v1, v5

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 130
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->isOrphan()Z

    move-result v6

    if-nez v6, :cond_5

    .line 131
    const/4 v1, 0x0

    goto :goto_2

    .line 134
    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-nez v6, :cond_5

    .line 135
    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->isDoNotAssignCommentsPrecedingEmptyLines()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 136
    invoke-direct {p0, v1, v5}, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->thereAreLinesBetween(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 137
    :cond_4
    invoke-virtual {v5, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 138
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v1, 0x0

    .line 143
    .end local v5    # "thing":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_5
    :goto_2
    goto :goto_1

    .line 145
    :cond_6
    invoke-virtual {p2, v2}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 148
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 149
    .local v5, "c":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->isOrphan()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 150
    invoke-virtual {p1, v5}, Lorg/checkerframework/com/github/javaparser/ast/Node;->addOrphanComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V

    .line 152
    .end local v5    # "c":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    :cond_7
    goto :goto_3

    .line 153
    :cond_8
    return-void
.end method

.method synthetic lambda$attributeLineCommentsOnSameLine$6$org-checkerframework-com-github-javaparser-CommentsInserter(Ljava/util/List;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V
    .locals 2
    .param p1, "children"    # Ljava/util/List;
    .param p2, "attributedComments"    # Ljava/util/List;
    .param p3, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "children",
            "attributedComments",
            "comment"
        }
    .end annotation

    .line 162
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda6;-><init>()V

    .line 163
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p3, p2}, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda7;-><init>(Lorg/checkerframework/com/github/javaparser/CommentsInserter;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Ljava/util/List;)V

    .line 164
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 162
    return-void
.end method

.method synthetic lambda$insertComments$2$org-checkerframework-com-github-javaparser-CommentsInserter(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z
    .locals 1
    .param p1, "child"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "c"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "child",
            "c"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 107
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->isIgnoreAnnotationsWhenAttributingComments()Z

    move-result v0

    .line 106
    invoke-static {p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->nodeContains(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Z)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$null$5$org-checkerframework-com-github-javaparser-CommentsInserter(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 4
    .param p1, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .param p2, "attributedComments"    # Ljava/util/List;
    .param p3, "child"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "comment",
            "attributedComments",
            "child"
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Range;

    .line 166
    .local v0, "commentRange":Lorg/checkerframework/com/github/javaparser/Range;
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/Range;

    .line 167
    .local v1, "childRange":Lorg/checkerframework/com/github/javaparser/Range;
    iget-object v2, v1, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v2, v2, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    iget-object v3, v0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget v3, v3, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    if-ne v2, v3, :cond_0

    .line 169
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->asLineComment()Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;

    move-result-object v2

    .line 168
    invoke-direct {p0, p3, v2}, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->attributeLineCommentToNodeOrChild(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    return-void
.end method
