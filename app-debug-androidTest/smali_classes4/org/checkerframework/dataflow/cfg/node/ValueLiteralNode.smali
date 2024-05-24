.class public abstract Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "ValueLiteralNode.java"


# instance fields
.field protected final tree:Lcom/sun/source/tree/LiteralTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/LiteralTree;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/LiteralTree;

    .line 33
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 34
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;->tree:Lcom/sun/source/tree/LiteralTree;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;

    .line 54
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, "val":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 56
    .local v2, "otherVal":Ljava/lang/Object;
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3
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

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/LiteralTree;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;->tree:Lcom/sun/source/tree/LiteralTree;

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;->getTree()Lcom/sun/source/tree/LiteralTree;

    move-result-object v0

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public hashCode()I
    .locals 2

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
