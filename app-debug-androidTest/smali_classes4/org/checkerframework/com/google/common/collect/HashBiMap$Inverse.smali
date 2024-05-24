.class final Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;
.super Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap<",
        "TV;TK;>;",
        "Lorg/checkerframework/com/google/common/collect/BiMap<",
        "TV;TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;)V
    .locals 0

    .line 570
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;Lorg/checkerframework/com/google/common/collect/HashBiMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/HashBiMap;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/HashBiMap$1;

    .line 570
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;-><init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;)V

    return-void
.end method

.method static synthetic lambda$forEach$0(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "action"    # Ljava/util/function/BiConsumer;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 714
    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 583
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->forward()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/BiMap;->clear()V

    .line 584
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 588
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->forward()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/BiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 668
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;-><init>(Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TV;-TK;>;)V"
        }
    .end annotation

    .line 713
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TV;-TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 715
    return-void
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)TK;"
        }
    .end annotation

    .line 606
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$800(Lorg/checkerframework/com/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method forward()Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 573
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 593
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$400(Lorg/checkerframework/com/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 625
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->forward()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 630
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet;-><init>(Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)TK;"
        }
    .end annotation

    .line 600
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$800(Lorg/checkerframework/com/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 612
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$400(Lorg/checkerframework/com/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 613
    .local v0, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 614
    return-object v1

    .line 616
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {v2, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$200(Lorg/checkerframework/com/google/common/collect/HashBiMap;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 617
    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 618
    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 619
    iget-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TV;-TK;+TK;>;)V"
        }
    .end annotation

    .line 719
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TK;+TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$000(Lorg/checkerframework/com/google/common/collect/HashBiMap;)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 721
    .local v0, "oldFirst":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->clear()V

    .line 722
    move-object v1, v0

    .local v1, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 723
    iget-object v2, v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    iget-object v3, v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 725
    .end local v1    # "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 578
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$700(Lorg/checkerframework/com/google/common/collect/HashBiMap;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 570
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 663
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->forward()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 728
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$InverseSerializedForm;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap$InverseSerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;)V

    return-object v0
.end method
