.class Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$SerializedForm;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "**>;)V"
        }
    .end annotation

    .line 924
    .local p1, "sortedMap":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<**>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V

    .line 925
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    .line 926
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 930
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    .line 931
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$SerializedForm;->createMap(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
