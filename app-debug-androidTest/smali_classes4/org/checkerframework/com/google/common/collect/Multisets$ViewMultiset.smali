.class abstract Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;
.super Lorg/checkerframework/com/google/common/collect/AbstractMultiset;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ViewMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractMultiset<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1157
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultiset;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/Multisets$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/Multisets$1;

    .line 1157
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1165
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1166
    return-void
.end method

.method distinctElements()I
    .locals 1

    .line 1175
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1170
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset<TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Multisets;->iteratorImpl(Lorg/checkerframework/com/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1160
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset<TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Multisets;->linearTimeSizeImpl(Lorg/checkerframework/com/google/common/collect/Multiset;)I

    move-result v0

    return v0
.end method
