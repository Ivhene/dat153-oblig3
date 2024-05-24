.class public abstract Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;
.super Ljava/lang/Object;
.source "AbstractCircuitBreaker.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/lang3/concurrent/CircuitBreaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/lang3/concurrent/CircuitBreaker<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "open"


# instance fields
.field private final changeSupport:Ljava/beans/PropertyChangeSupport;

.field protected final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    .line 47
    return-void
.end method

.method protected static isOpen(Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z
    .locals 1
    .param p0, "state"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 100
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 123
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 124
    return-void
.end method

.method protected changeState(Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V
    .locals 4
    .param p1, "newState"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 110
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->oppositeState()Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/ExecutionSequencer$2$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen(Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen(Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v2

    const-string v3, "open"

    invoke-virtual {v0, v3, v1, v2}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;ZZ)V

    .line 113
    :cond_0
    return-void
.end method

.method public abstract checkState()Z
.end method

.method public close()V
    .locals 1

    .line 82
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeState(Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V

    .line 83
    return-void
.end method

.method public abstract incrementAndCheckState(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public isClosed()Z
    .locals 1

    .line 62
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 54
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-static {v0}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen(Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v0

    return v0
.end method

.method public open()V
    .locals 1

    .line 90
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeState(Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V

    .line 91
    return-void
.end method

.method public removeChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 132
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 133
    return-void
.end method