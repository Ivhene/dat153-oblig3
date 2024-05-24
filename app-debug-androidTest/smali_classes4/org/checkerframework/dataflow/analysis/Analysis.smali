.class public Lorg/checkerframework/dataflow/analysis/Analysis;
.super Ljava/lang/Object;
.source "Analysis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
        "TA;>;S::",
        "Lorg/checkerframework/dataflow/analysis/Store<",
        "TS;>;T::",
        "Lorg/checkerframework/dataflow/analysis/TransferFunction<",
        "TA;TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final blockCount:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

.field protected currentInput:Lorg/checkerframework/dataflow/analysis/TransferInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;"
        }
    .end annotation
.end field

.field protected currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected currentTree:Lcom/sun/source/tree/Tree;

.field protected final elseStores:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "TS;>;"
        }
    .end annotation
.end field

.field protected final env:Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final finalLocalValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljavax/lang/model/element/Element;",
            "TA;>;"
        }
    .end annotation
.end field

.field protected final inputs:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;>;"
        }
    .end annotation
.end field

.field protected isRunning:Z

.field protected final maxCountBeforeWidening:I

.field protected final nodeValues:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TA;>;"
        }
    .end annotation
.end field

.field protected final storesAtReturnStatements:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TA;TS;>;>;"
        }
    .end annotation
.end field

.field protected final thenStores:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "TS;>;"
        }
    .end annotation
.end field

