.class final Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;
.super Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClassSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
        "TT;>.TypeSet;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient classes:Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;)V
    .locals 0

    .line 753
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;Lorg/checkerframework/com/google/common/reflect/TypeToken$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/reflect/TypeToken$1;

    .line 753
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 794
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getTypes()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->classes()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public classes()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 776
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.ClassSet;"
    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 753
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 753
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;->delegate()Ljava/util/Set;

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

    .line 759
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;->classes:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 760
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;>;"
    if-nez v0, :cond_0

    .line 762
    sget-object v1, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->FOR_GENERIC_TYPE:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;

    .line 764
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->classesOnly()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    .line 765
    .local v1, "collectedTypes":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;>;"
    nop

    .line 766
    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter;

    .line 767
    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->filter(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v2

    .line 768
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->toSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;->classes:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 765
    return-object v2

    .line 770
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

    .line 790
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.ClassSet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "classes().interfaces() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 783
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.ClassSet;"
    sget-object v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;

    .line 784
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->classesOnly()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$ClassSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->access$300(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    .line 785
    .local v0, "collectedTypes":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Ljava/lang/Class<-TT;>;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method
