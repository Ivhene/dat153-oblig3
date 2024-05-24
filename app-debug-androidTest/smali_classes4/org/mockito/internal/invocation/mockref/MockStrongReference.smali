.class public Lorg/mockito/internal/invocation/mockref/MockStrongReference;
.super Ljava/lang/Object;
.source "MockStrongReference.java"

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
.field private final deserializeAsWeakRef:Z

.field private final ref:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .param p2, "deserializeAsWeakRef"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 14
    .local p0, "this":Lorg/mockito/internal/invocation/mockref/MockStrongReference;, "Lorg/mockito/internal/invocation/mockref/MockStrongReference<TT;>;"
    .local p1, "ref":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/mockito/internal/invocation/mockref/MockStrongReference;->ref:Ljava/lang/Object;

    .line 16
    iput-boolean p2, p0, Lorg/mockito/internal/invocation/mockref/MockStrongReference;->deserializeAsWeakRef:Z

    .line 17
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 25
    .local p0, "this":Lorg/mockito/internal/invocation/mockref/MockStrongReference;, "Lorg/mockito/internal/invocation/mockref/MockStrongReference<TT;>;"
    iget-boolean v0, p0, Lorg/mockito/internal/invocation/mockref/MockStrongReference;->deserializeAsWeakRef:Z

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lorg/mockito/internal/invocation/mockref/MockWeakReference;

    iget-object v1, p0, Lorg/mockito/internal/invocation/mockref/MockStrongReference;->ref:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/mockito/internal/invocation/mockref/MockWeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 28
    :cond_0
    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 21
    .local p0, "this":Lorg/mockito/internal/invocation/mockref/MockStrongReference;, "Lorg/mockito/internal/invocation/mockref/MockStrongReference<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/invocation/mockref/MockStrongReference;->ref:Ljava/lang/Object;

    return-object v0
.end method
