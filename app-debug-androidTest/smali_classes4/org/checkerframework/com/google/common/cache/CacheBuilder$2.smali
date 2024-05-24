.class final Lorg/checkerframework/com/google/common/cache/CacheBuilder$2;
.super Ljava/lang/Object;
.source "CacheBuilder.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Supplier<",
        "Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder$2;->get()Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/checkerframework/com/google/common/cache/AbstractCache$StatsCounter;
    .locals 1

    .line 198
    new-instance v0, Lorg/checkerframework/com/google/common/cache/AbstractCache$SimpleStatsCounter;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/cache/AbstractCache$SimpleStatsCounter;-><init>()V

    return-object v0
.end method
