.class Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;->asMap()Ljava/util/Map;
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
        "TV;>;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;

    .line 679
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap$1;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 679
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap$1;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap$1;"
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap$1;->apply(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 682
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap$1;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap$1;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Multimaps;->access$000(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method