.class Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped;
.super Lorg/checkerframework/com/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompactStriped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/Striped$PowerOfTwoStriped<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILorg/checkerframework/com/google/common/base/Supplier;)V
    .locals 3
    .param p1, "stripes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped<TL;>;"
    .local p2, "supplier":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TL;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Striped$PowerOfTwoStriped;-><init>(I)V

    .line 411
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-gt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Stripes must be <= 2^30)"

    invoke-static {v0, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 413
    iget v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped;->mask:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 415
    invoke-interface {p2}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 417
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(ILorg/checkerframework/com/google/common/base/Supplier;Lorg/checkerframework/com/google/common/util/concurrent/Striped$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/base/Supplier;
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/util/concurrent/Striped$1;

    .line 405
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped<TL;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped;-><init>(ILorg/checkerframework/com/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .line 422
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped<TL;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped<TL;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
