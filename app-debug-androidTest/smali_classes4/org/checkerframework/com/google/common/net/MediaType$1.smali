.class Lorg/checkerframework/com/google/common/net/MediaType$1;
.super Ljava/lang/Object;
.source "MediaType.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/net/MediaType;->parametersAsMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "Ljava/util/Collection<",
        "Ljava/lang/String;",
        ">;",
        "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/net/MediaType;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/net/MediaType;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/net/MediaType;

    .line 709
    iput-object p1, p0, Lorg/checkerframework/com/google/common/net/MediaType$1;->this$0:Lorg/checkerframework/com/google/common/net/MediaType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 709
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/net/MediaType$1;->apply(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 712
    .local p1, "input":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method
