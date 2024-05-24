.class final Lorg/checkerframework/org/plumelib/util/CollectionsPlume$1;
.super Ljava/lang/Object;
.source "CollectionsPlume.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->iteratorToIterable(Ljava/util/Iterator;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private used:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$source:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$1;->val$source:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$1;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$1;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$1;->val$source:Ljava/util/Iterator;

    return-object v0

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Call iterator() just once"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
