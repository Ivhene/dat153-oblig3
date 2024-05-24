.class final Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;
.super Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InterfaceSet"
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
.field private final transient allTypes:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation
.end field

.field private transient interfaces:Lorg/checkerframework/com/google/common/collect/ImmutableSet;
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
.method constructor <init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;)V"
        }
    .end annotation

    .line 704
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    .local p2, "allTypes":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.TypeSet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;)V

    .line 705
    iput-object p2, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;->allTypes:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;

    .line 706
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 747
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getTypes()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;->interfaces()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public classes()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 743
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "interfaces().classes() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 699
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 699
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 710
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;->interfaces:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 711
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<Lorg/checkerframework/com/google/common/reflect/TypeToken<-TT;>;>;"
    if-nez v0, :cond_0

    .line 712
    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;->allTypes:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;

    .line 713
    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter;->INTERFACE_ONLY:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->filter(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->toSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;->interfaces:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 712
    return-object v1

    .line 715
    :cond_0
    return-object v0
.end method

.method public interfaces()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 721
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    return-object p0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 728
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    sget-object v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 729
    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->access$300(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    .line 730
    .local v0, "collectedTypes":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Ljava/lang/Class<-TT;>;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet$1;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet$1;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken$InterfaceSet;)V

    .line 731
    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->filter(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->toSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 730
    return-object v1
.end method
