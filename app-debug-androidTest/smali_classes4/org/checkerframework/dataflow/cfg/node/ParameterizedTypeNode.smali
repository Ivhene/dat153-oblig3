.class public Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "ParameterizedTypeNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree;)V
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/Tree;

    .line 27
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 28
    instance-of v0, p1, Lcom/sun/source/tree/ParameterizedTypeTree;

    if-eqz v0, :cond_0

    .line 29
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;->tree:Lcom/sun/source/tree/Tree;

    .line 30
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

    .line 39
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitParameterizedType(Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 49
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;

    .line 53
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getOperands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
