.class public abstract Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserverAdapter;
.super Ljava/lang/Object;
.source "AstObserverAdapter.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public listChange(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;ILorg/checkerframework/com/github/javaparser/ast/Node;)V
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

    .line 42
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

    .line 47
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

    .line 37
    return-void
.end method

.method public propertyChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
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

    .line 32
    return-void
.end method
