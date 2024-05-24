.class public Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;
.super Ljava/lang/Object;
.source "Analysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/Analysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Worklist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/analysis/Analysis$Worklist$DFOComparator;
    }
.end annotation


# instance fields
.field protected final depthFirstOrder:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->depthFirstOrder:Ljava/util/IdentityHashMap;

    .line 743
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist$DFOComparator;

    invoke-direct {v1, p0}, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist$DFOComparator;-><init>(Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;)V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->queue:Ljava/util/PriorityQueue;

    .line 744
    return-void
.end method


# virtual methods
.method public add(Lorg/checkerframework/dataflow/cfg/block/Block;)V
    .locals 1
    .param p1, "block"    # Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 768
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 769
    return-void
.end method

.method public contains(Lorg/checkerframework/dataflow/cfg/block/Block;)Z
    .locals 1
    .param p1, "block"    # Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 764
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "poll()"
        }
        result = false
    .end annotation

    .line 760
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public poll()Lorg/checkerframework/dataflow/cfg/block/Block;
    .locals 1

    .line 773
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/Block;

    return-object v0
.end method

.method public process(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)V
    .locals 5
    .param p1, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    .line 747
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->depthFirstOrder:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 748
    const/4 v0, 0x1

    .line 749
    .local v0, "count":I
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getDepthFirstOrderedBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 750
    .local v2, "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    iget-object v3, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->depthFirstOrder:Ljava/util/IdentityHashMap;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "count":I
    .local v4, "count":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .end local v2    # "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    move v0, v4

    goto :goto_0

    .line 753
    .end local v4    # "count":I
    .restart local v0    # "count":I
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 754
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Worklist("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
