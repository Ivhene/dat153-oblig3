.class public abstract Lorg/checkerframework/dataflow/cfg/node/Node;
.super Ljava/lang/Object;
.source "Node.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected assignmentContext:Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;

.field protected block:Lorg/checkerframework/dataflow/cfg/block/Block;

.field protected inSource:Z

.field protected lvalue:Z

.field protected final type:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 35
    return-void
.end method

.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;)V
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->lvalue:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->inSource:Z

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->type:Ljavax/lang/model/type/TypeMirror;

    .line 61
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public abstract accept(Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public getAssignmentContext()Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->assignmentContext:Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;

    return-object v0
.end method

.method public getBlock()Lorg/checkerframework/dataflow/cfg/block/Block;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->block:Lorg/checkerframework/dataflow/cfg/block/Block;

    return-object v0
.end method

.method public getInSource()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->inSource:Z

    return v0
.end method

.method public abstract getOperands()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation
.end method

.method public getTransitiveOperands()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getOperands()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 142
    .local v0, "operands":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 143
    .local v1, "transitiveOperands":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 145
    .local v2, "next":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getOperands()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 146
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "next":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 148
    :cond_0
    return-object v1
.end method

.method public abstract getTree()Lcom/sun/source/tree/Tree;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation
.end method

.method public getType()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->type:Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method

.method public isLValue()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 108
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->lvalue:Z

    return v0
.end method

.method public setAssignmentContext(Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;)V
    .locals 0
    .param p1, "assignmentContext"    # Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;

    .line 130
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->assignmentContext:Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;

    .line 131
    return-void
.end method

.method public setBlock(Lorg/checkerframework/dataflow/cfg/block/Block;)V
    .locals 0
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 73
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->block:Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 74
    return-void
.end method

.method public setInSource(Z)V
    .locals 0
    .param p1, "inSrc"    # Z

    .line 121
    iput-boolean p1, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->inSource:Z

    .line 122
    return-void
.end method

.method public setLValue()V
    .locals 1

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/node/Node;->lvalue:Z

    .line 114
    return-void
.end method
