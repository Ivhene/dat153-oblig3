.class Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;
.super Lorg/checkerframework/com/google/common/collect/ImmutableAsList;
.source "RegularImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableAsList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final delegateList:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TE;>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "+TE;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    .local p2, "delegateList":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<+TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableAsList;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegate:Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    .line 37
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegateList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 38
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V
    .locals 1
    .param p2, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    .line 42
    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 68
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegateList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TE;>;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegate:Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method delegateList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "+TE;>;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegateList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegateList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->forEach(Ljava/util/function/Consumer;)V

    .line 63
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegateList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method internalArray()[Ljava/lang/Object;
    .locals 1

    .line 73
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegateList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->internalArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method internalArrayEnd()I
    .locals 1

    .line 83
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegateList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->internalArrayEnd()I

    move-result v0

    return v0
.end method

.method internalArrayStart()I
    .locals 1

    .line 78
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegateList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->internalArrayStart()I

    move-result v0

    return v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->listIterator(I)Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public listIterator(I)Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;->delegateList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->listIterator(I)Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method
