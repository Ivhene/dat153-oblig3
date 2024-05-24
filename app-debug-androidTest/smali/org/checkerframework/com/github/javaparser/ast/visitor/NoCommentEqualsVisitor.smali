.class public Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;
.super Ljava/lang/Object;
.source "NoCommentEqualsVisitor.java"

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
.field private static final SINGLETON:Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->SINGLETON:Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 39
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->SINGLETON:Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 74
    .local p1, "n":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p2, "n2":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 61
    .local p1, "n":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TT;"
    .local p2, "n2":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TT;"
    if-ne p1, p2, :cond_0

    .line 62
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 68
    return v0

    .line 70
    :cond_2
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 65
    :cond_3
    :goto_0
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

    .line 78
    .local p1, "n":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<TT;>;>;"
    .local p2, "n2":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<TT;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

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

    .line 43
    .local p1, "n":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p2, "n2":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 44
    return v0

    .line 46
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 50
    return v1

    .line 52
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 53
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    invoke-virtual {p2, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 54
    return v1

    .line 52
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "i":I
    :cond_4
    return v0

    .line 47
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

    .line 82
    if-ne p1, p2, :cond_0

    .line 83
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 86
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

    .line 364
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;

    .line 365
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 366
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 365
    if-nez v1, :cond_0

    .line 366
    return-object v2

    .line 367
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    return-object v2

    .line 369
    :cond_1
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

    .line 93
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 94
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 95
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 94
    if-nez v1, :cond_0

    .line 95
    return-object v2

    .line 96
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    return-object v2

    .line 98
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    return-object v2

    .line 100
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 101
    return-object v2

    .line 102
    :cond_3
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

    .line 962
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    .line 963
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 964
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 963
    if-nez v1, :cond_0

    .line 964
    return-object v2

    .line 965
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 966
    return-object v2

    .line 967
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 968
    return-object v2

    .line 969
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 1066
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    .line 1067
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1068
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1069
    :cond_0
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

    .line 974
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

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

    .line 107
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    .line 108
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 109
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 108
    if-nez v1, :cond_0

    .line 109
    return-object v2

    .line 110
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    return-object v2

    .line 112
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 1
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

    .line 1101
    const/4 v0, 0x0

    return-object v0
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

    .line 193
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;

    .line 194
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 195
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 194
    if-nez v1, :cond_0

    .line 195
    return-object v2

    .line 196
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    return-object v2

    .line 198
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    return-object v2

    .line 200
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 201
    return-object v2

    .line 202
    :cond_3
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

    .line 207
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;

    .line 208
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 209
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 208
    if-nez v1, :cond_0

    .line 209
    return-object v2

    .line 210
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    return-object v2

    .line 212
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    return-object v2

    .line 214
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    return-object v2

    .line 216
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 217
    return-object v2

    .line 218
    :cond_4
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

    .line 139
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 140
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 141
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 140
    if-nez v1, :cond_0

    .line 141
    return-object v2

    .line 142
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    return-object v2

    .line 144
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    return-object v2

    .line 146
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 147
    return-object v2

    .line 148
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 149
    return-object v2

    .line 150
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 151
    return-object v2

    .line 152
    :cond_5
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 153
    return-object v2

    .line 154
    :cond_6
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 155
    return-object v2

    .line 156
    :cond_7
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

    .line 247
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 248
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 249
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 248
    if-nez v1, :cond_0

    .line 249
    return-object v2

    .line 250
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    return-object v2

    .line 252
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 253
    return-object v2

    .line 254
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 255
    return-object v2

    .line 256
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 257
    return-object v2

    .line 258
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 259
    return-object v2

    .line 260
    :cond_5
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 261
    return-object v2

    .line 262
    :cond_6
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 263
    return-object v2

    .line 264
    :cond_7
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

    .line 179
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 180
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 181
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 180
    if-nez v1, :cond_0

    .line 181
    return-object v2

    .line 182
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    return-object v2

    .line 184
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    return-object v2

    .line 186
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 187
    return-object v2

    .line 188
    :cond_3
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

    .line 161
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    .line 162
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 163
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 162
    if-nez v1, :cond_0

    .line 163
    return-object v2

    .line 164
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    return-object v2

    .line 166
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 167
    return-object v2

    .line 168
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 169
    return-object v2

    .line 170
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 171
    return-object v2

    .line 172
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 173
    return-object v2

    .line 174
    :cond_5
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

    .line 223
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    .line 224
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 225
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 224
    if-nez v1, :cond_0

    .line 225
    return-object v2

    .line 226
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    return-object v2

    .line 228
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    return-object v2

    .line 230
    :cond_2
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

    .line 311
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    .line 312
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 313
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 312
    if-nez v1, :cond_0

    .line 313
    return-object v2

    .line 314
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    return-object v2

    .line 316
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 317
    return-object v2

    .line 318
    :cond_2
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

    .line 269
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 270
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 271
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 270
    if-nez v1, :cond_0

    .line 271
    return-object v2

    .line 272
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    return-object v2

    .line 274
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    return-object v2

    .line 276
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 277
    return-object v2

    .line 278
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 279
    return-object v2

    .line 280
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 281
    return-object v2

    .line 282
    :cond_5
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 283
    return-object v2

    .line 284
    :cond_6
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 285
    return-object v2

    .line 286
    :cond_7
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 287
    return-object v2

    .line 288
    :cond_8
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

    .line 293
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 294
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 295
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 294
    if-nez v1, :cond_0

    .line 295
    return-object v2

    .line 296
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 297
    return-object v2

    .line 298
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 299
    return-object v2

    .line 300
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 301
    return-object v2

    .line 302
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 303
    return-object v2

    .line 304
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 305
    return-object v2

    .line 306
    :cond_5
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

    .line 1046
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 1047
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1048
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1047
    if-nez v1, :cond_0

    .line 1048
    return-object v2

    .line 1049
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1050
    return-object v2

    .line 1051
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1052
    return-object v2

    .line 1053
    :cond_2
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

    .line 235
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 236
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 237
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 236
    if-nez v1, :cond_0

    .line 237
    return-object v2

    .line 238
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    return-object v2

    .line 240
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 241
    return-object v2

    .line 242
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 1
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

    .line 134
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 1
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

    .line 323
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 1
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

    .line 129
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
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

    .line 422
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;

    .line 423
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 424
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 423
    if-nez v1, :cond_0

    .line 424
    return-object v2

    .line 425
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 426
    return-object v2

    .line 427
    :cond_1
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

    .line 432
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 433
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 434
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 433
    if-nez v1, :cond_0

    .line 434
    return-object v2

    .line 435
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 436
    return-object v2

    .line 437
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 438
    return-object v2

    .line 439
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 444
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    .line 445
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 447
    :cond_0
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

    .line 452
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    .line 453
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 454
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 453
    if-nez v1, :cond_0

    .line 454
    return-object v2

    .line 455
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getTarget()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getTarget()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 456
    return-object v2

    .line 457
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 458
    return-object v2

    .line 459
    :cond_2
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

    .line 464
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    .line 465
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 466
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 465
    if-nez v1, :cond_0

    .line 466
    return-object v2

    .line 467
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 468
    return-object v2

    .line 469
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getRight()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getRight()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 470
    return-object v2

    .line 471
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 576
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    .line 577
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->isValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->isValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 579
    :cond_0
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

    .line 476
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    .line 477
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 478
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 477
    if-nez v1, :cond_0

    .line 478
    return-object v2

    .line 479
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 480
    return-object v2

    .line 481
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 560
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;

    .line 561
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 563
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 486
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;

    .line 487
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 489
    :cond_0
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

    .line 494
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    .line 495
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 496
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 495
    if-nez v1, :cond_0

    .line 496
    return-object v2

    .line 497
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    return-object v2

    .line 499
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 500
    return-object v2

    .line 501
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 568
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    .line 569
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 571
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 506
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;

    .line 507
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 509
    :cond_0
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

    .line 514
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    .line 515
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 516
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 515
    if-nez v1, :cond_0

    .line 516
    return-object v2

    .line 517
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 518
    return-object v2

    .line 519
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 520
    return-object v2

    .line 521
    :cond_2
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

    .line 526
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    .line 527
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 528
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 527
    if-nez v1, :cond_0

    .line 528
    return-object v2

    .line 529
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    return-object v2

    .line 531
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 544
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;

    .line 545
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 546
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 547
    :cond_0
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

    .line 930
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    .line 931
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 934
    return-object v2

    .line 935
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 936
    return-object v2

    .line 937
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 552
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;

    .line 553
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 555
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 683
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;

    .line 684
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 686
    :cond_0
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

    .line 711
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;

    .line 712
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 713
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 712
    if-nez v1, :cond_0

    .line 713
    return-object v2

    .line 714
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 715
    return-object v2

    .line 716
    :cond_1
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

    .line 589
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 590
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 591
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 590
    if-nez v1, :cond_0

    .line 591
    return-object v2

    .line 592
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 593
    return-object v2

    .line 594
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 595
    return-object v2

    .line 596
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 597
    return-object v2

    .line 598
    :cond_3
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

    .line 942
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;

    .line 943
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 944
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 943
    if-nez v1, :cond_0

    .line 944
    return-object v2

    .line 945
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 946
    return-object v2

    .line 947
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 948
    return-object v2

    .line 949
    :cond_2
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

    .line 627
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 628
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 629
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 628
    if-nez v1, :cond_0

    .line 629
    return-object v2

    .line 630
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 631
    return-object v2

    .line 632
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 603
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    .line 604
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 606
    :cond_0
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

    .line 701
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    .line 702
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 703
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 702
    if-nez v1, :cond_0

    .line 703
    return-object v2

    .line 704
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 705
    return-object v2

    .line 706
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 1
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

    .line 584
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
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

    .line 611
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 612
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 613
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 612
    if-nez v1, :cond_0

    .line 613
    return-object v2

    .line 614
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 615
    return-object v2

    .line 616
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 617
    return-object v2

    .line 618
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 619
    return-object v2

    .line 620
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 621
    return-object v2

    .line 622
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 637
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 638
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 640
    :cond_0
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

    .line 691
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    .line 692
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 693
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 692
    if-nez v1, :cond_0

    .line 693
    return-object v2

    .line 694
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 695
    return-object v2

    .line 696
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 536
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    .line 537
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 539
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 653
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;

    .line 654
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 656
    :cond_0
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

    .line 1074
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;

    .line 1075
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1076
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1075
    if-nez v1, :cond_0

    .line 1076
    return-object v2

    .line 1077
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1078
    return-object v2

    .line 1079
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 1092
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    .line 1093
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1094
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1095
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 645
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;

    .line 646
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 648
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 954
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;

    .line 955
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 956
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 957
    :cond_0
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

    .line 661
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    .line 662
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 663
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 662
    if-nez v1, :cond_0

    .line 663
    return-object v2

    .line 664
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 665
    return-object v2

    .line 666
    :cond_1
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

    .line 671
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 672
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 673
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 672
    if-nez v1, :cond_0

    .line 673
    return-object v2

    .line 674
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 675
    return-object v2

    .line 676
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 677
    return-object v2

    .line 678
    :cond_2
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

    .line 979
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    .line 980
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 981
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 980
    if-nez v1, :cond_0

    .line 981
    return-object v2

    .line 982
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 983
    return-object v2

    .line 984
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 985
    return-object v2

    .line 986
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 987
    return-object v2

    .line 988
    :cond_3
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

    .line 1003
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;

    .line 1004
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1005
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1004
    if-nez v1, :cond_0

    .line 1005
    return-object v2

    .line 1006
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1007
    return-object v2

    .line 1008
    :cond_1
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

    .line 1031
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    .line 1032
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1033
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1032
    if-nez v1, :cond_0

    .line 1033
    return-object v2

    .line 1034
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1035
    return-object v2

    .line 1036
    :cond_1
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

    .line 1013
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;

    .line 1014
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1015
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1014
    if-nez v1, :cond_0

    .line 1015
    return-object v2

    .line 1016
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1017
    return-object v2

    .line 1018
    :cond_1
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

    .line 993
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 994
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 995
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 994
    if-nez v1, :cond_0

    .line 995
    return-object v2

    .line 996
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 997
    return-object v2

    .line 998
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 1023
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    .line 1024
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1025
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1026
    :cond_0
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

    .line 743
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;

    .line 744
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 745
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 744
    if-nez v1, :cond_0

    .line 745
    return-object v2

    .line 746
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 747
    return-object v2

    .line 748
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 753
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 754
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 756
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 806
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    .line 807
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 808
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 809
    :cond_0
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

    .line 920
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    .line 921
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 922
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 921
    if-nez v1, :cond_0

    .line 922
    return-object v2

    .line 923
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getParameter()Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getParameter()Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 924
    return-object v2

    .line 925
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 844
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;

    .line 845
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 846
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 847
    :cond_0
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

    .line 852
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;

    .line 853
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 854
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 853
    if-nez v1, :cond_0

    .line 854
    return-object v2

    .line 855
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 856
    return-object v2

    .line 857
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 1
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

    .line 771
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
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

    .line 721
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    .line 722
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 723
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 722
    if-nez v1, :cond_0

    .line 723
    return-object v2

    .line 724
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    return-object v2

    .line 726
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 727
    return-object v2

    .line 728
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 729
    return-object v2

    .line 730
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 776
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    .line 777
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 778
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 779
    :cond_0
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

    .line 862
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    .line 863
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 864
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 863
    if-nez v1, :cond_0

    .line 864
    return-object v2

    .line 865
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 866
    return-object v2

    .line 867
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 868
    return-object v2

    .line 869
    :cond_2
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

    .line 874
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 875
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 876
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 875
    if-nez v1, :cond_0

    .line 876
    return-object v2

    .line 877
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 878
    return-object v2

    .line 879
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 880
    return-object v2

    .line 881
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 882
    return-object v2

    .line 883
    :cond_3
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

    .line 822
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 823
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 824
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 823
    if-nez v1, :cond_0

    .line 824
    return-object v2

    .line 825
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 826
    return-object v2

    .line 827
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 828
    return-object v2

    .line 829
    :cond_2
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

    .line 761
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    .line 762
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 763
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 762
    if-nez v1, :cond_0

    .line 763
    return-object v2

    .line 764
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 765
    return-object v2

    .line 766
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 735
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;

    .line 736
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 737
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 738
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 814
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;

    .line 815
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 817
    :cond_0
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

    .line 794
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;

    .line 795
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 796
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 795
    if-nez v1, :cond_0

    .line 796
    return-object v2

    .line 797
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 798
    return-object v2

    .line 799
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getType()Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getType()Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 800
    return-object v2

    .line 801
    :cond_2
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

    .line 784
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;

    .line 785
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 786
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 785
    if-nez v1, :cond_0

    .line 786
    return-object v2

    .line 787
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 788
    return-object v2

    .line 789
    :cond_1
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

    .line 896
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;

    .line 897
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 898
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 897
    if-nez v1, :cond_0

    .line 898
    return-object v2

    .line 899
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 900
    return-object v2

    .line 901
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 888
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;

    .line 889
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 891
    :cond_0
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

    .line 906
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 907
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 908
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 907
    if-nez v1, :cond_0

    .line 908
    return-object v2

    .line 909
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 910
    return-object v2

    .line 911
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 912
    return-object v2

    .line 913
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 914
    return-object v2

    .line 915
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 1
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

    .line 1041
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
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

    .line 834
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;

    .line 835
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 836
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 835
    if-nez v1, :cond_0

    .line 836
    return-object v2

    .line 837
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 838
    return-object v2

    .line 839
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 1084
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;

    .line 1085
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1086
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1087
    :cond_0
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

    .line 352
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 353
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 354
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 353
    if-nez v1, :cond_0

    .line 354
    return-object v2

    .line 355
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getOrigin()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getOrigin()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    return-object v2

    .line 357
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    return-object v2

    .line 359
    :cond_2
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

    .line 328
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 329
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 330
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 329
    if-nez v1, :cond_0

    .line 330
    return-object v2

    .line 331
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    return-object v2

    .line 333
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    return-object v2

    .line 335
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 336
    return-object v2

    .line 337
    :cond_3
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

    .line 374
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;

    .line 375
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    return-object v2

    .line 379
    :cond_1
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

    .line 342
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    .line 343
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 344
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 343
    if-nez v1, :cond_0

    .line 344
    return-object v2

    .line 345
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    return-object v2

    .line 347
    :cond_1
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

    .line 117
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    .line 118
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v1

    const/4 v2, 0x0

    .line 119
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 118
    if-nez v1, :cond_0

    .line 119
    return-object v2

    .line 120
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    return-object v2

    .line 122
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    return-object v2

    .line 124
    :cond_2
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

    .line 384
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    .line 385
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    const/4 v2, 0x0

    .line 386
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 385
    if-nez v1, :cond_0

    .line 386
    return-object v2

    .line 387
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    return-object v2

    .line 389
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 414
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;

    .line 415
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 417
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 1058
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    .line 1059
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1060
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1061
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 3
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

    .line 394
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    .line 395
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 397
    :cond_0
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

    .line 402
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 403
    .local v0, "n2":Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    const/4 v2, 0x0

    .line 404
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 403
    if-nez v1, :cond_0

    .line 404
    return-object v2

    .line 405
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
    return-object v2

    .line 407
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 408
    return-object v2

    .line 409
    :cond_2
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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    .line 34
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
