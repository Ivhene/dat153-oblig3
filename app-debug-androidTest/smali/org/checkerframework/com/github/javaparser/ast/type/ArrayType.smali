.class public Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
.super Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
.source "ArrayType.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;,
        Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<",
        "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;",
        ">;"
    }
.end annotation


# instance fields
.field private componentType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

.field private origin:Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "componentType"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p3, "origin"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "componentType",
            "origin",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p4, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-direct {p0, p1, p4}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 90
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->setComponentType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 91
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->setOrigin(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 92
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->customInitialization()V

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .param p1, "componentType"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "origin"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentType",
            "origin",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 77
    .local p3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 78
    return-void
.end method

.method public varargs constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;[Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "annotations"    # [Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "annotations"
        }
    .end annotation

    .line 81
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->nodeList([Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 82
    return-void
.end method

.method public static unwrapArrayTypes(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/utils/Pair;
    .locals 6
    .param p0, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/utils/Pair<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;",
            ">;>;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v0, "arrayBracketPairs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;>;"
    :goto_0
    instance-of v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    if-eqz v1, :cond_0

    .line 160
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 161
    .local v1, "arrayType":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getOrigin()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v4

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object p0

    .line 163
    .end local v1    # "arrayType":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    goto :goto_0

    .line 164
    :cond_0
    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static varargs wrapInArrayTypes(Lorg/checkerframework/com/github/javaparser/ast/type/Type;[Ljava/util/List;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 8
    .param p0, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "arrayBracketPairLists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "[",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 133
    .local p1, "arrayBracketPairLists":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;>;"
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 134
    aget-object v1, p1, v0

    .line 135
    .local v1, "arrayBracketPairList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;>;"
    if-eqz v1, :cond_2

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_2

    .line 137
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;

    .line 138
    .local v3, "pair":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;
    const/4 v4, 0x0

    .line 139
    .local v4, "tokenRange":Lorg/checkerframework/com/github/javaparser/TokenRange;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    new-instance v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getTokenRange()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v6

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->getTokenRange()Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v7}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getEnd()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    move-object v4, v5

    .line 142
    :cond_0
    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->getOrigin()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v6

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    invoke-direct {v5, v4, p0, v6, v7}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    move-object p0, v5

    .line 143
    if-eqz v4, :cond_1

    .line 144
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/TokenRange;->toRange()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/Range;

    invoke-virtual {p0, v5}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->setRange(Lorg/checkerframework/com/github/javaparser/Range;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 136
    .end local v3    # "pair":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;
    .end local v4    # "tokenRange":Lorg/checkerframework/com/github/javaparser/TokenRange;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 133
    .end local v1    # "arrayBracketPairList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;>;"
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    :cond_3
    return-object p0
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

    .line 98
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 104
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public asArrayType()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .locals 0

    .line 280
    return-object p0
.end method

.method public asString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->componentType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .locals 2

    .line 250
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->componentType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ArrayTypeMetaModel;
    .locals 1

    .line 256
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->arrayTypeMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ArrayTypeMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ArrayTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ReferenceTypeMetaModel;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ArrayTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TypeMetaModel;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ArrayTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->origin:Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    return-object v0
.end method

.method public ifArrayType(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;",
            ">;)V"
        }
    .end annotation

    .line 285
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method public isArrayType()Z
    .locals 1

    .line 274
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

    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 262
    if-nez p1, :cond_0

    .line 263
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->componentType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_1

    .line 265
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->setComponentType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 266
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;
    .locals 2

    .line 53
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->toResolvedType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;

    return-object v0
.end method

.method public bridge synthetic resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

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

    .line 49
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
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
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;"
        }
    .end annotation

    .line 215
    .local p1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    return-object v0
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

    .line 49
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public setComponentType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .locals 2
    .param p1, "componentType"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "componentType"
        }
    .end annotation

    .line 114
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->componentType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_0

    .line 116
    return-object p0

    .line 118
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->COMPONENT_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->componentType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->componentType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-eqz v0, :cond_1

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 121
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->componentType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 122
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 123
    return-object p0
.end method

.method public setOrigin(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .locals 2
    .param p1, "origin"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "origin"
        }
    .end annotation

    .line 225
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->origin:Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    if-ne p1, v0, :cond_0

    .line 227
    return-object p0

    .line 229
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ORIGIN:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->origin:Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->origin:Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    .line 231
    return-object p0
.end method

.method public toArrayType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
