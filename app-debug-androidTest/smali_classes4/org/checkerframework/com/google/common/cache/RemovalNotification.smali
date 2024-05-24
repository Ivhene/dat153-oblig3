.class public final Lorg/checkerframework/com/google/common/cache/RemovalNotification;
.super Ljava/util/AbstractMap$SimpleImmutableEntry;
.source "RemovalNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap$SimpleImmutableEntry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cause:Lorg/checkerframework/com/google/common/cache/RemovalCause;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/RemovalCause;)V
    .locals 1
    .param p3, "cause"    # Lorg/checkerframework/com/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/checkerframework/com/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/RemovalNotification;, "Lorg/checkerframework/com/google/common/cache/RemovalNotification<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/RemovalCause;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/RemovalNotification;->cause:Lorg/checkerframework/com/google/common/cache/RemovalCause;

    .line 53
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/RemovalCause;)Lorg/checkerframework/com/google/common/cache/RemovalNotification;
    .locals 1
    .param p2, "cause"    # Lorg/checkerframework/com/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Lorg/checkerframework/com/google/common/cache/RemovalCause;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/RemovalNotification<",
            "TK;TV;>;"
        }
    .end annotation

    .line 47
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/RemovalNotification;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/com/google/common/cache/RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/RemovalCause;)V

    return-object v0
.end method


# virtual methods
.method public getCause()Lorg/checkerframework/com/google/common/cache/RemovalCause;
    .locals 1

    .line 57
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/RemovalNotification;, "Lorg/checkerframework/com/google/common/cache/RemovalNotification<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/RemovalNotification;->cause:Lorg/checkerframework/com/google/common/cache/RemovalCause;

    return-object v0
.end method

.method public wasEvicted()Z
    .locals 1

    .line 65
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/RemovalNotification;, "Lorg/checkerframework/com/google/common/cache/RemovalNotification<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/RemovalNotification;->cause:Lorg/checkerframework/com/google/common/cache/RemovalCause;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/RemovalCause;->wasEvicted()Z

    move-result v0

    return v0
.end method
