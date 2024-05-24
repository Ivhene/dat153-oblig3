.class public Lorg/mockito/internal/verification/DefaultRegisteredInvocations;
.super Ljava/lang/Object;
.source "DefaultRegisteredInvocations.java"

# interfaces
.implements Lorg/mockito/internal/verification/RegisteredInvocations;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/verification/DefaultRegisteredInvocations$RemoveToString;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x251d62bf4601b922L


# instance fields
.field private final invocations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Lorg/mockito/invocation/Invocation;)V
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;

    .line 24
    iget-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 44
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 45
    .local v1, "copiedList":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    new-instance v0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations$RemoveToString;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/mockito/internal/verification/DefaultRegisteredInvocations$RemoveToString;-><init>(Lorg/mockito/internal/verification/DefaultRegisteredInvocations$1;)V

    invoke-static {v1, v0}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    .line 45
    .end local v1    # "copiedList":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeLast()V
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    iget-object v1, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
