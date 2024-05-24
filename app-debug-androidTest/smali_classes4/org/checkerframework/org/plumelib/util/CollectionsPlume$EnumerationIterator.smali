.class public final Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator;
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
    name = "EnumerationIterator"
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
.field e:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "TT;>;)V"
        }
    .end annotation

    .line 369
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator<TT;>;"
    .local p1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator;->e:Ljava/util/Enumeration;

    .line 371
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 375
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

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

    .line 380
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 385
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
