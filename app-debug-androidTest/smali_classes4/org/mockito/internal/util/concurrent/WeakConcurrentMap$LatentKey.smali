.class Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;
.super Ljava/lang/Object;
.source "WeakConcurrentMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatentKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;->key:Ljava/lang/Object;

    .line 237
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;->hashCode:I

    .line 238
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 242
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey<TT;>;"
    instance-of v0, p1, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 243
    move-object v0, p1

    check-cast v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;

    iget-object v0, v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;->key:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;->key:Ljava/lang/Object;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 245
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;->key:Ljava/lang/Object;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 251
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey<TT;>;"
    iget v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;->hashCode:I

    return v0
.end method
