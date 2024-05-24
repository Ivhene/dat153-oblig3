.class public final Lorg/checkerframework/com/google/common/collect/Interners;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/Interners$InternerFunction;,
        Lorg/checkerframework/com/google/common/collect/Interners$InternerImpl;,
        Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFunction(Lorg/checkerframework/com/google/common/collect/Interner;)Lorg/checkerframework/com/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Interner<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TE;TE;>;"
        }
    .end annotation

    .line 157
    .local p0, "interner":Lorg/checkerframework/com/google/common/collect/Interner;, "Lorg/checkerframework/com/google/common/collect/Interner<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Interners$InternerFunction;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Interner;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/Interners$InternerFunction;-><init>(Lorg/checkerframework/com/google/common/collect/Interner;)V

    return-object v0
.end method

.method public static newBuilder()Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;
    .locals 2

    .line 90
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;-><init>(Lorg/checkerframework/com/google/common/collect/Interners$1;)V

    return-object v0
.end method

.method public static newStrongInterner()Lorg/checkerframework/com/google/common/collect/Interner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/Interner<",
            "TE;>;"
        }
    .end annotation

    .line 99
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Interners;->newBuilder()Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->strong()Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->build()Lorg/checkerframework/com/google/common/collect/Interner;

    move-result-object v0

    return-object v0
.end method

.method public static newWeakInterner()Lorg/checkerframework/com/google/common/collect/Interner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/Interner<",
            "TE;>;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Interners;->newBuilder()Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->weak()Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Interners$InternerBuilder;->build()Lorg/checkerframework/com/google/common/collect/Interner;

    move-result-object v0

    return-object v0
.end method
