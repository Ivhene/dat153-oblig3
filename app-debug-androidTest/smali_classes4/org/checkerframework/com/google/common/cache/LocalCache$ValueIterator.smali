.class final Lorg/checkerframework/com/google/common/cache/LocalCache$ValueIterator;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/cache/LocalCache<",
        "TK;TV;>.HashIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/cache/LocalCache;

    .line 4430
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$ValueIterator;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$ValueIterator;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 4434
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$ValueIterator;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$ValueIterator;->nextEntry()Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
