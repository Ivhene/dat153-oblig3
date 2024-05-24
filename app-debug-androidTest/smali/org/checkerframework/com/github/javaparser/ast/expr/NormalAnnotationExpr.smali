.class public Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
.source "NormalAnnotationExpr.java"


# instance fields
.field private pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "name",
            "pairs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p3, "pairs":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 61
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->setPairs(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    .line 62
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->customInitialization()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "pairs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 52
    .local p2, "pairs":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 53
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

    .line 68
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 74
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public addPair(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->addPair(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    move-result-object v0

    return-object v0
.end method

.method public addPair(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;-><init>(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 112
    .local v0, "memberValuePair":Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 113
    return-object p0
.end method

.method public asNormalAnnotationExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .locals 0

    .line 165
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .locals 2

    .line 133
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/AnnotationExprMetaModel;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NormalAnnotationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NormalAnnotationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NormalAnnotationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NormalAnnotationExprMetaModel;
    .locals 1

    .line 139
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->normalAnnotationExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/NormalAnnotationExprMetaModel;

    return-object v0
.end method

.method public getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public ifNormalAnnotationExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public isNormalAnnotationExpr()Z
    .locals 1

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 119
    if-nez p1, :cond_0

    .line 120
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 122
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 123
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 124
    const/4 v1, 0x1

    return v1

    .line 121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 3
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

    .line 145
    if-nez p1, :cond_0

    .line 146
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 148
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 149
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v2, p2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 150
    const/4 v1, 0x1

    return v1

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setPairs(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pairs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;"
        }
    .end annotation

    .line 84
    .local p1, "pairs":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 86
    return-object p0

    .line 88
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PAIRS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 91
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->pairs:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 92
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 93
    return-object p0
.end method

.method public toNormalAnnotationExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
