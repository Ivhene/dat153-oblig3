.class final Lorg/checkerframework/com/google/common/cache/CacheLoader$FunctionToCacheLoader;
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
    name = "FunctionToCacheLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final computingFunction:Lorg/checkerframework/com/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheLoader$FunctionToCacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader$FunctionToCacheLoader<TK;TV;>;"
    .local p1, "computingFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/cache/CacheLoader;-><init>()V

    .line 160
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Function;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheLoader$FunctionToCacheLoader;->computingFunction:Lorg/checkerframework/com/google/common/base/Function;

    .line 161
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheLoader$FunctionToCacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader$FunctionToCacheLoader<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheLoader$FunctionToCacheLoader;->computingFunction:Lorg/checkerframework/com/google/common/base/Function;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
