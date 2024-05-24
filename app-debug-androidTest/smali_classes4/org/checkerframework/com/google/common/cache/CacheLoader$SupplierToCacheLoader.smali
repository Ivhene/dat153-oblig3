.class final Lorg/checkerframework/com/google/common/cache/CacheLoader$SupplierToCacheLoader;
.super Lorg/checkerframework/com/google/common/cache/CacheLoader;
.source "CacheLoader.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/CacheLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SupplierToCacheLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
        "Ljava/lang/Object;",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final computingSupplier:Lorg/checkerframework/com/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TV;>;)V"
        }
    .end annotation

    .line 216
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheLoader$SupplierToCacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader$SupplierToCacheLoader<TV;>;"
    .local p1, "computingSupplier":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/cache/CacheLoader;-><init>()V

    .line 217
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Supplier;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheLoader$SupplierToCacheLoader;->computingSupplier:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 218
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheLoader$SupplierToCacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader$SupplierToCacheLoader<TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheLoader$SupplierToCacheLoader;->computingSupplier:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
