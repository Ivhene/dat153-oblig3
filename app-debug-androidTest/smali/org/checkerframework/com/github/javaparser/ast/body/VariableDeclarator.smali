.class public Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
.super Lorg/checkerframework/com/github/javaparser/ast/Node;
.source "VariableDeclarator.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lorg/checkerframework/com/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
        "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/resolution/Resolvable<",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/NonEmptyProperty;
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

.field private type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 70
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p3, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p4, "initializer"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "type",
            "name",
            "initializer"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 103
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 104
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 105
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 106
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->customInitialization()V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "variableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "variableName"
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "variableName"    # Ljava/lang/String;
    .param p3, "initializer"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "variableName",
            "initializer"
        }
    .end annotation

    .line 82
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p3, "initializer"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "initializer"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 95
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

    .line 143
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 149
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .locals 2

    .line 246
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    return-object v0
.end method

.method protected customInitialization()V
    .locals 1

    .line 113
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator$1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->register(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    .line 138
    return-void
.end method

.method public getInitializer()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/VariableDeclaratorMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/VariableDeclaratorMetaModel;
    .locals 1

    .line 252
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->variableDeclaratorMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/VariableDeclaratorMetaModel;

    return-object v0
.end method

.method public getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    return-object v0
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

    .line 227
    if-nez p1, :cond_0

    .line 228
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 230
    if-ne p1, v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->removeInitializer()Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 232
    const/4 v0, 0x1

    return v0

    .line 235
    :cond_1
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public removeInitializer()Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .locals 2

    .line 240
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
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

    .line 258
    if-nez p1, :cond_0

    .line 259
    const/4 v0, 0x0

    return v0

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 261
    if-ne p1, v0, :cond_1

    .line 262
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 263
    return v1

    .line 266
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_2

    .line 267
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 268
    return v1

    .line 270
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_3

    .line 271
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 272
    return v1

    .line 274
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;
    .locals 2

    .line 279
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

    return-object v0
.end method

.method public setInitializer(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .locals 2
    .param p1, "init"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "init"
        }
    .end annotation

    .line 202
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNonEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v0

    return-object v0
.end method

.method public setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .locals 2
    .param p1, "initializer"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initializer"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 185
    return-object p0

    .line 187
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->INITIALIZER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 190
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 191
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 192
    return-object p0
.end method

.method public bridge synthetic setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .locals 2
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 164
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    .line 166
    return-object p0

    .line 168
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 171
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 172
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 173
    return-object p0
.end method

.method public bridge synthetic setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "type"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 212
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_0

    .line 214
    return-object p0

    .line 216
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-eqz v0, :cond_1

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 219
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 220
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 221
    return-object p0
.end method
