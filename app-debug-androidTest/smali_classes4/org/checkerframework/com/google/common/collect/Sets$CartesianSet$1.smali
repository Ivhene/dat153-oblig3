.class final Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet$1;
.super Lorg/checkerframework/com/google/common/collect/ImmutableList;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;->create(Ljava/util/List;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$axes:Lorg/checkerframework/com/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V
    .locals 0

    .line 1401
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet$1;->val$axes:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1401
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet$1;->get(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/List;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1409
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet$1;->val$axes:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 1414
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 1404
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet$1;->val$axes:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
