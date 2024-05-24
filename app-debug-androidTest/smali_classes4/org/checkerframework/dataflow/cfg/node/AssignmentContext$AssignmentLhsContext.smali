.class public Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$AssignmentLhsContext;
.super Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
.source "AssignmentContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssignmentLhsContext"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final node:Lorg/checkerframework/dataflow/cfg/node/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 28
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$AssignmentLhsContext;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 30
    return-void
.end method


# virtual methods
.method public getContextTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$AssignmentLhsContext;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0
.end method

.method public getElementForType()Ljavax/lang/model/element/Element;
    .locals 3

    .line 34
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$AssignmentLhsContext;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 35
    .local v0, "tree":Lcom/sun/source/tree/Tree;
    if-nez v0, :cond_0

    .line 36
    const/4 v1, 0x0

    return-object v1

    .line 37
    :cond_0
    instance-of v1, v0, Lcom/sun/source/tree/ExpressionTree;

    if-eqz v1, :cond_1

    .line 38
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    return-object v1

    .line 39
    :cond_1
    instance-of v1, v0, Lcom/sun/source/tree/VariableTree;

    if-eqz v1, :cond_2

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/VariableTree;

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    return-object v1

    .line 42
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "unexpected tree"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
