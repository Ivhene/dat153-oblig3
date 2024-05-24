.class final Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver$1;
.super Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;
.source "PropagatingAstObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;->transformInPropagatingObserver(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$observer"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver$1;->val$observer:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public concreteListChange(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;ILorg/checkerframework/com/github/javaparser/ast/Node;)V
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

    .line 48
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver$1;->val$observer:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;->listChange(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 49
    return-void
.end method

.method public concretePropertyChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
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

    .line 43
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver$1;->val$observer:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;->propertyChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public parentChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
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

    .line 53
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver$1;->val$observer:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;->parentChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 54
    return-void
.end method
