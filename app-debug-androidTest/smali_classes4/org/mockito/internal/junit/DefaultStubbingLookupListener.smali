.class Lorg/mockito/internal/junit/DefaultStubbingLookupListener;
.super Ljava/lang/Object;
.source "DefaultStubbingLookupListener.java"

# interfaces
.implements Lorg/mockito/listeners/StubbingLookupListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5e3a37b4d7e3ec6dL


# instance fields
.field private currentStrictness:Lorg/mockito/quality/Strictness;

.field private mismatchesReported:Z


# direct methods
.method constructor <init>(Lorg/mockito/quality/Strictness;)V
    .locals 0
    .param p1, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    .line 35
    return-void
.end method

.method private static potentialArgMismatches(Lorg/mockito/invocation/Invocation;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .param p0, "invocation"    # Lorg/mockito/invocation/Invocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 68
    .local p1, "stubbings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mockito/stubbing/Stubbing;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 69
    .local v0, "matchingStubbings":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/stubbing/Stubbing;

    .line 70
    .local v2, "s":Lorg/mockito/stubbing/Stubbing;
    invoke-static {v2}, Lorg/mockito/internal/stubbing/UnusedStubbingReporting;->shouldBeReported(Lorg/mockito/stubbing/Stubbing;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v3

    .line 72
    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v3

    .line 79
    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v3

    .line 80
    invoke-interface {v3}, Lorg/mockito/invocation/Location;->getSourceFile()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v4

    invoke-interface {v4}, Lorg/mockito/invocation/Location;->getSourceFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v2    # "s":Lorg/mockito/stubbing/Stubbing;
    :cond_0
    goto :goto_0

    .line 85
    :cond_1
    return-object v0
.end method


# virtual methods
.method isMismatchesReported()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->mismatchesReported:Z

    return v0
.end method

.method public onStubbingLookup(Lorg/mockito/listeners/StubbingLookupEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/mockito/listeners/StubbingLookupEvent;

    .line 39
    nop

    .line 41
    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getStubbingFound()Lorg/mockito/stubbing/Stubbing;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    .line 40
    invoke-static {v0, v1, v2}, Lorg/mockito/internal/stubbing/StrictnessSelector;->determineStrictness(Lorg/mockito/stubbing/Stubbing;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/quality/Strictness;)Lorg/mockito/quality/Strictness;

    move-result-object v0

    .line 43
    .local v0, "actualStrictness":Lorg/mockito/quality/Strictness;
    sget-object v1, Lorg/mockito/quality/Strictness;->STRICT_STUBS:Lorg/mockito/quality/Strictness;

    if-eq v0, v1, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getStubbingFound()Lorg/mockito/stubbing/Stubbing;

    move-result-object v1

    if-nez v1, :cond_2

    .line 51
    nop

    .line 52
    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v1

    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getAllStubbings()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->potentialArgMismatches(Lorg/mockito/invocation/Invocation;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "argMismatchStubbings":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->mismatchesReported:Z

    .line 55
    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/mockito/internal/exceptions/Reporter;->potentialStubbingProblem(Lorg/mockito/invocation/Invocation;Ljava/util/Collection;)V

    .line 57
    .end local v1    # "argMismatchStubbings":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    :cond_1
    goto :goto_0

    .line 62
    :cond_2
    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/invocation/Invocation;->markVerified()V

    .line 64
    :goto_0
    return-void
.end method

.method setCurrentStrictness(Lorg/mockito/quality/Strictness;)V
    .locals 0
    .param p1, "currentStrictness"    # Lorg/mockito/quality/Strictness;

    .line 92
    iput-object p1, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    .line 93
    return-void
.end method
