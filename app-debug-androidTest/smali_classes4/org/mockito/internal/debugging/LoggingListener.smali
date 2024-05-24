.class public Lorg/mockito/internal/debugging/LoggingListener;
.super Ljava/lang/Object;
.source "LoggingListener.java"

# interfaces
.implements Lorg/mockito/internal/debugging/FindingsListener;


# instance fields
.field private final argMismatchStubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final unstubbedCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final unusedStubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final warnAboutUnstubbed:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "warnAboutUnstubbed"    # Z

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/debugging/LoggingListener;->argMismatchStubs:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/debugging/LoggingListener;->unusedStubs:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/debugging/LoggingListener;->unstubbedCalls:Ljava/util/List;

    .line 23
    iput-boolean p1, p0, Lorg/mockito/internal/debugging/LoggingListener;->warnAboutUnstubbed:Z

    .line 24
    return-void
.end method

.method private addOrderedList(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "additions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, "a":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Mockito] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v1    # "a":Ljava/lang/String;
    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method static indexOfNextPair(I)I
    .locals 1
    .param p0, "collectionSize"    # I

    .line 42
    div-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public foundStubCalledWithDifferentArgs(Lorg/mockito/invocation/Invocation;Lorg/mockito/internal/invocation/InvocationMatcher;)V
    .locals 5
    .param p1, "unused"    # Lorg/mockito/invocation/Invocation;
    .param p2, "unstubbed"    # Lorg/mockito/internal/invocation/InvocationMatcher;

    .line 34
    iget-object v0, p0, Lorg/mockito/internal/debugging/LoggingListener;->argMismatchStubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lorg/mockito/internal/debugging/LoggingListener;->indexOfNextPair(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "index":Ljava/lang/String;
    const-string v1, "\\d"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "padding":Ljava/lang/String;
    iget-object v2, p0, Lorg/mockito/internal/debugging/LoggingListener;->argMismatchStubs:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Stubbed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, p0, Lorg/mockito/internal/debugging/LoggingListener;->argMismatchStubs:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Invoked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/mockito/internal/invocation/InvocationMatcher;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v4

    invoke-interface {v4}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public foundUnstubbed(Lorg/mockito/internal/invocation/InvocationMatcher;)V
    .locals 3
    .param p1, "unstubbed"    # Lorg/mockito/internal/invocation/InvocationMatcher;

    .line 52
    iget-boolean v0, p0, Lorg/mockito/internal/debugging/LoggingListener;->warnAboutUnstubbed:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/mockito/internal/debugging/LoggingListener;->unstubbedCalls:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/mockito/internal/debugging/LoggingListener;->unstubbedCalls:Ljava/util/List;

    .line 54
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method

.method public foundUnusedStub(Lorg/mockito/invocation/Invocation;)V
    .locals 3
    .param p1, "unused"    # Lorg/mockito/invocation/Invocation;

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/debugging/LoggingListener;->unusedStubs:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/mockito/internal/debugging/LoggingListener;->unusedStubs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public getStubbingInfo()Ljava/lang/String;
    .locals 4

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/debugging/LoggingListener;->argMismatchStubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/debugging/LoggingListener;->unusedStubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/debugging/LoggingListener;->unstubbedCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    return-object v1

    .line 63
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 64
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "[Mockito] Additional stubbing information (see javadoc for StubbingInfo class):"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lorg/mockito/internal/debugging/LoggingListener;->argMismatchStubs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "[Mockito]"

    if-nez v2, :cond_1

    .line 68
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v2, "[Mockito] Argument mismatch between stubbing and actual invocation (is stubbing correct in the test?):"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lorg/mockito/internal/debugging/LoggingListener;->argMismatchStubs:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lorg/mockito/internal/debugging/LoggingListener;->addOrderedList(Ljava/util/List;Ljava/util/List;)V

    .line 75
    :cond_1
    iget-object v2, p0, Lorg/mockito/internal/debugging/LoggingListener;->unusedStubs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v2, "[Mockito] Unused stubbing (perhaps can be removed from the test?):"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Lorg/mockito/internal/debugging/LoggingListener;->unusedStubs:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lorg/mockito/internal/debugging/LoggingListener;->addOrderedList(Ljava/util/List;Ljava/util/List;)V

    .line 82
    :cond_2
    iget-object v2, p0, Lorg/mockito/internal/debugging/LoggingListener;->unstubbedCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v2, "[Mockito] Unstubbed method invocations (perhaps missing stubbing in the test?):"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v2, p0, Lorg/mockito/internal/debugging/LoggingListener;->unstubbedCalls:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lorg/mockito/internal/debugging/LoggingListener;->addOrderedList(Ljava/util/List;Ljava/util/List;)V

    .line 89
    :cond_3
    invoke-static {v1, v0}, Lorg/mockito/internal/util/StringUtil;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
