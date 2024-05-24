.class public Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;
.super Ljava/lang/Object;
.source "EqualsVisitor.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
        "Ljava/lang/Boolean;",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON:Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->SINGLETON:Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private commonNodeEquality(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "n2"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static equals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "n2"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    .line 45
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->SINGLETON:Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method private nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/Optional<",
            "TT;>;",
            "Ljava/util/Optional<",
            "TT;>;)Z"
        }
    .end annotation

    .line 115
    .local p1, "n":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p2, "n2":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method private nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .line 99
    .local p1, "n":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TT;"
    .local p2, "n2":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TT;"
    if-ne p1, p2, :cond_0

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 106
    return v0

    .line 108
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->commonNodeEquality(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    return v0

    .line 111
    :cond_3
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 103
    :cond_4
    :goto_0
    return v0
.end method

.method private nodesEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nodes1",
            "nodes2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 64
    .local p1, "nodes1":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "nodes2":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 65
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 66
    :cond_1
    if-nez p2, :cond_2

    .line 67
    return v1

    .line 69
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 70
    return v1

    .line 72
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 73
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {p0, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 74
    return v1

    .line 72
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 77
    .end local v2    # "i":I
    :cond_5
    return v0
.end method

.method private nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;>;",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 119
    .local p1, "n":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<TT;>;>;"
    .local p2, "n2":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<TT;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v0

    return v0
.end method

.method private nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;)Z"
        }
    .end annotation

    .line 81
    .local p1, "n":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p2, "n2":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 82
    return v0

    .line 84
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 88
    return v1

    .line 90
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 91
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    invoke-virtual {p2, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 92
    return v1

    .line 90
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "i":I
    :cond_4
    return v0

    .line 85
    :cond_5
    :goto_1
    return v1
.end method

.method private objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "n"    # Ljava/lang/Object;
    .param p2, "n2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    .line 123
    if-ne p1, p2, :cond_0

    .line 124
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 127
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 460
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;

    .line 461
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 462
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 461
    if-nez v1, :cond_0

    .line 462
    return-object v2

    .line 463
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    return-object v2

    .line 465
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    return-object v2

    .line 467
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 134
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 135
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 136
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 135
    if-nez v1, :cond_0

    .line 136
    return-object v2

    .line 137
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    return-object v2

    .line 139
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    return-object v2

    .line 141
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 142
    return-object v2

    .line 143
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 144
    return-object v2

    .line 145
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1182
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    .line 1183
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1184
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1183
    if-nez v1, :cond_0

    .line 1184
    return-object v2

    .line 1185
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1186
    return-object v2

    .line 1187
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1188
    return-object v2

    .line 1189
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1190
    return-object v2

    .line 1191
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1307
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    .line 1308
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1309
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1308
    if-nez v1, :cond_0

    .line 1309
    return-object v2

    .line 1310
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1311
    return-object v2

    .line 1312
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1196
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 156
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    .line 157
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 158
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 157
    if-nez v1, :cond_0

    .line 158
    return-object v2

    .line 159
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    return-object v2

    .line 161
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    return-object v2

    .line 163
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The method is not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 262
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;

    .line 263
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 264
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 263
    if-nez v1, :cond_0

    .line 264
    return-object v2

    .line 265
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    return-object v2

    .line 267
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    return-object v2

    .line 269
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 270
    return-object v2

    .line 271
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 272
    return-object v2

    .line 273
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 278
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;

    .line 279
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 280
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 279
    if-nez v1, :cond_0

    .line 280
    return-object v2

    .line 281
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    return-object v2

    .line 283
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 284
    return-object v2

    .line 285
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 286
    return-object v2

    .line 287
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 288
    return-object v2

    .line 289
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 290
    return-object v2

    .line 291
    :cond_5
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 202
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 203
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 204
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 203
    if-nez v1, :cond_0

    .line 204
    return-object v2

    .line 205
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    return-object v2

    .line 207
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 208
    return-object v2

    .line 209
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 210
    return-object v2

    .line 211
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 212
    return-object v2

    .line 213
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 214
    return-object v2

    .line 215
    :cond_5
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 216
    return-object v2

    .line 217
    :cond_6
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 218
    return-object v2

    .line 219
    :cond_7
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 220
    return-object v2

    .line 221
    :cond_8
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 324
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 325
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 326
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 325
    if-nez v1, :cond_0

    .line 326
    return-object v2

    .line 327
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    return-object v2

    .line 329
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 330
    return-object v2

    .line 331
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 332
    return-object v2

    .line 333
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 334
    return-object v2

    .line 335
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 336
    return-object v2

    .line 337
    :cond_5
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 338
    return-object v2

    .line 339
    :cond_6
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 340
    return-object v2

    .line 341
    :cond_7
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 342
    return-object v2

    .line 343
    :cond_8
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 246
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 247
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 248
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 247
    if-nez v1, :cond_0

    .line 248
    return-object v2

    .line 249
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    return-object v2

    .line 251
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 252
    return-object v2

    .line 253
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 254
    return-object v2

    .line 255
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 256
    return-object v2

    .line 257
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 226
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    .line 227
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 228
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 227
    if-nez v1, :cond_0

    .line 228
    return-object v2

    .line 229
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    return-object v2

    .line 231
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 232
    return-object v2

    .line 233
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 234
    return-object v2

    .line 235
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 236
    return-object v2

    .line 237
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 238
    return-object v2

    .line 239
    :cond_5
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 240
    return-object v2

    .line 241
    :cond_6
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 296
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    .line 297
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 298
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 297
    if-nez v1, :cond_0

    .line 298
    return-object v2

    .line 299
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    return-object v2

    .line 301
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    return-object v2

    .line 303
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 304
    return-object v2

    .line 305
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 394
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    .line 395
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 396
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 395
    if-nez v1, :cond_0

    .line 396
    return-object v2

    .line 397
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    return-object v2

    .line 399
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 400
    return-object v2

    .line 401
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 402
    return-object v2

    .line 403
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 348
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 349
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 350
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 349
    if-nez v1, :cond_0

    .line 350
    return-object v2

    .line 351
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 352
    return-object v2

    .line 353
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 354
    return-object v2

    .line 355
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 356
    return-object v2

    .line 357
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 358
    return-object v2

    .line 359
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 360
    return-object v2

    .line 361
    :cond_5
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 362
    return-object v2

    .line 363
    :cond_6
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 364
    return-object v2

    .line 365
    :cond_7
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 366
    return-object v2

    .line 367
    :cond_8
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 368
    return-object v2

    .line 369
    :cond_9
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 374
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 375
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 376
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 375
    if-nez v1, :cond_0

    .line 376
    return-object v2

    .line 377
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    return-object v2

    .line 379
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 380
    return-object v2

    .line 381
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 382
    return-object v2

    .line 383
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 384
    return-object v2

    .line 385
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 386
    return-object v2

    .line 387
    :cond_5
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 388
    return-object v2

    .line 389
    :cond_6
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1283
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 1284
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1285
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1284
    if-nez v1, :cond_0

    .line 1285
    return-object v2

    .line 1286
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1287
    return-object v2

    .line 1288
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1289
    return-object v2

    .line 1290
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1291
    return-object v2

    .line 1292
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 310
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 311
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 312
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 311
    if-nez v1, :cond_0

    .line 312
    return-object v2

    .line 313
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    return-object v2

    .line 315
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 316
    return-object v2

    .line 317
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 318
    return-object v2

    .line 319
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 192
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;

    .line 193
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 194
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 193
    if-nez v1, :cond_0

    .line 194
    return-object v2

    .line 195
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    return-object v2

    .line 197
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 408
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    .line 409
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 410
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 409
    if-nez v1, :cond_0

    .line 410
    return-object v2

    .line 411
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    return-object v2

    .line 413
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 182
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;

    .line 183
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 184
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 183
    if-nez v1, :cond_0

    .line 184
    return-object v2

    .line 185
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    return-object v2

    .line 187
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 530
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;

    .line 531
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 532
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 531
    if-nez v1, :cond_0

    .line 532
    return-object v2

    .line 533
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 534
    return-object v2

    .line 535
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 536
    return-object v2

    .line 537
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 542
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 543
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 544
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 543
    if-nez v1, :cond_0

    .line 544
    return-object v2

    .line 545
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    return-object v2

    .line 547
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 548
    return-object v2

    .line 549
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 550
    return-object v2

    .line 551
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 556
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    .line 557
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 558
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 557
    if-nez v1, :cond_0

    .line 558
    return-object v2

    .line 559
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 560
    return-object v2

    .line 561
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 566
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    .line 567
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 568
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 567
    if-nez v1, :cond_0

    .line 568
    return-object v2

    .line 569
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getTarget()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getTarget()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 570
    return-object v2

    .line 571
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 572
    return-object v2

    .line 573
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 574
    return-object v2

    .line 575
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 580
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    .line 581
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 582
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 581
    if-nez v1, :cond_0

    .line 582
    return-object v2

    .line 583
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 584
    return-object v2

    .line 585
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getRight()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getRight()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 586
    return-object v2

    .line 587
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 588
    return-object v2

    .line 589
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 716
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    .line 717
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->isValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->isValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 718
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 717
    if-nez v1, :cond_0

    .line 718
    return-object v2

    .line 719
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 720
    return-object v2

    .line 721
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 594
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    .line 595
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 596
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 595
    if-nez v1, :cond_0

    .line 596
    return-object v2

    .line 597
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 598
    return-object v2

    .line 599
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 600
    return-object v2

    .line 601
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 696
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;

    .line 697
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 698
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 697
    if-nez v1, :cond_0

    .line 698
    return-object v2

    .line 699
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 700
    return-object v2

    .line 701
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 606
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;

    .line 607
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 608
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 607
    if-nez v1, :cond_0

    .line 608
    return-object v2

    .line 609
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    return-object v2

    .line 611
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 616
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    .line 617
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 618
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 617
    if-nez v1, :cond_0

    .line 618
    return-object v2

    .line 619
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 620
    return-object v2

    .line 621
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 622
    return-object v2

    .line 623
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 624
    return-object v2

    .line 625
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 706
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    .line 707
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 708
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 707
    if-nez v1, :cond_0

    .line 708
    return-object v2

    .line 709
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 710
    return-object v2

    .line 711
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 630
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;

    .line 631
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 632
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 631
    if-nez v1, :cond_0

    .line 632
    return-object v2

    .line 633
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 634
    return-object v2

    .line 635
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 640
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    .line 641
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 642
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 641
    if-nez v1, :cond_0

    .line 642
    return-object v2

    .line 643
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 644
    return-object v2

    .line 645
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 646
    return-object v2

    .line 647
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 648
    return-object v2

    .line 649
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 654
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    .line 655
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 656
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 655
    if-nez v1, :cond_0

    .line 656
    return-object v2

    .line 657
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    return-object v2

    .line 659
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 660
    return-object v2

    .line 661
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 676
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;

    .line 677
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 678
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 677
    if-nez v1, :cond_0

    .line 678
    return-object v2

    .line 679
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 680
    return-object v2

    .line 681
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1144
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    .line 1145
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1146
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1145
    if-nez v1, :cond_0

    .line 1146
    return-object v2

    .line 1147
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1148
    return-object v2

    .line 1149
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1150
    return-object v2

    .line 1151
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1152
    return-object v2

    .line 1153
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 686
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;

    .line 687
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 688
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 687
    if-nez v1, :cond_0

    .line 688
    return-object v2

    .line 689
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 690
    return-object v2

    .line 691
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 846
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;

    .line 847
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 848
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 847
    if-nez v1, :cond_0

    .line 848
    return-object v2

    .line 849
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 850
    return-object v2

    .line 851
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 880
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;

    .line 881
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 882
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 881
    if-nez v1, :cond_0

    .line 882
    return-object v2

    .line 883
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 884
    return-object v2

    .line 885
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 886
    return-object v2

    .line 887
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 734
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 735
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 736
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 735
    if-nez v1, :cond_0

    .line 736
    return-object v2

    .line 737
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 738
    return-object v2

    .line 739
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 740
    return-object v2

    .line 741
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 742
    return-object v2

    .line 743
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 744
    return-object v2

    .line 745
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1158
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;

    .line 1159
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1160
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1159
    if-nez v1, :cond_0

    .line 1160
    return-object v2

    .line 1161
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1162
    return-object v2

    .line 1163
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1164
    return-object v2

    .line 1165
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1166
    return-object v2

    .line 1167
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 778
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 779
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 780
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 779
    if-nez v1, :cond_0

    .line 780
    return-object v2

    .line 781
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 782
    return-object v2

    .line 783
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 784
    return-object v2

    .line 785
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 750
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    .line 751
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 752
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 751
    if-nez v1, :cond_0

    .line 752
    return-object v2

    .line 753
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 754
    return-object v2

    .line 755
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 868
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    .line 869
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 870
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 869
    if-nez v1, :cond_0

    .line 870
    return-object v2

    .line 871
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 872
    return-object v2

    .line 873
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 874
    return-object v2

    .line 875
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 726
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;

    .line 727
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 729
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 760
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 761
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 762
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 761
    if-nez v1, :cond_0

    .line 762
    return-object v2

    .line 763
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 764
    return-object v2

    .line 765
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 766
    return-object v2

    .line 767
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 768
    return-object v2

    .line 769
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 770
    return-object v2

    .line 771
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 772
    return-object v2

    .line 773
    :cond_5
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 790
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 791
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 792
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 791
    if-nez v1, :cond_0

    .line 792
    return-object v2

    .line 793
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 794
    return-object v2

    .line 795
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 856
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    .line 857
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 858
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 857
    if-nez v1, :cond_0

    .line 858
    return-object v2

    .line 859
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 860
    return-object v2

    .line 861
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 862
    return-object v2

    .line 863
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 666
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    .line 667
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 668
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 667
    if-nez v1, :cond_0

    .line 668
    return-object v2

    .line 669
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 670
    return-object v2

    .line 671
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 810
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;

    .line 811
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 812
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 811
    if-nez v1, :cond_0

    .line 812
    return-object v2

    .line 813
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 814
    return-object v2

    .line 815
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1317
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;

    .line 1318
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1319
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1318
    if-nez v1, :cond_0

    .line 1319
    return-object v2

    .line 1320
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1321
    return-object v2

    .line 1322
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1323
    return-object v2

    .line 1324
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1339
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    .line 1340
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1341
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1340
    if-nez v1, :cond_0

    .line 1341
    return-object v2

    .line 1342
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1343
    return-object v2

    .line 1344
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 800
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;

    .line 801
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 802
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 801
    if-nez v1, :cond_0

    .line 802
    return-object v2

    .line 803
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 804
    return-object v2

    .line 805
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1172
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;

    .line 1173
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1174
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1173
    if-nez v1, :cond_0

    .line 1174
    return-object v2

    .line 1175
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1176
    return-object v2

    .line 1177
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 820
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    .line 821
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 822
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 821
    if-nez v1, :cond_0

    .line 822
    return-object v2

    .line 823
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 824
    return-object v2

    .line 825
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 826
    return-object v2

    .line 827
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 832
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 833
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 834
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 833
    if-nez v1, :cond_0

    .line 834
    return-object v2

    .line 835
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 836
    return-object v2

    .line 837
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 838
    return-object v2

    .line 839
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 840
    return-object v2

    .line 841
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1201
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    .line 1202
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1203
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1202
    if-nez v1, :cond_0

    .line 1203
    return-object v2

    .line 1204
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1205
    return-object v2

    .line 1206
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1207
    return-object v2

    .line 1208
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1209
    return-object v2

    .line 1210
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1211
    return-object v2

    .line 1212
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1229
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;

    .line 1230
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1231
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1230
    if-nez v1, :cond_0

    .line 1231
    return-object v2

    .line 1232
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1233
    return-object v2

    .line 1234
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1235
    return-object v2

    .line 1236
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1263
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    .line 1264
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1265
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1264
    if-nez v1, :cond_0

    .line 1265
    return-object v2

    .line 1266
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1267
    return-object v2

    .line 1268
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1269
    return-object v2

    .line 1270
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1241
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;

    .line 1242
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1243
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1242
    if-nez v1, :cond_0

    .line 1243
    return-object v2

    .line 1244
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1245
    return-object v2

    .line 1246
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1247
    return-object v2

    .line 1248
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1217
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 1218
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1219
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1218
    if-nez v1, :cond_0

    .line 1219
    return-object v2

    .line 1220
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1221
    return-object v2

    .line 1222
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1223
    return-object v2

    .line 1224
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1253
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    .line 1254
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1255
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1254
    if-nez v1, :cond_0

    .line 1255
    return-object v2

    .line 1256
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1257
    return-object v2

    .line 1258
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 918
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;

    .line 919
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 920
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 919
    if-nez v1, :cond_0

    .line 920
    return-object v2

    .line 921
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 922
    return-object v2

    .line 923
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 924
    return-object v2

    .line 925
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 930
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 931
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 932
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 931
    if-nez v1, :cond_0

    .line 932
    return-object v2

    .line 933
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 934
    return-object v2

    .line 935
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 996
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    .line 997
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 998
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 997
    if-nez v1, :cond_0

    .line 998
    return-object v2

    .line 999
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1000
    return-object v2

    .line 1001
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1132
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    .line 1133
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1134
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1133
    if-nez v1, :cond_0

    .line 1134
    return-object v2

    .line 1135
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getParameter()Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getParameter()Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1136
    return-object v2

    .line 1137
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1138
    return-object v2

    .line 1139
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1042
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;

    .line 1043
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1044
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1043
    if-nez v1, :cond_0

    .line 1044
    return-object v2

    .line 1045
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1046
    return-object v2

    .line 1047
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1052
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;

    .line 1053
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1054
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1053
    if-nez v1, :cond_0

    .line 1054
    return-object v2

    .line 1055
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1056
    return-object v2

    .line 1057
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1058
    return-object v2

    .line 1059
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 952
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;

    .line 953
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 954
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 955
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 892
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    .line 893
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 894
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 893
    if-nez v1, :cond_0

    .line 894
    return-object v2

    .line 895
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 896
    return-object v2

    .line 897
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 898
    return-object v2

    .line 899
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 900
    return-object v2

    .line 901
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 902
    return-object v2

    .line 903
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 960
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    .line 961
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 962
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 961
    if-nez v1, :cond_0

    .line 962
    return-object v2

    .line 963
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 964
    return-object v2

    .line 965
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1064
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    .line 1065
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1066
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1065
    if-nez v1, :cond_0

    .line 1066
    return-object v2

    .line 1067
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1068
    return-object v2

    .line 1069
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1070
    return-object v2

    .line 1071
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1072
    return-object v2

    .line 1073
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1078
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 1079
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1080
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1079
    if-nez v1, :cond_0

    .line 1080
    return-object v2

    .line 1081
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1082
    return-object v2

    .line 1083
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1084
    return-object v2

    .line 1085
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1086
    return-object v2

    .line 1087
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1088
    return-object v2

    .line 1089
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1016
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 1017
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1018
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1017
    if-nez v1, :cond_0

    .line 1018
    return-object v2

    .line 1019
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1020
    return-object v2

    .line 1021
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1022
    return-object v2

    .line 1023
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1024
    return-object v2

    .line 1025
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 940
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    .line 941
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 942
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 941
    if-nez v1, :cond_0

    .line 942
    return-object v2

    .line 943
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 944
    return-object v2

    .line 945
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 946
    return-object v2

    .line 947
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 908
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;

    .line 909
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 910
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 909
    if-nez v1, :cond_0

    .line 910
    return-object v2

    .line 911
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 912
    return-object v2

    .line 913
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1006
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;

    .line 1007
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1008
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1007
    if-nez v1, :cond_0

    .line 1008
    return-object v2

    .line 1009
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1010
    return-object v2

    .line 1011
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 982
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;

    .line 983
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 984
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 983
    if-nez v1, :cond_0

    .line 984
    return-object v2

    .line 985
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 986
    return-object v2

    .line 987
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getType()Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getType()Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 988
    return-object v2

    .line 989
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 990
    return-object v2

    .line 991
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 970
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;

    .line 971
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 972
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 971
    if-nez v1, :cond_0

    .line 972
    return-object v2

    .line 973
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 974
    return-object v2

    .line 975
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 976
    return-object v2

    .line 977
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1104
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;

    .line 1105
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1106
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1105
    if-nez v1, :cond_0

    .line 1106
    return-object v2

    .line 1107
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1108
    return-object v2

    .line 1109
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1110
    return-object v2

    .line 1111
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1094
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;

    .line 1095
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1096
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1095
    if-nez v1, :cond_0

    .line 1096
    return-object v2

    .line 1097
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1098
    return-object v2

    .line 1099
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1116
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 1117
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1118
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1117
    if-nez v1, :cond_0

    .line 1118
    return-object v2

    .line 1119
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1120
    return-object v2

    .line 1121
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1122
    return-object v2

    .line 1123
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1124
    return-object v2

    .line 1125
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1126
    return-object v2

    .line 1127
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1275
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;

    .line 1276
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1277
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1278
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1030
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;

    .line 1031
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1032
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1031
    if-nez v1, :cond_0

    .line 1032
    return-object v2

    .line 1033
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1034
    return-object v2

    .line 1035
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1036
    return-object v2

    .line 1037
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1329
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;

    .line 1330
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1331
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1330
    if-nez v1, :cond_0

    .line 1331
    return-object v2

    .line 1332
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1333
    return-object v2

    .line 1334
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 446
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 447
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 448
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 447
    if-nez v1, :cond_0

    .line 448
    return-object v2

    .line 449
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getOrigin()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getOrigin()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 450
    return-object v2

    .line 451
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 452
    return-object v2

    .line 453
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 454
    return-object v2

    .line 455
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 418
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 419
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 420
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 419
    if-nez v1, :cond_0

    .line 420
    return-object v2

    .line 421
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    return-object v2

    .line 423
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    return-object v2

    .line 425
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 426
    return-object v2

    .line 427
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 428
    return-object v2

    .line 429
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 472
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;

    .line 473
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 474
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 473
    if-nez v1, :cond_0

    .line 474
    return-object v2

    .line 475
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 476
    return-object v2

    .line 477
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 478
    return-object v2

    .line 479
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 434
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    .line 435
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 436
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 435
    if-nez v1, :cond_0

    .line 436
    return-object v2

    .line 437
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 438
    return-object v2

    .line 439
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 440
    return-object v2

    .line 441
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 168
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    .line 169
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 170
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 169
    if-nez v1, :cond_0

    .line 170
    return-object v2

    .line 171
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    return-object v2

    .line 173
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    return-object v2

    .line 175
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 176
    return-object v2

    .line 177
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 484
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    .line 485
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 486
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 485
    if-nez v1, :cond_0

    .line 486
    return-object v2

    .line 487
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 488
    return-object v2

    .line 489
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 490
    return-object v2

    .line 491
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 520
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;

    .line 521
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 522
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 521
    if-nez v1, :cond_0

    .line 522
    return-object v2

    .line 523
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 524
    return-object v2

    .line 525
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1297
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    .line 1298
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1299
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1298
    if-nez v1, :cond_0

    .line 1299
    return-object v2

    .line 1300
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1301
    return-object v2

    .line 1302
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 496
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    .line 497
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 498
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 497
    if-nez v1, :cond_0

    .line 498
    return-object v2

    .line 499
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    return-object v2

    .line 501
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 506
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 507
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 508
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 507
    if-nez v1, :cond_0

    .line 508
    return-object v2

    .line 509
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 510
    return-object v2

    .line 511
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 512
    return-object v2

    .line 513
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 514
    return-object v2

    .line 515
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
