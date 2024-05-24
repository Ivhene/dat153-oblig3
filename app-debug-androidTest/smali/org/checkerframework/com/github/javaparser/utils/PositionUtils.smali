.class public final Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;
.super Ljava/lang/Object;
.source "PositionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static areInOrder(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p0, "a"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "b"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
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

    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->areInOrder(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Z)Z

    move-result v0

    return v0
.end method

.method public static areInOrder(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Z)Z
    .locals 1
    .param p0, "a"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "b"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "ignoringAnnotations"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "ignoringAnnotations"
        }
    .end annotation

    .line 63
    invoke-static {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->compare(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Z)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static beginColumnWithoutConsideringAnnotation(Lorg/checkerframework/com/github/javaparser/ast/Node;)I
    .locals 1
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 115
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->beginNodeWithoutConsideringAnnotations(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Range;

    iget-object v0, v0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget v0, v0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    return v0
.end method

.method private static beginLineWithoutConsideringAnnotation(Lorg/checkerframework/com/github/javaparser/ast/Node;)I
    .locals 1
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 110
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->beginNodeWithoutConsideringAnnotations(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Range;

    iget-object v0, v0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget v0, v0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    return v0
.end method

.method private static beginNodeWithoutConsideringAnnotations(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 119
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-eqz v0, :cond_1

    .line 123
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 124
    .local v0, "casted":Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    return-object v1

    .line 126
    .end local v0    # "casted":Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    :cond_1
    return-object p0

    .line 120
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType;

    .line 121
    .local v0, "casted":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType<*Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    return-object v1
.end method

.method private static compare(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Z)I
    .locals 5
    .param p0, "a"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "b"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "ignoringAnnotations"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "ignoringAnnotations"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, -0x1

    return v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_2
    if-eqz p2, :cond_4

    .line 77
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->beginLineWithoutConsideringAnnotation(Lorg/checkerframework/com/github/javaparser/ast/Node;)I

    move-result v0

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->beginLineWithoutConsideringAnnotation(Lorg/checkerframework/com/github/javaparser/ast/Node;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    .line 78
    .local v0, "signLine":I
    if-nez v0, :cond_3

    .line 79
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->beginColumnWithoutConsideringAnnotation(Lorg/checkerframework/com/github/javaparser/ast/Node;)I

    move-result v1

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->beginColumnWithoutConsideringAnnotation(Lorg/checkerframework/com/github/javaparser/ast/Node;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    return v1

    .line 81
    :cond_3
    return v0

    .line 85
    .end local v0    # "signLine":I
    :cond_4
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getBegin()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Position;

    .line 86
    .local v0, "aBegin":Lorg/checkerframework/com/github/javaparser/Position;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getBegin()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/Position;

    .line 88
    .local v1, "bBegin":Lorg/checkerframework/com/github/javaparser/Position;
    iget v2, v0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    iget v3, v1, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v2

    .line 89
    .local v2, "signLine":I
    if-nez v2, :cond_5

    .line 90
    iget v3, v0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    iget v4, v1, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v3

    return v3

    .line 92
    :cond_5
    return v2
.end method

.method public static getLastAnnotation(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .locals 3
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 97
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 98
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->nodeList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 99
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    return-object v1

    .line 102
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 103
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    return-object v1

    .line 105
    .end local v0    # "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    :cond_1
    return-object v1
.end method

.method static synthetic lambda$sortByBeginPosition$0(ZLorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)I
    .locals 1
    .param p0, "ignoringAnnotations"    # Z
    .param p1, "o1"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "o2"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "ignoringAnnotations",
            "o1",
            "o2"
        }
    .end annotation

    .line 55
    invoke-static {p1, p2, p0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->compare(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Z)I

    move-result v0

    return v0
.end method

.method public static nodeContains(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Z)Z
    .locals 8
    .param p0, "container"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "contained"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "ignoringAnnotations"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "contained",
            "ignoringAnnotations"
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Range;

    .line 132
    .local v0, "containedRange":Lorg/checkerframework/com/github/javaparser/Range;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/Range;

    .line 133
    .local v1, "containerRange":Lorg/checkerframework/com/github/javaparser/Range;
    if-eqz p2, :cond_8

    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->getLastAnnotation(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->containsWithinRange(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 137
    return v3

    .line 141
    :cond_1
    instance-of v2, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    .line 142
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->beginLineWithoutConsideringAnnotation(Lorg/checkerframework/com/github/javaparser/ast/Node;)I

    move-result v2

    .line 143
    .local v2, "bl":I
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->beginColumnWithoutConsideringAnnotation(Lorg/checkerframework/com/github/javaparser/ast/Node;)I

    move-result v5

    .line 144
    .local v5, "bc":I
    iget-object v6, v0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget v6, v6, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    if-le v2, v6, :cond_2

    return v3

    .line 145
    :cond_2
    iget-object v6, v0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget v6, v6, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    if-ne v2, v6, :cond_3

    iget-object v6, v0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget v6, v6, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    if-le v5, v6, :cond_3

    return v3

    .line 146
    :cond_3
    iget-object v6, v1, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v6, v6, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    iget-object v7, v0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v7, v7, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    if-ge v6, v7, :cond_4

    return v3

    .line 148
    :cond_4
    iget-object v6, v1, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v6, v6, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    iget-object v7, v0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v7, v7, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    if-ne v6, v7, :cond_5

    iget-object v6, v1, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v6, v6, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    iget-object v7, v0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v7, v7, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    if-lt v6, v7, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    return v3

    .line 150
    .end local v2    # "bl":I
    .end local v5    # "bc":I
    :cond_7
    return v4

    .line 134
    :cond_8
    :goto_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->containsWithinRange(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v2

    return v2
.end method

.method public static sortByBeginPosition(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "nodes":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;Z)V

    .line 48
    return-void
.end method

.method public static sortByBeginPosition(Ljava/util/List;Z)V
    .locals 1
    .param p1, "ignoringAnnotations"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "nodes",
            "ignoringAnnotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 55
    .local p0, "nodes":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 56
    return-void
.end method

.method public static sortByBeginPosition(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    .local p0, "nodes":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;Z)V

    .line 52
    return-void
.end method
