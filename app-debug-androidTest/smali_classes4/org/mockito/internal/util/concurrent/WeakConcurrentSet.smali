.class public Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;
.super Ljava/lang/Object;
.source "WeakConcurrentSet.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$ReducingIterator;,
        Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Iterable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "TV;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;)V
    .locals 2
    .param p1, "cleaner"    # Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    .line 21
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$1;->$SwitchMap$org$mockito$internal$util$concurrent$WeakConcurrentSet$Cleaner:[I

    invoke-virtual {p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :pswitch_0
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    sget-object v1, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->THREAD:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;-><init>(Z)V

    iput-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 29
    goto :goto_1

    .line 24
    :pswitch_1
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;

    invoke-direct {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 25
    nop

    .line 33
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public approximateSize()I
    .locals 1

    .line 72
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<TV;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->approximateSize()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 63
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<TV;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->clear()V

    .line 64
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public expungeStaleEntries()V
    .locals 1

    .line 96
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<TV;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->expungeStaleEntries()V

    .line 97
    return-void
.end method

.method public getCleanerThread()Ljava/lang/Thread;
    .locals 1

    .line 103
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<TV;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->getCleanerThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<TV;>;"
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$ReducingIterator;

    iget-object v1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$ReducingIterator;-><init>(Ljava/util/Iterator;Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 1

    .line 77
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<TV;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->target:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->run()V

    .line 78
    return-void
.end method
