.class final Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference;
.super Ljava/lang/Object;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Reference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 547
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference;, "Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/TreeMultiset$1;

    .line 547
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference;, "Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference<TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 555
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference;, "Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference<TT;>;"
    .local p1, "expected":Ljava/lang/Object;, "TT;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 558
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference;->value:Ljava/lang/Object;

    .line 559
    return-void

    .line 556
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method clear()V
    .locals 1

    .line 562
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference;, "Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference;->value:Ljava/lang/Object;

    .line 563
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 551
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference;, "Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeMultiset$Reference;->value:Ljava/lang/Object;

    return-object v0
.end method
