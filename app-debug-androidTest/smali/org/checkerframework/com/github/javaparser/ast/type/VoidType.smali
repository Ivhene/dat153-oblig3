.class public Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
.super Lorg/checkerframework/com/github/javaparser/ast/type/Type;
.source "VoidType.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<",
        "Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 59
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->customInitialization()V

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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "void"

    return-object v0
.end method

.method public asVoidType()Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    .locals 0

    .line 121
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    .locals 2

    .line 95
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/VoidTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TypeMetaModel;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/VoidTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/VoidTypeMetaModel;
    .locals 1

    .line 101
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->voidTypeMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/VoidTypeMetaModel;

    return-object v0
.end method

.method public ifVoidType(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public isVoidType()Z
    .locals 1

    .line 115
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

    .line 82
    if-nez p1, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 107
    if-nez p1, :cond_0

    .line 108
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedVoidType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedVoidType;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedVoidType;
    .locals 2

    .line 131
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedVoidType;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->toResolvedType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedVoidType;

    return-object v0
.end method

.method public bridge synthetic setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;"
        }
    .end annotation

    .line 76
    .local p1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    return-object v0
.end method

.method public toVoidType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
