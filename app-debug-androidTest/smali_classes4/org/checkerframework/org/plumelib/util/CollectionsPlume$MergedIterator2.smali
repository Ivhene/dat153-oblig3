.class public final Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;
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
    name = "MergedIterator2"
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
.field itor1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field itor2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 433
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2<TT;>;"
    .local p1, "itor1":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p2, "itor2":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;->itor1:Ljava/util/Iterator;

    .line 435
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;->itor2:Ljava/util/Iterator;

    .line 436
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 440
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;->itor1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;->itor2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 445
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;->itor1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;->itor1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 447
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;->itor2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;->itor2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 450
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 456
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
