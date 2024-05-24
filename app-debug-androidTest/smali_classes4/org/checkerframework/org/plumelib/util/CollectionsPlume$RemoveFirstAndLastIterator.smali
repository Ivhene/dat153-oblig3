.class public final Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;
.super Ljava/lang/Object;
.source "CollectionsPlume.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/CollectionsPlume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoveFirstAndLastIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field current:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field itor:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field nothing:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 585
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<TT;>;"
    .local p1, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->nothing:Ljava/lang/Object;

    .line 576
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->first:Ljava/lang/Object;

    .line 578
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->current:Ljava/lang/Object;

    .line 586
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->itor:Ljava/util/Iterator;

    .line 587
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->first:Ljava/lang/Object;

    .line 590
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->current:Ljava/lang/Object;

    .line 593
    :cond_1
    return-void
.end method


# virtual methods
.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 618
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->first:Ljava/lang/Object;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->nothing:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 619
    .local v1, "invalid":Z
    :goto_0
    if-nez v1, :cond_1

    .line 622
    return-object v0

    .line 620
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 636
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->itor:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->current:Ljava/lang/Object;

    return-object v0

    .line 637
    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 597
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->itor:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 602
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->itor:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->current:Ljava/lang/Object;

    .line 606
    .local v0, "tmp":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->itor:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;->current:Ljava/lang/Object;

    .line 607
    return-object v0

    .line 603
    .end local v0    # "tmp":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 644
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
