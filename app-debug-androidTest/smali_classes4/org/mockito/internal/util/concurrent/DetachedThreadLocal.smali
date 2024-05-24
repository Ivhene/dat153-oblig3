.class public Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;
.super Ljava/lang/Object;
.source "DetachedThreadLocal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Thread;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;)V
    .locals 2
    .param p1, "cleaner"    # Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    .line 18
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$3;->$SwitchMap$org$mockito$internal$util$concurrent$DetachedThreadLocal$Cleaner:[I

    invoke-virtual {p1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 40
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :pswitch_0
    new-instance v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$2;

    invoke-direct {v0, p0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$2;-><init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;)V

    iput-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 38
    goto :goto_1

    .line 22
    :pswitch_1
    new-instance v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;

    sget-object v1, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->THREAD:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p0, v1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;-><init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;Z)V

    iput-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 29
    nop

    .line 42
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 61
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 68
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->clear()V

    .line 69
    return-void
.end method

.method public define(Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "TT;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1, p2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public fetchFrom(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            ")TT;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->inheritValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->set(Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            ")TT;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBackingMap()Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Thread;",
            "TT;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    return-object v0
.end method

.method protected inheritValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method protected initialValue(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            ")TT;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public pushTo(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            ")TT;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->inheritValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    return-object v0
.end method

.method public run()V
    .locals 1

    .line 128
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->run()V

    .line 129
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
