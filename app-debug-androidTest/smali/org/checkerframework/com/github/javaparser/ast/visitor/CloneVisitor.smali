.class public Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;
.super Ljava/lang/Object;
.source "CloneVisitor.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    .line 1106
    .local p1, "list":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    if-nez p1, :cond_0

    .line 1107
    const/4 v0, 0x0

    return-object v0

    .line 1109
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method private copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 3
    .param p1, "source"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "destination"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "destination"
        }
    .end annotation

    .line 1216
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getDataKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/DataKey;

    .line 1217
    .local v1, "dataKey":Lorg/checkerframework/com/github/javaparser/ast/DataKey;
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

    .line 1218
    .end local v1    # "dataKey":Lorg/checkerframework/com/github/javaparser/ast/DataKey;
    goto :goto_0

    .line 1219
    :cond_0
    return-void
.end method

.method static synthetic lambda$visit$0(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;)V
    .locals 2
    .param p0, "r"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .param p1, "s"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "r",
            "s"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-void
.end method


# virtual methods
.method protected cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/Optional<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1083
    .local p1, "node":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1084
    return-object v1

    .line 1086
    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1087
    .local v0, "r":Lorg/checkerframework/com/github/javaparser/ast/Node;
    if-nez v0, :cond_1

    .line 1088
    return-object v1

    .line 1090
    :cond_1
    return-object v0
.end method

.method protected cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1095
    .local p1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1096
    return-object v0

    .line 1098
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1099
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/Node;
    if-nez v1, :cond_1

    .line 1100
    return-object v0

    .line 1102
    :cond_1
    return-object v1
.end method

