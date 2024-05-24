.class public Lorg/checkerframework/dataflow/cfg/node/FloatLiteralNode;
.super Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;
.source "FloatLiteralNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/LiteralTree;)V
    .locals 2
    .param p1, "t"    # Lcom/sun/source/tree/LiteralTree;

    .line 25
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    .line 26
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->FLOAT_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 27
    return-void

    .line 26
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

    .line 36
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitFloatLiteral(Lorg/checkerframework/dataflow/cfg/node/FloatLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 42
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/FloatLiteralNode;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Float;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/FloatLiteralNode;->tree:Lcom/sun/source/tree/LiteralTree;

    invoke-interface {v0}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/FloatLiteralNode;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
