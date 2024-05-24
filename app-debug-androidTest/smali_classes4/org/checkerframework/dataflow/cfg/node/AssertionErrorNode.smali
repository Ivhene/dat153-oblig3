.class public Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "AssertionErrorNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final condition:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final detail:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "condition"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "detail"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 27
    invoke-direct {p0, p4}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 28
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ASSERT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 29
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->tree:Lcom/sun/source/tree/Tree;

    .line 30
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->condition:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 31
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->detail:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 32
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
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

    .line 49
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitAssertionError(Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 59
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    return v1

    .line 62
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;

    .line 63
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->getCondition()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->getCondition()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->getDetail()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->getDetail()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 63
    :goto_0
    return v1
.end method

.method public getCondition()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->condition:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getDetail()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->detail:Lorg/checkerframework/dataflow/cfg/node/Node;

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

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->getCondition()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->getDetail()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 69
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->getCondition()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->getDetail()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssertionError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;->getDetail()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
