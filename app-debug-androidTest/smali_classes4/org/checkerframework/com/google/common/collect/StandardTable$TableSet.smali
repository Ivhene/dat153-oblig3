.class abstract Lorg/checkerframework/com/google/common/collect/StandardTable$TableSet;
.super Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/StandardTable;)V
    .locals 0

    .line 205
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$TableSet;, "Lorg/checkerframework/com/google/common/collect/StandardTable<TR;TC;TV;>.TableSet<TT;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$TableSet;->this$0:Lorg/checkerframework/com/google/common/collect/StandardTable;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/StandardTable;Lorg/checkerframework/com/google/common/collect/StandardTable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/StandardTable;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/StandardTable$1;

    .line 205
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$TableSet;, "Lorg/checkerframework/com/google/common/collect/StandardTable<TR;TC;TV;>.TableSet<TT;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/StandardTable$TableSet;-><init>(Lorg/checkerframework/com/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 213
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$TableSet;, "Lorg/checkerframework/com/google/common/collect/StandardTable<TR;TC;TV;>.TableSet<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$TableSet;->this$0:Lorg/checkerframework/com/google/common/collect/StandardTable;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 208
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$TableSet;, "Lorg/checkerframework/com/google/common/collect/StandardTable<TR;TC;TV;>.TableSet<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$TableSet;->this$0:Lorg/checkerframework/com/google/common/collect/StandardTable;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
