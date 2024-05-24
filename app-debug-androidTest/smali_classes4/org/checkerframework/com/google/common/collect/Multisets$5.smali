.class final Lorg/checkerframework/com/google/common/collect/Multisets$5;
.super Lorg/checkerframework/com/google/common/collect/TransformedIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Multisets;->elementIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/TransformedIterator<",
        "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
        "TE;>;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 962
    .local p1, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 962
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$5;->transform(Lorg/checkerframework/com/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method transform(Lorg/checkerframework/com/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 965
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
