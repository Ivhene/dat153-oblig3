.class abstract Lorg/checkerframework/com/google/common/collect/HashMultimapGwtSerializationDependencies;
.super Lorg/checkerframework/com/google/common/collect/AbstractSetMultimap;
.source "HashMultimapGwtSerializationDependencies.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashMultimapGwtSerializationDependencies;, "Lorg/checkerframework/com/google/common/collect/HashMultimapGwtSerializationDependencies<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 36
    return-void
.end method
