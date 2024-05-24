.class public final Lorg/checkerframework/org/plumelib/util/CollectionsPlume$IteratorEnumeration;
.super Ljava/lang/Object;
.source "CollectionsPlume.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/CollectionsPlume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IteratorEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "TT;>;"
    }
.end annotation


# instance fields
.field itor:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 400
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$IteratorEnumeration;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$IteratorEnumeration<TT;>;"
    .local p1, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$IteratorEnumeration;->itor:Ljava/util/Iterator;

    .line 402
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 406
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$IteratorEnumeration;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$IteratorEnumeration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$IteratorEnumeration;->itor:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/CollectionsPlume$IteratorEnumeration;, "Lorg/checkerframework/org/plumelib/util/CollectionsPlume$IteratorEnumeration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$IteratorEnumeration;->itor:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