.field protected transferFunction:Lorg/checkerframework/dataflow/analysis/TransferFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final types:Ljavax/lang/model/util/Types;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final worklist:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 170
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/dataflow/analysis/Analysis;-><init>(Lorg/checkerframework/dataflow/analysis/TransferFunction;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxCountBeforeWidening"    # I

    .line 181
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;-><init>(Lorg/checkerframework/dataflow/analysis/TransferFunction;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 2
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;-><init>(Lorg/checkerframework/dataflow/analysis/TransferFunction;ILjavax/annotation/processing/ProcessingEnvironment;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/TransferFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 206
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    .local p1, "transfer":Lorg/checkerframework/dataflow/analysis/TransferFunction;, "TT;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/dataflow/analysis/Analysis;-><init>(Lorg/checkerframework/dataflow/analysis/TransferFunction;I)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/TransferFunction;I)V
    .locals 2
    .param p2, "maxCountBeforeWidening"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 243
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    .local p1, "transfer":Lorg/checkerframework/dataflow/analysis/TransferFunction;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 246
    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->types:Ljavax/lang/model/util/Types;

    .line 247
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->transferFunction:Lorg/checkerframework/dataflow/analysis/TransferFunction;

    .line 248
    iput p2, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->maxCountBeforeWidening:I

    .line 249
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->thenStores:Ljava/util/IdentityHashMap;

    .line 250
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->elseStores:Ljava/util/IdentityHashMap;

    .line 251
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->blockCount:Ljava/util/IdentityHashMap;

    .line 252
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    .line 253
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->storesAtReturnStatements:Ljava/util/IdentityHashMap;

    .line 254
    new-instance v0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->worklist:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    .line 255
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->nodeValues:Ljava/util/IdentityHashMap;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->finalLocalValues:Ljava/util/HashMap;

    .line 257
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/TransferFunction;ILjavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1
    .param p2, "maxCountBeforeWidening"    # I
    .param p3, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    .local p1, "transfer":Lorg/checkerframework/dataflow/analysis/TransferFunction;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    .line 222
    iput-object p3, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 223
    invoke-interface {p3}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->types:Ljavax/lang/model/util/Types;

    .line 224
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->transferFunction:Lorg/checkerframework/dataflow/analysis/TransferFunction;

    .line 225
    iput p2, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->maxCountBeforeWidening:I

    .line 226
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->thenStores:Ljava/util/IdentityHashMap;

    .line 227
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->elseStores:Ljava/util/IdentityHashMap;

    .line 228
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->blockCount:Ljava/util/IdentityHashMap;

    .line 229
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    .line 230
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->storesAtReturnStatements:Ljava/util/IdentityHashMap;

    .line 231
    new-instance v0, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->worklist:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    .line 232
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->nodeValues:Ljava/util/IdentityHashMap;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->finalLocalValues:Ljava/util/HashMap;

    .line 234
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/TransferFunction;Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    .local p1, "transfer":Lorg/checkerframework/dataflow/analysis/TransferFunction;, "TT;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/checkerframework/dataflow/analysis/Analysis;-><init>(Lorg/checkerframework/dataflow/analysis/TransferFunction;ILjavax/annotation/processing/ProcessingEnvironment;)V

    .line 197
    return-void
.end method

.method private mergeStores(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Z)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 1
    .param p3, "shouldWiden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;Z)TS;"
        }
    .end annotation

    .line 712
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    .local p1, "newStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .local p2, "previousStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    if-nez p2, :cond_0

    .line 713
    return-object p1

    .line 714
    :cond_0
    if-eqz p3, :cond_1

    .line 715
    invoke-interface {p1, p2}, Lorg/checkerframework/dataflow/analysis/Store;->widenedUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    return-object v0

    .line 717
    :cond_1
    invoke-interface {p1, p2}, Lorg/checkerframework/dataflow/analysis/Store;->leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    return-object v0
.end method

.method protected static readFromStore(Ljava/util/Map;Lorg/checkerframework/dataflow/cfg/block/Block;)Ljava/lang/Object;
    .locals 1
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "TS;>;",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ")TS;"
        }
    .end annotation

    .line 816
    .local p0, "stores":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/cfg/block/Block;TS;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store$Kind;Z)V
    .locals 8
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "kind"    # Lorg/checkerframework/dataflow/analysis/Store$Kind;
    .param p5, "addBlockToWorklist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TS;",
            "Lorg/checkerframework/dataflow/analysis/Store$Kind;",
            "Z)V"
        }
    .end annotation

    .line 629
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    .local p3, "s":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    sget-object v0, Lorg/checkerframework/dataflow/analysis/Store$Kind;->THEN:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/dataflow/analysis/Analysis;->getStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Store$Kind;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    .line 630
    .local v0, "thenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    sget-object v1, Lorg/checkerframework/dataflow/analysis/Store$Kind;->ELSE:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/dataflow/analysis/Analysis;->getStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Store$Kind;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    .line 631
    .local v1, "elseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    const/4 v2, 0x0

    .line 633
    .local v2, "shouldWiden":Z
    iget-object v3, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->blockCount:Ljava/util/IdentityHashMap;

    if-eqz v3, :cond_3

    .line 634
    invoke-virtual {v3, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 635
    .local v3, "count":Ljava/lang/Integer;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 636
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 638
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->maxCountBeforeWidening:I

    const/4 v7, 0x1

    if-lt v5, v6, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    move v2, v5

    .line 639
    if-eqz v2, :cond_2

    .line 640
    iget-object v5, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->blockCount:Ljava/util/IdentityHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, p1, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 642
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->blockCount:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .end local v3    # "count":Ljava/lang/Integer;
    :cond_3
    :goto_1
    sget-object v3, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$analysis$Store$Kind:[I

    invoke-virtual {p4}, Lorg/checkerframework/dataflow/analysis/Store$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 674
    :pswitch_0
    if-ne v0, v1, :cond_5

    .line 676
    invoke-direct {p0, p3, v0, v2}, Lorg/checkerframework/dataflow/analysis/Analysis;->mergeStores(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Z)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    .line 677
    .local v3, "newStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 678
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->thenStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->elseStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    new-instance v5, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-direct {v5, p2, p0, v3}, Lorg/checkerframework/dataflow/analysis/TransferInput;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/Store;)V

    invoke-virtual {v4, p1, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const/4 p5, 0x1

    .line 683
    .end local v3    # "newStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    :cond_4
    goto :goto_2

    .line 684
    :cond_5
    const/4 v3, 0x0

    .line 686
    .local v3, "storeChanged":Z
    invoke-direct {p0, p3, v0, v2}, Lorg/checkerframework/dataflow/analysis/Analysis;->mergeStores(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Z)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    .line 687
    .local v4, "newThenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 688
    iget-object v5, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->thenStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const/4 v3, 0x1

    .line 692
    :cond_6
    invoke-direct {p0, p3, v1, v2}, Lorg/checkerframework/dataflow/analysis/Analysis;->mergeStores(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Z)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v5

    .line 693
    .local v5, "newElseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 694
    iget-object v6, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->elseStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const/4 v3, 0x1

    .line 698
    :cond_7
    if-eqz v3, :cond_8

    .line 699
    iget-object v6, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    new-instance v7, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-direct {v7, p2, p0, v4, v5}, Lorg/checkerframework/dataflow/analysis/TransferInput;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    invoke-virtual {v6, p1, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const/4 p5, 0x1

    goto :goto_2

    .line 663
    .end local v3    # "storeChanged":Z
    .end local v4    # "newThenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .end local v5    # "newElseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    :pswitch_1
    invoke-direct {p0, p3, v1, v2}, Lorg/checkerframework/dataflow/analysis/Analysis;->mergeStores(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Z)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    .line 664
    .local v3, "newElseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 665
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->elseStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    if-eqz v0, :cond_8

    .line 667
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    new-instance v5, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-direct {v5, p2, p0, v0, v3}, Lorg/checkerframework/dataflow/analysis/TransferInput;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    invoke-virtual {v4, p1, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const/4 p5, 0x1

    goto :goto_2

    .line 650
    .end local v3    # "newElseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    :pswitch_2
    invoke-direct {p0, p3, v0, v2}, Lorg/checkerframework/dataflow/analysis/Analysis;->mergeStores(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Z)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    .line 651
    .local v3, "newThenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 652
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->thenStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    if-eqz v1, :cond_8

    .line 654
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    new-instance v5, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-direct {v5, p2, p0, v3, v1}, Lorg/checkerframework/dataflow/analysis/TransferInput;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    invoke-virtual {v4, p1, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const/4 p5, 0x1

    .line 705
    .end local v3    # "newThenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    :cond_8
    :goto_2
    if-eqz p5, :cond_9

    .line 706
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->addToWorklist(Lorg/checkerframework/dataflow/cfg/block/Block;)V

    .line 708
    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected addToWorklist(Lorg/checkerframework/dataflow/cfg/block/Block;)V
    .locals 1
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 618
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->worklist:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->contains(Lorg/checkerframework/dataflow/cfg/block/Block;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->worklist:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->add(Lorg/checkerframework/dataflow/cfg/block/Block;)V

    .line 621
    :cond_0
    return-void
.end method

.method protected callTransferFunction(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TA;TS;>;"
        }
    .end annotation

    .line 531
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    .local p2, "store":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->transferFunction:Lorg/checkerframework/dataflow/analysis/TransferFunction;

    if-eqz v0, :cond_3

    .line 532
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->isLValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v0

    .line 538
    :cond_0
    iput-object p1, p2, Lorg/checkerframework/dataflow/analysis/TransferInput;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 539
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 540
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->transferFunction:Lorg/checkerframework/dataflow/analysis/TransferFunction;

    invoke-virtual {p1, v0, p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->accept(Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 541
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    iput-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 542
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->storesAtReturnStatements:Ljava/util/IdentityHashMap;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;

    invoke-virtual {v1, v2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_1
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    if-eqz v1, :cond_2

    .line 549
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    .line 550
    .local v1, "assignment":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    .line 551
    .local v2, "lhst":Lorg/checkerframework/dataflow/cfg/node/Node;
    instance-of v3, v2, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    if-eqz v3, :cond_2

    .line 552
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    .line 553
    .local v3, "lhs":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    .line 554
    .local v4, "elem":Ljavax/lang/model/element/Element;
    invoke-static {v4}, Lorg/checkerframework/javacutil/ElementUtils;->isEffectivelyFinal(Ljavax/lang/model/element/Element;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 555
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v5

    .line 556
    .local v5, "resval":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    if-eqz v5, :cond_2

    .line 557
    iget-object v6, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->finalLocalValues:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .end local v1    # "assignment":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .end local v2    # "lhst":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v3    # "lhs":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .end local v4    # "elem":Ljavax/lang/model/element/Element;
    .end local v5    # "resval":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    :cond_2
    return-object v0

    .line 531
    .end local v0    # "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getContainingClass(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/Tree;

    .line 920
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    if-nez v0, :cond_0

    .line 921
    const/4 v0, 0x0

    return-object v0

    .line 923
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getContainingClass(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    .line 924
    .local v0, "ct":Lcom/sun/source/tree/ClassTree;
    return-object v0
.end method

.method public getContainingMethod(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/MethodTree;
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/Tree;

    .line 908
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    if-nez v0, :cond_0

    .line 909
    const/4 v0, 0x0

    return-object v0

    .line 911
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getContainingMethod(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    .line 912
    .local v0, "mt":Lcom/sun/source/tree/MethodTree;
    return-object v0
.end method

.method public getCurrentTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 141
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->currentTree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public getEnv()Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method public getExceptionalExitStore()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 970
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    if-eqz v0, :cond_0

    .line 971
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getExceptionalExitBlock()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    .line 972
    .local v0, "exceptionalExitStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    return-object v0

    .line 970
    .end local v0    # "exceptionalExitStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getInput(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/analysis/TransferInput;
    .locals 1
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ")",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;"
        }
    .end annotation

    .line 787
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->getInputBefore(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v0

    return-object v0
.end method

.method protected getInputBefore(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/analysis/TransferInput;
    .locals 1
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ")",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;"
        }
    .end annotation

    .line 795
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferInput;

    return-object v0
.end method

.method public getNodeValues()Ljava/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TA;>;"
        }
    .end annotation

    .line 852
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->nodeValues:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method public getNodesForTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 896
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    if-nez v0, :cond_0

    .line 897
    const/4 v0, 0x0

    return-object v0

    .line 899
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getNodesCorrespondingToTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;

    move-result-object v0

    .line 900
    .local v0, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    return-object v0
.end method

.method public getRegularExitStore()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 958
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    if-eqz v0, :cond_1

    .line 959
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getRegularExitBlock()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    move-result-object v0

    .line 960
    .local v0, "regularExitBlock":Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    .line 962
    .local v1, "regularExitStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    return-object v1

    .line 964
    .end local v1    # "regularExitStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 958
    .end local v0    # "regularExitBlock":Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getResult()Lorg/checkerframework/dataflow/analysis/AnalysisResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/dataflow/analysis/AnalysisResult<",
            "TA;TS;>;"
        }
    .end annotation

    .line 943
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    if-nez v0, :cond_1

    .line 944
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    if-eqz v0, :cond_0

    .line 945
    new-instance v0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->nodeValues:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    .line 948
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getTreeLookup()Ljava/util/IdentityHashMap;

    move-result-object v4

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    .line 949
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getUnaryAssignNodeLookup()Ljava/util/IdentityHashMap;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->finalLocalValues:Ljava/util/HashMap;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;-><init>(Ljava/util/Map;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/HashMap;)V

    .line 945
    return-object v0

    .line 944
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 943
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getReturnStatementStores()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TA;TS;>;>;>;"
        }
    .end annotation

    .line 929
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    if-eqz v0, :cond_1

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;>;"
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getReturnNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;

    .line 932
    .local v2, "returnNode":Lorg/checkerframework/dataflow/cfg/node/ReturnNode;
    iget-object v3, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->storesAtReturnStatements:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 933
    .local v3, "store":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    .end local v2    # "returnNode":Lorg/checkerframework/dataflow/cfg/node/ReturnNode;
    .end local v3    # "store":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    goto :goto_0

    .line 935
    :cond_0
    return-object v0

    .line 929
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;>;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected getStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Store$Kind;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 2
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .param p2, "kind"    # Lorg/checkerframework/dataflow/analysis/Store$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Store$Kind;",
            ")TS;"
        }
    .end annotation

    .line 800
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    sget-object v0, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$analysis$Store$Kind:[I

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/Store$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 806
    goto :goto_0

    .line 804
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->elseStores:Ljava/util/IdentityHashMap;

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->readFromStore(Ljava/util/Map;Lorg/checkerframework/dataflow/cfg/block/Block;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/Store;

    return-object v0

    .line 802
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->thenStores:Ljava/util/IdentityHashMap;

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->readFromStore(Ljava/util/Map;Lorg/checkerframework/dataflow/cfg/block/Block;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/Store;

    return-object v0

    .line 806
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTransferFunction()Lorg/checkerframework/dataflow/analysis/TransferFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->transferFunction:Lorg/checkerframework/dataflow/analysis/TransferFunction;

    return-object v0
.end method

.method public getTypes()Ljavax/lang/model/util/Types;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->types:Ljavax/lang/model/util/Types;

    return-object v0
.end method

.method public getValue(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/AbstractValue;
    .locals 6
    .param p1, "t"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")TA;"
        }
    .end annotation

    .line 869
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->currentTree:Lcom/sun/source/tree/Tree;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 870
    return-object v1

    .line 872
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->getNodesForTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;

    move-result-object v0

    .line 873
    .local v0, "nodesCorrespondingToTree":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-nez v0, :cond_1

    .line 874
    return-object v1

    .line 876
    :cond_1
    const/4 v2, 0x0

    .line 877
    .local v2, "merged":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 878
    .local v4, "aNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/Node;->isLValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 879
    return-object v1

    .line 881
    :cond_2
    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/analysis/Analysis;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v5

    .line 882
    .local v5, "a":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    if-nez v2, :cond_3

    .line 883
    move-object v2, v5

    goto :goto_1

    .line 884
    :cond_3
    if-eqz v5, :cond_4

    .line 885
    invoke-interface {v2, v5}, Lorg/checkerframework/dataflow/analysis/AbstractValue;->leastUpperBound(Lorg/checkerframework/dataflow/analysis/AbstractValue;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v2

    .line 887
    .end local v4    # "aNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v5    # "a":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    :cond_4
    :goto_1
    goto :goto_0

    .line 888
    :cond_5
    return-object v2
.end method

.method public getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")TA;"
        }
    .end annotation

    .line 830
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    if-eqz v0, :cond_5

    .line 832
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->currentTree:Lcom/sun/source/tree/Tree;

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 839
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->isLValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 840
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    if-eq v0, p1, :cond_2

    .line 841
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getOperands()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 842
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTransitiveOperands()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 845
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->nodeValues:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/AbstractValue;

    return-object v0

    .line 843
    :cond_2
    :goto_0
    return-object v1

    .line 839
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Did not expect an lvalue, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 835
    :cond_4
    :goto_1
    return-object v1

    .line 847
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->nodeValues:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/AbstractValue;

    return-object v0
.end method

.method protected init(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)V
    .locals 7
    .param p1, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    .line 567
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->thenStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 568
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->elseStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 569
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->blockCount:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 572
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 573
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->storesAtReturnStatements:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 574
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->nodeValues:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 575
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->finalLocalValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 577
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    .line 578
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->worklist:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->process(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)V

    .line 579
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->worklist:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getEntryBlock()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->add(Lorg/checkerframework/dataflow/cfg/block/Block;)V

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getUnderlyingAST()Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    move-result-object v1

    .line 583
    .local v1, "underlyingAST":Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->METHOD:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v2, v3, :cond_2

    .line 584
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getMethod()Lcom/sun/source/tree/MethodTree;

    move-result-object v2

    .line 585
    .local v2, "tree":Lcom/sun/source/tree/MethodTree;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 586
    invoke-interface {v2}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/VariableTree;

    .line 587
    .local v4, "p":Lcom/sun/source/tree/VariableTree;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v5, v4}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 588
    .local v5, "var":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v4    # "p":Lcom/sun/source/tree/VariableTree;
    .end local v5    # "var":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    goto :goto_0

    .line 586
    .end local v2    # "tree":Lcom/sun/source/tree/MethodTree;
    :cond_1
    goto :goto_2

    .line 592
    :cond_2
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->LAMBDA:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v2, v3, :cond_3

    .line 593
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;->getLambdaTree()Lcom/sun/source/tree/LambdaExpressionTree;

    move-result-object v2

    .line 594
    .local v2, "lambda":Lcom/sun/source/tree/LambdaExpressionTree;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 595
    invoke-interface {v2}, Lcom/sun/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/VariableTree;

    .line 596
    .restart local v4    # "p":Lcom/sun/source/tree/VariableTree;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v5, v4}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 597
    .restart local v5    # "var":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    .end local v4    # "p":Lcom/sun/source/tree/VariableTree;
    .end local v5    # "var":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    goto :goto_1

    .line 592
    .end local v2    # "lambda":Lcom/sun/source/tree/LambdaExpressionTree;
    :cond_3
    :goto_2
    nop

    .line 605
    :cond_4
    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->transferFunction:Lorg/checkerframework/dataflow/analysis/TransferFunction;

    if-eqz v2, :cond_5

    .line 606
    invoke-interface {v2, v1, v0}, Lorg/checkerframework/dataflow/analysis/TransferFunction;->initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    .line 607
    .local v2, "initialStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getEntryBlock()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    move-result-object v3

    .line 608
    .local v3, "entry":Lorg/checkerframework/dataflow/cfg/block/Block;
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->thenStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->elseStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->inputs:Ljava/util/IdentityHashMap;

    new-instance v5, Lorg/checkerframework/dataflow/analysis/TransferInput;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0, v2}, Lorg/checkerframework/dataflow/analysis/TransferInput;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/Store;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    return-void

    .line 605
    .end local v2    # "initialStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .end local v3    # "entry":Lorg/checkerframework/dataflow/cfg/block/Block;
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public isRunning()Z
    .locals 1

    .line 821
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    return v0
.end method

.method public performAnalysis(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)V
    .locals 3
    .param p1, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    .line 304
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    if-nez v0, :cond_3

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    .line 308
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->init(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)V

    .line 310
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->worklist:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->worklist:Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/Analysis$Worklist;->poll()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v1

    .line 312
    .local v1, "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/analysis/Analysis;->performAnalysisBlock(Lorg/checkerframework/dataflow/cfg/block/Block;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .end local v1    # "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    goto :goto_0

    .line 315
    :cond_0
    iget-boolean v1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    if-eqz v1, :cond_1

    .line 317
    iput-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    .line 318
    nop

    .line 319
    return-void

    .line 315
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 317
    :cond_2
    iput-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    throw v1

    .line 304
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected performAnalysisBlock(Lorg/checkerframework/dataflow/cfg/block/Block;)V
    .locals 19
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 323
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    move-object/from16 v6, p0

    sget-object v0, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    invoke-interface/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "@AssumeAssertion(nullness): invariant"

    packed-switch v0, :pswitch_data_0

    .line 437
    goto/16 :goto_6

    .line 426
    :pswitch_0
    move-object/from16 v7, p1

    check-cast v7, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    .line 427
    .local v7, "sb":Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;
    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;->getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v8

    .line 428
    .local v8, "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    if-eqz v8, :cond_a

    .line 429
    invoke-virtual/range {p0 .. p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->getInputBefore(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v9

    .line 430
    .local v9, "input":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    if-eqz v9, :cond_0

    .line 431
    const/4 v2, 0x0

    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;->getFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/analysis/Analysis;->propagateStoresTo(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/Store$FlowRule;Z)V

    .line 432
    .end local v9    # "input":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    goto/16 :goto_5

    .line 430
    .restart local v9    # "input":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 406
    .end local v7    # "sb":Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;
    .end local v8    # "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v9    # "input":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    :pswitch_1
    move-object/from16 v7, p1

    check-cast v7, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;

    .line 409
    .local v7, "cb":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;
    invoke-virtual {v6, v7}, Lorg/checkerframework/dataflow/analysis/Analysis;->getInputBefore(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v8

    .line 410
    .local v8, "inputBefore":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    if-eqz v8, :cond_1

    .line 411
    invoke-virtual {v8}, Lorg/checkerframework/dataflow/analysis/TransferInput;->copy()Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v9

    .line 414
    .restart local v9    # "input":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getThenSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v10

    .line 415
    .local v10, "thenSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getElseSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v11

    .line 417
    .local v11, "elseSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    const/4 v2, 0x0

    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getThenFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/analysis/Analysis;->propagateStoresTo(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/Store$FlowRule;Z)V

    .line 418
    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getElseFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v4

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/analysis/Analysis;->propagateStoresTo(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/Store$FlowRule;Z)V

    .line 419
    goto/16 :goto_5

    .line 410
    .end local v9    # "input":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .end local v10    # "thenSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v11    # "elseSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 356
    .end local v7    # "cb":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;
    .end local v8    # "inputBefore":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    :pswitch_2
    move-object/from16 v7, p1

    check-cast v7, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;

    .line 359
    .local v7, "eb":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    invoke-virtual {v6, v7}, Lorg/checkerframework/dataflow/analysis/Analysis;->getInputBefore(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v8

    .line 360
    .restart local v8    # "inputBefore":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    if-eqz v8, :cond_7

    .line 361
    invoke-virtual {v8}, Lorg/checkerframework/dataflow/analysis/TransferInput;->copy()Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v0

    iput-object v0, v6, Lorg/checkerframework/dataflow/analysis/Analysis;->currentInput:Lorg/checkerframework/dataflow/analysis/TransferInput;

    .line 362
    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;->getNode()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v9

    .line 363
    .local v9, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v0, v6, Lorg/checkerframework/dataflow/analysis/Analysis;->currentInput:Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {v6, v9, v0}, Lorg/checkerframework/dataflow/analysis/Analysis;->callTransferFunction(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v10

    .line 364
    .local v10, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    invoke-virtual {v6, v9, v10}, Lorg/checkerframework/dataflow/analysis/Analysis;->updateNodeValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult;)Z

    move-result v11

    .line 367
    .local v11, "addToWorklistAgain":Z
    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;->getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v12

    .line 368
    .local v12, "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    if-eqz v12, :cond_2

    .line 369
    new-instance v3, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-direct {v3, v9, v6, v10}, Lorg/checkerframework/dataflow/analysis/TransferInput;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/TransferResult;)V

    iput-object v3, v6, Lorg/checkerframework/dataflow/analysis/Analysis;->currentInput:Lorg/checkerframework/dataflow/analysis/TransferInput;

    .line 372
    nop

    .line 373
    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;->getFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v4

    .line 372
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v9

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/analysis/Analysis;->propagateStoresTo(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/Store$FlowRule;Z)V

    .line 378
    :cond_2
    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;->getExceptionalSuccessors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/Map$Entry;

    .line 379
    .local v14, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljavax/lang/model/type/TypeMirror;

    .line 380
    .local v15, "cause":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {v10, v15}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getExceptionalStore(Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v16

    .line 381
    .local v16, "exceptionalStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    if-eqz v16, :cond_4

    .line 382
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 383
    .local v18, "exceptionSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    sget-object v4, Lorg/checkerframework/dataflow/analysis/Store$Kind;->BOTH:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v9

    move-object/from16 v3, v16

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/analysis/Analysis;->addStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store$Kind;Z)V

    .line 389
    .end local v18    # "exceptionSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    goto :goto_1

    :cond_3
    goto :goto_3

    .line 391
    :cond_4
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 392
    .restart local v18    # "exceptionSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    nop

    .line 395
    invoke-virtual {v8}, Lorg/checkerframework/dataflow/analysis/TransferInput;->copy()Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/dataflow/analysis/Store$Kind;->BOTH:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v9

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/analysis/Analysis;->addStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store$Kind;Z)V

    .line 398
    .end local v18    # "exceptionSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    goto :goto_2

    .line 400
    .end local v14    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;>;"
    .end local v15    # "cause":Ljavax/lang/model/type/TypeMirror;
    .end local v16    # "exceptionalStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    :cond_5
    :goto_3
    goto :goto_0

    .line 401
    :cond_6
    goto :goto_5

    .line 360
    .end local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v10    # "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    .end local v11    # "addToWorklistAgain":Z
    .end local v12    # "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 326
    .end local v7    # "eb":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    .end local v8    # "inputBefore":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    :pswitch_3
    move-object/from16 v7, p1

    check-cast v7, Lorg/checkerframework/dataflow/cfg/block/RegularBlock;

    .line 329
    .local v7, "rb":Lorg/checkerframework/dataflow/cfg/block/RegularBlock;
    invoke-virtual {v6, v7}, Lorg/checkerframework/dataflow/analysis/Analysis;->getInputBefore(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v8

    .line 330
    .restart local v8    # "inputBefore":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    if-eqz v8, :cond_d

    .line 331
    invoke-virtual {v8}, Lorg/checkerframework/dataflow/analysis/TransferInput;->copy()Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v0

    iput-object v0, v6, Lorg/checkerframework/dataflow/analysis/Analysis;->currentInput:Lorg/checkerframework/dataflow/analysis/TransferInput;

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    const/4 v2, 0x0

    .line 334
    .local v2, "lastNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    const/4 v3, 0x0

    .line 335
    .local v3, "addToWorklistAgain":Z
    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/RegularBlock;->getContents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v9, v0

    move-object v10, v2

    move v11, v3

    .end local v0    # "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    .end local v2    # "lastNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v3    # "addToWorklistAgain":Z
    .local v9, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    .local v10, "lastNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v11    # "addToWorklistAgain":Z
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 336
    .local v0, "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v2, v6, Lorg/checkerframework/dataflow/analysis/Analysis;->currentInput:Lorg/checkerframework/dataflow/analysis/TransferInput;

    if-eqz v2, :cond_8

    .line 337
    invoke-virtual {v6, v0, v2}, Lorg/checkerframework/dataflow/analysis/Analysis;->callTransferFunction(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v9

    .line 338
    invoke-virtual {v6, v0, v9}, Lorg/checkerframework/dataflow/analysis/Analysis;->updateNodeValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult;)Z

    move-result v2

    or-int/2addr v11, v2

    .line 339
    new-instance v2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-direct {v2, v0, v6, v9}, Lorg/checkerframework/dataflow/analysis/TransferInput;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/TransferResult;)V

    iput-object v2, v6, Lorg/checkerframework/dataflow/analysis/Analysis;->currentInput:Lorg/checkerframework/dataflow/analysis/TransferInput;

    .line 340
    move-object v10, v0

    .line 341
    .end local v0    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_4

    .line 336
    .restart local v0    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_8
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 342
    .end local v0    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_9
    iget-object v0, v6, Lorg/checkerframework/dataflow/analysis/Analysis;->currentInput:Lorg/checkerframework/dataflow/analysis/TransferInput;

    if-eqz v0, :cond_c

    .line 346
    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/RegularBlock;->getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v12

    .line 347
    .restart local v12    # "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    if-eqz v12, :cond_b

    .line 349
    iget-object v3, v6, Lorg/checkerframework/dataflow/analysis/Analysis;->currentInput:Lorg/checkerframework/dataflow/analysis/TransferInput;

    .line 350
    invoke-interface {v7}, Lorg/checkerframework/dataflow/cfg/block/RegularBlock;->getFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v4

    .line 349
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/analysis/Analysis;->propagateStoresTo(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/Store$FlowRule;Z)V

    .line 351
    nop

    .line 440
    .end local v7    # "rb":Lorg/checkerframework/dataflow/cfg/block/RegularBlock;
    .end local v8    # "inputBefore":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .end local v9    # "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    .end local v10    # "lastNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v11    # "addToWorklistAgain":Z
    .end local v12    # "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    :cond_a
    :goto_5
    return-void

    .line 347
    .restart local v7    # "rb":Lorg/checkerframework/dataflow/cfg/block/RegularBlock;
    .restart local v8    # "inputBefore":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .restart local v9    # "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    .restart local v10    # "lastNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v11    # "addToWorklistAgain":Z
    .restart local v12    # "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): regular basic block without non-exceptional successor unexpected"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 342
    .end local v12    # "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 330
    .end local v9    # "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    .end local v10    # "lastNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v11    # "addToWorklistAgain":Z
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 437
    .end local v7    # "rb":Lorg/checkerframework/dataflow/cfg/block/RegularBlock;
    .end local v8    # "inputBefore":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    :goto_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected propagateStoresTo(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/Store$FlowRule;Z)V
    .locals 12
    .param p1, "succ"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "flowRule"    # Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
    .param p5, "addToWorklistAgain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;",
            "Lorg/checkerframework/dataflow/analysis/Store$FlowRule;",
            "Z)V"
        }
    .end annotation

    .line 451
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    .local p3, "currentInput":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    sget-object v0, Lorg/checkerframework/dataflow/analysis/Analysis$1;->$SwitchMap$org$checkerframework$dataflow$analysis$Store$FlowRule:[I

    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 500
    :pswitch_0
    nop

    .line 503
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/dataflow/analysis/Store$Kind;->ELSE:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    .line 500
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/dataflow/analysis/Analysis;->addStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store$Kind;Z)V

    goto/16 :goto_0

    .line 492
    :pswitch_1
    nop

    .line 495
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v9

    sget-object v10, Lorg/checkerframework/dataflow/analysis/Store$Kind;->THEN:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    .line 492
    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lorg/checkerframework/dataflow/analysis/Analysis;->addStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store$Kind;Z)V

    .line 498
    goto/16 :goto_0

    .line 484
    :pswitch_2
    nop

    .line 487
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/dataflow/analysis/Store$Kind;->BOTH:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    .line 484
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/analysis/Analysis;->addStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store$Kind;Z)V

    .line 490
    goto :goto_0

    .line 476
    :pswitch_3
    nop

    .line 479
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v8

    sget-object v9, Lorg/checkerframework/dataflow/analysis/Store$Kind;->BOTH:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    .line 476
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lorg/checkerframework/dataflow/analysis/Analysis;->addStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store$Kind;Z)V

    .line 482
    goto :goto_0

    .line 453
    :pswitch_4
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferInput;->containsTwoStores()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    nop

    .line 457
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/dataflow/analysis/Store$Kind;->THEN:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    .line 454
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/dataflow/analysis/Analysis;->addStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store$Kind;Z)V

    .line 460
    nop

    .line 463
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v9

    sget-object v10, Lorg/checkerframework/dataflow/analysis/Store$Kind;->ELSE:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    .line 460
    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lorg/checkerframework/dataflow/analysis/Analysis;->addStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store$Kind;Z)V

    goto :goto_0

    .line 467
    :cond_0
    nop

    .line 470
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/dataflow/analysis/Store$Kind;->BOTH:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    .line 467
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/analysis/Analysis;->addStoreBefore(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store$Kind;Z)V

    .line 474
    nop

    .line 508
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentTree(Lcom/sun/source/tree/Tree;)V
    .locals 0
    .param p1, "currentTree"    # Lcom/sun/source/tree/Tree;

    .line 145
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->currentTree:Lcom/sun/source/tree/Tree;

    .line 146
    return-void
.end method

.method setNodeValues(Ljava/util/IdentityHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TA;>;)V"
        }
    .end annotation

    .line 857
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    .local p1, "in":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;TA;>;"
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->nodeValues:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 859
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->nodeValues:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 860
    return-void

    .line 857
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected updateNodeValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult;)Z
    .locals 5
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TA;TS;>;)Z"
        }
    .end annotation

    .line 515
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    .local p2, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    .line 516
    .local v0, "newVal":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    const/4 v1, 0x0

    .line 518
    .local v1, "nodeValueChanged":Z
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 519
    iget-object v3, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->nodeValues:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/AbstractValue;

    .line 520
    .local v3, "oldVal":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/Analysis;->nodeValues:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    move v1, v4

    .line 524
    .end local v3    # "oldVal":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    :cond_0
    if-nez v1, :cond_2

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferResult;->storeChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method
