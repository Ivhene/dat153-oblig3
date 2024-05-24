.class public final Lorg/mockito/internal/listeners/StubbingLookupNotifier;
.super Ljava/lang/Object;
.source "StubbingLookupNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyStubbedAnswerLookup(Lorg/mockito/invocation/Invocation;Lorg/mockito/stubbing/Stubbing;Ljava/util/Collection;Lorg/mockito/internal/creation/settings/CreationSettings;)V
    .locals 4
    .param p0, "invocation"    # Lorg/mockito/invocation/Invocation;
    .param p1, "stubbingFound"    # Lorg/mockito/stubbing/Stubbing;
    .param p3, "creationSettings"    # Lorg/mockito/internal/creation/settings/CreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Lorg/mockito/stubbing/Stubbing;",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;",
            "Lorg/mockito/internal/creation/settings/CreationSettings;",
            ")V"
        }
    .end annotation

    .line 24
    .local p2, "allStubbings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mockito/stubbing/Stubbing;>;"
    invoke-virtual {p3}, Lorg/mockito/internal/creation/settings/CreationSettings;->getStubbingLookupListeners()Ljava/util/List;

    move-result-object v0

    .line 25
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/listeners/StubbingLookupListener;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    return-void

    .line 28
    :cond_0
    new-instance v1, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;-><init>(Lorg/mockito/invocation/Invocation;Lorg/mockito/stubbing/Stubbing;Ljava/util/Collection;Lorg/mockito/mock/MockCreationSettings;)V

    .line 30
    .local v1, "event":Lorg/mockito/listeners/StubbingLookupEvent;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/listeners/StubbingLookupListener;

    .line 31
    .local v3, "listener":Lorg/mockito/listeners/StubbingLookupListener;
    invoke-interface {v3, v1}, Lorg/mockito/listeners/StubbingLookupListener;->onStubbingLookup(Lorg/mockito/listeners/StubbingLookupEvent;)V

    .line 32
    .end local v3    # "listener":Lorg/mockito/listeners/StubbingLookupListener;
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method
