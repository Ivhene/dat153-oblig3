.class Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->cellFunction()Lorg/checkerframework/com/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
        "TR;TC;TV1;>;",
        "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
        "TR;TC;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;

    .line 476
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;->this$0:Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 476
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;->apply(Lorg/checkerframework/com/google/common/collect/Table$Cell;)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/checkerframework/com/google/common/collect/Table$Cell;)Lorg/checkerframework/com/google/common/collect/Table$Cell;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV1;>;)",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV2;>;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;"
    .local p1, "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<TR;TC;TV1;>;"
    nop

    .line 480
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;->this$0:Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 479
    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method
