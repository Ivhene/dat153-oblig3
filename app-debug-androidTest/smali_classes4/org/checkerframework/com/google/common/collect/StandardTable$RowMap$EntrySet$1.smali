.class Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet$1;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet;)V
    .locals 0
    .param p1, "this$2"    # Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet;

    .line 794
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet$1;, "Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet$1;->this$2:Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 794
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet$1;, "Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet$1;->apply(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 797
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet$1;, "Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet$1;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet$1;->this$2:Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/StandardTable$RowMap;->this$0:Lorg/checkerframework/com/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
