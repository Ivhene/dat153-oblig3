.class Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;
.super Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsMapView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final function:Lorg/checkerframework/com/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 873
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p2, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;-><init>()V

    .line 874
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    .line 875
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Function;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    .line 876
    return-void
.end method


# virtual methods
.method backingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 870
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 927
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 928
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 895
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 944
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView$1EntrySetImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView$1EntrySetImpl;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;)V

    return-object v0
.end method

.method public createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 880
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->access$200(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 885
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 949
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 952
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 900
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 905
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    move-object v0, p1

    .line 908
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v1, v0}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 910
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    return-object p2
.end method

.method synthetic lambda$forEach$0$org-checkerframework-com-google-common-collect-Maps$AsMapView(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/BiConsumer;
    .param p2, "k"    # Ljava/lang/Object;

    .line 951
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v0, p2}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 916
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    move-object v0, p1

    .line 919
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v1, v0}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 921
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 890
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
