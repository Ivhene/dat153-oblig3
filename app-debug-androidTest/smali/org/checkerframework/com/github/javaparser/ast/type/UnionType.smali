.class public Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
.super Lorg/checkerframework/com/github/javaparser/ast/type/Type;
.source "UnionType.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<",
        "Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;",
        ">;"
    }
.end annotation


# instance fields
.field private elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/NonEmptyProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p2, "elements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 75
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->setElements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    .line 76
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->customInitialization()V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 81
    .local p1, "elements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 82
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

    .line 111
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 117
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "|"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public asUnionType()Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .locals 0

    .line 174
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .locals 2

    .line 142
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    return-object v0
.end method

.method public getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/UnionTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TypeMetaModel;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/UnionTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/UnionTypeMetaModel;
    .locals 1

    .line 148
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->unionTypeMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/UnionTypeMetaModel;

    return-object v0
.end method

.method public ifUnionType(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public isUnionType()Z
    .locals 1

    .line 168
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

    .line 123
    if-nez p1, :cond_0

    .line 124
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 126
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 127
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 128
    const/4 v1, 0x1

    return v1

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 157
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 158
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v2, p2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 159
    const/4 v1, 0x1

    return v1

    .line 156
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;
    .locals 2

    .line 184
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->toResolvedType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;

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

    .line 60
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

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

    .line 60
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
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
            "Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;"
        }
    .end annotation

    .line 105
    .local p1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    return-object v0
.end method

.method public setElements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;"
        }
    .end annotation

    .line 91
    .local p1, "elements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 93
    return-object p0

    .line 95
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELEMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 98
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->elements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 99
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 100
    return-object p0
.end method

.method public toUnionType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
