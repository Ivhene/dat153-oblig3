.class final Lorg/checkerframework/com/google/common/collect/FluentIterable$3;
.super Lorg/checkerframework/com/google/common/collect/FluentIterable;
.source "FluentIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/FluentIterable;->concatNoDefensiveCopy([Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/FluentIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$inputs:[Ljava/lang/Iterable;


# direct methods
.method constructor <init>([Ljava/lang/Iterable;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/FluentIterable$3;->val$inputs:[Ljava/lang/Iterable;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 291
    new-instance v0, Lorg/checkerframework/com/google/common/collect/FluentIterable$3$1;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/FluentIterable$3;->val$inputs:[Ljava/lang/Iterable;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/FluentIterable$3$1;-><init>(Lorg/checkerframework/com/google/common/collect/FluentIterable$3;I)V

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
