.class final Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;
.super Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet<",
        "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;)V
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$1;

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 59
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 60
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    .line 61
    .local v0, "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<***>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 64
    .end local v0    # "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<***>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 45
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;->get(I)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method get(I)Lorg/checkerframework/com/google/common/collect/Table$Cell;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;->getCell(I)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 69
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;->size()I

    move-result v0

    return v0
.end method
