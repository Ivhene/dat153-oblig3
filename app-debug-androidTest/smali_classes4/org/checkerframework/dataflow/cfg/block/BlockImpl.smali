.class public abstract Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
.super Ljava/lang/Object;
.source "BlockImpl.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/block/Block;


# static fields
.field protected static lastId:J


# instance fields
.field protected final id:J

.field protected final predecessors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/BlockImpl;",
            ">;"
        }
    .end annotation
.end field

.field protected final type:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->lastId:J

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->uniqueID()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->id:J

    .line 28
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->type:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->predecessors:Ljava/util/Set;

    .line 30
    return-void
.end method

.method private static uniqueID()J
    .locals 4

    .line 24
    sget-wide v0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->lastId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->lastId:J

    return-wide v0
.end method


# virtual methods
.method public addPredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 1
    .param p1, "pred"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 48
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->predecessors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public getId()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->id:J

    return-wide v0
.end method

.method public getPredecessors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/BlockImpl;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->predecessors:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->type:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    return-object v0
.end method

.method public removePredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 1
    .param p1, "pred"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 52
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->predecessors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
