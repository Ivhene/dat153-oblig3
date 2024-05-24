.class public abstract Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;
.super Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SortedSetMultimapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder<",
        "TK0;TV0;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 456
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder<TK0;TV0;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1

    .line 455
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder<TK0;TV0;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;->build()Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 0

    .line 455
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder<TK0;TV0;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;->build(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 1

    .line 455
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder<TK0;TV0;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;->build()Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 0

    .line 455
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder<TK0;TV0;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;->build(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;

    move-result-object p1

    return-object p1
.end method

.method public abstract build()Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public build(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 464
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder<TK0;TV0;>;"
    .local p1, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;->build(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;

    return-object v0
.end method
