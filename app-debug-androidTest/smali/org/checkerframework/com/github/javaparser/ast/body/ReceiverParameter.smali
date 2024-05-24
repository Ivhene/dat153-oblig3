.class public Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
.super Lorg/checkerframework/com/github/javaparser/ast/Node;
.source "ReceiverParameter.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithName;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;",
        "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithName<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;",
        ">;"
    }
.end annotation


# instance fields
.field private annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation
.end field

.field private name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

.field private type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 60
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p3, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p4, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "annotations",
            "type",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ")V"
        }
    .end annotation

    .line 87
    .local p2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 88
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 89
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 90
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 91
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->customInitialization()V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V
    .locals 1
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p3, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "annotations",
            "type",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 79
    .local p1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "name"    # Ljava/lang/String;
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

    .line 74
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-direct {v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
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

    .line 64
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 65
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

    .line 97
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 103
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .locals 2

    .line 154
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    return-object v0
.end method

.method public getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ReceiverParameterMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ReceiverParameterMetaModel;
    .locals 1

    .line 160
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->receiverParameterMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ReceiverParameterMetaModel;

    return-object v0
.end method

.method public getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method public getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    return-object v0
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

    .line 185
    if-nez p1, :cond_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 188
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 189
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 190
    const/4 v1, 0x1

    return v1

    .line 187
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 4
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

    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 v0, 0x0

    return v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 202
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 203
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 204
    return v2

    .line 201
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_3

    .line 208
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 209
    return v2

    .line 211
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_4

    .line 212
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 213
    return v2

    .line 215
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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
            "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;"
        }
    .end annotation

    .line 139
    .local p1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 141
    return-object p0

    .line 143
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 146
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 147
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 148
    return-object p0
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

    .line 51
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
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

    .line 170
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_0

    .line 172
    return-object p0

    .line 174
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 177
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 178
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 179
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

    .line 51
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
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

    .line 113
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_0

    .line 115
    return-object p0

    .line 117
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-eqz v0, :cond_1

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 120
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 121
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 122
    return-object p0
.end method
