.class final Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet;
.source "ImmutableMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RegularEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient entries:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final transient map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p2, "entries":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 45
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->entries:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 46
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p2, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    .line 41
    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->entries:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method createAsList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->entries:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->entries:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->forEach(Ljava/util/function/Consumer;)V

    .line 72
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 35
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->entries:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->entries:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
