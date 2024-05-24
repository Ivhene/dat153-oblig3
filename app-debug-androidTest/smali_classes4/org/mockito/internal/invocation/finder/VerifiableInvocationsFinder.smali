.class public Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder;
.super Ljava/lang/Object;
.source "VerifiableInvocationsFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder$RemoveIgnoredForVerification;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 21
    .local p0, "mocks":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {p0}, Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;->find(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 22
    .local v0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    new-instance v1, Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder$RemoveIgnoredForVerification;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder$RemoveIgnoredForVerification;-><init>(Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder$1;)V

    invoke-static {v0, v1}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object v1

    return-object v1
.end method
