.class public Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "ObjectCreationNode.java"


# instance fields
.field protected final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected final classbody:Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;

.field protected final constructor:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/NewClassTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/List;Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "constructor"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "classbody"    # Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewClassTree;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;",
            ")V"
        }
    .end annotation

    .line 32
    .local p3, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 33
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->tree:Lcom/sun/source/tree/NewClassTree;

    .line 34
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->constructor:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 35
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->arguments:Ljava/util/List;

    .line 36
    iput-object p4, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->classbody:Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;

    .line 37
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

    .line 62
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitObjectCreation(Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 88
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return v1

    .line 91
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;

    .line 92
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->constructor:Lorg/checkerframework/dataflow/cfg/node/Node;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->getConstructor()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    return v1

    .line 96
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->getConstructor()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->getConstructor()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 96
    :goto_0
    return v1
.end method

.method public getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "i"    # I

    .line 48
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->arguments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public getClassBody()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->classbody:Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;

    return-object v0
.end method

.method public getConstructor()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->constructor:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getOperands()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->arguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->constructor:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->arguments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/NewClassTree;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->tree:Lcom/sun/source/tree/NewClassTree;

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->getTree()Lcom/sun/source/tree/NewClassTree;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->constructor:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->arguments:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->constructor:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "needComma":Z
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->arguments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 71
    .local v3, "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    if-eqz v1, :cond_0

    .line 72
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const/4 v1, 0x1

    .line 76
    .end local v3    # "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 77
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->classbody:Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;

    if-eqz v2, :cond_2

    .line 80
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->classbody:Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
