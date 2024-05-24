.class public abstract Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;
.super Ljava/lang/Object;
.source "PropagatingAstObserver.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private considerAdding(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 111
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    .line 112
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->registerForSubtree(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    goto :goto_0

    .line 113
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;

    if-eqz v0, :cond_1

    .line 114
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;

    invoke-interface {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;->register(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    .line 116
    :cond_1
    :goto_0
    return-void
.end method

.method private considerRemoving(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 103
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;

    if-eqz v0, :cond_0

    .line 104
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;

    invoke-interface {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;->isRegistered(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;

    invoke-interface {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;->unregister(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    .line 108
    :cond_0
    return-void
.end method

.method public static transformInPropagatingObserver(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;
    .locals 1
    .param p0, "observer"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "observer"
        }
    .end annotation

    .line 37
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver$1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    return-object v0
.end method


# virtual methods
.method public concreteListChange(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;ILorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0
    .param p1, "observedNode"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;
    .param p3, "index"    # I
    .param p4, "nodeAddedOrRemoved"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "type",
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    .line 91
    return-void
.end method

.method public concreteListReplacement(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0
    .param p1, "observedNode"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p2, "index"    # I
    .param p3, "oldValue"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p4, "newValue"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "index",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 95
    return-void
.end method

.method public concretePropertyChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "observedNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 87
    return-void
.end method

.method public final listChange(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;ILorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p1, "observedNode"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;
    .param p3, "index"    # I
    .param p4, "nodeAddedOrRemoved"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "type",
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    .line 67
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;->REMOVAL:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;

    if-ne p2, v0, :cond_0

    .line 68
    invoke-direct {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;->considerRemoving(Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;->ADDITION:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;

    if-ne p2, v0, :cond_1

    .line 70
    invoke-direct {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;->considerAdding(Ljava/lang/Object;)V

    .line 72
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;->concreteListChange(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 73
    return-void
.end method

.method public listReplacement(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0
    .param p1, "observedNode"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p2, "index"    # I
    .param p3, "oldNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p4, "newNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "index",
            "oldNode",
            "newNode"
        }
    .end annotation

    .line 77
    if-ne p3, p4, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-direct {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;->considerRemoving(Ljava/lang/Object;)V

    .line 81
    invoke-direct {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;->considerAdding(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;->concreteListReplacement(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 83
    return-void
.end method

.method public parentChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0
    .param p1, "observedNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "previousParent"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p3, "newParent"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "previousParent",
            "newParent"
        }
    .end annotation

    .line 100
    return-void
.end method

.method public final propertyChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "observedNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;->considerRemoving(Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;->considerAdding(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;->concretePropertyChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-void
.end method
