.class Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;
.super Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;
.source "ImmutableRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->subRangeMap(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

.field final synthetic val$outer:Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

.field final synthetic val$range:Lorg/checkerframework/com/google/common/collect/Range;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/Range;Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    .line 359
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;"
    .local p2, "ranges":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/Range<TK;>;>;"
    .local p3, "values":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    iput-object p4, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;->val$range:Lorg/checkerframework/com/google/common/collect/Range;

    iput-object p5, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;->val$outer:Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    invoke-direct {p0, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 359
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->asDescendingMapOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 359
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public subRangeMap(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;"
    .local p1, "subRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;->val$range:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;->val$outer:Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;->val$range:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->subRangeMap(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0

    .line 365
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subRangeMap(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/RangeMap;
    .locals 0

    .line 359
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$2;->subRangeMap(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    move-result-object p1

    return-object p1
.end method
