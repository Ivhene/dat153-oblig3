.class public abstract Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "AnnotationExpr.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithName;
.implements Lorg/checkerframework/com/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithName<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/resolution/Resolvable<",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field protected name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "name"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 63
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 64
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->customInitialization()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V
    .locals 1
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 55
    return-void
.end method


# virtual methods
.method public asAnnotationExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .locals 0

    .line 127
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .locals 2

    .line 97
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/AnnotationExprMetaModel;
    .locals 1

    .line 103
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->annotationExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/AnnotationExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/AnnotationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/AnnotationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method public ifAnnotationExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public isAnnotationExpr()Z
    .locals 1

    .line 121
    const/4 v0, 0x1

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

    .line 89
    if-nez p1, :cond_0

    .line 90
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 109
    if-nez p1, :cond_0

    .line 110
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_1

    .line 112
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;
    .locals 2

    .line 146
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;

    return-object v0
.end method

.method public bridge synthetic setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .locals 2
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_0

    .line 76
    return-object p0

    .line 78
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 81
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 82
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 83
    return-object p0
.end method

.method public toAnnotationExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
