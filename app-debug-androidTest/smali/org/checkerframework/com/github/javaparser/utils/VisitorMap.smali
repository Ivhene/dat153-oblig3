.class public Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;
.super Ljava/lang/Object;
.source "VisitorMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final equalsVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Boolean;",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;",
            ">;"
        }
    .end annotation
.end field

.field private final hashcodeVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final innerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<",
            "TN;TV;>.EqualsHashcodeOverridingFacade;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hashcodeVisitor",
            "equalsVisitor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Boolean;",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    .local p1, "hashcodeVisitor":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<Ljava/lang/Integer;Ljava/lang/Void;>;"
    .local p2, "equalsVisitor":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<Ljava/lang/Boolean;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    .line 27
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->hashcodeVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    .line 28
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->equalsVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;)Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;

    .line 18
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->hashcodeVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;)Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;

    .line 18
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->equalsVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    return-object v0
.end method

.method static synthetic lambda$entrySet$1(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleEntry;
    .locals 3
    .param p0, "e"    # Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;->access$200(Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$keySet$0(Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p0, "k"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "k"
        }
    .end annotation

    .line 110
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;->access$200(Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 104
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TN;TV;>;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$$ExternalSyntheticLambda0;-><init>()V

    .line 122
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 123
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 121
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 38
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$$ExternalSyntheticLambda2;-><init>()V

    .line 110
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 111
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 109
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 18
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->put(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)TV;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    .local p1, "key":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TN;+TV;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TN;+TV;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 100
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 33
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorMap<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
