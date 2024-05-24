.class final Lorg/checkerframework/com/google/common/collect/Tables$TransposeTable$1;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Tables$TransposeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
        "***>;",
        "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
        "***>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 323
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Tables$TransposeTable$1;->apply(Lorg/checkerframework/com/google/common/collect/Table$Cell;)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/checkerframework/com/google/common/collect/Table$Cell;)Lorg/checkerframework/com/google/common/collect/Table$Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "***>;)",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "***>;"
        }
    .end annotation

    .line 326
    .local p1, "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<***>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method
