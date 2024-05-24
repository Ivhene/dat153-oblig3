.class abstract Lorg/checkerframework/com/google/common/collect/BaseImmutableMultimap;
.super Lorg/checkerframework/com/google/common/collect/AbstractMultimap;
.source "BaseImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/BaseImmutableMultimap;, "Lorg/checkerframework/com/google/common/collect/BaseImmutableMultimap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;-><init>()V

    return-void
.end method
