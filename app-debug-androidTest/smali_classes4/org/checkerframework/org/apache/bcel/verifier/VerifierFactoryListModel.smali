.class public Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;
.super Ljava/lang/Object;
.source "VerifierFactoryListModel.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;
.implements Ljavax/swing/ListModel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;",
        "Ljavax/swing/ListModel<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/swing/event/ListDataListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;->listeners:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;->cache:Ljava/util/Set;

    .line 39
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->attach(Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;->update(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public declared-synchronized addListDataListener(Ljavax/swing/event/ListDataListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/swing/event/ListDataListener;

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 58
    .end local p0    # "this":Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;
    .end local p1    # "l":Ljavax/swing/event/ListDataListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic getElementAt(I)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;->getElementAt(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getElementAt(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;->cache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 74
    .end local p0    # "this":Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;->cache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 69
    .end local p0    # "this":Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListDataListener(Ljavax/swing/event/ListDataListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/swing/event/ListDataListener;

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 63
    .end local p0    # "this":Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;
    .end local p1    # "l":Ljavax/swing/event/ListDataListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    monitor-enter p0

    .line 45
    :try_start_0
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifiers()[Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v0

    .line 46
    .local v0, "verifiers":[Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    array-length v1, v0

    .line 47
    .local v1, "num_of_verifiers":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;->cache:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 48
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 49
    .local v5, "verifier":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;->cache:Ljava/util/Set;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    nop

    .end local v5    # "verifier":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local p0    # "this":Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/swing/event/ListDataListener;

    .line 52
    .local v4, "listener":Ljavax/swing/event/ListDataListener;
    new-instance v5, Ljavax/swing/event/ListDataEvent;

    add-int/lit8 v6, v1, -0x1

    invoke-direct {v5, p0, v3, v3, v6}, Ljavax/swing/event/ListDataEvent;-><init>(Ljava/lang/Object;III)V

    .line 53
    .local v5, "e":Ljavax/swing/event/ListDataEvent;
    invoke-interface {v4, v5}, Ljavax/swing/event/ListDataListener;->contentsChanged(Ljavax/swing/event/ListDataEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v4    # "listener":Ljavax/swing/event/ListDataListener;
    .end local v5    # "e":Ljavax/swing/event/ListDataEvent;
    goto :goto_1

    .line 55
    :cond_1
    monitor-exit p0

    return-void

    .line 44
    .end local v0    # "verifiers":[Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v1    # "num_of_verifiers":I
    .end local p1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
