.class public Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;
.super Ljava/lang/Object;
.source "VisitorSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TN;>;"
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

.field private final innerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<",
            "TN;>.EqualsHashcodeOverridingFacade;>;"
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

    .line 48
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    .local p1, "hashcodeVisitor":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<Ljava/lang/Integer;Ljava/lang/Void;>;"
    .local p2, "equalsVisitor":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<Ljava/lang/Boolean;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    .line 49
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->hashcodeVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    .line 50
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->equalsVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;

    .line 39
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;)Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;

    .line 39
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->hashcodeVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;)Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;

    .line 39
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->equalsVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    return-object v0
.end method

.method static synthetic lambda$toArray$0(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p0, "facade"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "facade"
        }
    .end annotation

    .line 141
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;->access$100(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toArray$1(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p0, "facade"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "facade"
        }
    .end annotation

    .line 146
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;->access$100(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elem"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    .local p1, "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TN;>;)Z"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TN;>;"
    const/4 v0, 0x0

    .line 61
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 62
    .local v2, "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 62
    .end local v2    # "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    :cond_0
    goto :goto_0

    .line 64
    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    .line 69
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 70
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, "elem":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    const/4 v0, 0x0

    return v0

    .line 80
    .end local v1    # "elem":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 87
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 120
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 121
    .local v2, "elem":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 121
    .end local v2    # "elem":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 123
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->size()I

    move-result v0

    .line 129
    .local v0, "oldSize":I
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->clear()V

    .line 130
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public size()I
    .locals 1

    .line 136
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 141
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    .local p1, "arr":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 151
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->size()I

    move-result v1

    const-string v2, "]"

    if-nez v1, :cond_0

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 154
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;

    .line 155
    .local v3, "facade":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>.EqualsHashcodeOverridingFacade;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;->access$100(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .end local v3    # "facade":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<TN;>.EqualsHashcodeOverridingFacade;"
    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