.method synthetic lambda$visit$1$org-checkerframework-com-github-javaparser-ast-visitor-CloneVisitor(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 1
    .param p1, "compilationUnits"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "compilationUnits",
            "arg",
            "cu"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    return-void
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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1047
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1048
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1049
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v4

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v5

    invoke-direct {v2, v3, v0, v4, v5}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;ZZ)V

    .line 1050
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1051
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1052
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1053
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 324
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 325
    .local v1, "dimension":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 326
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 327
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 328
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda22;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda22;-><init>(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 329
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 330
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 12
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 40
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 41
    .local v0, "imports":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    .line 42
    .local v7, "module":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    .line 43
    .local v8, "packageDeclaration":Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v9

    .line 44
    .local v9, "types":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 45
    .local v10, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object v1, v11

    move-object v3, v8

    move-object v4, v0

    move-object v5, v9

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)V

    .line 46
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getStorage()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda17;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda17;-><init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 47
    invoke-virtual {v1, v10}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 48
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda18;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda18;-><init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 49
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 50
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1195
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1196
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 1197
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1198
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda25;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda25;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1199
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1200
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1035
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    .line 1036
    .local v0, "newNodes":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1037
    .local v2, "node":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1038
    .local v3, "resultNode":Lorg/checkerframework/com/github/javaparser/ast/Node;
    if-eqz v3, :cond_0

    .line 1039
    invoke-virtual {v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 1041
    .end local v2    # "node":Ljava/lang/Object;
    .end local v3    # "resultNode":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_0
    goto :goto_0

    .line 1042
    :cond_1
    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 65
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 66
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 67
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 68
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 69
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 70
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda6;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda6;-><init>(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 71
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 72
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 56
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    .line 57
    .local v0, "compilationUnits":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->getCompilationUnits()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda52;

    invoke-direct {v2, p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda52;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 58
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;-><init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 59
    .local v1, "su":Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 12
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 157
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 158
    .local v0, "members":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 159
    .local v7, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 160
    .local v8, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v9

    .line 161
    .local v9, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 162
    .local v10, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object v1, v11

    move-object v3, v7

    move-object v4, v9

    move-object v5, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 163
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    invoke-virtual {v1, v10}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 164
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda89;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda89;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 165
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 166
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 16
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 172
    .local v2, "defaultValue":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v10

    .line 173
    .local v10, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 174
    .local v11, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 175
    .local v12, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v13

    .line 176
    .local v13, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 177
    .local v14, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v15, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object v3, v15

    move-object v5, v10

    move-object v6, v13

    move-object v7, v12

    move-object v8, v11

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 178
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;
    invoke-virtual {v3, v14}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 179
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda37;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda37;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 180
    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 181
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 20
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 111
    .local v2, "extendedTypes":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v13

    .line 112
    .local v13, "implementedTypes":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v14

    .line 113
    .local v14, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v15

    .line 114
    .local v15, "members":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v16

    .line 115
    .local v16, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 116
    .local v17, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v18

    .line 117
    .local v18, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 118
    .local v12, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v19, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v7

    move-object/from16 v3, v19

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v8, v17

    move-object v9, v14

    move-object v10, v2

    move-object v11, v13

    move-object v1, v12

    .end local v12    # "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    move-object v12, v15

    invoke-direct/range {v3 .. v12}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 119
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    invoke-virtual {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 120
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda87;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda87;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 121
    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 122
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 21
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 213
    .local v2, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v13

    .line 214
    .local v13, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 215
    .local v14, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v15

    .line 216
    .local v15, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 217
    .local v16, "receiverParameter":Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v17

    .line 218
    .local v17, "thrownExceptions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v18

    .line 219
    .local v18, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v19

    .line 220
    .local v19, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 221
    .local v12, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v20, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object/from16 v3, v20

    move-object v5, v13

    move-object/from16 v6, v19

    move-object/from16 v7, v18

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v17

    move-object v11, v2

    move-object v1, v12

    .end local v12    # "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    move-object/from16 v12, v16

    invoke-direct/range {v3 .. v12}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V

    .line 222
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    invoke-virtual {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 223
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda45;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda45;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 224
    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 225
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 12
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 143
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 144
    .local v0, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 145
    .local v7, "classBody":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 146
    .local v8, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v9

    .line 147
    .local v9, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 148
    .local v10, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object v1, v11

    move-object v3, v9

    move-object v4, v8

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 149
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    invoke-virtual {v1, v10}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 150
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda79;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda79;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 151
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 152
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 17
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 128
    .local v2, "entries":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v11

    .line 129
    .local v11, "implementedTypes":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v12

    .line 130
    .local v12, "members":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v13

    .line 131
    .local v13, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 132
    .local v14, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v15

    .line 133
    .local v15, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 134
    .local v10, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v16, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object/from16 v3, v16

    move-object v5, v13

    move-object v6, v15

    move-object v7, v14

    move-object v8, v11

    move-object v9, v2

    move-object v1, v10

    .end local v10    # "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    move-object v10, v12

    invoke-direct/range {v3 .. v10}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 135
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    invoke-virtual {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 136
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 137
    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 138
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 186
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 187
    .local v0, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 188
    .local v1, "variables":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 189
    .local v2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 190
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v4, v5, v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 191
    .local v4, "r":Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 192
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda8;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda8;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 193
    invoke-direct {p0, p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 194
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 264
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 265
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 266
    .local v1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 267
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v5

    invoke-direct {v3, v4, v5, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;ZLorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 268
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 269
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda65;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda65;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 270
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 271
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 23
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 231
    .local v2, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 232
    .local v14, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v15

    .line 233
    .local v15, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 234
    .local v16, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v17

    .line 235
    .local v17, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 236
    .local v18, "receiverParameter":Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v19

    .line 237
    .local v19, "thrownExceptions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v20

    .line 238
    .local v20, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v21

    .line 239
    .local v21, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 240
    .local v13, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v22, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object/from16 v3, v22

    move-object v5, v15

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move-object v8, v14

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v19

    move-object v12, v2

    move-object v1, v13

    .end local v13    # "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    move-object/from16 v13, v18

    invoke-direct/range {v3 .. v13}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V

    .line 241
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    invoke-virtual {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 242
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda15;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda15;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 243
    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 244
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 17
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 250
    .local v2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v11

    .line 251
    .local v11, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 252
    .local v12, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 253
    .local v13, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v14

    .line 254
    .local v14, "varArgsAnnotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 255
    .local v15, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v16, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v8

    move-object/from16 v3, v16

    move-object v5, v11

    move-object v6, v2

    move-object v7, v13

    move-object v9, v14

    move-object v10, v12

    invoke-direct/range {v3 .. v10}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;ZLorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    .line 256
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {v3, v15}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 257
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda50;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda50;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 258
    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 259
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1171
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1172
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1173
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 1174
    .local v2, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1175
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v4, v5, v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 1176
    .local v4, "r":Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1177
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getOrphanComments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda93;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda93;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1178
    invoke-direct {p0, p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1179
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 199
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 200
    .local v0, "initializer":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 201
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 202
    .local v2, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 203
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v4, v5, v2, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 204
    .local v4, "r":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 205
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getOrphanComments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda42;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda42;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 206
    invoke-direct {p0, p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 207
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 100
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 101
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 102
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 103
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda40;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda40;-><init>(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 104
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 105
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 276
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 277
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 278
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 279
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda30;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda30;-><init>(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 280
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 281
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 90
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 91
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 92
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 93
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda4;-><init>(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 94
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 95
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 395
    .local v0, "index":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 396
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 397
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 398
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 399
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda74;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda74;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 400
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 401
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 406
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 407
    .local v0, "elementType":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    .line 408
    .local v1, "initializer":Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 409
    .local v2, "levels":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 410
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v4, v5, v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)V

    .line 411
    .local v4, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 412
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda86;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda86;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 413
    invoke-direct {p0, p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 414
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 419
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 420
    .local v0, "values":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 421
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 422
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 423
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda90;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda90;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 424
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 425
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 430
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getTarget()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 431
    .local v0, "target":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 432
    .local v1, "value":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 433
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v5

    invoke-direct {v3, v4, v0, v1, v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;)V

    .line 434
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 435
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda59;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda59;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 436
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 437
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 442
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 443
    .local v0, "left":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getRight()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 444
    .local v1, "right":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 445
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v5

    invoke-direct {v3, v4, v0, v1, v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;)V

    .line 446
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 447
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda75;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda75;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 448
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 449
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 577
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->isValue()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Z)V

    .line 578
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 579
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda58;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda58;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 580
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 581
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 454
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 455
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 456
    .local v1, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 457
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 458
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 459
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda84;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda84;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 460
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 461
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 557
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 558
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 559
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda31;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda31;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 560
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 561
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 466
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 467
    .local v0, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 468
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V

    .line 469
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 470
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda32;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda32;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 471
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 472
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 477
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 478
    .local v0, "condition":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 479
    .local v1, "elseExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 480
    .local v2, "thenExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 481
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v4, v5, v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 482
    .local v4, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 483
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda54;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda54;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 484
    invoke-direct {p0, p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 485
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 567
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 568
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 569
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda71;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda71;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 570
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 571
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 490
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 491
    .local v0, "inner":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 492
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 493
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 494
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda92;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda92;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 495
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 496
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 501
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 502
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 503
    .local v1, "scope":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 504
    .local v2, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 505
    .local v4, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v5, v3, v1, v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    move-object v3, v5

    .line 506
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 507
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda43;

    invoke-direct {v6, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda43;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 508
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 509
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 515
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 516
    .local v1, "type":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 517
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)V

    .line 518
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 519
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda83;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda83;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 520
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 521
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 537
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 538
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 539
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda9;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 540
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 541
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1000
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 1001
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 1002
    .local v1, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1003
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v5

    invoke-direct {v3, v4, v1, v0, v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Z)V

    .line 1004
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1005
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda11;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda11;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1006
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1007
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 546
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 547
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 548
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 549
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda48;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda48;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 550
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 551
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 703
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 704
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 705
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 706
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 707
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda10;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda10;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 708
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 709
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 738
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 739
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 740
    .local v1, "value":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 741
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 742
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 743
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda81;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda81;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 744
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 745
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 12
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 596
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 597
    .local v0, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 598
    .local v7, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 599
    .local v8, "scope":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v9

    .line 600
    .local v9, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 601
    .local v10, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object v1, v11

    move-object v3, v8

    move-object v4, v9

    move-object v5, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 602
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    invoke-virtual {v1, v10}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 603
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda20;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda20;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 604
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 605
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1012
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 1013
    .local v0, "scope":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 1014
    .local v1, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1015
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v0, v1, v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/String;)V

    move-object v2, v4

    .line 1016
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;
    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1017
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda34;

    invoke-direct {v5, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda34;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1018
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1019
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 636
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 637
    .local v0, "qualifier":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 638
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/String;)V

    .line 639
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 640
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda60;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda60;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 641
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 642
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 610
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 611
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 612
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    .line 613
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 614
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda14;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda14;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 615
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 616
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 727
    .local v0, "pairs":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 728
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 729
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 730
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 731
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda64;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda64;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 732
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 733
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 586
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 587
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 588
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 589
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda80;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda80;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 590
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 591
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 17
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 622
    .local v2, "anonymousClassBody":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v11

    .line 623
    .local v11, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 624
    .local v12, "scope":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 625
    .local v13, "type":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0, v4, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v14

    .line 626
    .local v14, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 627
    .local v15, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v16, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object/from16 v4, v16

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v11

    move-object v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    move-object/from16 v3, v16

    .line 628
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    invoke-virtual {v3, v15}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 629
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda76;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda76;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 630
    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 631
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 647
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 648
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 649
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 650
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda28;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda28;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 651
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 652
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 714
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 715
    .local v0, "memberValue":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 716
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 717
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 718
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 719
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda53;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda53;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 720
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 721
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 527
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 528
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 529
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda97;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda97;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 530
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 531
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 668
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 669
    .local v0, "typeName":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 670
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 671
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 672
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda46;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda46;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 673
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 674
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1205
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1206
    .local v0, "entries":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 1207
    .local v1, "selector":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1208
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1209
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1210
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda77;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda77;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1211
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1212
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1234
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1235
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 1236
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1237
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda91;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda91;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1238
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1239
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 657
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 658
    .local v0, "typeName":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 659
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 660
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 661
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda49;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda49;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 662
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 663
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1024
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 1025
    .local v0, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1026
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V

    .line 1027
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1028
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda56;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda56;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1029
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1030
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 679
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 680
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 681
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;)V

    .line 682
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 683
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda16;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda16;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 684
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 685
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 690
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 691
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 692
    .local v1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 693
    .local v2, "variables":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 694
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v4, v5, v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 695
    .local v4, "r":Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 696
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getOrphanComments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda27;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda27;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 697
    invoke-direct {p0, p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 698
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 11
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1059
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 1060
    .local v7, "directives":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1061
    .local v8, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1062
    .local v9, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v10, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v5

    move-object v1, v10

    move-object v3, v0

    move-object v4, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;ZLorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1063
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    invoke-virtual {v1, v9}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1064
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda39;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda39;-><init>(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1065
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1066
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1114
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1115
    .local v0, "moduleNames":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Name;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1116
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1117
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1118
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1119
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda5;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda5;-><init>(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1120
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1121
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1149
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1150
    .local v0, "moduleNames":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Name;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1151
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1152
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1153
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1154
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda96;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda96;-><init>(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1155
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1156
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1126
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1127
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 1128
    .local v1, "with":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Name;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1129
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1130
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1131
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda19;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda19;-><init>(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1132
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1133
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1071
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1072
    .local v0, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1073
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1074
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 1075
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1076
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda47;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda47;-><init>(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1077
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1078
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1138
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1139
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1140
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 1141
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1142
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda85;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda85;-><init>(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1143
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1144
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 774
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 775
    .local v0, "check":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 776
    .local v1, "message":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 777
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 778
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 779
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda24;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda24;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 780
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 781
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 786
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 787
    .local v0, "statements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 788
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 789
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 790
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda38;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda38;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 791
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 792
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 854
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 855
    .local v0, "label":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 856
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    .line 857
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 858
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda62;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda62;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 859
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 860
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 988
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 989
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getParameter()Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 990
    .local v1, "parameter":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 991
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 992
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 993
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda73;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda73;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 994
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 995
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 901
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 902
    .local v0, "label":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 903
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    .line 904
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 905
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda82;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda82;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 906
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 907
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 912
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 913
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 914
    .local v1, "condition":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 915
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 916
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 917
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda21;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda21;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 918
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 919
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 809
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 810
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 811
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 812
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 813
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 814
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 11
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 751
    .local v0, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 752
    .local v7, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 753
    .local v8, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 754
    .local v9, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v10, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v4

    move-object v1, v10

    move-object v3, v8

    move-object v5, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 755
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    invoke-virtual {v1, v9}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 756
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda69;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda69;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 757
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 758
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 819
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 820
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 821
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 822
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 823
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda44;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda44;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 824
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 825
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 924
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 925
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 926
    .local v1, "iterable":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 927
    .local v2, "variable":Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 928
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v4, v5, v2, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 929
    .local v4, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 930
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda13;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda13;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 931
    invoke-direct {p0, p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 932
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 12
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 937
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 938
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 939
    .local v7, "compare":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 940
    .local v8, "initialization":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v9

    .line 941
    .local v9, "update":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 942
    .local v10, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object v1, v11

    move-object v3, v8

    move-object v4, v7

    move-object v5, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 943
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    invoke-virtual {v1, v10}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 944
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda57;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda57;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 945
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 946
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 876
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 877
    .local v0, "condition":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 878
    .local v1, "elseStmt":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 879
    .local v2, "thenStmt":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 880
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v4, v5, v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 881
    .local v4, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 882
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda12;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda12;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 883
    invoke-direct {p0, p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 884
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 797
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 798
    .local v0, "label":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 799
    .local v1, "statement":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 800
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 801
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 802
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda7;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda7;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 803
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 804
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 763
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 764
    .local v0, "classDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 765
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)V

    .line 766
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 767
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda41;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda41;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 768
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 769
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 865
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 866
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 867
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 868
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 869
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda63;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda63;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 870
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 871
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 842
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 843
    .local v0, "labels":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 844
    .local v1, "statements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 845
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getType()Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry$Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 846
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 847
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda26;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda26;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 848
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 849
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 830
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 831
    .local v0, "entries":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 832
    .local v1, "selector":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 833
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 834
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 835
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda88;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda88;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 836
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 837
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 963
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 964
    .local v1, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 965
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 966
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 967
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda55;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda55;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 968
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 969
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 951
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 952
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 953
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 954
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 955
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda70;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda70;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 956
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 957
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 12
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 974
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 975
    .local v0, "catchClauses":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 976
    .local v7, "finallyBlock":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 977
    .local v8, "resources":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 978
    .local v9, "tryBlock":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 979
    .local v10, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object v1, v11

    move-object v3, v8

    move-object v4, v9

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 980
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    invoke-virtual {v1, v10}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 981
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda29;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda29;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 982
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 983
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1161
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1162
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 1163
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1164
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda35;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda35;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1165
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1166
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 889
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 890
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 891
    .local v1, "condition":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 892
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 893
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 894
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda68;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda68;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 895
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 896
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1223
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 1224
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1225
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 1226
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1227
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda36;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda36;-><init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1228
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1229
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .param p2, "arg"    # Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 312
    .local v0, "componentType":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 313
    .local v1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 314
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getOrigin()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 315
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 316
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda51;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda51;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 317
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 318
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 12
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 286
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 287
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 288
    .local v7, "scope":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 289
    .local v8, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v9

    .line 290
    .local v9, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 291
    .local v10, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-object v1, v11

    move-object v3, v7

    move-object v4, v0

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 292
    .local v1, "r":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {v1, v10}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 293
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getOrphanComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda67;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda67;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 294
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 295
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 335
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 336
    .local v0, "elements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 337
    .local v1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 338
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 339
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 340
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda94;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda94;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 341
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 342
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 300
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 301
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 302
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 303
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 304
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda61;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda61;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 305
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 306
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 77
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 78
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 79
    .local v1, "typeBound":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 80
    .local v2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 81
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v4, v5, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 82
    .local v4, "r":Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 83
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getOrphanComments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda23;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda23;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 84
    invoke-direct {p0, p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 85
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 347
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 348
    .local v0, "elements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 349
    .local v1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 350
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 351
    .local v3, "r":Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    invoke-virtual {v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 352
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getOrphanComments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda66;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda66;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 353
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 354
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 383
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 384
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 385
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 386
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 387
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda33;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda33;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 388
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 389
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 1184
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1185
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1186
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 1187
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1188
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda95;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda95;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1189
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1190
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 359
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 360
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 361
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 362
    .local v2, "r":Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 363
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getOrphanComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda78;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda78;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 364
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 365
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .param p2, "arg"    # Ljava/lang/Object;
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

    .line 370
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 371
    .local v0, "extendedType":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 372
    .local v1, "superType":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 373
    .local v2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 374
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v4, v5, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 375
    .local v4, "r":Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    invoke-virtual {v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 376
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getOrphanComments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda72;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda72;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 377
    invoke-direct {p0, p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 378
    return-object v4
.end method
