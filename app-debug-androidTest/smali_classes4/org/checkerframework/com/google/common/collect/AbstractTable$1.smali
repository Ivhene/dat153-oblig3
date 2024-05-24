.class Lorg/checkerframework/com/google/common/collect/AbstractTable$1;
.super Lorg/checkerframework/com/google/common/collect/TransformedIterator;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/AbstractTable;->valuesIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/TransformedIterator<",
        "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractTable;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/AbstractTable;

    .line 186
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$1;, "Lorg/checkerframework/com/google/common/collect/AbstractTable$1;"
    .local p2, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/com/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$1;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$1;, "Lorg/checkerframework/com/google/common/collect/AbstractTable$1;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractTable$1;->transform(Lorg/checkerframework/com/google/common/collect/Table$Cell;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method transform(Lorg/checkerframework/com/google/common/collect/Table$Cell;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;)TV;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$1;, "Lorg/checkerframework/com/google/common/collect/AbstractTable$1;"
    .local p1, "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<TR;TC;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
