.class Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference$1;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/CacheLoader;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "TV;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference;

    .line 3540
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference$1;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 3543
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference$1;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference$1;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    .line 3544
    return-object p1
.end method
