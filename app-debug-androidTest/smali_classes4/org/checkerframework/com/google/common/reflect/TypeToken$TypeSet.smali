.class public Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;
.super Lorg/checkerframework/com/google/common/collect/ForwardingSet;
.source "TypeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ForwardingSet<",
        "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
        "-TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

.field private transient types:Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 658
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.TypeSet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method public classes()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 667
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.TypeSet;"
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;Lorg/checkerframework/com/google/common/reflect/TypeToken$1;)V

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 654
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.TypeSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 654
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.TypeSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 672
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.TypeSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->types:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 673
    .local v0, "filteredTypes":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;>;"
    if-nez v0, :cond_0

    .line 676
    sget-object v1, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->FOR_GENERIC_TYPE:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 677
    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    .line 678
    .local v1, "collectedTypes":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;>;"
    nop

    .line 679
    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter;

    .line 680
    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->filter(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v2

    .line 681
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->toSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->types:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 678
    return-object v2

    .line 683
    .end local v1    # "collectedTypes":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;>;"
    :cond_0
    return-object v0
.end method

.method public interfaces()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 662
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.TypeSet;"
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;)V

    return-object v0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 691
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.TypeSet;"
    sget-object v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 692
    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->access$300(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    .line 693
    .local v0, "collectedTypes":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Ljava/lang/Class<-TT;>;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method