.class public final Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;
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
    name = "FilteredIterator"
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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field current:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field currentValid:Z

.field filter:Lorg/checkerframework/org/plumelib/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/Filter<",
            "TT;>;"
        }
    .end annotation
.end field

.field invalidT:Ljava/lang/Object;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 505
    const-class v0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/checkerframework/org/plumelib/util/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lorg/checkerframework/org/plumelib/util/Filter<",
            "TT;>;)V"
        }
    .end annotation

    .line 517
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator<TT;>;"
    .local p1, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p2, "filter":Lorg/checkerframework/org/plumelib/util/Filter;, "Lorg/checkerframework/org/plumelib/util/Filter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->invalidT:Ljava/lang/Object;

    .line 530
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->current:Ljava/lang/Object;

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->currentValid:Z

    .line 518
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->itor:Ljava/util/Iterator;

    .line 519
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->filter:Lorg/checkerframework/org/plumelib/util/Filter;

    .line 520
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 536
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator<TT;>;"
    nop

    :goto_0
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->currentValid:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->itor:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->itor:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->current:Ljava/lang/Object;

    .line 538
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->filter:Lorg/checkerframework/org/plumelib/util/Filter;

    invoke-interface {v1, v0}, Lorg/checkerframework/org/plumelib/util/Filter;->accept(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->currentValid:Z

    goto :goto_0

    .line 540
    :cond_0
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->currentValid:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 545
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->currentValid:Z

    .line 548
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->current:Ljava/lang/Object;

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;->invalidT:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 549
    .local v0, "ok":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 550
    return-object v1

    .line 549
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 552
    .end local v0    # "ok":Z
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 558
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
