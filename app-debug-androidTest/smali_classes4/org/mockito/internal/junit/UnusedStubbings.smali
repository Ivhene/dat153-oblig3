.class public Lorg/mockito/internal/junit/UnusedStubbings;
.super Ljava/lang/Object;
.source "UnusedStubbings.java"


# instance fields
.field private final unused:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "unused":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/mockito/stubbing/Stubbing;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    .line 25
    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;Lorg/mockito/plugins/MockitoLogger;)V
    .locals 7
    .param p1, "testName"    # Ljava/lang/String;
    .param p2, "logger"    # Lorg/mockito/plugins/MockitoLogger;

    .line 28
    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    return-void

    .line 32
    :cond_0
    new-instance v0, Lorg/mockito/internal/junit/StubbingHint;

    invoke-direct {v0, p1}, Lorg/mockito/internal/junit/StubbingHint;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "hint":Lorg/mockito/internal/junit/StubbingHint;
    const/4 v1, 0x1

    .line 34
    .local v1, "x":I
    iget-object v2, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/stubbing/Stubbing;

    .line 35
    .local v3, "candidate":Lorg/mockito/stubbing/Stubbing;
    invoke-interface {v3}, Lorg/mockito/stubbing/Stubbing;->wasUsed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 36
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "x":I
    .local v4, "x":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v5

    invoke-interface {v5}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v5

    const-string v6, ". Unused "

    filled-new-array {v1, v6, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/junit/StubbingHint;->appendLine([Ljava/lang/Object;)V

    move v1, v4

    .line 38
    .end local v3    # "candidate":Lorg/mockito/stubbing/Stubbing;
    .end local v4    # "x":I
    .restart local v1    # "x":I
    :cond_1
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Lorg/mockito/internal/junit/StubbingHint;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/mockito/plugins/MockitoLogger;->log(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method reportUnused()V
    .locals 4

    .line 52
    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 57
    .local v0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    iget-object v1, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/stubbing/Stubbing;

    .line 58
    .local v2, "stubbing":Lorg/mockito/stubbing/Stubbing;
    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "stubbing":Lorg/mockito/stubbing/Stubbing;
    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    return-void

    .line 64
    :cond_2
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->unncessaryStubbingException(Ljava/util/List;)V

    .line 65
    return-void
.end method

.method public size()I
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
