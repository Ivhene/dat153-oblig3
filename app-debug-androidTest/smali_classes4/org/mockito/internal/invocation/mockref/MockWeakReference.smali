.class public Lorg/mockito/internal/invocation/mockref/MockWeakReference;
.super Ljava/lang/Object;
.source "MockWeakReference.java"

# interfaces
.implements Lorg/mockito/internal/invocation/mockref/MockReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/invocation/mockref/MockReference<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 18
    .local p0, "this":Lorg/mockito/internal/invocation/mockref/MockWeakReference;, "Lorg/mockito/internal/invocation/mockref/MockWeakReference<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mockito/internal/invocation/mockref/MockWeakReference;->ref:Ljava/lang/ref/WeakReference;

    .line 20
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 23
    .local p0, "this":Lorg/mockito/internal/invocation/mockref/MockWeakReference;, "Lorg/mockito/internal/invocation/mockref/MockWeakReference<TT;>;"
    new-instance v0, Lorg/mockito/internal/invocation/mockref/MockStrongReference;

    invoke-virtual {p0}, Lorg/mockito/internal/invocation/mockref/MockWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/invocation/mockref/MockStrongReference;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lorg/mockito/internal/invocation/mockref/MockWeakReference;, "Lorg/mockito/internal/invocation/mockref/MockWeakReference<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/invocation/mockref/MockWeakReference;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, "ref":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 42
    return-object v0

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The mock object was garbage collected. This should not happen in normal circumstances when using public API. Typically, the test class keeps strong reference to the mock object and it prevents getting the mock collected. Mockito internally needs to keep weak references to mock objects to avoid memory leaks for certain types of MockMaker implementations. If you see this exception using Mockito public API, please file a bug. For more information see issue #1313."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
