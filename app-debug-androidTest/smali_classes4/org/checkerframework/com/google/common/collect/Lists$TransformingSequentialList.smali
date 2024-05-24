.class Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;
.super Ljava/util/AbstractSequentialList;
.source "Lists.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformingSequentialList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final fromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation
.end field

.field final function:Lorg/checkerframework/com/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TF;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lorg/checkerframework/com/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TF;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TF;+TT;>;)V"
        }
    .end annotation

    .line 537
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;, "Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList<TF;TT;>;"
    .local p1, "fromList":Ljava/util/List;, "Ljava/util/List<TF;>;"
    .local p2, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TF;+TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 538
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    .line 539
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Function;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;->function:Lorg/checkerframework/com/google/common/base/Function;

    .line 540
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 548
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;, "Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList<TF;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 549
    return-void
.end method

.method synthetic lambda$removeIf$0$org-checkerframework-com-google-common-collect-Lists$TransformingSequentialList(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "filter"    # Ljava/util/function/Predicate;
    .param p2, "element"    # Ljava/lang/Object;

    .line 569
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;, "Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList<TF;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v0, p2}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 558
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;, "Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList<TF;TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList$1;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList$1;-><init>(Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 568
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;, "Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList<TF;TT;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 553
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;, "Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList<TF;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method