.class final Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;
.super Lorg/checkerframework/com/google/common/collect/Tables$AbstractCell;
.source "ImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MutableCell"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Tables$AbstractCell<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private final column:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final row:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<TR;TC;TV;>;"
    .local p1, "row":Ljava/lang/Object;, "TR;"
    .local p2, "column":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Tables$AbstractCell;-><init>()V

    .line 151
    const-string v0, "row"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->row:Ljava/lang/Object;

    .line 152
    const-string v0, "column"

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->column:Ljava/lang/Object;

    .line 153
    const-string v0, "value"

    invoke-static {p3, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->value:Ljava/lang/Object;

    .line 154
    return-void
.end method


# virtual methods
.method public getColumnKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->column:Ljava/lang/Object;

    return-object v0
.end method

.method public getRowKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->row:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->value:Ljava/lang/Object;

    return-object v0
.end method

.method merge(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<TR;TC;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    const-string v0, "value"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->value:Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mergeFunction.apply"

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->value:Ljava/lang/Object;

    .line 174
    return-void
.end method