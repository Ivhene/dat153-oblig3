.class public Lorg/mockito/internal/progress/MockingProgressImpl;
.super Ljava/lang/Object;
.source "MockingProgressImpl.java"

# interfaces
.implements Lorg/mockito/internal/progress/MockingProgress;


# instance fields
.field private final argumentMatcherStorage:Lorg/mockito/internal/progress/ArgumentMatcherStorage;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/mockito/listeners/MockitoListener;",
            ">;"
        }
    .end annotation
.end field

.field private ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "*>;"
        }
    .end annotation
.end field

.field private stubbingInProgress:Lorg/mockito/invocation/Location;

.field private verificationMode:Lorg/mockito/internal/debugging/Localized;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/debugging/Localized<",
            "Lorg/mockito/verification/VerificationMode;",
            ">;"
        }
    .end annotation
.end field

.field private verificationStrategy:Lorg/mockito/verification/VerificationStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;

    invoke-direct {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->argumentMatcherStorage:Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    .line 38
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    .line 41
    invoke-static {}, Lorg/mockito/internal/progress/MockingProgressImpl;->getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationStrategy:Lorg/mockito/verification/VerificationStrategy;

    .line 42
    return-void
.end method

.method static addListener(Lorg/mockito/listeners/MockitoListener;Ljava/util/Set;)V
    .locals 5
    .param p0, "listener"    # Lorg/mockito/listeners/MockitoListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/listeners/MockitoListener;",
            "Ljava/util/Set<",
            "Lorg/mockito/listeners/MockitoListener;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/mockito/listeners/MockitoListener;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 192
    .local v0, "delete":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/listeners/MockitoListener;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/listeners/MockitoListener;

    .line 193
    .local v2, "existing":Lorg/mockito/listeners/MockitoListener;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    instance-of v3, v2, Lorg/mockito/internal/listeners/AutoCleanableListener;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/mockito/internal/listeners/AutoCleanableListener;

    .line 195
    invoke-interface {v3}, Lorg/mockito/internal/listeners/AutoCleanableListener;->isListenerDirty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/exceptions/Reporter;->redundantMockitoListener(Ljava/lang/String;)V

    .line 205
    .end local v2    # "existing":Lorg/mockito/listeners/MockitoListener;
    :cond_1
    :goto_1
    goto :goto_0

    .line 207
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public static getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;
    .locals 1

    .line 45
    new-instance v0, Lorg/mockito/internal/progress/MockingProgressImpl$1;

    invoke-direct {v0}, Lorg/mockito/internal/progress/MockingProgressImpl$1;-><init>()V

    return-object v0
.end method

.method private validateMostStuff()V
    .locals 2

    .line 127
    invoke-static {}, Lorg/mockito/internal/configuration/GlobalConfiguration;->validate()V

    .line 129
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->validateState()V

    .line 136
    return-void

    .line 130
    :cond_0
    invoke-virtual {v0}, Lorg/mockito/internal/debugging/Localized;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v0

    .line 131
    .local v0, "location":Lorg/mockito/invocation/Location;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    .line 132
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->unfinishedVerificationException(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public addListener(Lorg/mockito/listeners/MockitoListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/mockito/listeners/MockitoListener;

    .line 187
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/mockito/internal/progress/MockingProgressImpl;->addListener(Lorg/mockito/listeners/MockitoListener;Ljava/util/Set;)V

    .line 188
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 229
    return-void
.end method

.method public getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->argumentMatcherStorage:Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    return-object v0
.end method

.method public maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p1, "mode"    # Lorg/mockito/verification/VerificationMode;

    .line 223
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationStrategy:Lorg/mockito/verification/VerificationStrategy;

    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationStrategy;->maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public mockingStarted(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 3
    .param p2, "settings"    # Lorg/mockito/mock/MockCreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/mock/MockCreationSettings;",
            ")V"
        }
    .end annotation

    .line 177
    .local p1, "mock":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/MockitoListener;

    .line 178
    .local v1, "listener":Lorg/mockito/listeners/MockitoListener;
    instance-of v2, v1, Lorg/mockito/listeners/MockCreationListener;

    if-eqz v2, :cond_0

    .line 179
    move-object v2, v1

    check-cast v2, Lorg/mockito/listeners/MockCreationListener;

    invoke-interface {v2, p1, p2}, Lorg/mockito/listeners/MockCreationListener;->onStaticMockCreated(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;)V

    .line 181
    .end local v1    # "listener":Lorg/mockito/listeners/MockitoListener;
    :cond_0
    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateMostStuff()V

    .line 183
    return-void
.end method

.method public mockingStarted(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 3
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 167
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/MockitoListener;

    .line 168
    .local v1, "listener":Lorg/mockito/listeners/MockitoListener;
    instance-of v2, v1, Lorg/mockito/listeners/MockCreationListener;

    if-eqz v2, :cond_0

    .line 169
    move-object v2, v1

    check-cast v2, Lorg/mockito/listeners/MockCreationListener;

    invoke-interface {v2, p1, p2}, Lorg/mockito/listeners/MockCreationListener;->onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V

    .line 171
    .end local v1    # "listener":Lorg/mockito/listeners/MockitoListener;
    :cond_0
    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateMostStuff()V

    .line 173
    return-void
.end method

.method public pullOngoingStubbing()Lorg/mockito/stubbing/OngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "*>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    .line 61
    .local v0, "temp":Lorg/mockito/stubbing/OngoingStubbing;, "Lorg/mockito/stubbing/OngoingStubbing<*>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    .line 62
    return-object v0
.end method

.method public pullVerificationMode()Lorg/mockito/verification/VerificationMode;
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 97
    return-object v1

    .line 100
    :cond_0
    invoke-virtual {v0}, Lorg/mockito/internal/debugging/Localized;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/verification/VerificationMode;

    .line 101
    .local v0, "temp":Lorg/mockito/verification/VerificationMode;
    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    .line 102
    return-object v0
.end method

.method public removeListener(Lorg/mockito/listeners/MockitoListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/mockito/listeners/MockitoListener;

    .line 213
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public reportOngoingStubbing(Lorg/mockito/stubbing/OngoingStubbing;)V
    .locals 0
    .param p1, "ongoingStubbing"    # Lorg/mockito/stubbing/OngoingStubbing;

    .line 55
    iput-object p1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    .line 56
    return-void
.end method

.method public reset()V
    .locals 1

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    .line 156
    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    .line 157
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reset()V

    .line 158
    return-void
.end method

.method public resetOngoingStubbing()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    .line 92
    return-void
.end method

.method public setVerificationStrategy(Lorg/mockito/verification/VerificationStrategy;)V
    .locals 0
    .param p1, "strategy"    # Lorg/mockito/verification/VerificationStrategy;

    .line 218
    iput-object p1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationStrategy:Lorg/mockito/verification/VerificationStrategy;

    .line 219
    return-void
.end method

.method public stubbingCompleted()V
    .locals 1

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    .line 141
    return-void
.end method

.method public stubbingStarted()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateState()V

    .line 108
    new-instance v0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ongoingStubbing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verificationMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stubbingInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateState()V
    .locals 2

    .line 113
    invoke-direct {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateMostStuff()V

    .line 116
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    .line 118
    .local v0, "temp":Lorg/mockito/invocation/Location;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    .line 119
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->unfinishedStubbing(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1
.end method

.method public verificationListeners()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/mockito/listeners/VerificationListener;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 69
    .local v0, "verificationListeners":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lorg/mockito/listeners/VerificationListener;>;"
    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/listeners/MockitoListener;

    .line 70
    .local v2, "listener":Lorg/mockito/listeners/MockitoListener;
    instance-of v3, v2, Lorg/mockito/listeners/VerificationListener;

    if-eqz v3, :cond_0

    .line 71
    move-object v3, v2

    check-cast v3, Lorg/mockito/listeners/VerificationListener;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v2    # "listener":Lorg/mockito/listeners/MockitoListener;
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    return-object v0
.end method

.method public verificationStarted(Lorg/mockito/verification/VerificationMode;)V
    .locals 1
    .param p1, "verify"    # Lorg/mockito/verification/VerificationMode;

    .line 80
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateState()V

    .line 81
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->resetOngoingStubbing()V

    .line 82
    new-instance v0, Lorg/mockito/internal/debugging/Localized;

    invoke-direct {v0, p1}, Lorg/mockito/internal/debugging/Localized;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    .line 83
    return-void
.end method
