.class public Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "ArrayCreationNode.java"


# instance fields
.field protected final dimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected final initializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected final tree:Lcom/sun/source/tree/NewArrayTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/NewArrayTree;Ljavax/lang/model/type/TypeMirror;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "tree"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "type"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewArrayTree;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p3, "dimensions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .local p4, "initializers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-direct {p0, p2}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 39
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->tree:Lcom/sun/source/tree/NewArrayTree;

    .line 40
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->dimensions:Ljava/util/List;

    .line 41
    iput-object p4, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->initializers:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 67
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitArrayCreation(Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 103
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 104
    return v1

    .line 106
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    .line 108
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getDimensions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getInitializers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getInitializers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 108
    :goto_0
    return v1
.end method

.method public getDimension(I)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "i"    # I

    .line 49
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->dimensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public getInitializer(I)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "i"    # I

    .line 57
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->initializers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getInitializers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->initializers:Ljava/util/List;

    return-object v0
.end method

.method public getOperands()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->dimensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->initializers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->dimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->initializers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->tree:Lcom/sun/source/tree/NewArrayTree;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->dimensions:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->initializers:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->dimensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_2

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "needComma":Z
    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->dimensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 78
    .local v4, "dim":Lorg/checkerframework/dataflow/cfg/node/Node;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const/4 v1, 0x1

    .line 83
    .end local v4    # "dim":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 84
    :cond_1
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .end local v1    # "needComma":Z
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->initializers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 87
    const/4 v1, 0x0

    .line 88
    .restart local v1    # "needComma":Z
    const-string v3, " = {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->initializers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 90
    .local v4, "init":Lorg/checkerframework/dataflow/cfg/node/Node;
    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const/4 v1, 0x1

    .line 95
    .end local v4    # "init":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_1

    .line 96
    :cond_4
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .end local v1    # "needComma":Z
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
