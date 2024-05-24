.class public final Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;
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
    name = "MergedIterator"
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
.field current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field itorOfItors:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Iterator<",
            "TT;>;>;"
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
            "Ljava/util/Iterator<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 476
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator<TT;>;"
    .local p1, "itorOfItors":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Iterator<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;->current:Ljava/util/Iterator;

    .line 477
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;->itorOfItors:Ljava/util/Iterator;

    .line 478
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 486
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator<TT;>;"
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;->itorOfItors:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;->itorOfItors:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;->current:Ljava/util/Iterator;

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 494
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;->hasNext()Z

    .line 495
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 500
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
