.class public abstract Lorg/checkerframework/com/google/common/base/Optional;
.super Ljava/lang/Object;
.source "Optional.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absent()Lorg/checkerframework/com/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 91
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Absent;->withType()Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static fromJavaUtil(Ljava/util/Optional;)Lorg/checkerframework/com/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Optional<",
            "TT;>;)",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 125
    .local p0, "javaUtilOptional":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static fromNullable(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 114
    .local p0, "nullableReference":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/base/Optional;->absent()Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/base/Present;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/base/Present;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 103
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Present;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/base/Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static presentInstances(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 333
    .local p0, "optionals":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/com/google/common/base/Optional<+TT;>;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v0, Lorg/checkerframework/com/google/common/base/Optional$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/base/Optional$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static toJavaUtil(Lorg/checkerframework/com/google/common/base/Optional;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 143
    .local p0, "googleOptional":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<TT;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/base/Optional;->toJavaUtil()Ljava/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract asSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract isPresent()Z
.end method

.method public abstract or(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract or(Lorg/checkerframework/com/google/common/base/Supplier;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract or(Lorg/checkerframework/com/google/common/base/Optional;)Lorg/checkerframework/com/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "+TT;>;)",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract orNull()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public toJavaUtil()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract transform(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TT;TV;>;)",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "TV;>;"
        }
    .end annotation
.end method
