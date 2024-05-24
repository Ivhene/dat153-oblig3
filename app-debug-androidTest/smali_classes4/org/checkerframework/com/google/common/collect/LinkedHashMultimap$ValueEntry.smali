.class final Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;
.super Lorg/checkerframework/com/google/common/collect/ImmutableEntry;
.source "LinkedHashMultimap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableEntry<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field nextInValueBucket:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field predecessorInMultimap:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field predecessorInValueSet:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final smearedValueHash:I

.field successorInMultimap:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field successorInValueSet:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .param p3, "smearedValueHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "nextInValueBucket":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    iput p3, p0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    .line 171
    iput-object p4, p0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 172
    return-void
.end method


# virtual methods
.method public getPredecessorInMultimap()Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInMultimap:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-object v0
.end method

.method public getPredecessorInValueSet()Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInValueSet:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method public getSuccessorInMultimap()Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-object v0
.end method

.method public getSuccessorInValueSet()Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInValueSet:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method matchesValue(Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;
    .param p2, "smearedVHash"    # I

    .line 175
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPredecessorInMultimap(Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 211
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, "multimapPredecessor":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInMultimap:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 212
    return-void
.end method

.method public setPredecessorInValueSet(Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInValueSet:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 191
    return-void
.end method

.method public setSuccessorInMultimap(Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, "multimapSuccessor":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 208
    return-void
.end method

.method public setSuccessorInValueSet(Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInValueSet:Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 196
    return-void
.end method
